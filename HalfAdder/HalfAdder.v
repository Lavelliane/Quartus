//
//Verilog HDL code for a half adder circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM

module HalfAdder (x, y, C, S);

	input 	x, y;
	output 	C, S;
	
	xor		X1 (S, x, y);
	and 		A1 (C, x, y);
	
endmodule 
