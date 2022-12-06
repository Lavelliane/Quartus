//Verilog HDL testbench code for Problem 3
//MADE BY: Jhury Kevin Lastre

`timescale 1 ns/1 ps
module tb_Problem3();

	reg x, y, z;
	wire f;
	
	Problem3 UUT (		.A (x), 
							.B (y), 
							.C (z), 
							.E (f)
	
	);
	
	initial
	begin
	
		x = 0;	y = 0;	z = 0; #10
		x = 0;	y = 0;	z = 1; #10
		x = 0;	y = 1;	z = 0; #10
		x = 0;	y = 1;	z = 1; #10
		x = 1;	y = 0;	z = 0; #10
		x = 1;	y = 0;	z = 1; #10
		x = 1;	y = 1;	z = 0; #10
		x = 1;	y = 1;	z = 1; #10
	
	
		$stop;
	
	end



endmodule