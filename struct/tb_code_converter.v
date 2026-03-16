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
		$display("TIME\tCLK\tX\tQ1Q2Q3\tZ");
		$monitor("%0t\t%0b\t%0b\t%0b%0b%0b\t%0b",$time, clk, X, uut.Q1, uut.Q2, uut.Q3, Z);
	end
endmodule
