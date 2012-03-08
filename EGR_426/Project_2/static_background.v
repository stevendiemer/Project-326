`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:25 02/16/2012 
// Design Name: 
// Module Name:    static_background 
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
module static_background(
    input blank,
    input [10:0] hcount,
    input [10:0] vcount,
    output r,
    output g,
    output b
);

assign r = (((hcount < 640) && (hcount >= 0) && (((vcount < 40) && (vcount >= 0)) || ((vcount <= 480) && (vcount > 440))) && (blank == 0))			// Top/Bottom Bar
         || ((hcount < 40) && (hcount >= 0) && (((vcount < 210) && (vcount >= 100)) || ((vcount < 380) && (vcount >= 270))) && (blank == 0))			// Left Bars
			|| ((hcount < 640) && (hcount >= 600) && (((vcount < 210) && (vcount >= 100)) || ((vcount < 380) && (vcount >= 270))) && (blank == 0))		// Right Bars
			|| ((hcount < 290) && (hcount >= 100) && (((vcount < 210) && (vcount >= 100)) || ((vcount < 380) && (vcount >= 270))) && (blank == 0))		// Left Blocks Center
			|| ((hcount < 540) && (hcount >= 350) && (((vcount < 210) && (vcount >= 100)) || ((vcount < 380) && (vcount >= 270))) && (blank == 0))		// Right Blocks Center
			) ? 1'b1 : 1'b0;
assign g = 1'b0;
assign b = 1'b0;

endmodule
