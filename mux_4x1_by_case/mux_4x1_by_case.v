module mux_4x1(
	input [1:0] Sel,	// select lines
	input I0, I1, I2, I3,	// input lines
	output reg F	// output line
);

	// Boolean expresion for 2x1 Multiplexer -> 
	// F = A'B'.I0 + A'B.I1 + AB'I2 + ABI3
	
	// Modeled by case statements
	//always @(Sel, I0, I1, I2, I3)
	//case (Sel)
	//	2'b00 : F = I0;	
	//	2'b01 : F = I1;
	//	2'b10 : F = I2;
	//	2'b11 : F = I3;
	//endcase

	// Modeled by if-else statements
	always @(Sel, I0, I1, I2, I3)
	begin
		if(Sel == 2'b00) 
			F = I0;
		else if(Sel == 2'b01)
			F = I1;
		else if(Sel == 2'b10)
			F = I2;
		else
			F = I3;
	end

endmodule
