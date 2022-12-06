//
//Verilog HDL code for a 4 bit subtractor circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM
module Subtractor_4bit(a, b, C_in, d, B_out);

	input [3:0] a, b;
	input C_in;
	
	output B_out;
	output [3:0] d;
	
	wire w0, w1, w2, x0;
	
	
	FullAdder F1(a[0], ~b[0], C_in, d[0], w0);
	FullAdder F2(a[1], ~b[1], w0, d[1], w1);
	FullAdder F3(a[2], ~b[2], w1, d[2], w2);
	FullAdder F4(a[3], ~b[3], w2, d[3], B_out);

endmodule