module tb_four_bit_FA();
	reg [3:0] A, B;
	reg Ci;
	wire [3:0] S;
	wire Co;

	four_bit_FA dut(.A(A), .B(B), .Ci(Ci), .S(S), .Co(Co));

	initial
	begin
		    A = 4'b0001; B = 4'b0010; Ci = 1'b0;
		#10 A = 4'b1011; B = 4'b0110; Ci = 1'b0;	
		#10 A = 4'b1001; B = 4'b0110; Ci = 1'b1;
		#10 A = 4'b0011; B = 4'b1010; Ci = 1'b1;
		#10 A = 4'b0101; B = 4'b1010; Ci = 1'b0;
		#10 A = 4'b0111; B = 4'b1110; Ci = 1'b1;
		#10 $finish();
	end

	initial
	begin
		$display("Output of Four Bit Full Adder :");
		$display("Time\tA\tB\tCi\t|S\tCo");
		$monitor("%0t\t%04b\t%04b\t%0b\t|%04b\t%0b",$time, A, B, Ci, S, Co);
	end
endmodule
	
