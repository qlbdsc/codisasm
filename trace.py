from qiling import Qiling
from typing import Optional, Tuple
from unicorn import UcError
import argparse
import struct
import os

class Tracer:
	last_addr: Optional[int]
	_content: bytearray
	def __init__(self, mem_beg: int, mem_end: int):
		self._mem_beg = mem_beg
		self._mem_end = mem_end
		self.last_addr = None
		self._content = bytearray()

	# Add the trace information, the binary format is consistent with CoDisasm.
	def add_edge(self, src_addr: int, dst_addr: int, wave: int = 1) -> None:
		self._content.append(4)
		self._content.extend(b'E')
		self._content.extend(
			struct.pack("<IIII", wave, src_addr, wave, dst_addr))
	def add_inst(self, addr: int, inst_bytes: bytes) -> None:
		self._content.append(4)
		self._content.extend(b'X')
		self._content.extend(struct.pack("<IB", addr, len(inst_bytes)))
		self._content.extend(b'D')
		self._content.extend(inst_bytes)

	# Convert the address into the relative address with respect to base,
	# if the address is not in the range, return None.
	def to_rel_addr(self, addr: int) -> Optional[int]:
		return addr - self._mem_beg \
			if self._mem_beg <= addr and addr < self._mem_end \
			else None

# Obtain the memory range of the executable image.
def get_executable_range(ql: Qiling, exec_name: str) -> Tuple[int, int]:
	min_addr = 1 << 64
	max_addr = 0
	for beg, end, _, name, _ in ql.mem.map_info:
		if name == exec_name:
			min_addr = min(min_addr, beg)
			max_addr = max(max_addr, end)
	assert min_addr < max_addr, "No executable memory region is found!"
	return min_addr, max_addr

# The tracing callback passed to Qiling class.
# We make the trace consistent with the samples in the CoDisasm `test/`.
def tracing_cb(ql: Qiling, address: int, size: int, tracer: Tracer) -> None:
	rel_addr = tracer.to_rel_addr(address)
	if rel_addr is None: # If not in executable image range, skip.
		return
	# TODO: if there is no PIE, we should use direct address.

	# Add edge first, then add the instruction.
	if tracer.last_addr is not None:
		tracer.add_edge(tracer.last_addr, rel_addr)
	tracer.add_inst(rel_addr, ql.mem.read(address, size))
	tracer.last_addr = rel_addr

if __name__ == "__main__":
	args = argparse.ArgumentParser()
	args.add_argument("binary", type=str, help="The binary to be traced.")
	args.add_argument("output", type=str,
		help="The path to store tracing output.")
	args = args.parse_args()
	ql = Qiling([args.binary], "/")
	tracer = Tracer(*get_executable_range(ql, os.path.basename(ql.path)))
	ql.hook_code(tracing_cb, user_data=tracer)
	try:
		ql.run()
	except UcError as e:
		ql.log.warning(f"UcError: {e}")
	with open(args.output, 'wb') as fd:
		fd.write(tracer._content)