//Verilog HDL Testbench Code for Modified ALU Nbit
//Author: Jhury Kevin Lastre

`timescale 1 ns / 1 ps 
module tb_Modified_ALU_Nbit();
	
	localparam N = 4;
	
	reg [(N-1):0] A, B; 
	reg [3:0] Mode;
	reg CB_in;
	wire [(N-1):0] Result;
	wire CB_out;
	
	Modified_ALU_Nbit UUT (.A(A), .B(B), .CB_in(CB_in), .Mode(Mode), .Result(Result), .CB_out(CB_out));
	
	initial 
	begin
	
		$display("Starting simulation at %0d ns...", $time);
	
		Mode = 4'b0000; CB_in = 1'b0;	A = 4'b0000;	B = 4'b0101;	#10
												A = 4'b1111;	B = 4'b1010;	#10
												A = 4'b1010;	B = 4'b1111;	#10
		
		Mode = 4'b0001; CB_in = 1'b0;	A = 4'b1111;	B = 4'b0001;	#10
												A = 4'b1110;	B = 4'b0011;	#10
												A = 4'b1100;	B = 4'b0101;	#10
											
		Mode = 4'b0010; CB_in = 1'bx;	A = 4'b1011;	B = 4'b1011;	#10
												A = 4'b1111;	B = 4'b0001;	#10
												A = 4'b1101;	B = 4'b1001;	#10
												
		Mode = 4'b0011; CB_in = 1'bx;	A = 4'b1010;	B = 4'b1101;	#10
												A = 4'b1010;	B = 4'b0111;	#10
												A = 4'b1101;	B = 4'b1111;	#10
												
		Mode = 4'b0100; CB_in = 1'bx;	A = 4'b1010;	B = 4'b0101;	#10
												A = 4'b1111;	B = 4'b1110;	#10
												A = 4'b1001;	B = 4'b1011;	#10
												
		Mode = 4'b0101; CB_in = 1'bx;	A = 4'b0000;	B = 4'b0101;	#10
												A = 4'b1110;	B = 4'b1010;	#10
												A = 4'b0101;	B = 4'b1011;	#10
												
		Mode = 4'b0110; CB_in = 1'bx;	A = 4'b1010;	B = 4'b1101;	#10
												A = 4'b1001;	B = 4'b1010;	#10
												A = 4'b1000;	B = 4'b1011;	#10
										
												
		Mode = 4'b0111; CB_in = 1'bx;	A = 4'b1011;	B = 4'b0101;	#10
												A = 4'b1111;	B = 4'b0000;	#10
												A = 4'b0011;	B = 4'b1011;	#10
												
		Mode = 4'b1000; CB_in = 1'bx;	A = 4'b1001;	B = 4'b0101;	#10
												A = 4'b1111;	B = 4'b1110;	#10
												A = 4'b1010;	B = 4'b1011;	#10
		
		Mode = 4'b1001; CB_in = 1'bx;	A = 4'b1010;	B = 4'b1101;	#10
												A = 4'b1010;	B = 4'b0011;	#10
												A = 4'b1001;	B = 4'b1101;	#10
											
		Mode = 4'b1010; CB_in = 1'bx;	A = 4'b1010;	B = 4'b1011;	#10
												A = 4'b1001;	B = 4'b0101;	#10
												A = 4'b1001;	B = 4'b0011;	#10
												
		Mode = 4'b1011; CB_in = 1'bx;	A = 4'b1010;	B = 4'b0111;	#10
												A = 4'b1111;	B = 4'b0101;	#10
												A = 4'b1001;	B = 4'b1011;	#10
												
		Mode = 4'b1100; CB_in = 1'bx;	A = 4'b1010;	B = 4'b0101;	#10
												A = 4'b1111;	B = 4'b1110;	#10
												A = 4'b1001;	B = 4'b1011;	#10
												
		Mode = 4'b1101; CB_in = 1'bx;	A = 4'b0000;	B = 4'b0101;	#10
												A = 4'b1110;	B = 4'b1010;	#10
												A = 4'b0101;	B = 4'b1011;	#10
												
		Mode = 4'b1110; CB_in = 1'bx;	A = 4'b1010;	B = 4'b0101;	#10
												A = 4'b0001;	B = 4'b1111;	#10
												A = 4'b1000;	B = 4'b1011;	#10
												
		Mode = 4'b1111; CB_in = 1'bx;	A = 4'b1001;	B = 4'b0101;	#10
												A = 4'b1001;	B = 4'b0101;	#10
												A = 4'b0011;	B = 4'b1011;	#10
												
		$display("Finished simulation at %0d ns...", $time);
		$stop; 
	end
	
	initial begin
			
		$monitor("Time: %2d ns\t Mode = %4b\t A = %4b\t B = %4b\t CB_in = %1b\t CB_out = %1b\t Result = %4b", $time, Mode, A, B, CB_in, CB_out, Result);
		
	end
	
endmodule