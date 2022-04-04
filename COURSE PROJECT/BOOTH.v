module BOOTH(X,Y,Z);
 parameter N=8;
input signed [N-1:0]X,Y;
output signed [(2*N)-1:0]Z;
reg signed [(2*N)-1:0] Z;
reg [1:0]temp;
integer i;
reg E1;
reg [N-1:0]Y1;

 always@(X,Y)
   begin
	Z=15'd0;
	E1=1'd0;
	 for(i=0; i<N ; i=i+1)
	  begin
	   
		temp = { X[i], E1};
		Y1=-Y;
		
		 case(temp)
		  2'd2 : Z[ (2*N) -1 :  N ] = Z[ (2*N) -1 :  N ] + Y1;
		  2'd1 : Z[ (2*N) -1 :  N ] = Z[ (2*N) -1 :  N ] + Y;
		 endcase
		  Z=Z>>1;
		  Z[2*N-1] = Z[2*N - 2];
		  E1=X[i];
		end
      
		if(Y == 4'd8)
       begin
        Z=-Z;
       end		  
	end
endmodule
