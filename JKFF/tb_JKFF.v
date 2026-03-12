module tb_JKFF();

	reg clk; 
	reg preset, clr;
	reg J, K;
	wire Q;

	JKFF uut(.clk(clk), .preset(preset), .clr(clr), .J(J), .K(K), .Q(Q));

	always #5 clk = ~clk;

	initial
	begin
		clk = 1'b1;
		preset = 1'b1;
		J = 1'b0;
		K = 1'b0;

		// Clear Test
		#10 clr = 1'b0;
		#10 clr = 1'b1;

		// Preset Test
		#10 preset = 1'b0;
		#10 preset = 1'b1;

		#10 J = 1'b1; K = 1'b0;  //Hold
		#10 J = 1'b1; K = 1'b0;  //Set
		#10 J = 1'b0; K = 1'b1;  //Reset
		#10 J = 1'b1; K = 1'b1;  //Toggle
		
		#20 
		$display("Simulation Finished");
		$finish();
	end
	 
	initial
	begin
		$display("Output of JK Flip Flop :");
		$display("TIME\tCLK\tPRESET\tCLR\tJ\tK\tQ");
		$monitor("%0t\t%0b\t%0b\t%0b\t%0b\t%0b\t%0b", $time, clk, preset, clr, J, K, Q);
	end
endmodule
		

