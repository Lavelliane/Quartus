//
//Verilog HDL testbench code for a half adder circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM

`timescale 1 ns / 1 ps
module tb_HalfAdder();

	reg x, y;
	wire C, S;
	HalfAdder UUT (x, y, C, S);

	initial
	begin
		x = 0;	y = 0;	#10
		x = 0;	y = 1;	#10
		x = 1;	y = 0;	#10
		x = 1;	y = 1;	#50
		
		$stop;
	end
	
endmodule