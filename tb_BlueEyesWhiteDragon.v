//Testbench code for T Flip-flop
//Author: Jhury Kevin P. Lastre

`timescale 1 ns / 1 ps
module tb_BlueEyesWhiteDragon ();
	reg		Clk, nReset, En, Up;
	wire		[2:0]Count;

	BlueEyesWhiteDragon UUT (.Clk(Clk), .nReset(nReset), .En(En), .Up(Up), .Count(Count));
	initial 
		Clk = 1'b0;
	
	always
		#5		Clk = ~Clk;

	initial begin
		nReset = 1'b0;		#15
		nReset = 1'b1;		
	end

	initial begin
		$display("Starting Simulation at %0d ns...",$time);
		En = 1'b0; Up = 1'b0;		#18
		En = 1'b1; Up = 1'b1;		#10
		En = 1'b1; Up = 1'b1;		#10
		En = 1'b1; Up = 1'b1;		#10
		En = 1'b1; Up = 1'b1;		#10
		En = 1'b1; Up = 1'b1;		#10
		En = 1'b1; Up = 1'b0;		#10
		En = 1'b1; Up = 1'b0;		#10
		En = 1'b1; Up = 1'b0;		#10
		En = 1'b1; Up = 1'b0;		#10
		En = 1'b1; Up = 1'b0;		#10
		
		$display("Finished Simulation at %0d ns...",$time);
		$stop;
	end
	
	initial begin
		$monitor("Time = %2d ns \t En = %b \Up = %b \t Count = %d", $time, En, Up, Count);
	end

endmodule
