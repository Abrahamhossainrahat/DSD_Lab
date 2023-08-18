module binary_adder_and_subtractor(sum,cout,a,b,cin);

	input [3:0]a, b;
	input cin;
	output [3:0]sum;
	output cout;
	wire [3:0] b_xor;
	//wire [2:0]c;

	xor(b_xor[0], b[0], cin);
	xor(b_xor[1], b[1], cin);
	xor(b_xor[2], b[2], cin);
	xor(b_xor[3], b[3], cin);
	
	four_bit_full_adder f1(sum, cout, a, b_xor,cin);
	
	/*Full_Adder f0(sum[0], c[0], a[0], b_xor[0],cin);
	Full_Adder f1(sum[1], c[1], a[1], b_xor[1],c[0]);
	Full_Adder f2(sum[2], c[2], a[2], b_xor[2],c[1]);
	Full_Adder f3(sum[3], cout, a[3], b_xor[3],c[2]);*/

endmodule

module binary_adder_and_subtractor_tb;
	
	reg [3:0]a, b;
	reg cin;
	wire [3:0] sum;
	wire cout;

	binary_adder_and_subtractor b_a_and_s(sum, cout, a, b, cin);

	initial begin 
		cin = 0; a = 4'b1000; b = 4'b0010; #50;
		cin = 0; a = 4'b1000; b = 4'b1000; #50;
		cin = 0; a = 4'b0010; b = 4'b1000; #50;
		cin = 0; a = 4'b0001; b = 4'b0111; #50;
		cin = 0; a = 4'b1010; b = 4'b1011; #50;
		cin = 0; a = 4'b1110; b = 4'b1111; #50;
		cin = 0; a = 4'b1010; b = 4'b1101; #50;
		/*cin = 1; a = 4'b1000; b = 4'b0010; #50;
		cin = 1; a = 4'b1000; b = 4'b1000; #50;
		cin = 1; a = 4'b0010; b = 4'b1000; #50;
		cin = 1; a = 4'b0001; b = 4'b0111; #50;
		cin = 1; a = 4'b1010; b = 4'b1011; #50;
		cin = 1; a = 4'b1110; b = 4'b1111; #50;
		cin = 1; a = 4'b1010; b = 4'b1101; #50;*/
	end

endmodule
		
	
