module syncronous_up_down_counter(q,clk,clr,m);
	
	input clk,clr,m;
	output [2:0]q;
	wire and1, and2, and3, and4, or1, or2, not1, q1, q2, q3;
	reg j=1'b1, k=1'b1;

	not(not1,m);
	JK_flip_flop JKFF1(q[0], q1, j, k, clk, clr);
	and(and1, not1, q[0]);
	and(and2, m, q1);
	or(or1, and1, and2);
	JK_flip_flop JKFF2(q[1], q2, or1, or1, clk, clr);
	and(and3, and1, q[1]);
	and(and4, and2, q2);
	or(or2, and3, and4);
	JK_flip_flop JKFF3(q[2], q3, or2, or2, clk, clr);

endmodule 