module NAND2(
	input A1, A2, 
	output Z
);

	assign Z = ~(A1 & A2);
endmodule
