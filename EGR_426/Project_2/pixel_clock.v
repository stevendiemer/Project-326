`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:53 02/13/2012 
// Design Name: 
// Module Name:    pixel_clock 
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
module pixel_clock(
    input clk, reset,
    output reg pixel_clock
    );

reg [1:0]output_signal;

always @(posedge clk or negedge reset)
begin
	if (!reset)
	begin
		output_signal <= 2'b0;
		pixel_clock <= 0;
	end
	else if (output_signal == 2'b11)
	begin
		output_signal <= 2'b0;
		pixel_clock <= ~pixel_clock;
	end
	else
		output_signal <= output_signal + 1;
end

endmodule
