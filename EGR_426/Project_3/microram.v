`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:46 03/16/2011 
// Design Name: 
// Module Name:    microram 
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
module microram(CLOCK, ADDRESS, DATAOUT, DATAIN, WE);

input CLOCK,WE;
input [8:0]ADDRESS;
input [7:0]DATAIN;
output [7:0]DATAOUT;


// --------- Instantiate 512x8 RAM -----------
testfile U1 (
    .clka(CLOCK),
    .dina(DATAIN), // Bus [7 : 0] 
    .addra(ADDRESS), // Bus [8 : 0] 
    .wea(WE), // Bus [0 : 0] 
    .douta(DATAOUT)); // Bus [7 : 0] 
	 



endmodule
