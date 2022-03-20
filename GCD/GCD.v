module GCD(data_in,start,done,clk);
input [15 :0] data_in;
input start,clk;
output done;
controller CON(ldA,ldB,sel1,sel2,sel_in,done,clk,lt,gt,eq,start);
GCD_datapath data1(gt,lt,eq,ldA,ldB,sel1,sel2,sel_in,data_in,clk);
endmodule
