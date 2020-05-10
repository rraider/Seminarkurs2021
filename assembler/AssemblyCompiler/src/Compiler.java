import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Compiler {
	private File input;
	private Scanner scanner;
	private List<String> instructions;
	private char mode = 'h';
	private int mem = 2048;
	private List<Instruction> listInstructions;
	private byte[] outputBinary;
	private String outputDigital = ""
			;
	public static void main(String[] args) {
		Compiler c = new Compiler();
		try {
			if(!c.readInput(args[0]) || !c.interpretArguments(args)) {
				System.out.println("Syntax error in compile arguments");
				return;
			}
			if(c.instructions.size() > (c.mem - 0x101)) {
				System.out.println("Program is bigger than EEPROM memory");
				return;
			}
			if(!c.convertInstructions()) {
				return;
			}
			if(!c.writeToFile(args[0])) return;
		} catch (IndexOutOfBoundsException e) {
			e.printStackTrace();
			System.out.println("Syntax error in compile arguments");
			return;
		}
		System.out.println("Success!");
	}
	
	private boolean writeToFile(String path) {
		if(mode == 'h') {
			try {
				Files.write(Paths.get(path.substring(0, path.length() - 3) + "bin"), outputBinary);
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else if(mode == 'd') {
			try {
				Files.write(Paths.get(path.substring(0, path.length() - 4) + "_bin.txt"), outputDigital.getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return true;
	}
	
	private boolean interpretArguments(String[] args) {
		int n = 1;
		try {
		if(args[n].contentEquals("-mode")) {
			if(args[n + 1].contentEquals("d") || args[n + 1].contentEquals("digital")) {
				mode = 'd';
				n += 2;
			} else if(args[n + 1].contentEquals("h") || args[n + 1].contentEquals("hardware")) {
				mode = 'h';
				n += 2;
			} else return false;
		}
		if(args[n].contentEquals("-mem") || args[n].contentEquals("-memory")) {
			try {
				mem = Integer.parseInt(args[n + 1]);
				n += 2;
			} catch(NumberFormatException e) {
				return false;
			}
		}
		} catch(ArrayIndexOutOfBoundsException e) {
			
		}
		return true;
	}
	
	private boolean convertInstructions() {
		listInstructions = new ArrayList<Instruction>();
		for(int i = 0; i < instructions.size(); i ++) {
			Instruction inst = new Instruction();
			listInstructions.add(inst);
			if(!checkSyntax(instructions.get(i), inst)) {
				System.out.println("Syntax error in line " + (i + 1) + ": " + instructions.get(i));
				return false;
			}
		}
		if(mode == 'h') {
			outputBinary = new byte[2 * mem];
			for(int i = 0; i < listInstructions.size(); i ++) {
				byte[] tmp = listInstructions.get(i).makeBinary().clone();
				outputBinary[2 * i] = tmp[0];
				outputBinary[2 * i + 1] = tmp[1];
			}
		} else if (mode == 'd') {
			for(int i = 0; i < listInstructions.size(); i ++) {
				outputDigital += listInstructions.get(i).makeDigital();
			}
			outputDigital = outputDigital.substring(0, outputDigital.length() - 1);
		} else return false;
		return true;
	}
	
	private boolean checkSyntax(String instruction, Instruction inst) {
		int tmp = instruction.indexOf(" ");
		if(tmp == -1) tmp = instruction.length();
		switch(instruction.substring(0, tmp)) {
		case "NOP":
			if(!(instruction.length() == 3)) return false;
			inst.opcode = Instruction._opcodes.NOP;
			break;
		case "ADD":
			if(instruction.length() < 5) return false;
			try {
				tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3), 16);
				if(tmp < 0 || tmp > 15)
					return false;
			} catch(NumberFormatException e) {
				return false;
			}
			inst.opcode = Instruction._opcodes.ADD;
			inst.argument = tmp;
			break;
		case "SUB":
			if(instruction.length() < 5) return false;
			try {
				tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3), 16);
				if(tmp < 0 || tmp > 15)
					return false;
			} catch(NumberFormatException e) {
				return false;
			}
			inst.opcode = Instruction._opcodes.SUB;
			inst.argument = tmp;
			break;
		case "LDA":
			if(instruction.length() < 5) return false;
			if(instruction.contains("0x")) {
				try {
					tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3), 16);
					if(tmp < 0 || tmp > 15)
						return false;
				} catch(NumberFormatException e) {
					return false;
				}

				inst.opcode = Instruction._opcodes.LDAa;
			} else {
				if(instruction.length() < 5) return false;
				try {
					tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 1), 16);
					if(tmp < 0 || tmp > 255)
						return false;
				} catch(NumberFormatException e) {
					return false;
				}
				inst.opcode = Instruction._opcodes.LDAc;
			}
			inst.argument = tmp;
			break;
		case "LDB":
			if(instruction.length() < 5) return false;
			if(instruction.contains("0x")) {
				try {
					tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3), 16);
					if(tmp < 0 || tmp > 15)
						return false;
				} catch(NumberFormatException e) {
					return false;
				}

				inst.opcode = Instruction._opcodes.LDBa;
			} else {
				if(instruction.length() < 5) return false;
				try {
					tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 1), 16);
					if(tmp < 0 || tmp > 255)
						return false;
				} catch(NumberFormatException e) {
					return false;
				}
				inst.opcode = Instruction._opcodes.LDBc;
			}
			inst.argument = tmp;
			break;
		case "JMP":
			if(instruction.length() < 5) return false;
			try {
				tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3), 16);
				if(tmp < 0 || tmp > 0x6FF)
					return false;
			} catch(NumberFormatException e) {
				return false;
			}
			inst.opcode = Instruction._opcodes.JMP;
			inst.argument = tmp;
			break;
		case "JMPZ":
			if(instruction.length() < 5) return false;
			try {
				tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3), 16);
				if(tmp < 0 || tmp > 0x6FF)
					return false;
			} catch(NumberFormatException e) {
				return false;
			}
			inst.opcode = Instruction._opcodes.JMPZ;
			inst.argument = tmp;
			break;
		case "JMPC":
			if(instruction.length() < 5) return false;
			try {
				tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3), 16);
				if(tmp < 0 || tmp > 0x6FF)
					return false;
			} catch(NumberFormatException e) {
				return false;
			}
			inst.opcode = Instruction._opcodes.JMPC;
			inst.argument = tmp;
			break;
		case "GFX":
			if(instruction.length() < 5) return false;
			int tmp1 = 0;
			int tmp2 = 0;
			try {
				tmp1 = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3, instruction.indexOf(" ", instruction.indexOf(" ") + 1)));
				if(tmp1 < 0 || tmp1 > 0xF) return false;
				tmp2 = Integer.parseInt(instruction.substring(instruction.indexOf(" ", instruction.indexOf(" ") + 1) + 3), 16);
				if(tmp2 < 0 || tmp > 0xFE) return false;
			} catch(Exception e) {
				return false;
			}
			inst.opcode = Instruction._opcodes.GFX;
			inst.argument = tmp1 * 0x100 + tmp2;
			break;
		case "JSUB":
			if(instruction.length() < 5) return false;
			try {
				tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3), 16);
				if(tmp < 0 || tmp > 0x6FF)
					return false;
			} catch(NumberFormatException e) {
				return false;
			}
			inst.opcode = Instruction._opcodes.ADD;
			inst.argument = tmp;
			break;
		case "RSUB":
			if(!(instruction.length() == 4)) return false;
			inst.opcode = Instruction._opcodes.RSUB;
			break;
		case "HALT":
			if(!(instruction.length() == 4)) return false;
			inst.opcode = Instruction._opcodes.HALT;
			break;
		default:
			return false;
		}
		return true;
	}
	
	private boolean readInput(String input) {
		this.input = new File(input);
		try {
			scanner = new Scanner(this.input);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return false;
		}
		instructions = new ArrayList<String>();
		while(scanner.hasNextLine()) {
			instructions.add(scanner.nextLine());
		}
		return true;
	}
}
