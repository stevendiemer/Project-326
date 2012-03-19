`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:41 03/16/2011 
// Design Name: 
// Module Name:    alu 
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
module alu(A, B, F, Y, N, V, Z);

input signed [7:0]A,B;
input [2:0]F;
output signed [7:0]Y;
output N,V,Z;

reg signed [7:0]RETVAL;
reg signed [7:0]Y;
reg N,Z,V;

// ------------- Function to determine if overflow occurs -------------
function ISOVERFLOW;
 input signed [7:0]A,B,R;
  begin 
   if((A[7] && B[7] && (!R[7])) || ((!A[7]) && (!B[7]) && R[7]))       
     ISOVERFLOW = 1;
   else
     ISOVERFLOW = 0;
  end       
endfunction

// ------------- Update Condition Code flag bits ------------------
always @(A or B or F)
 begin
  V = 0;
  if(F == 0)								   // ---- ADDITION
   begin
	 RETVAL = A + B;
	 V = ISOVERFLOW(A,B,RETVAL);	// OVERFLOW flag
	end
  else if(F == 1)								// ---- SUBTRACTION
   begin
	 RETVAL = A - B;
	 V = ISOVERFLOW(A,-B,RETVAL);	
	end
  else if(F == 2)								// ---- LSL
    RETVAL = {A[6:0],1'b0};
  else if(F == 3)								// ---- LSR
    RETVAL = {1'b0,A[7:1]}; 
  else if(F == 4)								// ---- XOR
    RETVAL = A ^ B;
  else if(F == 5)								// ---- COM
    RETVAL = ~(A);
  else if(F == 6)								// ---- NEG
   begin
	 RETVAL = 0 - A;
	 if(RETVAL == 8'b10000000)
	   V = 1;	
	end
  else										  // ----- CLR
    RETVAL = 8'b0;
	 
  if(RETVAL == 0)			// ZERO flag
    Z = 1;
  else
    Z = 0;
	 
  if(RETVAL[7] == 1)		// NEG flag
    N = 1;
  else
    N = 0;
	 
  Y = RETVAL;
 end
	 


endmodule
