module tb_code_converter();
	reg clk;
	reg X;
	wire Z;

	code_converter uut(.clk(clk), .X(X), .Z(Z));

	always #100 clk = ~clk; 

	initial
	begin
		clk = 1'b0;
		X = 0;

		#350 X = 1;	
		#200 X = 0;
		#200 X = 1;
		#200 X = 0;
		#200 X = 0;
		#200 $finish();
	end

	initial
	begin
		$display("TIME\tCLK\tX\tSTATE\tNEXTSTATE\tZ");
		$monitor("%0t\t%0b\t%0b\t%3b\t%3b\t\t%0b",$time, clk, X, uut.state, uut.next_state, Z);
	end
endmodule
