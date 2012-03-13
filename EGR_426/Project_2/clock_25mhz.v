`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Steven Diemer
// 
// Create Date:    18:10:38 02/16/2012 
// Design Name: 
// Module Name:    clock_25mhz 
// Project Name: Maze That Pays
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 2.0 - Playable files
// Additional Comments: Responsible for implementing a 25mHz clock speed
//
//////////////////////////////////////////////////////////////////////////////////
module clock_25mhz(
    input clk,
	 input reset,
    output reg pixel_clk
);
	 
always @(posedge clk or negedge reset)
begin
	if(!reset)
		pixel_clk = 0;
	else
		pixel_clk = ~pixel_clk;					// Divide clock to 25mHz
end

endmodule
