module tb_mux_4x1();
	reg A, B;
	reg I0, I1, I2, I3;
	wire F;

	mux_4x1 uut(.A(A), .B(B), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .F(F));

	initial
	begin
		    I0 = 1'b0; I1 =1'b0; I2 = 1'b0; I3 = 1'b0; A = 1'b0; B = 1'b0;
		#10 I0 = 1'b0; I1 =1'b0; I2 = 1'b0; I3 = 1'b1; A = 1'b0; B = 1'b1;	
		#10 I0 = 1'b0; I1 =1'b0; I2 = 1'b1; I3 = 1'b0; A = 1'b1; B = 1'b0;
		#10 I0 = 1'b0; I1 =1'b0; I2 = 1'b1; I3 = 1'b1; A = 1'b1; B = 1'b1;
		#10 I0 = 1'b0; I1 =1'b1; I2 = 1'b0; I3 = 1'b0; A = 1'b0; B = 1'b0;
		#10 I0 = 1'b0; I1 =1'b1; I2 = 1'b0; I3 = 1'b1; A = 1'b0; B = 1'b1;
		#10 I0 = 1'b0; I1 =1'b1; I2 = 1'b1; I3 = 1'b0; A = 1'b1; B = 1'b0;
		#10 I0 = 1'b0; I1 =1'b1; I2 = 1'b1; I3 = 1'b1; A = 1'b1; B = 1'b1;
		
		#10 I0 = 1'b1; I1 =1'b0; I2 = 1'b0; I3 = 1'b0; A = 1'b0; B = 1'b0;
		#10 I0 = 1'b1; I1 =1'b0; I2 = 1'b0; I3 = 1'b1; A = 1'b0; B = 1'b1;	
		#10 I0 = 1'b1; I1 =1'b0; I2 = 1'b1; I3 = 1'b0; A = 1'b1; B = 1'b0;
		#10 I0 = 1'b1; I1 =1'b0; I2 = 1'b1; I3 = 1'b1; A = 1'b1; B = 1'b1;
		#10 I0 = 1'b1; I1 =1'b1; I2 = 1'b0; I3 = 1'b0; A = 1'b0; B = 1'b0;
		#10 I0 = 1'b1; I1 =1'b1; I2 = 1'b0; I3 = 1'b1; A = 1'b0; B = 1'b1;
		#10 I0 = 1'b1; I1 =1'b1; I2 = 1'b1; I3 = 1'b0; A = 1'b1; B = 1'b0;
		#10 I0 = 1'b1; I1 =1'b1; I2 = 1'b1; I3 = 1'b1; A = 1'b1; B = 1'b1;
		#10 $finish();
	end

	initial
	begin
		$display("4:1 Multiplexer Output is:");
		$display("TIME\tI0\tI1\tI2\tI3\tA\tB\tF");
		$monitor("%0t\t%0b\t%0b\t%0b\t%0b\t%0b\t%0b\t%0b",$time, I0, I1, I2, I3, A, B, F);
	end
endmodule
	
