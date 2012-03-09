`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:13 02/22/2012 
// Design Name: 
// Module Name:    game_player 
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
module game_player(
    input blank,
    input [10:0] hcount,
    input [10:0] vcount,
	 input left,
	 input right,
	 input up,
	 input down,
	 input move_clock,
    output r,
    output g,
    output b,
	 output [9:0] location_left,
	 output [9:0] location_top
    );
	 
reg [9:0] top_pth_top = 300;
reg [9:0] top_pth_bot = 315;

reg [9:0] mid_pth_top = 475;
reg [9:0] mid_pth_bot = 485;

reg [9:0] bot_pth_top = 645;
reg [9:0] bot_pth_bot = 660;

reg [9:0] left_pth_left = 875;
reg [9:0] left_pth_right = 905;

reg [9:0] cent_pth_left = 625;
reg [9:0] cent_pth_right = 655;

reg [9:0] right_pth_left = 375;
reg [9:0] right_pth_right = 405;
	 
reg [9:0] hp = 10'b1010000000;
reg [9:0] vp = 10'b0111100000;

reg [2:0] button_pressed = 3'b100;

always @(posedge move_clock)
begin
	if(left || right)
	begin
		if (((vp >= top_pth_top) && (vp < top_pth_bot))
			|| ((vp >= mid_pth_top) && (vp < mid_pth_bot))
			|| ((vp >= bot_pth_top) && (vp < bot_pth_bot)))
		begin
			if ((hp == 10'd340) && left)
			begin
				hp = 10'd940;
				button_pressed = 3'b0;
			end
			else if ((hp == 10'd940) && right)
			begin
				hp = 10'd340;
				button_pressed = 3'b001;
			end
			else if (left)
			begin
				hp = hp - 1;
				button_pressed = 3'b0;
			end
			else if (right)
			begin
				hp = hp + 1;
				button_pressed = 3'b001;
			end
			else
			begin
				hp = hp;
				button_pressed = 3'b100;
			end
		end
		else
		begin
			hp = hp;
			button_pressed = 3'b100;
		end
			
	end
	
	if(up || down)
	begin
		if (((hp >= left_pth_left) && (hp < left_pth_right))
			|| ((hp >= cent_pth_left) && (hp < cent_pth_right))
			|| ((hp >= right_pth_left) && (hp < right_pth_right)))
		begin
			if ((vp == 10'd305) && up)
			begin
				vp = 10'd305;
				button_pressed = 3'b010;
			end
			else if ((vp == 10'd655) && down)
			begin
				vp = 10'd655;
				button_pressed = 3'b011;
			end
			else if (up)
			begin
				vp = vp - 1;
				button_pressed = 3'b010;
			end
			else if (down)
			begin
				vp = vp + 1;
				button_pressed = 3'b011;
			end
			else
			begin
				vp = vp;
				button_pressed = 3'b100;
			end
		end
		else
		begin
			vp = vp;
			button_pressed = 3'b100;
		end
	end
	else
	begin
		hp = hp;
		vp = vp;
	end
end

assign r = (((hcount < (hp - 318)) && (hcount >= (hp - 321)) && ((vcount < (vp - 264)) && (vcount >= (vp - 265))) && (blank == 0))
		   || ((hcount < (hp - 313)) && (hcount >= (hp - 326)) && ((vcount < (vp - 263)) && (vcount >= (vp - 264))) && (blank == 0))
			|| ((hcount < (hp - 311)) && (hcount >= (hp - 328)) && (((vcount < (vp - 262)) && (vcount >= (vp - 263))) || ((vcount < (vp - 260)) && (vcount >= (vp - 261)))) && (blank == 0))
			|| ((hcount < (hp - 309)) && (hcount >= (hp - 330)) && ((vcount < (vp - 261)) && (vcount >= (vp - 262))) && (blank == 0))
			|| (((hcount < (hp - 315)) && (hcount >= (hp - 317)) || ((hcount < (hp - 322)) && (hcount >= (hp - 324))) || ((hcount < (hp - 318)) && (hcount >= (hp - 321)))) && ((vcount < (vp - 258)) && (vcount >= (vp - 259))) && (blank == 0))
			|| ((hcount < (hp - 315)) && (hcount >= (hp - 324)) && (((vcount < (vp - 259)) && (vcount >= (vp - 260))) || ((vcount < (vp - 253)) && (vcount >= (vp - 258)))) && (blank == 0))
			|| ((hcount < (hp - 317)) && (hcount >= (hp - 322)) && ((vcount < (vp - 249)) && (vcount >= (vp - 253))) && (blank == 0))
			|| ((hcount < (hp - 311)) && (hcount >= (hp - 328)) && ((vcount < (vp - 230)) && (vcount >= (vp - 231))) && (blank == 0)));
			
assign g = ((((hcount < (hp - 315)) && (hcount >= (hp - 317)) || ((hcount < (hp - 322)) && (hcount >= (hp - 324))) || ((hcount < (hp - 318)) && (hcount >= (hp - 321)))) && ((vcount < (vp - 258)) && (vcount >= (vp - 259))) && (blank == 0))
			|| ((hcount < (hp - 315)) && (hcount >= (hp - 324)) && (((vcount < (vp - 259)) && (vcount >= (vp - 260))) || ((vcount < (vp - 253)) && (vcount >= (vp - 258)))) && (blank == 0))
			|| ((hcount < (hp - 317)) && (hcount >= (hp - 322)) && ((vcount < (vp - 249)) && (vcount >= (vp - 253))) && (blank == 0)));
			
assign b = (((hcount < (hp - 311)) && (hcount >= (hp - 328)) && (((vcount < (vp - 248)) && (vcount >= (vp - 249))) || ((vcount < (vp - 231)) && (vcount >= (vp - 240)))) && (blank == 0))
			|| ((hcount < (hp - 310)) && (hcount >= (hp - 329)) && ((vcount < (vp - 247)) && (vcount >= (vp - 248))) && (blank == 0))
			|| ((hcount < (hp - 309)) && (hcount >= (hp - 330)) && ((vcount < (vp - 240)) && (vcount >= (vp - 247))) && (blank == 0))
			|| ((hcount < (hp - 320)) && (hcount >= (hp - 329)) && ((vcount < (vp - 215)) && (vcount >= (vp - 230))) && (blank == 0))
			|| ((hcount < (hp - 310)) && (hcount >= (hp - 319)) && ((vcount < (vp - 215)) && (vcount >= (vp - 230))) && (blank == 0)));
			
assign location_top = (vp - 265);
assign location_left = (hp - 330);

endmodule
