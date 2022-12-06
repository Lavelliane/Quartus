//Verilog HDL Testbench code for Comparator
//Author: Jhury Kevin Lastre

`timescale 1 ns / 1 ps
module tb_Comparator_Nbit ();

	reg [3:0] A, B;
	
	wire [2:0] R;

	Comparator_Nbit #( .N(4) )
		UUT (.A(A), .B(B), .R(R));
		
	initial begin
		$display("Starting simulation at %0d ns...", $time);
		A = 4'd0;	B = 4'd0;	#10
		A = 4'd3;	B = 4'd14;	#10
		A = 4'd8;	B = 4'd8;	#10
		A = 4'd11;	B = 4'd9;	#10
		A = 4'd15;	B = 4'd7;	#10
		A = 4'd6;	B = 4'd1;	#10
		A = 4'd3;	B = 4'd3;	#10
		A = 4'd5;	B = 4'd10;	#10
		A = 4'd4;	B = 4'd2;	#10
		A = 4'd0;	B = 4'd1;	#10
		
		$display("Finished simulation at %0d ns...", $time);
		$stop;
	end
	
	initial begin
		$monitor("Time = %2d ns\t A = %d\t B = %d\t R = %b", $time, A, B, R);
	end

endmodule
	