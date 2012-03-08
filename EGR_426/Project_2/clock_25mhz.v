`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:38 02/16/2012 
// Design Name: 
// Module Name:    clock_25mhz 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
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
		pixel_clk = ~pixel_clk;
end

endmodule
