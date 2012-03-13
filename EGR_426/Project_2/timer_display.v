`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:47 03/12/2012 
// Design Name: 
// Module Name:    timer_display 
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
module timer_display(
	 input [10:0] hcount, 					// Screen placement
	 input [10:0] vcount,
	 input [9:0] time_remaining,			// Time left
	 input blank,
	 input clk,
	 input rst,
    output r_timer,							// Colors to display time
    output g_timer,
    output b_timer
    );

reg [32:0]zero[0:31];
reg [32:0]one[0:31];							// Arrays for numbers
reg [32:0]two[0:31];
reg [32:0]three[0:31];
reg [5:0]rom_address;						// Address to read
reg INTENSITY;
reg in_range;
reg [31:0]rom_data;							// Data to display per line
		
reg [5:0]hc1, vc1;							// Variable to display data

initial $readmemb("zero.dat", zero);
initial $readmemb("one.dat", one);
initial $readmemb("two.dat", two);			// Read in data files for numbers
initial $readmemb("three.dat", three);

always @(posedge clk or negedge rst)
begin
	if(!rst)
	begin
		vc1 <= 0;
		rom_address <= 6'b100000;					// Reset all values
		in_range <= 0;
   end
	
	else if((hcount == 320) && (vcount == 4) && (blank == 0))	// Check if in range for display
	begin
			vc1 <= 0;
			rom_address <= 9'b0;						// Start initial values
			in_range <= 1;
	end
	
	/* While in range display values */
	else if((hcount >= 320) && (hcount < 351) && (vcount > 4) && (vcount <= 36) && (blank == 0))
	begin
		if((hcount == 350))
		begin
			vc1 <= vc1 + 1;
			rom_address <= vc1;				// Increment vc1 when end of horizontal is reached
			in_range <= 1;
		end
		else
		begin
			rom_address <= vc1;				// Keep same line
			in_range <= 1;
		end
	end
	
	else
	begin
		rom_address <= 6'b100000;			// Do nothing
		in_range <= 0;
	end
end

always @(posedge clk or negedge rst)
begin
	if(!rst)
	begin
		hc1 <= 6'b0;								// Reset horizontal counter
	end
	
	else if((hcount >= 320) && (hcount < 351) && (blank == 0))
	begin
		if((hcount >= 320) && (hcount < 351) && (vcount > 4) && (vcount <= 36) && (blank == 0))
			hc1 <= hc1 + 1;						// Increment horizontal counter
	end
	
	else
	begin
		hc1 <= 6'b0;								// Do nothing
	end
end

/* Choose which number to display for time remaining */
always @(time_remaining)
begin
	if (time_remaining > 500)
		rom_data = three[rom_address];		// 3 seconds
	else if (time_remaining > 250)
		rom_data = two[rom_address];			// 2 seconds
	else if (time_remaining > 0)
		rom_data = one[rom_address];			// 1 second
	else if (time_remaining == 0)
		rom_data = zero[rom_address];			// Game over
	else
		rom_data = three[rom_address];
end

// Procedural block to assign pixel values to RGB
always @(posedge clk or negedge rst)
begin
	if(!rst)
		INTENSITY <= 0;
  
	else if((in_range) && (blank == 0))				// Output time left
		INTENSITY <= rom_data[hc1];
 
	else 
		INTENSITY <= 0;
end

assign r_timer = (blank == 0) ? {{INTENSITY}} : 3'b0;
assign g_timer = (blank == 0) ? {{INTENSITY}} : 3'b0;		// Values for displaying timer
assign b_timer = (blank == 0) ? {{INTENSITY}} : 2'b0;

endmodule
