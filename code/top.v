`timescale 1ns / 1ps
module Top(
	input mainClock,
	input [3:0] SWITCH,
	output reg [7:0] LED
);
	reg	[31:0] PC;
	wire clk,reset,REG_DST,
		 JUMP, BRANCH, MEM_READ,
		 MEM_TO_REG, MEM_WRITE,
		 ALU_SRC, REG_WRITE,
		 ZERO;
	wire [1:0] ALU_OP;
	wire [3:0] ALU_CTR;
	wire [31:0] INST;
	wire [31:0] ALU_RES;
	wire [31:0] DATA;
	wire [31:0] READ_DATA;
	wire [31:0] READ_DATA1;
	wire [31:0] READ_DATA2;

	wire [4:0]	OUT1;
	wire [31:0] OUT2;
	wire [31:0] OUT3;
	wire [31:0] OUT4;
	wire [31:0] OUT5;

	wire [7:0] REG1;
	wire [7:0] REG2;
	wire [7:0] REG3;
	wire [7:0] REG4;

	initial
	begin
		PC=0;
	end
	
	timeDivider mainTimeDivider(
	.clockIn(mainClock),
	.clockOut(clk));

	Ctr mainCtr(
	.reset(reset),
	.opCode(INST[31:26]),
	.regDst(REG_DST),
	.jump(JUMP),
	.branch(BRANCH),
	.memRead(MEM_READ),
	.memToReg(MEM_TO_REG),
	.aluOp(ALU_OP),
	.memWrite(MEM_WRITE),
	.aluSrc(ALU_SRC),
	.regWrite(REG_WRITE));

	Alu mainAlu(
	.reset(reset),
	.input1(READ_DATA1),
	.input2(OUT2),
	.aluCtr(ALU_CTR),
	.zero(ZERO),
	.aluRes(ALU_RES));

	AluCtr mainALuCtr(
	.reset(reset),
	.aluOp(ALU_OP),
	.funct(INST[5:0]),
	.aluCtr(ALU_CTR));
	
	data_memory mainDataMemory(
	.clock_in(clk),
	.reset(reset),
	.address(ALU_RES),
	.writeData(READ_DATA2),
	.memWrite(MEM_WRITE),
	.memRead(MEM_READ),
	.readData(READ_DATA));
	
	register mainRegister(
	.clock_in(clk),
	.reset(reset),
	.readReg1(INST[25:21]),
	.readReg2(INST[20:16]),
	.writeReg(OUT1),
	.writeData(OUT3),
	.regWrite(REG_WRITE),
	.readData1(READ_DATA1),
	.readData2(READ_DATA2),
	.register1(REG1),
	.register2(REG2),
	.register3(REG3),
	.register4(REG4));

	signext mainSignExt(
	.inst(INST[15:0]),
	.data(DATA),
	.reset(reset));

	inst_memory mainInstMemory(
	.reset(reset),
	.readAddress(PC),
	.inst(INST));
	
	assign OUT1 = REG_DST ? INST[15:11] : INST[20:16];
	assign OUT2 = ALU_SRC ? DATA : READ_DATA2;
	assign OUT3 = MEM_TO_REG ? READ_DATA : ALU_RES;
	assign OUT4 = (ZERO && BRANCH) ? ((DATA << 2) + PC +4) : (PC + 4);
	assign OUT5 = JUMP ? (PC+4)&32'b111100000000000000000000|(INST[25:0] << 2) : OUT4;

	assign reset = SWITCH[3];
	always 
	begin
		case (SWITCH[2:0]) 
		3'b001:
			LED = REG1;
		3'b010:
			LED = REG2;
		3'b011:
			LED = REG3;
		3'b100:
			LED = REG4;
		3'b111:
			LED = INST[7:0];
		default:
			LED = PC[7:0];
		endcase 
	end

	always @ (posedge clk)
	begin
		if (reset)
			PC = 0;
		else if
			(ZERO & BRANCH) PC = OUT4;
		else if(JUMP)
			PC = OUT5;
		else
			PC = PC+4;
	end

endmodule
