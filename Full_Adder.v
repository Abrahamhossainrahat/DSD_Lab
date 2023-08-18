module Full_Adder(sum, cout, a, b,cin);
	input a, b, cin;
	output sum, cout;
	wire w1,w2,w3;
	xor(w2,a,b);
	xor(sum,w2,cin);
	//xor(sum,a,b,cin)
	and(w1,a,b);
	and(w3,w1,w2);
	or(cout,w1,w3);
endmodule
