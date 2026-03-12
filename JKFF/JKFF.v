module JKFF(
	input clk,
	input preset,
	input clr,
	input J, K, 
	output reg Q
);

	always @(negedge clk, preset, clr)
	begin
		if(~clr)
			Q <= 1'b0;
		else if(~preset)
			Q <= 1'b1;
		else
			Q <= ((J & ~Q) | (~K & Q));	
	end
endmodule
