module tb_wait_memory();
	reg WR;
	reg [7:0] DATA_IN;
	wire [7:0] DATA_OUT;

	wait_memory uut(.WR(WR), .DATA_IN(DATA_IN), .DATA_OUT(DATA_OUT));

	initial
	begin
		WR = 1'b0;
		DATA_IN = 8'd0;

		#10 DATA_IN = 8'hDD;
		#10 WR = 1'b1;  // write 30

		#10 WR = 1'b0;  // read

		#10 DATA_IN = 8'h5E;
		#10 WR = 1'b1;	// write 5E

		#10 WR = 1'b0;	// read
		
		#50 $finish();
	end

	initial
	begin
		$display("Output of memory :");
		$display("TIME\tWR\tDATA_IN\tDATA_OUT");
		$monitor("%0t\t%0b\t%0h\t%0h", $time, WR, DATA_IN, DATA_OUT);
	end
endmodule


