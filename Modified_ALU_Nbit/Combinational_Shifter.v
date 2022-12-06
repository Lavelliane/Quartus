//Verilog HDL Code for Combinational Shifter
//Author: Jhury Kevin Lastre

module Combinational_Shifter
	#(parameter N = 4)
(
	input wire [(N-1):0] A, B,
	input wire CB_in,
	input wire [2:0] mode,
	output reg [(N-1):0] res,
	output reg CB_out
);

	always@(*)
	begin
	
		if(mode==3'b000)
			begin res = A << 1; end
		else if(mode==3'b001)
			begin res = {A[N-2:0], 1'b1}; end
		else if(mode==3'b010)
			begin res = A >> 1; end
		else if(mode==3'b011)
			begin res = {1'b1, A[N-1:1]}; end
		else if(mode==3'b100)
			begin res = A <<< 1; end
		else if(mode==3'b101)
			begin res = A >>> 1; end
		else if(mode==3'b110)
			begin res = {A[N-2:0], A[N-1]}; end
		else if(mode==3'b111)
			begin res = {A[0], A[N-1:1]};  end
		else
			begin 
				res = 1'd1;
				CB_out = 1'b0;
			end
	
	end

endmodule