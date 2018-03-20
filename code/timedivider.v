`timescale 1ns / 1ps
module timeDivider(
input clockIn, 
output reg clockOut
);

reg [24:0] buffer;////

initial 
begin 
	buffer = 0;
	clockOut = 0;///// 
end
always @ (posedge clockIn) 
begin
	buffer <= buffer + 1;
	clockOut <= buffer[24];
end 
endmodule
