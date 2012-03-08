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
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clock_250Hz(
    input clk,
    input reset,
    output reg clk_250
    );

reg [17:0]clk_div;

always @(posedge clk or negedge reset)
begin
	if(!reset)
	begin
		clk_div <= 0;
		clk_250 <= 1'b0;
	end
	else if(clk_div == 100000)
	begin
		clk_div <= 0;
		clk_250 <= ~clk_250;
	end
	else
		clk_div <= clk_div + 1;
end

endmodule
