/*clk will be as a input from clock. clr will be as a input '0' for first run.
 And for just secoun run clock will be 'NoForce'.*/

module mod__10(q,clk);

	input clk;
	output [3:0]q;
	wire [3:0]q0;
	reg j = 1'b1, k=1'b1;
	wire clr;

	nand(clr, q[1], q[3]);
	JK_flip_flop JKFF0(q[0], q0[0], j, k, clk, clr);
	JK_flip_flop JKFF1(q[1], q0[1], j, k, q[0], clr);
	JK_flip_flop JKFF2(q[2], q0[2], j, k, q[1], clr);
	JK_flip_flop JKFF3(q[3], q0[3], j, k, q[2], clr);
	
endmodule