`timescale 1ns / 1ps
module register(
	input clock_in,
	input reset,
	input [25:21] readReg1,
	input [20:16] readReg2,
	input [4:0] writeReg,
	input [31:0] writeData,
	input regWrite,
	output reg [31:0] readData1,
	output reg [31:0] readData2,
	output [7:0] register1,
	output [7:0] register2,
	output [7:0] register3,
	output [7:0] register4
);

	reg [31:0] regFile[31:0];
	
	initial
	begin
		regFile[0] = 32'b00000000000000000000000000000000;
		regFile[1] = 32'b00000000000000000000000000000001;
		regFile[2] = 32'b00000000000000000000000000000010;
		regFile[3] = 32'b00000000000000000000000000000011;
		regFile[4] = 32'b00000000000000000000000000000100;
		regFile[5] = 32'b00000000000000000000000000000101;
		regFile[6] = 32'b00000000000000000000000000000110;
		regFile[7] = 32'b00000000000000000000000000000111;
		regFile[8] = 32'b00000000000000000000000000001000;
		regFile[9] = 32'b00000000000000000000000000001001;
		regFile[10] = 32'b00000000000000000000000000001010;
		regFile[11] = 32'b00000000000000000000000000001011;
		regFile[12] = 32'b00000000000000000000000000001100;
		regFile[13] = 32'b00000000000000000000000000001101;
		regFile[14] = 32'b00000000000000000000000000001110;
		regFile[15] = 32'b00000000000000000000000000001111;
		regFile[16] = 32'b00000000000000000000000000010000;
		regFile[17] = 32'b00000000000000000000000000010001;
		regFile[18] = 32'b00000000000000000000000000010010;
		regFile[19] = 32'b00000000000000000000000000010011;
		regFile[20] = 32'b00000000000000000000000000010100;
		regFile[21] = 32'b00000000000000000000000000010101;
		regFile[22] = 32'b00000000000000000000000000010110;
		regFile[23] = 32'b00000000000000000000000000010111;
		regFile[24] = 32'b00000000000000000000000000011000;
		regFile[25] = 32'b00000000000000000000000000011001;
		regFile[26] = 32'b00000000000000000000000000011010;
		regFile[27] = 32'b00000000000000000000000000011011;
		regFile[28] = 32'b00000000000000000000000000011100;
		regFile[29] = 32'b00000000000000000000000000011101;
		regFile[30] = 32'b00000000000000000000000000011110;
		regFile[31] = 32'b00000000000000000000000000011111;
	end
	
	assign register1 = regFile[1][7:0];
	assign register2 = regFile[2][7:0];
	assign register3 = regFile[3][7:0];
	assign register4 = regFile[4][7:0];
	
	

	always @ (readReg1 or readReg2 or writeReg or writeData or reset)/// 
	begin
		if (reset) 
			begin
				readData1 = 0;
				readData2 = 0;
			end
		else 
			begin
				readData1 = regFile[readReg1];
				readData2 = regFile[readReg2];
			end
	end

	always @ (negedge clock_in) 
	begin
		if (reset) 
			begin
				regFile[0] = 32'b00000000000000000000000000000000;
				regFile[1] = 32'b00000000000000000000000000000001;
				regFile[2] = 32'b00000000000000000000000000000010;
				regFile[3] = 32'b00000000000000000000000000000011;
				regFile[4] = 32'b00000000000000000000000000000100;
				regFile[5] = 32'b00000000000000000000000000000101;
				regFile[6] = 32'b00000000000000000000000000000110;
				regFile[7] = 32'b00000000000000000000000000000111;
				regFile[8] = 32'b00000000000000000000000000001000;
				regFile[9] = 32'b00000000000000000000000000001001;
				regFile[10] = 32'b00000000000000000000000000001010;
				regFile[11] = 32'b00000000000000000000000000001011;
				regFile[12] = 32'b00000000000000000000000000001100;
				regFile[13] = 32'b00000000000000000000000000001101;
				regFile[14] = 32'b00000000000000000000000000001110;
				regFile[15] = 32'b00000000000000000000000000001111;
				regFile[16] = 32'b00000000000000000000000000010000;
				regFile[17] = 32'b00000000000000000000000000010001;
				regFile[18] = 32'b00000000000000000000000000010010;
				regFile[19] = 32'b00000000000000000000000000010011;
				regFile[20] = 32'b00000000000000000000000000010100;
				regFile[21] = 32'b00000000000000000000000000010101;
				regFile[22] = 32'b00000000000000000000000000010110;
				regFile[23] = 32'b00000000000000000000000000010111;
				regFile[24] = 32'b00000000000000000000000000011000;
				regFile[25] = 32'b00000000000000000000000000011001;
				regFile[26] = 32'b00000000000000000000000000011010;
				regFile[27] = 32'b00000000000000000000000000011011;
				regFile[28] = 32'b00000000000000000000000000011100;
				regFile[29] = 32'b00000000000000000000000000011101;
				regFile[30] = 32'b00000000000000000000000000011110;
				regFile[31] = 32'b00000000000000000000000000011111;
			end
		else 
			begin
				if (regWrite)
					regFile[writeReg] = writeData;
			end
	end
endmodule