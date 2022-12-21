//Testbench code for ComplexCounter
//Made by: Jhury Kevin Lastre

`timescale 1 ns / 1 ps
module tb_ComplexCounter();

	reg 			Clk, nReset, Mode;
	wire [2:0] 	Count;

	ComplexCounter UUT(.Clk(Clk), .nReset(nReset), .Mode(Mode), .Count(Count));

	initial 
		Clk = 1'b0;

	always
		#5		Clk = ~ Clk;

	initial begin
		nReset = 1'b0;		#12	
		nReset = 1'b1;		
	end
	
	initial begin
		$display("Starting Simulation at %0d ns...",$time);
		
		Mode = 1'b0;	#50	
		Mode = 1'b1;	#70
		Mode = 1'b0;	#50	

		
		$display("Finished Simulation at %0d ns...",$time);
		$stop;
	end
	
	initial begin
		$monitor("Time = %2d ns \tnReset = %b \t CLOCK = %b \t M = %b \t --> \t COUNT = %3b ", 
			$time, nReset, Clk, Mode, Count);
	end
		
endmodule	