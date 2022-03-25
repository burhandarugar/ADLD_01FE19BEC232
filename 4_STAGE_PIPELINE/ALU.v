module ALU(A,B,S,Z,clk);
parameter N=16;
input [N-1:0]A,B;
input [1:0]S;
input clk;
output [N-1:0]Z;
reg [N-1:0]z1;
 assign Z=z1;
always @(posedge clk or S)
  begin
    if (S==0)
      z1=A + B ;
    else if (S==1)
      z1=A - B ;     
    else if (S==2)
      z1=A * B ;
    else 
      z1=A ;
  end
endmodule
