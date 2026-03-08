module four_bit_FA(
	input [3:0] A, B,
	input Ci,
	output [3:0] S,
	output Co
);
	wire [3:1] C; // C is an internal signal

	// full adder instatiation from 1 bit full adder
	full_adder FA0 (A[0], B[0], Ci, S[0], C[1]);
	full_adder FA1 (A[1], B[1], C[1], S[1], C[2]);
	full_adder FA2 (A[2], B[2], C[2], S[2], C[3]);
	full_adder FA3 (A[3], B[3], C[3], S[3], Co);

endmodule
	
