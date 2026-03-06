module conti_assign(
	input A,
	output B, C
	);

	assign #3 B = A && C;
	assign #2 C = !B;
endmodule
