//
//Verilog HDL testbench code for a 4-bit subtractor circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM
`timescale 1 ns/ 1 ps
module tb_Subtractor_4bit();

	reg [3:0] a, b;
	reg C_in;
	
	wire B_out;
	wire [3:0] d;
	
	Subtractor_4bit UUT(a, b, C_in, d, B_out);
	
	initial
	begin
	
	
		  a = 4'd0;    b = 4'd0;    C_in = 0;    #10
        a = 4'd7;    b = 4'd4;    C_in = 0;    #10
        a = 4'd14;   b = 4'd12;   C_in = 0;    #10
        a = 4'd4;   	b = 4'd1;    C_in = 0;    #10
        a = 4'd5;    b = 4'd4;    C_in = 0;    #10
        a = 4'd1;    b = 4'd9;    C_in = 0;    #10
        a = 4'd15;   b = 4'd15;   C_in = 0;    #10
        a = 4'd10;   b = 4'd13;   C_in = 0;    #10
		  a = 4'd14;   b = 4'd7;    C_in = 1;    #10
        a = 4'd6;    b = 4'd9;    C_in = 1;    #10
        a = 4'd3;    b = 4'd12;   C_in = 1;    #10
        a = 4'd4;   	b = 4'd9;    C_in = 1;    #10
        a = 4'd9;    b = 4'd4;    C_in = 1;    #10
        a = 4'd10;   b = 4'd9;    C_in = 1;    #10
        a = 4'd15;   b = 4'd5;    C_in = 1;    #10
        a = 4'd2;    b = 4'd15;   C_in = 1;    #10

	
		$stop;
		
	end
	

endmodule

