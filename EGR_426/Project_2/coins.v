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
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module coins(
	input clk,
	input reset,
   input [10:0] hcount,
   input [10:0] vcount,
   input blank,
	input [9:0] char_left,
	input [9:0] char_right,
   output r_coin,
   output g_coin,
   output b_coin
   );

reg [32:0]coin[0:31];
reg [5:0]rom_address1, rom_address2, rom_address3, rom_address4;
reg INTENSITY;
reg in_range1;
reg in_range2;
reg in_range3;
reg in_range4;

wire [31:0]rom_data1;
wire [31:0]rom_data2;
wire [31:0]rom_data3;
wire [31:0]rom_data4;

reg [5:0]hc1, vc1, hc2, vc2, hc3, vc3, hc4, vc4;
reg [10:0]hstart1,hend1,vstart1,vend1;
reg [10:0]hstart2,hend2,vstart2,vend2;
reg [10:0]hstart3,hend3,vstart3,vend3;
reg [10:0]hstart4,hend4,vstart4,vend4;

initial
begin
	$readmemb("coin.dat", coin);			// Initializing ROM with data
	hstart1 <= 11'b00001100110;
	hend1 <=   11'b00010000100;
	vstart1 <= 11'b00000110110;
	vend1 <=   11'b00001010110;
	
	hstart2 <= 11'b00010011010;
	hend2 <=   11'b00010111000;
	vstart2 <= 11'b00000110110;
	vend2 <=   11'b00001010110;
	
	hstart3 <= 11'b00011001110;
	hend3 <=   11'b00011101100;
	vstart3 <= 11'b00000110110;
	vend3 <=   11'b00001010110;
	
	hstart4 <= 11'b00100000010;
	hend4 <=   11'b00100100000;
	vstart4 <= 11'b00000110110;
	vend4 <=   11'b00001010110;
end

// Procedural block to generate address for ROM
always @(posedge clk or negedge reset)
begin
	if(!reset)
	begin
		vc1 <= 0;
		vc2 <= 0;
		rom_address1 <= 6'b100000;
		rom_address2 <= 6'b100000;
		in_range1 <= 0;
		in_range2 <= 0;
    end
	else if(((hcount == hstart1) && (vcount == vstart1) && (blank == 0)) || ((hcount == hstart2) && (vcount == vstart2) && (blank == 0)))
	begin
		if((hcount == hstart1) && (vcount == vstart1) && (blank == 0))
		begin
			vc1 <= 0;
			rom_address1 <= 6'b0;
			in_range1 <= 1;
		end
		else if((hcount == hstart2) && (vcount == vstart2) && (blank == 0))
		begin
			vc2 <= 0;
			rom_address2 <= 6'b0;
			in_range2 <= 1;
		end
	end
	else if((hcount >= hstart1) && (hcount <= hend1) && (vcount >= vstart1) && (vcount <= vend1) && (blank == 0))
	begin
		if((hcount == hend1))
		begin
			vc1 <= vc1 + 1;
			rom_address1 <= vc1;
			in_range1 <= 1;
		end
		else
		begin
			rom_address1 <= vc1;
			in_range1 <= 1;
		end
	end
	else if((hcount >= hstart2) && (hcount <= hend2) && (vcount >= vstart2) && (vcount <= vend2) && (blank == 0))
	begin
		if((hcount == hend2))
		begin
			vc2 <= vc2 + 1;
			rom_address2 <= vc2;
			in_range2 <= 1;
		end
		else
		begin
			rom_address2 <= vc2;
			in_range2 <= 1;
		end
	end
	else
	begin
		rom_address1 <= 6'b100000;
		rom_address2 <= 6'b100000;
		in_range1 <= 0;
		in_range2 <= 0;
	end
end


// Procedural block to generate address for ROM
always @(posedge clk or negedge reset)
begin
	if(!reset)
	begin
		vc3 <= 0;
		vc4 <= 0;
		rom_address3 <= 6'b100000;
		rom_address4 <= 6'b100000;
		in_range3 <= 0;
		in_range4 <= 0;
    end
	else if(((hcount == hstart3) && (vcount == vstart3) && (blank == 0)) || ((hcount == hstart4) && (vcount == vstart4) && (blank == 0)))
	begin
		if((hcount == hstart3) && (vcount == vstart3) && (blank == 0))
		begin
			vc3 <= 0;
			rom_address3 <= 6'b0;
			in_range3 <= 1;
		end
		else if((hcount == hstart4) && (vcount == vstart4) && (blank == 0))
		begin
			vc4 <= 0;
			rom_address4 <= 6'b0;
			in_range4 <= 1;
		end
	end
	else if((hcount >= hstart3) && (hcount <= hend3) && (vcount >= vstart3) && (vcount <= vend3) && (blank == 0))
	begin
		if((hcount == hend3))
		begin
			vc3 <= vc3 + 1;
			rom_address3 <= vc3;
			in_range3 <= 1;
		end
		else
		begin
			rom_address3 <= vc3;
			in_range3 <= 1;
		end
	end
	else if((hcount >= hstart4) && (hcount <= hend4) && (vcount >= vstart4) && (vcount <= vend4) && (blank == 0))
	begin
		if((hcount == hend4))
		begin
			vc4 <= vc4 + 1;
			rom_address4 <= vc4;
			in_range4 <= 1;
		end
		else
		begin
			rom_address4 <= vc4;
			in_range4 <= 1;
		end
	end
	else
	begin
		rom_address3 <= 6'b100000;
		rom_address4 <= 6'b100000;
		in_range3 <= 0;
		in_range4 <= 0;
	end
end

always @(posedge clk or negedge reset)
begin
	if(!reset)
	begin
		hc1 <= 6'b0;
		hc2 <= 6'b0;
	end
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
		hc1 <= 6'b0;
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
	if(in_range1 && (blank == 0))
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


assign r_coin = (blank == 0) ? {{INTENSITY}} : 3'b0;
assign g_coin = (blank == 0) ? {{INTENSITY}} : 3'b0;
assign b_coin = 1'b0;

endmodule
