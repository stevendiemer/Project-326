`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:25 03/01/2012 
// Design Name: 
// Module Name:    coins 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 2.0 - Playable files
// Additional Comments: Responsible for displaying the four coins on the screen
//
//////////////////////////////////////////////////////////////////////////////////
module coins(
	input clk,							// Clock
	input reset,						// Reset
   input [10:0] hcount,				// Screen placement
   input [10:0] vcount,
   input blank,
	input [9:0] char_left,			// Left side of character
	input [9:0] char_top,			// Top of character
   output r_coin,
   output g_coin,						// Coin outputs
   output b_coin,
	output reg [3:0] coin_display		// Coins to display
   );

reg [32:0]coin[0:31];					// Coin array
reg [5:0]rom_address1, rom_address2, rom_address3, rom_address4;	// Address for each coin
reg INTENSITY;							// Output
reg in_range1;							// In range variables for each coin
reg in_range2;
reg in_range3;
reg in_range4;

wire [31:0]rom_data1;				// Used to store coin data
wire [31:0]rom_data2;
wire [31:0]rom_data3;
wire [31:0]rom_data4;

reg [5:0]hc1, vc1, hc2, vc2, hc3, vc3, hc4, vc4;	// Variables for displaying coins
reg [10:0]hstart1,hend1,vstart1,vend1;					// Exact placements for each coin
reg [10:0]hstart2,hend2,vstart2,vend2;
reg [10:0]hstart3,hend3,vstart3,vend3;
reg [10:0]hstart4,hend4,vstart4,vend4;

initial
begin
	$readmemb("coin.dat", coin);			// Initializing ROM with data
	hstart1 <= 11'b00001100110;			// Set coin boundaries for coin 1
	hend1 <=   11'b00010000100;
	vstart1 <= 11'b00000110110;
	vend1 <=   11'b00001010110;
	
	hstart2 <= 11'b00010011010;			// Set coin boundaries for coin 2
	hend2 <=   11'b00010111000;
	vstart2 <= 11'b00000110110;
	vend2 <=   11'b00001010110;
	
	hstart3 <= 11'b00011001110;			// Set coin boundaries for coin 3
	hend3 <=   11'b00011101100;
	vstart3 <= 11'b00000110110;
	vend3 <=   11'b00001010110;
	
	hstart4 <= 11'b00100000010;			// Set coin boundaries for coin 4
	hend4 <=   11'b00100100000;
	vstart4 <= 11'b00000110110;
	vend4 <=   11'b00001010110;
end

// Procedural block to generate address for ROM
always @(posedge clk or negedge reset)
begin
	if(!reset)
	begin
		vc1 <= 0;								// Reset coins to position
		vc2 <= 0;
		rom_address1 <= 6'b100000;
		rom_address2 <= 6'b100000;
		in_range1 <= 0;
		in_range2 <= 0;
    end
	 
	 /* Used to display the starts of coins 1 and two */
	else if(((hcount == hstart1) && (vcount == vstart1) && (blank == 0)) || ((hcount == hstart2) && (vcount == vstart2) && (blank == 0)))
	begin
		if((hcount == hstart1) && (vcount == vstart1) && (blank == 0) && (coin_display[3] == 1))		// Check if in range coin 1
		begin
			vc1 <= 0;
			rom_address1 <= 6'b0;
			in_range1 <= 1;
		end
		else if((hcount == hstart2) && (vcount == vstart2) && (blank == 0) && (coin_display[2] == 1))	// Check if in range coin 2
		begin
			vc2 <= 0;
			rom_address2 <= 6'b0;
			in_range2 <= 1;
		end
	end
	
	/* Display output if coin is in range */
	else if((hcount >= hstart1) && (hcount <= hend1) && (vcount >= vstart1) && (vcount <= vend1) && (blank == 0) && (coin_display[3] == 1))
	begin
		if((hcount == hend1))		// Increment vc1 if end of coin 1 is reached
		begin
			vc1 <= vc1 + 1;
			rom_address1 <= vc1;
			in_range1 <= 1;
		end
		else
		begin
			rom_address1 <= vc1;		// Display current vertical layer coin 1
			in_range1 <= 1;
		end
	end
	
	/* Display output if coin is in range */
	else if((hcount >= hstart2) && (hcount <= hend2) && (vcount >= vstart2) && (vcount <= vend2) && (blank == 0) && (coin_display[2] == 1))
	begin
		if((hcount == hend2))		// Increment vc2 if end of coin 2 is reached
		begin
			vc2 <= vc2 + 1;
			rom_address2 <= vc2;
			in_range2 <= 1;
		end
		else
		begin
			rom_address2 <= vc2;		// Display current vertical layer coin 2
			in_range2 <= 1;
		end
	end
	else
	begin
		rom_address1 <= 6'b100000;	// Set ROM address if all else fails
		rom_address2 <= 6'b100000;
		in_range1 <= 0;				// Take coins out of range
		in_range2 <= 0;
	end
end


// Procedural block to generate address for ROM
always @(posedge clk or negedge reset)
begin
	if(!reset)							// Reset coins to position
	begin
		vc3 <= 0;
		vc4 <= 0;
		rom_address3 <= 6'b100000;
		rom_address4 <= 6'b100000;
		in_range3 <= 0;
		in_range4 <= 0;
    end
	 
	 /* Used to display the starts of coins 3 and 4 */
	else if(((hcount == hstart3) && (vcount == vstart3) && (blank == 0)) || ((hcount == hstart4) && (vcount == vstart4) && (blank == 0)))
	begin
		if((hcount == hstart3) && (vcount == vstart3) && (blank == 0) && (coin_display[1] == 1))	// Check if in range coin 3
		begin
			vc3 <= 0;
			rom_address3 <= 6'b0;
			in_range3 <= 1;
		end
		else if((hcount == hstart4) && (vcount == vstart4) && (blank == 0) && (coin_display[0] == 1))	// Check if in range coin 4
		begin
			vc4 <= 0;
			rom_address4 <= 6'b0;
			in_range4 <= 1;
		end
	end
	
	/* Display output if coin is in range */
	else if((hcount >= hstart3) && (hcount <= hend3) && (vcount >= vstart3) && (vcount <= vend3) && (blank == 0) && (coin_display[1] == 1))
	begin
		if((hcount == hend3))		// Increment vc3 if end of coin 3 is reached
		begin
			vc3 <= vc3 + 1;
			rom_address3 <= vc3;
			in_range3 <= 1;
		end
		else
		begin
			rom_address3 <= vc3;		// Display current vertical layer coin 3
			in_range3 <= 1;
		end
	end
	
	/* Display output if coin is in range */
	else if((hcount >= hstart4) && (hcount <= hend4) && (vcount >= vstart4) && (vcount <= vend4) && (blank == 0) && (coin_display[0] == 1))
	begin
		if((hcount == hend4))		// Increment vc3 if end of coin 4 is reached
		begin
			vc4 <= vc4 + 1;
			rom_address4 <= vc4;
			in_range4 <= 1;
		end
		else
		begin
			rom_address4 <= vc4;		// Display current vertical layer coin 4
			in_range4 <= 1;
		end
	end
	else
	begin
		rom_address3 <= 6'b100000;	// Set ROM address if all else fails
		rom_address4 <= 6'b100000;
		in_range3 <= 0;				// Take coins out of range
		in_range4 <= 0;
	end
end

/* Used to determine which coins need to be displayed */
always @(posedge clk or negedge reset)
begin
	if(!reset)
	begin
		hc1 <= 6'b0;				// Reset counters
		hc2 <= 6'b0;
	end
	
	/* Used to increment the horizontal placement if in range */
	else if(((hcount >= hstart1) && (hcount <= hend1) && (blank == 0)) || ((hcount >= hstart2) && (hcount <= hend2) && (blank == 0))
				|| ((hcount >= hstart3) && (hcount <= hend3) && (blank == 0)) || ((hcount >= hstart4) && (hcount <= hend4) && (blank == 0)))
	begin
		if((hcount >= hstart1) && (hcount <= hend1) && (vcount > vstart1) && (vcount <= vend1) && (blank == 0))
			hc1 <= hc1 + 1;
		if((hcount >= hstart2) && (hcount <= hend2) && (vcount > vstart2) && (vcount <= vend2) && (blank == 0))
			hc2 <= hc2 + 1;
		if((hcount >= hstart3) && (hcount <= hend3) && (vcount > vstart3) && (vcount <= vend3) && (blank == 0))
			hc3 <= hc3 + 1;
		if((hcount >= hstart4) && (hcount <= hend4) && (vcount > vstart4) && (vcount <= vend4) && (blank == 0))
			hc4 <= hc4 + 1;
	end
	else
	begin
		hc1 <= 6'b0;			// Keep horizontal at 0 when out of range
		hc2 <= 6'b0;
		hc3 <= 6'b0;
		hc4 <= 6'b0;
	end
end

assign rom_data1 = coin[rom_address1];			// Get ROM data
assign rom_data2 = coin[rom_address2];
assign rom_data3 = coin[rom_address3];			// Get ROM data
assign rom_data4 = coin[rom_address4];

// Procedural block to assign pixel values to RGB
always @(posedge clk or negedge reset)
begin
 if(!reset)
  INTENSITY <= 0;
 else if((in_range1 && (blank == 0)) || (in_range2 && (blank == 0)) || (in_range3 && (blank == 0)) || (in_range4 && (blank == 0)))
 begin
	if(in_range1 && (blank == 0))				// Display intensity for each coin
		INTENSITY <= rom_data1[hc1];
	else if (in_range2 && (blank == 0))
		INTENSITY <= rom_data2[hc2];
	else if (in_range3 && (blank == 0))
		INTENSITY <= rom_data3[hc3];
	else if (in_range4 && (blank == 0))
		INTENSITY <= rom_data4[hc4];
 end
 else 
  INTENSITY <= 0;
end

/* Logic to display coins. 4 bits - 1 for each coin. */
always @(posedge clk or negedge reset)
begin
	if(!reset)
		coin_display <= 4'b1111;
	else if ((char_top <= vend1) && ((char_left == hend1) || ((char_left + 21) == hstart1)) && (coin_display[3] == 1))
		coin_display <= coin_display - 8;		// Value for coin in coin_display[3]
	else if ((char_top <= vend2) && ((char_left == hend2) || ((char_left + 21) == hstart2)) && (coin_display[2] == 1))
		coin_display <= coin_display - 4;		// Value for coin in coin_display[2]
	else if ((char_top <= vend3) && ((char_left == hend3) || ((char_left + 21) == hstart3)) && (coin_display[1] == 1))
		coin_display <= coin_display - 2;		// Value for coin in coin_display[1]
	else if ((char_top <= vend4) && ((char_left == hend4) || ((char_left + 21) == hstart4)) && (coin_display[0] == 1))
		coin_display <= coin_display - 1;		// Value for coin in coin_display[0]
	else
		coin_display <= coin_display;
end
	


assign r_coin = (blank == 0) ? {{INTENSITY}} : 3'b0;		// Display coins
assign g_coin = (blank == 0) ? {{INTENSITY}} : 3'b0;
assign b_coin = 1'b0;

endmodule
