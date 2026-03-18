`define MAX 100

module counter_100();

	integer count;

	initial
	begin
		count = 0;
		while(count < `MAX)
		begin
			#10
			count = count + 1;
		end
		$display("TIME=%0t Number=%0d",$time,count);
	end
endmodule
