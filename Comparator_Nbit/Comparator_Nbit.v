//Verilog HDL code for Comparator
//Author: Jhury Kevin Lastre

module Comparator_Nbit
	#(parameter N = 4)
(
	input 	[N-1:0] A, B,
	output 	[2:0] R
);

	//010	= EQUAL
	//001 = A > B
	//100 = A < B
	
	assign R[0] = A>B;
	assign R[1] = (A==B);
	assign R[2] = A<B;

	
endmodule