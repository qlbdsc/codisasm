from trace import trace
import subprocess
import re
import os

def trace_pin(bin_path: str, tr_path: str) -> None:
	try:
		subprocess.run(["../../../pin", "-t", "obj-intel64/codisasm.so",
			"-o", tr_path, "--", bin_path],
			cwd="/app/pin/source/tools/CoDisasm", input=b'', timeout=60 * 10)
	except subprocess.TimeoutExpired:
		pass

if __name__ == "__main__":
	bin_path = "/binary"
	tr_path = "/output/trace.bin"
	asm_path = "/output/results.asm"

	# Gather dynamic trace.
	if os.getenv("USE_QILING") == "1":
		trace(bin_path, tr_path)
	else:
		trace_pin(bin_path, tr_path)

	# Run CoDisasm.
	subprocess.run(["/app/release/codisasmv2",
		"-i", bin_path, "-c", tr_path, "-l", asm_path], check=True)

	# Process and generate the results.
	pattern = r"^(0x[0-9A-F]+):"
	results = []
	with open(asm_path, "r") as fd:
		while True:
			line = fd.readline()
			if len(line) == 0:
				break
			r = re.match(pattern, line)
			if r is not None:
				results.append(r.group(1) + '\n')
	with open("/output/results.txt", "w") as fd:
		fd.writelines(results)