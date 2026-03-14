module mux_4x1(
	input A, B,	// select line
	input I0, I1, I2, I3,	// input lines
	output F	// output line
);

	// Boolean expresion for 2x1 Multiplexer -> 
	// F = A'B'.I0 + A'B.I1 + AB'I2 + ABI3
	
	
	// Modeled as a single concurrent signal assignment statement
	//assign F = (~A & ~B & I0) | (~A & B & I1) | (A & ~B & I2) | (A & B & I3);

	// Modeled by a conditional signal assignment statement
	assign F = (A) ? ((B) ? I3 : I2) : ((B) ? I1 : I0));
endmodule
