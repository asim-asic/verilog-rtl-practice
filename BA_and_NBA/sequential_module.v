module sequential_module(
	input clk,
	output reg A,B,C,D
);

	always @(posedge clk)
	begin
		A = B;	// blocking statement 1 
		B = A;	// blocking statement 2
	end

	always @(posedge clk)
	begin
		C <= D;	// non-blocking statement 1
		D <= C;	// non-blocking statement 2
	end
endmodule
