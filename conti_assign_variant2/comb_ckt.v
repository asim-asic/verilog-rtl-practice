module comb_ckt(
	input A, B, C, D,
	output Z
	);

	//wire X1, X2, X3, X4, X5;
	
	// Top Branch
	assign #5 X1 = A & B & C;	//AND gate 
	assign #5 X2 = X1 | D;		//OR gate

	// Bottom Branch
	assign #5 X3 = ~(B | C);	//NOR gate
	assign #5 X4 = ~(X3 & A);	//NAND gate 

	assign #2 X5 = ~X4;		//Inverter
	
	// Output 
	assign #5 Z = X2 ^ X5;
endmodule
