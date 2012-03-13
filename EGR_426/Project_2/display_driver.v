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
// Revision 2.0 - Playable files
// Additional Comments: Responsible for displaying all the colors
//
//////////////////////////////////////////////////////////////////////////////////
module display_driver(
    input r_back,
    input g_back,
    input b_back,
    input r_char,
    input g_char,
    input b_char,					// Display Inputs
	 input r_coin,
	 input g_coin,
	 input b_coin,
	 input r_mess,
	 input g_mess,
	 input b_mess,
	 input r_timer,
	 input g_timer,
	 input b_timer,
    output r_buf,
    output g_buf,					// Final Outputs
    output b_buf
    );


/* These are organized to display win or loss messages with priority */
assign r_buf = (r_mess || r_timer) ? ((r_mess) ? r_mess : r_timer) : (r_back || r_char || r_coin);
assign g_buf = (g_mess || g_timer) ? ((g_mess) ? g_mess : g_timer) : (g_back || g_char || g_coin);
assign b_buf = (b_mess || b_timer) ? ((b_mess) ? b_mess : b_timer) : (b_back || b_char || b_coin);

endmodule
