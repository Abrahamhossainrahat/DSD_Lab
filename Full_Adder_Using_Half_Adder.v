module Full_Adder_Used_Half_Adder(sum,cout,a,b,cin);

	output sum,cout;
	input a, b, cin;
	wire s1,c1,c2;

	Half_Adder Ha1(s1,c1,a,b);
	Half_Adder Ha2(sum,c2,s1,cin);
	or(cout,c1,c2);

endmodule