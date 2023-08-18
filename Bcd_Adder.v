module bcd_adder(sum,cout,a,b,cin);

	input [3:0]a, b;
	input cin;
	output [3:0]sum;
	output cout;
	wire [3:0]s, b1;
	wire c,w1,w2,w3, c0,c1;

	four_bit_full_adder f1(s,c,a,b,cin);
	and(w1, s[2], s[3]);
	and(w2, s[1], s[3]);
	or(w3, w1, w2);
	or(cout, w3, c);

	buf(b1[0], 1'b0);
	buf(b1[3], 1'b0);
	buf(b1[1], cout);
	buf(b1[2], cout);
	buf(c1, 1'b0);
	
	four_bit_full_adder f2(sum, c0, s, b1,c1);

endmodule

module bcd_adder_tb;
	
	reg [3:0]a, b;
	reg cin;
	wire [3:0] sum;
	wire cout;

	bcd_adder ba(sum, cout, a, b, cin);

	initial begin

		a = 4'b0000; b = 4'b0000; cin = 1'b0; #50;
		a = 4'b0000; b = 4'b0001; cin = 1'b0; #50;
		a = 4'b0001; b = 4'b0001; cin = 1'b0; #50;
		a = 4'b0010; b = 4'b0001; cin = 1'b0; #50;
		a = 4'b0010; b = 4'b0010; cin = 1'b0; #50;
		a = 4'b0010; b = 4'b0011; cin = 1'b0; #50;
		a = 4'b0101; b = 4'b0001; cin = 1'b0; #50;
		a = 4'b0101; b = 4'b0010; cin = 1'b0; #50;
		a = 4'b1000; b = 4'b0000; cin = 1'b0; #50;
		a = 4'b0110; b = 4'b0011; cin = 1'b0; #50;
		/*a = 4'b1000; b = 4'b0001; cin = 1'b1; #50;
		a = 4'b1000; b = 4'b0010; cin = 1'b1; #50;
		a = 4'b1000; b = 4'b0011; cin = 1'b1; #50;
		a = 4'b1011; b = 4'b0001; cin = 1'b1; #50;
		a = 4'b0100; b = 4'b1001; cin = 1'b1; #50;
		a = 4'b0110; b = 4'b1000; cin = 1'b1; #50;
		a = 4'b1001; b = 4'b0110; cin = 1'b1; #50;
		a = 4'b1010; b = 4'b0110; cin = 1'b1; #50;
		a = 4'b1101; b = 4'b0100; cin = 1'b1; #50;
		a = 4'b1110; b = 4'b0100; cin = 1'b1; #50;*/

	end

endmodule



	
