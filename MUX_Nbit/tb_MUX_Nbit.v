//Verilog HDL testbench code for Nbit MUX
//Author: Jhury Kevin Lastre

`timescale 1 ns / 1 ps
module tb_MUX_Nbit();

	reg [3:0] A, B, C, D;
	reg [1:0] S;
	wire [3:0] Y;
	
	MUX_Nbit #( .N(4) )
		UUT (.A(A), .B(B), .C(C), .D(D), .S(S), .Y(Y));
		
	initial begin
		$display("Starting simulation at %0d ns...", $time);
		
		S = 2'b00;	A = 4'b0010;	#10
						B = 4'b0110;	#10
						C = 4'b1010;	#10
						D = 4'b0011;	#10
						
		S = 2'b01;	A = 4'b0010;	#10
						B = 4'b0110;	#10
						C = 4'b1010;	#10
						D = 4'b0011;	#10
						
		S = 2'b10;	A = 4'b0010;	#10
						B = 4'b0110;	#10
						C = 4'b1010;	#10
						D = 4'b0011;	#10
						
		S = 2'b11;	A = 4'b0010;	#10
						B = 4'b0110;	#10
						C = 4'b1010;	#10
						D = 4'b0011;	#10
		
		
		$display("Finished simulation at %0d ns...", $time);
		$stop;
	end
	
	initial begin
		$monitor("Time = %2d ns\t S = %b\t A = %B\t B = %b\t C = %b\t D = %b\t Y = %b\t", $time, S, A, B, C, D, Y);
	end

endmodule