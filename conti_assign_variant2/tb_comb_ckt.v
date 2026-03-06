module tb_comb_ckt();
	
	reg A, B, C, D;
	wire Z;

	comb_ckt uut(.A(A), .B(B), .C(C), .D(D), .Z(Z));

	initial
	begin
		A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
		
		#10 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0;
		
		#10 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1;
		
		#5 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;

		#10 A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0;
			
		#10 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;
		
		#10 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
		
		#10 $finish();
	end

	initial
	begin
		$display("Output of given combinational circuit is:");
		$display("Time\tA\tB\tC\tD\tZ");
		$monitor("%0t\t%0b\t%0b\t%0b\t%0b\t%0b",$time,A,B,C,D,Z);
	end
endmodule

