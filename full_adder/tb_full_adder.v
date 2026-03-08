module tb_full_adder();
	reg A, B, Cin;
	wire Sum, Cout;

	full_adder uut(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

	initial
	begin
		    A = 1'b0; B = 1'b0; Cin = 1'b0;
		#10 A = 1'b0; B = 1'b0; Cin = 1'b1;	
		#10 A = 1'b0; B = 1'b1; Cin = 1'b0;
		#10 A = 1'b0; B = 1'b1; Cin = 1'b1;
		#10 A = 1'b1; B = 1'b0; Cin = 1'b0;
		#10 A = 1'b1; B = 1'b0; Cin = 1'b1;
		#10 A = 1'b1; B = 1'b1; Cin = 1'b0;
		#10 A = 1'b1; B = 1'b1; Cin = 1'b1;
		
		#10 $finish();
	end

	initial
	begin
		$display("Output of Full Adder");
		$display("Time\tA\tB\tCin\t|\tSum\tCout");
		$monitor("%0t\t%0b\t%0b\t%0b\t|\t%0b\t%0b",$time, A, B, Cin, Sum, Cout);
	end
endmodule
