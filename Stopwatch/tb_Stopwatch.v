//Verilog HDL Testbench Code for Stopwatch
//Author: Jhury Kevin Lastre

`timescale 1 ns / 1 ps
module tb_Stopwatch();

	reg 			Clk, nReset, Start;
	wire [7:0] 	S0, S1, S2;

	Stopwatch UUT(.Clk(Clk), .nReset(nReset), .Start(Start), .S0(S0), .S1(S1), .S2(S2));

	initial 
		Clk = 1'b0;

	always
		#5		Clk = ~ Clk;
		

	initial 
		begin
			nReset = 1'b0;		#50	
			nReset = 1'b1;		
		end

	initial 
		begin
			$display("Starting Simulation at %0d ns...",$time);
			
			Start = 1'b0;	#5	
			Start = 1'b1;	#100
			Start = 1'b0;	#10
			Start = 1'b1;	#100

			
			$display("Finished Simulation at %0d ns...",$time);
			$stop;
	end

	initial begin
		$monitor("Time = %2d ns \tnReset = %b \t Start = %b \t CLK = %b \t || \t S0 = %8b \t S1 = %8b \t S2 = %8b", 
			$time, nReset, Start, Clk, S0, S1, S2);
	end
		
endmodule		