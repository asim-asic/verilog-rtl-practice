module parity_gen(
	input [3:0] X,
	output [4:0] Y
);
	wire ParityBit;

	parameter [0:15] Out_T = {1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1};

	assign ParityBit = Out_T[X];
	assign Y = {X, ParityBit};

endmodule
