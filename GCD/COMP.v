module COMP(lt,gt,et,in1,in2);
input [15:0]in1,in2;
output lt,gt,et;
assign lt=in1<in2;
assign et=in1==in2;
assign gt=in1>in2;
endmodule
