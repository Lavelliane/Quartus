//Verilog HDL code for Even Parity Generator
//Author: Jhury Kevin Lastre


module EvenParityGenerator_3bit
(
	input [2:0] A,
	input E,
	output P
);
	 
	assign P = (E == 1'b1) ? (A[0] ^ A[1] ^ A[2]) : 1'bz;
	
endmodule