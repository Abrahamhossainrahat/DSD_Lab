module JK_flip_flop(q, q0, j, k, clk, clr);
	input j, k, clk, clr;
	output q, q0;
	wire nd1, nd2,nd3,nd4,nd5,nd6,nt;

	not(nt,clk);
	nand(nd1,j,clk,clr,q0);
	nand(nd2, k, clk, q);
	nand(nd3, nd1, nd4);
	nand(nd4, nd2, clr, nd3);
	nand(nd5, nd3, nt);
	nand(nd6, nd4, nt);
	nand(q, nd5, q0);
	nand(q0, nd6, clr,q);

endmodule