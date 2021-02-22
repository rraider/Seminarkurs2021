import sys


chars = {
    "A": ("FC", "12", "12", "12", "FC", "00"),
    "B": ("FE", "92", "92", "92", "6C", "00"),
    "C": ("7C", "82", "82", "82", "44", "00"),
    "D": ("FE", "82", "82", "82", "7C", "00"),
    "E": ("FE", "92", "92", "92", "82", "00"),
    "F": ("FE", "12", "12", "12", "02", "00"),
    "G": ("7C", "82", "92", "92", "74", "00"),
    "H": ("FE", "10", "10", "10", "FE", "00"),
    "I": ("82", "82", "FE", "82", "82", "00"),
    "J": ("60", "80", "80", "80", "7E", "00"),
    "K": ("FE", "10", "28", "44", "82", "00"),
    "L": ("FE", "80", "80", "80", "80", "00"),
    "M": ("FE", "04", "18", "04", "FE", "00"),
    "N": ("FE", "04", "08", "10", "FE", "00"),
    "O": ("7C", "82", "82", "82", "7C", "00"),
    "P": ("FE", "12", "12", "12", "0C", "00"),
    "Q": ("7C", "82", "A2", "40", "BC", "00"),
    "R": ("FE", "12", "32", "52", "8C", "00"),
    "S": ("4C", "92", "92", "92", "64", "00"),
    "T": ("02", "02", "FE", "02", "02", "00"),
    "U": ("FE", "80", "80", "80", "FE", "00"),
    "V": ("3E", "40", "80", "40", "3E", "00"),
    "W": ("FE", "40", "30", "40", "FE", "00"),
    "X": ("C6", "28", "10", "28", "C6", "00"),
    "Y": ("0E", "10", "E0", "10", "0E", "00"),
    "Z": ("C0", "A0", "90", "88", "86", "00"),
    "0": ("7C", "82", "92", "82", "7C", "00"),
    "1": ("88", "84", "FE", "80", "80", "00"),
    "2": ("84", "C2", "A2", "92", "8C", "00"),
    "3": ("82", "92", "92", "92", "6C", "00"),
    "4": ("1E", "10", "10", "10", "FE", "00"),
    "5": ("9E", "92", "92", "92", "62", "00"),
    "6": ("7C", "92", "92", "92", "60", "00"),
    "7": ("02", "02", "E2", "12", "0E", "00"),
    "8": ("6C", "92", "92", "92", "6C", "00"),
    "9": ("4C", "92", "92", "92", "7C", "00"),
    " ": ("00", "00", "00"),
}


def generate_array(text):
    output = []
    for i in range(len(text)):
        output.extend(chars[text[i]])
    return output


def generate_single_block(bytes_in_text, start_index):
    output = ""
    for i in range(0x10):
        output += "GFX 0x{} 0x{}\n".format(str(hex(i))[2:].upper(), bytes_in_text[(start_index + i) % len(bytes_in_text)])
    output += "NOP\n"
    return output


def generate_all_blocks(bytes_in_text, spacing):
    output = ""
    for i in range(len(bytes_in_text)//spacing):
        output += generate_single_block(bytes_in_text, i)
    return output


def finalize_output(code):
    code += "JMP 0x000"
    code = "NOP\n" + code
    return code


if __name__ == "__main__":
    output_file = open("output.txt", "w")
    output_file.write(finalize_output(generate_all_blocks(generate_array(sys.argv[1].upper()), int(sys.argv[2]))))
    output_file.close()
