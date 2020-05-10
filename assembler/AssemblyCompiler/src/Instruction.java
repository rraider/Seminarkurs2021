
public class Instruction {
	public enum _opcodes {NOP,ADD,SUB,LDAa,LDAc,LDBa,LDBc,JMP,JMPZ,JMPC,GFX,JSUB,RSUB,EXT,HALT}
	public _opcodes opcode = _opcodes.NOP;
	public int argument = 0;
	public String gfxData = "";
	
	public byte[] makeBinary() {
		byte[] output = new byte[2];
		switch(opcode) {
		case NOP:
			output[0] = 0;
			break;
		case ADD:
			output[0] = 0x10;
			break;
		case SUB:
			output[0] = 0x20;
			break;
		case LDAa:
			output[0] = 0x30;
			break;
		case LDAc:
			output[0] = 0x40;
			break;
		case LDBa:
			output[0] = 0x50;
			break;
		case LDBc:
			output[0] = 0x60;
			break;
		case JMP:
			output[0] = 0x70;
			break;
		case JMPZ:
			output[0] = (byte) 0x80;
			break;
		case JMPC:
			output[0] = (byte) 0x90;
			break;
		case GFX:
			output[0] = (byte) 0xA0;
			break;
		case JSUB:
			output[0] = (byte) 0xB0;
			break;
		case RSUB:
			output[0] = (byte) 0xC0;
			break;
		case EXT:
			output[0] = (byte) 0xE0;
			break;
		case HALT:
			output[0] = (byte) 0xF0;
			break;
		}
		output[0] += argument / 0x100;
		output[1] = (byte) (argument - ((argument/0x100) * 0x100));
		return output;
	}
	
	public String makeDigital() {
		String output = "";
		switch(opcode) {
		case NOP:
			output = "0";
			break;
		case ADD:
			output = "1";
			break;
		case SUB:
			output = "2";
			break;
		case LDAa:
			output = "3";
			break;
		case LDAc:
			output = "4";
			break;
		case LDBa:
			output = "5";
			break;
		case LDBc:
			output = "6";
			break;
		case JMP:
			output = "7";
			break;
		case JMPZ:
			output = "8";
			break;
		case JMPC:
			output = "9";
			break;
		case GFX:
			output = "a";
			break;
		case JSUB:
			output = "b";
			break;
		case RSUB:
			output = "c";
			break;
		case EXT:
			output = "e";
			break;
		case HALT:
			output = "f";
			break;
		}
		String tmp = Integer.toHexString(argument);
		while(tmp.length() < 3) tmp = "0" + tmp;
		output += tmp + ",";
		return output;
	}
}
