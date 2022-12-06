//
//Verilog HDL code for a Full adder circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM

module FullAdder(a, b, C_in, S, C_out);

	input a, b, C_in;
	output C_out, S;
	wire w1, w2, w3;
	
	HalfAdder 	H1(a, b, w1, w2); 
	HalfAdder 	H2(C_in, w2, w3, S);
	or 		 	G1(C_out, w1, w3);


endmodule