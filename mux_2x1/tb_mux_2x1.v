module tb_mux_2x1();
	reg A;
	reg I0, I1;
	wire F;

	mux_2x1 uut(.A(A), .I0(I0), .I1(I1), .F(F));

	initial
	begin
		    I0 = 1'b0; I1 =1'b0; A = 1'b0;
		#10 I0 = 1'b0; I1 =1'b0; A = 1'b1;	
		#10 I0 = 1'b0; I1 =1'b1; A = 1'b0;
		#10 I0 = 1'b0; I1 =1'b1; A = 1'b1;
		#10 I0 = 1'b1; I1 =1'b0; A = 1'b0;
		#10 I0 = 1'b1; I1 =1'b0; A = 1'b1;
		#10 I0 = 1'b1; I1 =1'b1; A = 1'b0;
		#10 I0 = 1'b1; I1 =1'b1; A = 1'b1;
		#10 $finish();
	end

	initial
	begin
		$display("2:1 Multiplexer Output is:");
		$display("TIME\tI0\tI1\tA\tF");
		$monitor("%0t\t%0b\t%0b\t%0b\t%0b",$time, I0, I1, A, F);
	end
endmodule
	
