//Verilog HDL code for Nbit MUX
//Author: Jhury Kevin Lastre

module MUX_Nbit
	#(parameter N = 4)
(
	input [N-1:0] A, B, C, D,
	input [1:0] S,
	output [N-1:0] Y
);

	assign Y = S[1] ? (S[0] ? D : C) : (S[0] ? B : A);
	

endmodule