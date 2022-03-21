module PIPE(F,A,B,C,D,clk);
 parameter N=9;
 input [N-1:0]A,B,C,D;
 input clk;
 output [N-1:0]F;

 reg [N-1:0] Fo,R0,R1,R2,R3,R4,R5;

    assign F=Fo;

       always@(posedge clk)
	          
	   begin
               #4 R0 <=  A + B ;
               #4 R1 <=  C - D ;
                  R2 <=  D ;
           end	 

       always@(posedge clk)

           begin
               #6 R3 <=  R0 + R1;
                  R4 <=D;
           end

       always@(posedge clk)

           begin
             #6 Fo <=  R3 * R4;
           end

endmodule
