`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:56 03/23/2011
// Design Name:   cpu
// Module Name:   C:/chirag/GVSUcourses/Winter11/EGR426/Projects/Project3/verilog/cpu/cputb1.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cputb1;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] Inport0;
	reg [7:0] Inport1;

	// Outputs
	wire [7:0] Outport0;
	wire [7:0] Outport1;

	// Instantiate the Unit Under Test (UUT)
	cpu C1 (
		.clk(clk), 
		.reset(reset), 
		.Inport0(Inport0), 
		.Inport1(Inport1), 
		.Outport0(Outport0), 
		.Outport1(Outport1)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		Inport0 = 0;
		Inport1 = 0;

		// Wait 100 ns for global reset to finish
		#100 reset = 0;
        
		// Add stimulus here
	end
	
	always #10 clk = ~clk;		// Generate clock
	
   initial #1000 $stop;
      
endmodule

