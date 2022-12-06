//
//Verilog HDL testbench code for a Full adder circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM
`timescale 1 ns/ 1 ps

module tb_FullAdder();

	reg a, b, C_in;
	
	wire S, C_out;
	
	FullAdder UUT (a, b, C_in, S, C_out);
	
	initial
	begin
		a = 0;	b = 0; 	C_in = 0; #10
		a = 0;	b = 0; 	C_in = 1; #10
		a = 0;	b = 1; 	C_in = 0; #10
		a = 0;	b = 1; 	C_in = 1; #10
		a = 1;	b = 0; 	C_in = 0; #10
		a = 1;	b = 0; 	C_in = 1; #10
		a = 1;	b = 1; 	C_in = 0; #10
		a = 1;	b = 1; 	C_in = 1; #30
		$stop;
	end
	
endmodule