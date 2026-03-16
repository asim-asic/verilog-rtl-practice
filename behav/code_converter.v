module code_converter(
	input clk,
	input X,
	output reg Z
);
	
	reg [2:0] state;
	reg [2:0] next_state;

	initial
	begin
		state = 0;
		next_state = 0;
	end

	// Combinational circuit
	always @(state, X)
	begin
		case(state)
			0:begin
				if(X==1'b0)
				begin
					Z = 1'b1;
					next_state = 1;
				end
				else
				begin
					Z = 1'b0;
					next_state = 2;
				end
			end

			1:begin
				if(X==1'b0)
				begin
					Z = 1'b1;
					next_state = 3;
				end
				else
				begin
					Z = 1'b0;
					next_state = 4;
				end
			end

			2:begin
				if(X==1'b0)
				begin
					Z = 1'b1;
					next_state = 4;
				end
				else
				begin
					Z = 1'b0;
					next_state = 4;
				end
			end

			3:begin
				if(X==1'b0)
				begin
					Z = 1'b1;
					next_state = 5;
				end
				else
				begin
					Z = 1'b0;
					next_state = 5;
				end
			end

			4:begin
				if(X==1'b0)
				begin
					Z = 1'b1;
					next_state = 5;
				end
				else
				begin
					Z = 1'b0;
					next_state = 6;
				end
			end

			5:begin
				if(X==1'b0)
				begin
					Z = 1'b1;
					next_state = 0;
				end
				else
				begin
					Z = 1'b0;
					next_state = 0;
				end
			end

			6:begin
				if(X==1'b0)
				begin
					Z = 1'b1;
					next_state = 0;
				end
				else
				begin
					Z = 1'b0;
					next_state = 0;
				end
			end

			default:begin
				Z = 1'b0;
				next_state = 0;
			end
		endcase
	end
	
	// State Register rising edge of clock	
	always @(posedge clk)
	begin
		state <=next_state;
	end
endmodule
