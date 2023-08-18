module binary_to_gray1(g, b);

	output [3:0]g;
	input [3:0]b;
	buf(g[3],b[3]);
	xor(g[2],b[3],b[2]);
	xor(g[1],b[2],b[1]);
	xor(g[0],b[1],b[0]);
	
endmodule

module binary_to_gray1_tb;

	reg [3:0] binary;
	wire [3:0] gray;
	binary_to_gray1 b_to_g(.g(gray), .b(binary));
	
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