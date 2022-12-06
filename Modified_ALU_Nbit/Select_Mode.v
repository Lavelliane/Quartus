//Verilog HDL Code for Select Mode
//Author: Jhury Kevin Lastre

module Select_Mode 
	#(parameter N = 4)	
(
	input wire [N-1:0] 	w1,w2,
	input wire				CB_in, Case, n1, n2,
	output reg [N-1:0]	res,
	output reg				CB_out
);

	always @(*) 
		begin
			case(Case)
				1'b0: 	begin res = w1; CB_out = n1; end
				default: begin res = w2; CB_out = n2; end
			endcase

		end
		
endmodule 