module tb_parity_gen();
	reg [3:0] X;
	wire [4:0] Y;

	parity_gen uut(.X(X), .Y(Y));

	integer i;

	initial
	begin
		$display("TIME\tX\tY");
		for(i = 0; i < 16; i = i + 1)
		begin
			X = i;
			#10 $display("%0t\t%4b\t%5b",$time, X, Y);
		end
		$finish();
	end
endmodule
