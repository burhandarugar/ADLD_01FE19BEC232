module Memory(datain,clk,adrr);
input [15:0]datain;
input clk;
input [7:0]adrr;
reg [15:0]mem[0:255];
 always@(posedge clk)
  begin
  mem[adrr]=datain;
  end
endmodule
