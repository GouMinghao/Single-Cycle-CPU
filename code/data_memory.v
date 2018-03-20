`timescale 1ns / 1ps
module data_memory(
	input clock_in,
	input reset,
	input [31:0] address,
	input [31:0] writeData,
	input memWrite,
	input memRead,
	output reg [31:0] readData
);

	reg[31:0]memFile[31:0];
	
	
	initial
	begin
		memFile[0] = 32'b00000000000000000000000000000000;
		memFile[1] = 32'b00000000000000000000000000000001;
		memFile[2] = 32'b00000000000000000000000000000010;
		memFile[3] = 32'b00000000000000000000000000000011;
		memFile[4] = 32'b00000000000000000000000000000100;
		memFile[5] = 32'b00000000000000000000000000000101;
		memFile[6] = 32'b00000000000000000000000000000110;
		memFile[7] = 32'b00000000000000000000000000000111;
		memFile[8] = 32'b00000000000000000000000000001000;
		memFile[9] = 32'b00000000000000000000000000001001;
		memFile[10] = 32'b00000000000000000000000000001010;
		memFile[11] = 32'b00000000000000000000000000001011;
		memFile[12] = 32'b00000000000000000000000000001100;
		memFile[13] = 32'b00000000000000000000000000001101;
		memFile[14] = 32'b00000000000000000000000000001110;
		memFile[15] = 32'b00000000000000000000000000001111;
		memFile[16] = 32'b00000000000000000000000000010000;
		memFile[17] = 32'b00000000000000000000000000010001;
		memFile[18] = 32'b00000000000000000000000000010010;
		memFile[19] = 32'b00000000000000000000000000010011;
		memFile[20] = 32'b00000000000000000000000000010100;
		memFile[21] = 32'b00000000000000000000000000010101;
		memFile[22] = 32'b00000000000000000000000000010110;
		memFile[23] = 32'b00000000000000000000000000010111;
		memFile[24] = 32'b00000000000000000000000000011000;
		memFile[25] = 32'b00000000000000000000000000011001;
		memFile[26] = 32'b00000000000000000000000000011010;
		memFile[27] = 32'b00000000000000000000000000011011;
		memFile[28] = 32'b00000000000000000000000000011100;
		memFile[29] = 32'b00000000000000000000000000011101;
		memFile[30] = 32'b00000000000000000000000000011110;
		memFile[31] = 32'b00000000000000000000000000011111;
	end

	always @ (memRead or address or reset)//// 
	begin
		if(reset)
			readData = 0;
		else if(memRead)
			readData = memFile[address >> 27];
	end

	always @ (negedge clock_in)
	begin
		if(reset)//// 
			begin
				memFile[0] = 32'b00000000000000000000000000000000;
				memFile[1] = 32'b00000000000000000000000000000001;
				memFile[2] = 32'b00000000000000000000000000000010;
				memFile[3] = 32'b00000000000000000000000000000011;
				memFile[4] = 32'b00000000000000000000000000000100;
				memFile[5] = 32'b00000000000000000000000000000101;
				memFile[6] = 32'b00000000000000000000000000000110;
				memFile[7] = 32'b00000000000000000000000000000111;
				memFile[8] = 32'b00000000000000000000000000001000;
				memFile[9] = 32'b00000000000000000000000000001001;
				memFile[10] = 32'b00000000000000000000000000001010;
				memFile[11] = 32'b00000000000000000000000000001011;
				memFile[12] = 32'b00000000000000000000000000001100;
				memFile[13] = 32'b00000000000000000000000000001101;
				memFile[14] = 32'b00000000000000000000000000001110;
				memFile[15] = 32'b00000000000000000000000000001111;
				memFile[16] = 32'b00000000000000000000000000010000;
				memFile[17] = 32'b00000000000000000000000000010001;
				memFile[18] = 32'b00000000000000000000000000010010;
				memFile[19] = 32'b00000000000000000000000000010011;
				memFile[20] = 32'b00000000000000000000000000010100;
				memFile[21] = 32'b00000000000000000000000000010101;
				memFile[22] = 32'b00000000000000000000000000010110;
				memFile[23] = 32'b00000000000000000000000000010111;
				memFile[24] = 32'b00000000000000000000000000011000;
				memFile[25] = 32'b00000000000000000000000000011001;
				memFile[26] = 32'b00000000000000000000000000011010;
				memFile[27] = 32'b00000000000000000000000000011011;
				memFile[28] = 32'b00000000000000000000000000011100;
				memFile[29] = 32'b00000000000000000000000000011101;
				memFile[30] = 32'b00000000000000000000000000011110;
				memFile[31] = 32'b00000000000000000000000000011111;
			end
		else if(memWrite)
			memFile[address >> 27] = writeData;
	end 
endmodule