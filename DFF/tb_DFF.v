module tb_DFF();
	reg clk, D;
	wire Q;

	DFF uut(.clk(clk), .D(D), .Q(Q));

	always #5 clk = ~clk;

	initial
	begin
		clk = 1'b0;
		D = 1'b0;

		#10
		D = 1'b1;

		#17
		D = 1'b0;

		#6
		D = 1'b1;
		
		#3
		D = 1'b0;
		
		#10 $finish();
	end

	initial
	begin
		$display("Output of D Flip Flop :");
		$display("Time\tCLK\tD\tQ");
		$monitor("%0t\t%0b\t%0b\t%0b",$time,clk,D,Q);
	end
endmodule
