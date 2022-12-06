//
//Verilog HDL testbench code for a 3-8 Decoder circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM
`timescale 1 ns/1 ps
module tb_Decoder38();

	reg [2:0] a;
	reg en;
	wire [7:0] d;
	
	Decoder38 UUT(en, a, d);
	
	initial
	begin
	
		en = 0;	a = 3'b000; #10
		en = 1;	a = 3'b000; #10
		en = 1;	a = 3'b001; #10
		en = 1;	a = 3'b010; #10
		en = 1;	a = 3'b011; #10
		en = 1;	a = 3'b100; #10
		en = 1;	a = 3'b101; #10
		en = 1;	a = 3'b110; #10
		en = 1;	a = 3'b111; #10
		$stop;
	end
endmodule

		  
		