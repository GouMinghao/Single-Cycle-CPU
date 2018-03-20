`timescale 1ns / 1ps
module inst_memory(
	input reset,
	input [31:0] readAddress,
	output reg[31:0] inst
    );
	 
	reg [31:0] instMemFile[0:15];
	initial
	begin
		instMemFile[0] = 32'b00001000000000000000000000000100; // j a
		instMemFile[1] = 32'b00000000000000000000000000000000; // nop
		instMemFile[2] = 32'b00000000000000000000000000000000; // nop
		instMemFile[3] = 32'b00000000000000000000000000000000; // nop
		instMemFile[4] = 32'b10101100000001000000000000000000; // sw $4 0($0)
		instMemFile[5] = 32'b10101100000000110000000000000100; // sw $3 4($0)
		instMemFile[6] = 32'b10001100000000010000000000000100; // lw $1 4($0)
		instMemFile[7] = 32'b10001100000000100000000000000000; // lw $2 0($0)
		instMemFile[8] = 32'b00000000001000100001100000100000; // add $3,$1,$2
		instMemFile[9] = 32'b00000000001000100010000000100010; // sub $4,$1,$2
		instMemFile[10] = 32'b00001000000000000000000000000100; // j a
		instMemFile[11] = 32'b00000000000000000000000000000000; // nop
		instMemFile[12] = 32'b00000000000000000000000000000000; // nop
		instMemFile[13] = 32'b00000000000000000000000000000000; // nop
		instMemFile[14] = 32'b00000000000000000000000000000000; // nop
		instMemFile[15] = 32'b00000000000000000000000000000000; // nop
	end
	
	always @(readAddress or reset)
	begin 
		if(reset)
			inst=0;
		else
			inst = instMemFile[readAddress >> 27];
	end
	
endmodule
