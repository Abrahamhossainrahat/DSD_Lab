module four_bit_full_adder(sum,cout,a,b,cin);
	
	input [3:0]a, b;
	input cin;
	output [3:0]sum;
	output cout;
	wire c0,c1,c2;

	Full_Adder_Used_Half_Adder f0(sum[0], c0, a[0], b[0],cin);
	Full_Adder_Used_Half_Adder f1(sum[1], c1, a[1], b[1],c0);
	Full_Adder_Used_Half_Adder f2(sum[2], c2, a[2], b[2],c1);
	Full_Adder_Used_Half_Adder f3(sum[3], cout, a[3], b[3],c2);

endmodule