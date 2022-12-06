//Verilog HDL Testbench code for spinning disk
//Author: Jhury Kevin Lastre

`timescale 1 ns / 1 ps
module tb_Spinning_Disk();

	reg 			Clk, nReset, Start;
	wire [7:0] 	SSeg;

	SpinningDisk UUT(.Clk(Clk), .nReset(nReset), .Start(Start), .SSeg(SSeg));

	initial 
		Clk = 1'b0;

	always
		#5		Clk = ~ Clk;

	initial 
		begin
			nReset = 1'b0;		#10
			nReset = 1'b1;		
		end

	initial 
		begin
			$display("Starting Simulation at %0d ns...",$time);
			
			Start = 1'b0;	#13
			Start = 1'b1;	#30
			Start = 1'b0;	#15
			Start = 1'b1;	#30

			
			$display("Finished Simulation at %0d ns...",$time);
			$stop;
		end

	initial 
		begin
			$monitor("nReset = %b \t Start = %b \t CLK = %b \t SSeg = %8b", nReset, Start, Clk, SSeg);
		end
		
endmodule