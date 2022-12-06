//
//Verilog HDL code for a 2-4 Decoder circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM
module Decoder24 (en, a, d);

	input [1:0] a;
	input en;
	output [3:0] d;
	
	
	
	and D1 (d[0], en, (~a[0]) ,(~a[1]));
	and D2 (d[1], en, (a[0]) ,(~a[1]));
	and D3 (d[2], en, (a[1]) ,(~a[0]));
	and D4 (d[3], en, (a[0]) ,(a[1]));
		

endmodule