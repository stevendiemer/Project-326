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
    output reg timer_flag
    );
	 
reg [1:0] time_remaining;
	 
initial begin time_remaining = 2'b11;
end

always @(posedge clk_250 or negedge rst)
begin
	if(!rst)
	begin
		time_remaining <= 2'b11;
		timer_flag = 0;
	end
	
	else if (time_remaining > 2'b00)
	begin
		time_remaining <= time_remaining - 1;
		timer_flag = 0;
	end
	
	else if (time_remaining == 2'b00)
	begin
		time_remaining <= 0;
		timer_flag = 0;
	end
	
	else
	begin
		time_remaining <= 2'b11;
		timer_flag = 0;
	end
end

endmodule
