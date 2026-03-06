module tb_conti_assign();
	reg A;
	wire B, C;

	conti_assign uut(.A(A), .B(B), .C(C));

	initial
	begin
		A = 1'b0;

		//#5 A = 1'b1; 

		#20 $finish();
	end

	initial
	begin
		$display("Output when A is 0");
		//$display("Output when A is changed to 1 at 5timeunit");
		$monitor("Time=%0t A=%b B=%b C=%b",$time, A, B, C);
	end
endmodule	

