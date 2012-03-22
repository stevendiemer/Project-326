`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:36:37 03/16/2011 
// Design Name: 
// Module Name:    cpu 
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
module cpu(clk, reset, Inport0, Inport1, Outport0, Outport1);

input clk,reset;
input [7:0]Inport0,Inport1;
output [7:0]Outport0,Outport1;

reg [7:0]Outport0,Outport1;

// ------- Declare signals interfacing to ALU ---------
reg signed [7:0]ALU_A, ALU_B;
wire [3:0]ALU_FUNC;
wire signed [7:0]ALU_OUT;
wire signed ALU_N, ALU_V, ALU_Z;


// -------- Declare signals interfacing to RAM ------------
wire [7:0]RAM_DATA_OUT;  			// -- DATAOUT output of RAM
wire [8:0]ADDR;	     					// -- ADDRESS input of RAM
reg RAM_WE;


// ------- Declare the state names and state variable -------------
parameter Fetch = 2'b00;
parameter Operand = 2'b01;
parameter Memory = 2'b10;
parameter Execute = 2'b11;

reg [1:0]CurrState;
	
	
//	-------- Declare the internal CPU registers -------------
reg [8:0]PC;
reg [7:0]IR;
reg [7:0]MDR;

reg signed [7:0]A,B;
reg N,Z,V;
	

//	------ Declare the common data bus -------------
reg [7:0]DATA;


// ----- Declare variables that indicate which registers are to be written from the DATA
//	----- bus at the start of the next Fetch cycle.
reg Exc_RegWrite;			// Latch data bus in A or B
reg Exc_CCWrite;			// Latch ALU status bits in CCR
reg Exc_IOWrite;        // Latch data bus in I/O



/*	-----------------------------------------------
	-- This function returns TRUE if the given op code
	-- is a 4-phase instruction rather than a 2-phase
	-- instruction
	-----------------------------------------------	*/
function Is4Phase;
input [7:0]DATA;
 begin
  if(DATA[7:6] == 2'b01)
   Is4Phase = 1;
  else if(DATA[7:6] == 2'b00)
   Is4Phase = 0;
 end
endfunction

function [7:0]sev_seg_decode;
input [3:0]display;
	begin
	case(display)
		4'b0000: sev_seg_decode = 8'b11000000;
		4'b0001: sev_seg_decode = 8'b11111001;
		4'b0010: sev_seg_decode = 8'b10100100;
		4'b0011: sev_seg_decode = 8'b10110000;
		4'b0100: sev_seg_decode = 8'b10011001;
		4'b0101: sev_seg_decode = 8'b10010010;
		4'b0110: sev_seg_decode = 8'b10000010;
		4'b0111: sev_seg_decode = 8'b11111000;
		4'b1000: sev_seg_decode = 8'b10000000;
		4'b1001: sev_seg_decode = 8'b10011000;
		4'b1010: sev_seg_decode = 8'b10001000;
		4'b1011: sev_seg_decode = 8'b10000011;
		4'b1100: sev_seg_decode = 8'b11000110;
		4'b1101: sev_seg_decode = 8'b10100001;
		4'b1110: sev_seg_decode = 8'b10000110;
		4'b1111: sev_seg_decode = 8'b10001110;
		default: sev_seg_decode = 8'b11111111;
	endcase
	end
endfunction
	
	


// ---------------- Instantiating ALU -------------------
alu U1(.A(ALU_A), .B(ALU_B), .F(ALU_FUNC), .Y(ALU_OUT), .N(ALU_N), .V(ALU_V), .Z(ALU_Z));


// ----- Drive the ALU_FUNC input ------
assign ALU_FUNC = IR[5:2];


// ------------------ Instantiating 512x8 RAM -----------------------
microram U2(.CLOCK(clk), .ADDRESS(ADDR), .DATAOUT(RAM_DATA_OUT), .DATAIN(DATA), .WE(RAM_WE)); // For Implementation

//microram_sim U2(.clka(clk),.dina(DATA),.addra(ADDR),.wea(RAM_WE),.douta(RAM_DATA_OUT));	// For simulation

// ----------------- Generate RAM write enable --------------------
//	-- The address and data are presented to the RAM during the Memory phase, hence this is
//	-- when we need to set RAM_WE high.
always @(CurrState or IR)
begin
 if((CurrState == Memory) && (IR[7:2] == 6'b010001))
    RAM_WE <= 1;
 else
    RAM_WE <= 0;
end


// ----------- Generate address bus --------------
assign ADDR = (CurrState == Fetch) ? PC 
            : (CurrState == Operand) ? PC		// really a don't care
            : (CurrState == Memory) ? {IR[1],MDR}
				: (CurrState == Execute) ? PC
				: PC; 	// just to be safe
	

/* -----------------------------------------------------------------------------
	-- This is the next-state logic for the 4-phase
	-- state machine.
	---------------------------------------------------------------------------- */
always @(posedge clk or posedge reset)
begin
 if(reset == 1)
  begin
   CurrState = Fetch;
	PC = 0;
	IR = 0;
	MDR = 0;
	A = 0;
	B = 0;
	N = 0;
	Z = 0;
	V = 0;
	Outport0 = 0;
	Outport1 = 0;
  end
 else
  begin
   case(CurrState)
    
	 Fetch: begin											// FETCH STATE
            IR = DATA;
				if(Is4Phase(DATA))
				 begin
				  PC = PC + 1;
				  CurrState = Operand;
				 end
				else
				  CurrState = Execute;
			  end
			  
	 Operand: begin										// OPERAND STATE
	           MDR = DATA;
				  CurrState = Memory;
				 end
				 
	 Memory: begin										  // MEMORY STATE
	          CurrState = Execute;
				 end	
	 
	 Execute: begin									  // EXECUTE STATE
	           PC = PC + 1;
				  CurrState = Fetch;
				  
				  if(Exc_RegWrite == 1)					// Writing result to A or B
				   begin
				    if(IR[0] == 0)
					   A = DATA;
					 else
					   B = DATA;
					end
					
              if(Exc_CCWrite == 1)					// Updating flag bits
               begin
	  				 V = ALU_V;
					 N = ALU_N;
					 Z = ALU_Z;
					end
					
				  if(Exc_IOWrite == 1)					// Write to Outport0 or OutPort1
				   begin
					 if(IR[1] == 0)
					  Outport0 = DATA;
					 else
					  Outport1 = DATA;
				   end
              end
				  
		default: CurrState = Fetch;
	endcase
  end // else
end // always


always @(CurrState,RAM_DATA_OUT,A,B,ALU_OUT,Inport0,Inport1,IR)
begin
// ---- Set these to 0 in each phase unless overridden, just so we don't
// ---- generate latches (which are unnecessary).
 Exc_RegWrite = 0;
 Exc_CCWrite = 0;
 Exc_IOWrite = 0;

//	---- Same idea
 ALU_A = A;
 ALU_B = B;

// ---- Same idea
 DATA = RAM_DATA_OUT;
 
 case (CurrState)
 
 Fetch,Operand: begin
                 DATA = RAM_DATA_OUT;
					 end
 
 Memory: begin
          if(IR[0] == 0)
            DATA = A;
			 else
			   DATA = B;
			end

 Execute: begin
           case(IR[7:1])
			   
				7'b0000000,			// ADD R
				7'b0000010,			// SUB R
				7'b0001000,			// XOR R
				7'b0001110: 		// CLR R
				            begin
								 DATA = ALU_OUT;
						       Exc_RegWrite = 1;
						       Exc_CCWrite = 1;
								end
				
            7'b0000100,			// LSL R
				7'b0000110,			// LSR R
				7'b0001010,			// COM R
				7'b0001100: 		// NEG R		
                        begin
                         if(IR[0] == 0)
                            ALU_A = A;
								 else
								    ALU_B = B;
								 DATA = ALU_OUT;
						       Exc_RegWrite = 1;
						       Exc_CCWrite = 1;
								end
					
					
				7'b0010000,
				7'b0010001:			// OUT R,P
							   begin
                         if(IR[0] == 0)
								    DATA = sev_seg_decode(A);
								 else
								    DATA = sev_seg_decode(B);
								 Exc_IOWrite = 1;
								end
								
				
				7'b0010010,
				7'b0010011:			// IN P,R
							   begin
                         if(IR[1] == 0)
								    DATA = Inport0;
								 else
								    DATA = Inport1;
								 Exc_RegWrite = 1;
								end			


				7'b0100000,
				7'b0100001:			// LOAD M,R
							   begin
                         DATA = RAM_DATA_OUT;
								 Exc_RegWrite = 1;
								end

				7'b0010100,
				7'b0010101:			// BCDO
								begin
									if(IR[1] == 0)
										DATA = sev_seg_decode(Inport0[3:0]);
									else if (IR[1] == 1)
										DATA = sev_seg_decode(Inport0[7:4]);
									Exc_IOWrite = 1;
								end
				
				7'b0100010,
				7'b0100011:			// STORE R,M
							   ; // NULL statement
								
				default: ;
			 endcase
			end
			
	endcase
  end
  
endmodule



