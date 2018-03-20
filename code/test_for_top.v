`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:04:56 11/29/2017
// Design Name:   Top
// Module Name:   G:/Lab5/test_for_top.v
// Project Name:  Lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_for_top;

	// Inputs
	reg mainClock;
	reg [3:0] SWITCH;
	wire [7:0] LED;
	// Outputs

	parameter DELY = 20;
	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.mainClock(mainClock), 
		.SWITCH(SWITCH),
		.LED(LED)
	);

	always #(DELY/2) mainClock = ~mainClock;
	initial begin
		// Initialize Inputs
		mainClock = 0;
		SWITCH  = 3'b000;

		// Wait 100 ns for global reset to finish
		#200;
        
		// Add stimulus here
	end
      
endmodule

