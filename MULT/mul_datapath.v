module mul_datapath(eqz, clk, lda, ldb, ldp, clrp, decb, datain);
    input clk, lda, ldb, ldp, clrp, decb;
    input [15:0] datain;
    wire [15:0]x, y, z, bout;
    output eqz;
    PIPO1 P1(x, clk, lda, datain);
    PIPO2 P2(y, clk, ldp, clrp, z);
    ADD A(z, x, y);
    COUNT CNT(bout, clk, ldb, decb, datain);
    COMP com(eqz, bout);
endmodule
