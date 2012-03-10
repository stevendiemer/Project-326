`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:55 03/10/2012 
// Design Name: 
// Module Name:    count_down 
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
module count_down(
    input clk_250,
	 input rst,
    output [1:0] time_remaining
    );

reg [1:0]count_down = 2'b11;

always @(posedge clk_250 or negedge rst)
begin
	if(!rst)
		count_down <= 2'b11;
	else if (clk_250 && (count_down > 0))
		count_down <= count_down - 1;
	else
		count_down <= count_down;
end

assign time_remaining = count_down;

endmodule
