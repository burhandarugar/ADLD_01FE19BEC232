module regbank(rs1,rs2,rd,A,B,Z,clk);
input [3:0]rs1,rs2,rd;
input clk;
input [15:0]Z;
output reg[15:0]A,B;
reg [15:0]regbank[0:15];
reg [15:0]a1,b1,rd1;
always @(*)
 begin
    if(clk==1)
	 begin
        A=regbank[rs1];
	     B=regbank[rs2];
	     regbank[rd]=Z;
	 end    
 end 
endmodule
