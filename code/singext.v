`timescale 1ns / 1ps
module signext(reset,inst,data);
	input[15:0] inst;
	output[31:0] data;
	input reset;
	
	reg[31:0] data;
	
	always @(inst or reset)
	begin
		if(reset)
			data = 0;
		else if (inst[15] ==1)
			data = {16'b1111111111111111,inst};
		else
			data = {16'b0000000000000000,inst};
	end



endmodule
