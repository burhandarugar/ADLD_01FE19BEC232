module multiplier(input clk, start, [15:0]datain , output done);
    wire eqz, lda, ldb, ldp, clrp, decb;
    mul_datapath D(eqz, clk, lda, ldb, ldp, clrp, decb, datain);
    mul_control C(done, lda, ldb, ldp, clrp, decb, clk, start, eqz, datain);
endmodule
