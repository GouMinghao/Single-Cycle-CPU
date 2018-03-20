`timescale 1ns / 1ps
module AluCtr(
	input reset,
	input [1:0] aluOp,
	input [5:0] funct,
	output reg [3:0] aluCtr
);
	always @ (aluOp or funct or reset) 
	begin
		if (reset)
			aluCtr = 0;
		else////
			begin////
				casex ({aluOp, funct}) 
				8'b00xxxxxx:  // lw sw
					aluCtr = 4'b0010;
				8'b01xxxxxx: // beq 
					aluCtr = 4'b0110;
				8'b10100000:  // R-type add
					aluCtr = 4'b0010;
				8'b10100010: // R-type subtract 
					aluCtr = 4'b0110;
				8'b10100100: // R-type and 
					aluCtr = 4'b0000;
				8'b10100101: // R-type or 
					aluCtr = 4'b0001;
				8'b10101010: // R-type slt 
					aluCtr = 4'b0111;
				endcase
			end
	end
endmodule

