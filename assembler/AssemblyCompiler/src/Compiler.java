import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Compiler {
	private List<String> instructions;
	private char mode = 'h';
	private int mem = 2048;
	private List<Instruction> listInstructions;
	private byte[] outputBinary;
	private String outputDigital = "";
	private File gfxFile;
	private List<String> gfxData;
	private List<Instruction> gfxList;
	private boolean graphicsExist = false;
	
	public static void main(String[] args) {
		Compiler c = new Compiler();
		try {
			c.listInstructions = new ArrayList<Instruction>();
			c.gfxList = new ArrayList<Instruction>();
			c.instructions = new ArrayList<String>();
			c.gfxData = new ArrayList<String>();
			if(!c.interpretArguments(args) || !c.readInput(args[0], false)) {
				System.out.println("Syntax error in compile arguments");
				return;
			}
			if(c.instructions.size() > (c.mem - 0x102)) {
				System.out.println("Program is bigger than EEPROM memory");
				return;
			}
			if(!(c.gfxFile == null)) {
				if(!c.readInput(c.gfxFile.getPath(), true)) return;
				if(c.gfxData.size() > 0xFF) {
					System.out.println("Too much Graphics Data");
					return;
				}
			}
			if(!c.convertInstructions(false, c.instructions)) {
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
				for(int i = 0; i < outputBinary.length; i++) {
					byte[] split = {outputBinary[i]};
					if(i % 2 == 0)
						Files.write(Paths.get(path.substring(0, path.length() - 4) + "1.bin"), split, (OpenOption)StandardOpenOption.APPEND);
					else
						Files.write(Paths.get(path.substring(0, path.length() - 4) + "0.bin"), split, (OpenOption)StandardOpenOption.APPEND);
				}
				//Files.write(Paths.get(path.substring(0, path.length() - 3) + "bin"), outputBinary);
				//Files.write(Paths.get(path.substring(0, path.length() - 3) + "bin"), outputBinary);
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
			if(args[n].contentEquals("-g") || args[n].contentEquals("-gfx") || args[n].contentEquals("-graphics")) {
				File tmp = new File(args[n + 1]);
				if(!tmp.exists()) return false;
				gfxFile = tmp;
				n += 2;
			}
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
		} catch(Exception e) {
			
		}
		return true;
	}
	
	private boolean convertInstructions(boolean gfx, List<String> input) {
		List<Instruction> list = new ArrayList<Instruction>();
		for(int i = 0; i < input.size(); i ++) {
			Instruction inst = new Instruction();
			list.add(inst);
			if(!gfx && !checkSyntax(input.get(i), inst)) {
				System.out.println("Syntax error in line " + (i + 1) + ": " + input.get(i));
				return false;
			}
			if(gfx) {
				int tmp = Integer.parseInt(input.get(i), 16);
				if(tmp < 0 || tmp > 0xFF) return false; 
				list.get(i).gfxData = Integer.toHexString(tmp);
			}
		}
		if(gfx)
			gfxList = list;
		else
			listInstructions = list;
		if(gfx) return true;
		if(mode == 'h') {
			outputBinary = new byte[2 * mem];
			for(int i = 0; i < list.size(); i ++) {
				byte[] tmp = list.get(i).makeBinary().clone();
				outputBinary[2 * i] = tmp[0];
				outputBinary[2 * i + 1] = tmp[1];
			}
			outputBinary[2*0x6FF] = 0x79; //old value without stack: 0x7F
			outputBinary[2*0x6FF+1] = 0x00; //old value without stack: 0x00
			if(graphicsExist) {
				if(!convertInstructions(true, gfxData)) return false;
				for(int i = 0; i < gfxList.size(); i ++) {
					byte[] tmp = new byte[2];
					tmp[0] = (byte) (Byte.parseByte(gfxList.get(i).gfxData) / (byte)0xFF);
					tmp[1] = Byte.parseByte(gfxList.get(i).gfxData);
					outputBinary[2 * i + 2 * 0x700 + 1] = tmp[0];
				}
			}
		} else if (mode == 'd') {
			for(int i = 0; i < list.size(); i ++) {
				outputDigital += list.get(i).makeDigital();
			}
			if(graphicsExist) {
				if(!convertInstructions(true, gfxData)) return false;
				while(outputDigital.length() < 5 * 0x700) outputDigital += "0000,";
				for(int i = 0; i < gfxList.size(); i ++) {
					String tmp = gfxList.get(i).gfxData;
					while(tmp.length() < 4) tmp = "0" + tmp;
					outputDigital += tmp + ",";
				}
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
				if(tmp < 0 || tmp > 0xFFF)
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
				if(tmp < 0 || tmp > 0xFFF)
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
					if(tmp < 0 || tmp > 0xFFF)
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
					if(tmp < 0 || tmp > 0xFFF)
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
				if(tmp < 0 || (tmp > 0x6FF && tmp < 0xF00) || tmp > 0xFFF)
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
				if(tmp < 0 || (tmp > 0x6FF && tmp < 0xF00) || tmp > 0xFFF)
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
				if(tmp < 0 || (tmp > 0x6FF && tmp < 0xF00) || tmp > 0xFFF)
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
				tmp1 = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3, instruction.indexOf(" ", instruction.indexOf(" ") + 1)), 16);
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
				if(tmp < 0 || (tmp > 0x6FF && tmp < 0xF00) || tmp > 0xFFF)
					return false;
			} catch(NumberFormatException e) {
				return false;
			}
			inst.opcode = Instruction._opcodes.JSUB;
			inst.argument = tmp;
			break;
		case "RSUB":
			if(!(instruction.length() == 4)) return false;
			inst.opcode = Instruction._opcodes.RSUB;
			break;
		case "SOT":
			if(instruction.length() < 5) return false;
			try {
				tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 1), 16);
				if(tmp < 0 || tmp > 0xF)
					return false;
			} catch(NumberFormatException e) {
				return false;
			}
			inst.opcode = Instruction._opcodes.SOT;
			inst.argument = tmp;
			break;
		case "EXT":
			if(instruction.length() < 5) return false;
			try {
				tmp = Integer.parseInt(instruction.substring(instruction.indexOf(" ") + 3), 16);
				if(tmp < 0 || tmp > 0xFFF)
					return false;
			} catch(NumberFormatException e) {
				return false;
			}
			inst.opcode = Instruction._opcodes.EXT;
			inst.argument = tmp;
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
	
	private boolean readInput(String input, boolean gfx) {
		File _input = new File(input);
		List<String> list = new ArrayList<String>();
		Scanner scanner;
		try {
			scanner = new Scanner(_input);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return false;
		}
		while(scanner.hasNextLine()) {
			list.add(scanner.nextLine());
		}
		scanner.close();
		if(gfx) {
			gfxFile = _input;
			gfxData = list;
		} else {
			instructions = list;
		}
		graphicsExist = true;
		return true;
	}
}
