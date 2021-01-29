import sys
import re


def autoinvert(byte, epromnumber):
    if epromnumber == 0:  # eprom from CE to SU
        return ((byte & 0xA9) | (~byte & ~0xA9)) & 0xFF
    elif epromnumber == 1:  # eprom from EO to RAMAI
        return ((byte & 0xB0) | (~byte & ~0xB0)) & 0xFF
    elif epromnumber == 2:  # eprom from EXT0 to return
        return ((byte & 0xFF) | (~byte & ~0xFF)) & 0xFF


epromnumber = int(sys.argv[2])
_input = sys.argv[1]
_input = _input.split(",")
if _input[-1] == "":
    _input = _input[:-1]
_midput = []
for i in _input:
    if not re.match(r"\A([0-9a-fA-F]){1,2}\Z", i):
        print("invalid byte value at " + i)
        exit(-1)
    _midput.append(int(i, 16))
for i in range(len(_midput)):
    _midput[i] = autoinvert(_midput[i], epromnumber)
_output = bytearray(_midput)
try:
    file = open("output" + str(epromnumber) + ".bin", "wb")
    file.write(_output)
except IOError:
    print("File read error, check permissions")
    exit(-1)
finally:
    file.close()
print("If no errors above, bin file output successfully created")
