module mux_2x1(
	input A,	// select line
	input I0, I1,	// input lines
	output F	// output line
);

	// Boolean expresion for 2x1 Multiplexer -> F = A'.I0 + A.I1
	
	
	// Modeled as a single concurrent signal assignment statement
	//assign F = (~A & I0) | (A & I1);

	// Modeled by a conditional signal assignment statement
	assign F = (A) ? I1 : I0;
endmodule
