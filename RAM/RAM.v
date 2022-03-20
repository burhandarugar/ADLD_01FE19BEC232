module ram(data,clk,reset,cs,we,addr,out);
input [3:0] data,addr;
input clk,reset,cs,we;
output reg [3:0] out;
reg [3:0] ram[0:15];
  always @(*)
    begin
        if(cs)
       if(we)
          begin
           ram[addr]=data;
           out=4'bzzzz;
          end
       else
         out=ram[addr];
       else
          out=4'bzzzz;
end
endmodule
