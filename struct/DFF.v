module DFF(
	input D,
	input clk,
	output reg Q,
	output reg Qn
);

	initial
	begin
		Q = 1'b0;
		Qn = 1'b0;
	end

	always @(posedge clk)
	begin
		Q <= D;
		Qn <= ~D;
	end
endmodule

