module bcd_to_excess_3(e,b);

	output [3:0]e;
	input [3:0]b;
	wire w1,w2,w3,w4;

	or(w1, b[1], b[0]);
	and(w2, b[2], w1);
	or(e[3], b[3], w2);
	xor(e[2], b[2], w1);
	xnor(e[1], b[1], b[0]);
	not(e[0],b[0]);

endmodule

module bcd_to_excess_3_tb;

	reg [3:0] binary;
	wire [3:0] excess_3;
	bcd_to_excess_3 b_to_e3(.e(excess_3), .b(binary));

	initial begin

		binary = 4'b0000; #50;
		binary = 4'b0001; #50;
		binary = 4'b0010; #50;
		binary = 4'b0011; #50;
		binary = 4'b0100; #50;
		binary = 4'b0101; #50;
		binary = 4'b0110; #50;
		binary = 4'b0111; #50;
		binary = 4'b1000; #50;
		binary = 4'b1001; #50;
		binary = 4'b1010; #50;
		binary = 4'b1011; #50;
		binary = 4'b1100; #50;
		binary = 4'b1101; #50;
		binary = 4'b1110; #50;
		binary = 4'b1111; #50;

	end

endmodule
	