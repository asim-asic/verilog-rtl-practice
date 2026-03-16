`include "Inverter.v"
`include "NAND3.v"
`include "DFF.v"
`include "NAND2.v"

module code_converter(
	input X, clk,
	output Z
);

	wire A1, A2, A3, A5, A6;
	wire D3;
	wire Q1, Q2, Q3;
	wire Qn1, Qn2, Qn3;
	wire Xn;

	Inverter I1(X, Xn);

	NAND3 N1(Q1, Q2, Q3, A1);
	NAND3 N2(Q1, Qn3, Xn, A2);
	NAND3 N3(X, Qn1, Qn2, A3);
	NAND3 N4(A1, A2, A3, D3);
	
	DFF FF1(Qn2, clk, Q1, Qn1);
	DFF FF2(Q1, clk, Q2, Qn2);
	DFF FF3(D3, clk, Q3, Qn3);

	NAND2 N5(X, Q3, A5);
	NAND2 N6(Xn, Qn3, A6);
	NAND2 N7(A5, A6, Z);

endmodule
