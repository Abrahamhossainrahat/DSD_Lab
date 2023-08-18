module excess3_to_bcd(b,e);
	output [3:0]b;
	input [3:0]e;
	wire w1,w2,w3,w4,w5,w6,w7,w8;

	and(w1, e[3], e[1], e[0]);
	and(w2, e[3], e[2]);
	or(b[3], w1, w2);
	and(w3, e[2], e[1], e[0]);
	not(w4, e[2]);
	not(w5, e[1]);
	not(w6, e[0]);
	and(w7, w4, w5);
	and(w8, w4, w6);
	or(b[2], w3, w7, w8);
	xor(b[1], e[1], e[0]);
	not(b[0], e[0]);

endmodule

module excess3_to_bcd_tb;

	reg [3:0]excess3;
	wire [3:0]bcd;

	excess3_to_bcd e3_to_b(.b(bcd), .e(excess3));

		initial begin
			excess3 = 4'b0000; #50;
			excess3 = 4'b0001; #50;
			excess3 = 4'b0010; #50;
			excess3 = 4'b0011; #50;
			excess3 = 4'b0100; #50;
			excess3 = 4'b0101; #50;
			excess3 = 4'b0110; #50;
			excess3 = 4'b0111; #50;
			excess3 = 4'b1000; #50;
			excess3 = 4'b1001; #50;
			excess3 = 4'b1010; #50	
			excess3 = 4'b1011; #50;
			excess3 = 4'b1100; #50;

		end

endmodule
			