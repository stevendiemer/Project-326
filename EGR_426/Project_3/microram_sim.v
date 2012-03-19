`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:45:40 03/23/2011 
// Design Name: 
// Module Name:    microram_sim 
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
module microram_sim(clka,dina,addra,wea,douta);

input clka,wea;
input [7:0]dina;
input [8:0]addra;

output [7:0]douta;

reg [7:0]mem_data[0:511];
reg [7:0]douta;
integer i;

initial $readmemb("memory.dat",mem_data);

initial
begin
 for(i=21;i<512;i=i+1)
  mem_data[i] = 8'b11110000;
end

always @(posedge clka)
begin
 if(wea)
  begin
   mem_data[addra] <= dina;
	douta <= dina;
  end
 else
   douta <= mem_data[addra];
end

endmodule
