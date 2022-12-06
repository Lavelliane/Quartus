//Verilog testbench file for Even Parity Gen
//Author: Jhury Kevin Lastre
`timescale 1 ns / 1 ps

module tb_EvenParityGen_3bit();

	reg [2:0] A;
	reg E;
	wire P;

	EvenParityGenerator_3bit UUT (.A(A), .E(E), .P(P));

	initial begin
		$display("Starting simulation at %0d ns...", $time);
		
		E = 1'b0; 	A = 3'b000;	#10
						A = 3'b001; #10
						A = 3'b010; #10
						A = 3'b011; #10
						A = 3'b100; #10
						A = 3'b101; #10
						A = 3'b110; #10
						A = 3'b111; #10
						
		E = 1'b1; 	A = 3'b000;	#10
						A = 3'b001; #10
						A = 3'b010; #10
						A = 3'b011; #10
						A = 3'b100; #10
						A = 3'b101; #10
						A = 3'b110; #10
						A = 3'b111; #10
			
		$display("Finished simulation at %0d ns...", $time);
		$stop;
	end
	
	initial begin
		$monitor("Time = %2d ns\t E = %b\t A = %b\t P = %b", $time, E, A, P);
	end


endmodule