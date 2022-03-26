module PIPEALU(rs1,rs2,rd,S,addr,A,B,Z,clk1,clk2);
 input [3:0]rs1,rs2,rd;
 input [1:0]S;
 input [7:0]addr;
 input clk1,clk2;
 output [15:0]A,B;
 output [15:0]Z;
 integer i;
 reg [15:0]regbank[0:15];
 initial regbank[0] = 12; initial regbank[1] = 10; initial regbank[2] = 15; initial regbank[3] = 17;
 initial regbank[4] = 19; initial regbank[5] = 14; initial regbank[6] = 8; initial regbank[7] = 5;
 reg [15:0]memory[0:255];
 reg [15:0]L1_A,L1_B,L2_Z,L3_Z;
 reg [3:0]L1_rd,L2_rd,L1_S;
 reg [7:0]L1_addr,L2_addr,L3_addr;
 assign Z=L3_Z;
 assign A=L1_A;
 assign B=L1_B;
 
 // STAGE 1
 
 always @(posedge clk1)
  begin
   L1_A    <= regbank[rs1];
	L1_B    <= regbank[rs2];
	L1_rd   <= rd;
	L1_S    <= S;
	L1_addr <= addr;
  end
  
// STAGE 2

  always @(posedge clk2)
   begin
     if (L1_S==0)
      L2_Z <= L1_A + L1_B ;
     else if (L1_S==1)
      L2_Z <= L1_A - L1_B ;    
     else if (L1_S==2)
      L2_Z <= L1_A & L1_B ;
     else if (L1_S==3)
      L2_Z <= L1_A | L1_B ;
	
	 L2_rd <= L1_rd ;	
	 L2_addr <= L1_addr;	
	end
	
// STAGE 3

  always @(posedge clk1)
    begin
     regbank[L2_rd] <= L2_Z;
	  L3_addr <= L2_addr;	
	  L3_Z <= L2_Z;
    end
	 
// STAGE 4
  
  always@(posedge clk2)
    begin
      memory[L3_addr]=L3_Z;
    end
endmodule
