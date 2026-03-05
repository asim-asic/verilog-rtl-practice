module tb_continuous_assign();
	reg A, B, D;
        wire C, E;

	continuous_assign uut(.A(A), .B(B), .C(C), .D(D), .E(E));

	initial
	begin
		//A=1; B=0; D=0;

		//change B to 1
	        A=1; B=1; D=0;
		#20 $finish();
	end

	initial
	begin
		//$display("Output when B is selected as 0");
		$display("Output when B is selected as 1");
		$display("Time\tA B D | C E");
		$monitor("%0t\t%0b %0b %0b | %0b %0b",$time, A, B, D, C, E);
	end

//	initial
//	begin
//		$dumpfile("wave.vcd");
//		$dumpvars(0,tb_continuous_assign);
//	end
endmodule
