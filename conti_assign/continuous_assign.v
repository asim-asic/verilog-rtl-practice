module continuous_assign(
	input A, B, D,
	output C, E
	);

	assign #5 C = A && B;
	assign #5 E = C || D;
endmodule	
	
