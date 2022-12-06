//
//Verilog HDL code for a test bench Four bit adder circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM

module FourBitAdder(a, b, C_in, C_out, S);

	input  [3:0] a,b;
	input C_in;
	output [3:0] S;
	output C_out;
	
	wire c1, c2, c3;
	
	FullAdder F1(a[0], b[0], C_in, c1, S[0]);
	FullAdder F2(a[1], b[1], c1, c2, S[1]);
	FullAdder F3(a[2], b[2], c2, c3, S[2]);
	FullAdder F4(a[3], b[3], c3, C_out, S[3]);
	
	


endmodule