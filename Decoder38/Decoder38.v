//
//Verilog HDL code for a 3-8 Decoder circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM
module Decoder38(en, a, d);

	input [2:0] a;
	input en;
	output [7:0] d;
	
	wire e1, e2;
	
	and A1 (e1, ~a[2], en);
	and A2 (e2, a[2], en);
	
	Decoder24 D1 (e1, a[1:0], d[3:0]);
	Decoder24 D2 (e2, a[1:0], d[7:4]);

endmodule