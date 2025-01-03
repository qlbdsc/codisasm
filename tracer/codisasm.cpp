#include "pin.H"

#include <fstream>
#include <vector>
#include <optional>
#include <memory>
#include <cstdint>
#include <cassert>

KNOB< std::string > KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
	"o", "codisasm.out", "output file name");
std::ofstream fd;

class TRACER
{
private:
	ADDRINT mem_beg;
	ADDRINT mem_end;
	std::optional<ADDRINT> last_addr;
	std::vector<uint8_t> content;

	VOID AddU32(uint32_t data)
	{
		this->content.push_back(data & 0xff);
		this->content.push_back((data >> 8) & 0xff);
		this->content.push_back((data >> 0x10) & 0xff);
		this->content.push_back((data >> 0x18) & 0xff);
	}

	VOID Store()
	{
		fd.write(reinterpret_cast<char*>(content.data()), content.size());
		fd.flush();
		content.clear();
	}

public:
	explicit TRACER(ADDRINT mem_beg, ADDRINT mem_end)
		: mem_beg(mem_beg), mem_end(mem_end), last_addr(std::nullopt) {}

	VOID AddEdge(uint32_t src_addr, uint32_t dst_addr, uint32_t wave = 1)
	{
		this->content.push_back(4);
		this->content.push_back('E');
		this->AddU32(wave);
		this->AddU32(src_addr);
		this->AddU32(wave);
		this->AddU32(dst_addr);
		this->Store();
	}

	VOID AddInst(uint32_t addr, uint8_t* inst_bytes, uint8_t inst_size)
	{
		this->content.push_back(4);
		this->content.push_back('X');
		this->AddU32(addr);
		this->content.push_back(inst_size);
		this->content.push_back('D');
		this->content.insert(
			this->content.end(), inst_bytes, inst_bytes + inst_size);
		this->Store();
	}

	std::optional<uint32_t> ToRelAddr(ADDRINT addr)
	{
		return this->mem_beg <= addr && addr <= this->mem_end ?
			std::optional<uint32_t>(addr - this->mem_beg) : std::nullopt;
	}

	const std::optional<ADDRINT>& GetLastAddr()
	{
		return this->last_addr;
	}

	VOID SetLastAddr(ADDRINT last_addr)
	{
		this->last_addr = last_addr;
	}
};

std::unique_ptr<TRACER> tracer;

INT32 Usage()
{
	PIN_ERROR("This Pintool traces the executed instructions "
		"and output the format required by CoDisasm\n"
		+ KNOB_BASE::StringKnobSummary() + "\n");
	return -1;
}

VOID TraceInst(ADDRINT ip, UINT32 size)
{
	auto rel_addr_opt = tracer->ToRelAddr(ip);
	if (!rel_addr_opt.has_value())
		return;
	uint32_t rel_addr = rel_addr_opt.value();

	if (tracer->GetLastAddr().has_value())
		tracer->AddEdge(tracer->GetLastAddr().value(), rel_addr);

	auto buf = std::make_unique<uint8_t[]>(size);
	PIN_SafeCopy(buf.get(), reinterpret_cast<VOID*>(ip), size);
	tracer->AddInst(rel_addr, buf.get(), size);
	tracer->SetLastAddr(rel_addr);
}

VOID Instruction(INS ins, VOID* v)
{
	INS_InsertCall(
		ins, IPOINT_BEFORE, (AFUNPTR)TraceInst, IARG_INST_PTR,
		IARG_UINT32, INS_Size(ins), IARG_END);
}

VOID Fini(INT32 code, VOID* v)
{
	fd.close();
}

VOID ImageLoad(IMG img, VOID* v)
{
	// The executable must have image ID of 1.
	if (IMG_Id(img) != 1)
		return;

	assert(tracer == nullptr);
	tracer = std::make_unique<TRACER>(
		IMG_LowAddress(img), IMG_HighAddress(img));
}

int main(int argc, char* argv[])
{
	PIN_InitSymbols();
	if (PIN_Init(argc, argv)) return Usage();
	fd.open(KnobOutputFile.Value(), std::ios::binary);
	INS_AddInstrumentFunction(Instruction, 0);
	IMG_AddInstrumentFunction(ImageLoad, 0);
	PIN_AddFiniFunction(Fini, 0);
	PIN_StartProgram();
	return 0;
}