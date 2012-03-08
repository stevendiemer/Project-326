`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:35:05 02/22/2012 
// Design Name: 
// Module Name:    display_driver 
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
module display_driver(
    input r_back,
    input g_back,
    input b_back,
    input r_char,
    input g_char,
    input b_char,
	 input r_coin,
	 input g_coin,
	 input b_coin,
    output r_buf,
    output g_buf,
    output b_buf
    );

assign r_buf = (r_back || r_char || r_coin);
assign g_buf = (g_back || g_char || g_coin);
assign b_buf = (b_back || b_char || b_coin);

endmodule
