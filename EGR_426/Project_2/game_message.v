`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:59 03/08/2012 
// Design Name: 
// Module Name:    game_message 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 2.0 - Playable files
// Additional Comments: Used to display whether won or lost.
//
//////////////////////////////////////////////////////////////////////////////////
module game_message(
    input [3:0] coins_left,					// Coin count
	 input [10:0] hcount, 
	 input [10:0] vcount,						// Screen placement
	 input clk,
	 input clk_250,								// Input clocks
	 input rst,
	 input blank,
    output r_win,									// Win/Loss display outputs
    output g_win,
    output b_win,
	 output reg [9:0] time_remaining			// Timer left
    );

reg [256:0]win[0:127];							// Array for winning
reg [256:0]loss[0:127];							// Array for losing
reg [8:0]rom_address;							// Location for ROM
reg INTENSITY;										// Output
reg in_range;
reg loser;											// Check if lost
wire [255:0]rom_data;							// Hold data

reg [8:0]hc1, vc1;								// ROM counters for displaying data

initial 
begin 
	time_remaining = 1000; 						// Time to play
	loser = 0;										// Loss variable
end

initial $readmemb("win.dat", win);			// Read in WIN display
initial $readmemb("loss.dat", loss);		// Read in LOSS display

always @(posedge clk or negedge rst)
begin
	if(!rst)
	begin
		vc1 <= 0;
		rom_address <= 9'b100000000;			// Reset values
		in_range <= 0;
   end
	
	else if((hcount == 192) && (vcount == 176) && (blank == 0))		// Check if in range of display
	begin
			vc1 <= 0;
			rom_address <= 9'b0;
			in_range <= 1;
	end
	
	else if((hcount > 192) && (hcount <= 448) && (vcount > 176) && (vcount <= 304) && (blank == 0))	 // Checks in range
	begin
		if((hcount == 448))					// Increments vc1 if end of line is reached
		begin
			vc1 <= vc1 + 1;
			rom_address <= vc1;
			in_range <= 1;
		end
		else
		begin
			rom_address <= vc1;				// Keep same rom_address
			in_range <= 1;
		end
	end
	
	else
	begin
		rom_address <= 9'b100000000;		// Do nothing
		in_range <= 0;
	end
end

always @(posedge clk or negedge rst)
begin
	if(!rst)
	begin
		hc1 <= 9'b0;							// Reset horizontal placement
	end
	
	else if((hcount > 192) && (hcount <= 448) && (blank == 0))		// Check if in range
	begin
		if((hcount > 192) && (hcount <= 448) && (vcount > 176) && (vcount <= 304) && (blank == 0))
			hc1 <= hc1 + 1;					// Increment horizontal cound
	end
	
	else
	begin
		hc1 <= 9'b0;
	end
end

/* Get rom data to display depending on coins left when time runs out */
assign rom_data = (time_remaining == 0) ? (((coins_left == 4'b0) && (loser != 1)) ? win[rom_address] : loss[rom_address]) : 0;

/* Counter to count down time remaining */
always @(posedge clk_250 or negedge rst)
begin
	if (!rst)
	begin
		time_remaining <= 1000;						// 4 Seconds
		loser = 0;
	end
	
	else if (time_remaining > 0)
		time_remaining <= time_remaining - 1;	// Removing time at 250 Hz
		
	else if (time_remaining == 0)					// Check for end of game
	begin
		time_remaining <= 0;
		if(coins_left > 0)							// If coins exist, you lose
			loser = 1;
	end
	
	else
		time_remaining <= 1000;						// Do nothing
end

// Procedural block to assign pixel values to RGB
always @(posedge clk or negedge rst)
begin
	if(!rst)
		INTENSITY <= 0;								// Display nothing
  
	else if((in_range) && (blank == 0))
		INTENSITY <= rom_data[hc1];				// Display message at end of game
 
	else 
		INTENSITY <= 0;								// Display nothing
end

assign r_win = (blank == 0) ? {{INTENSITY}} : 3'b0;
assign g_win = (blank == 0) ? {{INTENSITY}} : 3'b0;		// Message display to player
assign b_win = (blank == 0) ? {{INTENSITY}} : 2'b0;

endmodule
