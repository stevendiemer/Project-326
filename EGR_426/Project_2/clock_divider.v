`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:23:44 02/23/2012 
// Design Name: 
// Module Name:    clock_divider 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 2.0 - Playable files
// Additional Comments: Responsible for player movement timer and count down timer
//
//////////////////////////////////////////////////////////////////////////////////
module clock_250Hz(
    input clk,					// Clock input
    input reset,				// Reset
    output reg clk_250		// 250 Hz clock
    );

reg [17:0]clk_div;			// Divider to achieve 250 Hz

always @(posedge clk or negedge reset)
begin
	if(!reset)
	begin
		clk_div <= 0;
		clk_250 <= 1'b0;							// Reset timer
	end
	else if(clk_div == 100000)					// Check for 250 Hz
	begin
		clk_div <= 0;
		clk_250 <= ~clk_250;						// Toggle clock
	end
	else
		clk_div <= clk_div + 1;					// Increment divider
end

endmodule
