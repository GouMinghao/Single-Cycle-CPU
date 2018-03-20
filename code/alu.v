`timescale 1ns / 1ps
module Alu(
	input reset,
	input [31:0] input1,
	input [31:0] input2,
	input [3:0] aluCtr,
	output reg zero,
	output reg [31:0] aluRes
);

	always @ (input1 or input2 or aluCtr or reset)
	begin 
		if(reset)
		begin
			zero = 0;
			aluRes = 0;
		end
			
		else if (aluCtr == 4'b0010)
			aluRes = input1 + input2;
			
		else if(aluCtr == 4'b0110)
		begin
			aluRes = input1 - input2;
			if (aluRes == 0)
				zero =1;
			else
				zero =0;
		end
		
		else if(aluCtr == 4'b0000)//and
		begin
			aluRes = input1 & input2;
		end
		
		else if(aluCtr == 4'b0001)//or
		begin
			aluRes = input1 | input2; 
		end
		
		else if(aluCtr == 4'b0111)//slt
		begin
			if(input1<input2)
			begin
				aluRes = 32'b00000000000000000000000000000001;
			end
		end
		
	end

endmodule
