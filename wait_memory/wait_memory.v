module wait_memory(
	input WR,
	input [7:0] DATA_IN,
	output reg [7:0] DATA_OUT
);

	reg [7:0] MEM;

	always
	begin
		wait(WR)
			MEM = DATA_IN;
		wait(~WR)
			DATA_OUT = MEM;
	end
endmodule
