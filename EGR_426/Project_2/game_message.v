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
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module game_message(
    input [3:0] coins_left,
	 input [10:0] hcount, 
	 input [10:0] vcount,
	 input clk,
	 input rst,
	 input blank,
    output r_win,
    output g_win,
    output b_win
    );

reg [256:0]win[0:127];
reg [256:0]loss[0:127];
reg [8:0]rom_address;
reg INTENSITY;
reg in_range;
wire [255:0]rom_data;

reg [8:0]hc1, vc1;


initial
begin
$readmemb("win.dat", win);
$readmemb("loss.dat", loss);
end

always @(posedge clk or negedge rst)
begin
	if(!rst)
	begin
		vc1 <= 0;
		rom_address <= 9'b100000000;
		in_range <= 0;
   end
	
	else if((hcount == 192) && (vcount == 176) && (blank == 0) && (coins_left == 4'b0))
	begin
			vc1 <= 0;
			rom_address <= 9'b0;
			in_range <= 1;
	end
	
	else if((hcount > 192) && (hcount <= 448) && (vcount > 176) && (vcount <= 304) && (blank == 0)  && (coins_left == 4'b0))
	begin
		if((hcount == 448))
		begin
			vc1 <= vc1 + 1;
			rom_address <= vc1;
			in_range <= 1;
		end
		else
		begin
			rom_address <= vc1;
			in_range <= 1;
		end
	end
	
	else
	begin
		rom_address <= 9'b100000000;
		in_range <= 0;
	end
end

always @(posedge clk or negedge rst)
begin
	if(!rst)
	begin
		hc1 <= 9'b0;
	end
	
	else if((hcount > 192) && (hcount <= 448) && (blank == 0)  && (coins_left == 4'b0))
	begin
		if((hcount > 192) && (hcount <= 448) && (vcount > 176) && (vcount <= 304) && (blank == 0))
			hc1 <= hc1 + 1;
	end
	
	else
	begin
		hc1 <= 9'b0;
	end
end

assign rom_data = (timer > 0) ? win[rom_address] : loss[rom_address];			// Get ROM data

// Procedural block to assign pixel values to RGB
always @(posedge clk or negedge rst)
begin
 if(!rst)
  INTENSITY <= 0;
  
 else if(in_range && (blank == 0))
 begin
	if(in_range && (blank == 0))
		INTENSITY <= rom_data[hc1];
 end
 
 else 
   INTENSITY <= 0;
end

assign r_win = (blank == 0) ? {{INTENSITY}} : 3'b0;
assign g_win = (blank == 0) ? {{INTENSITY}} : 3'b0;
assign b_win = (blank == 0) ? {{INTENSITY}} : 3'b0;

endmodule
