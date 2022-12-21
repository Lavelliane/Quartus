//RaceLightsController testbench
//Made by: Jhury Kevin Lastre

`timescale 1 s / 1 ps

module tb_RaceLightsController ();

reg Clk, nReset, Start;
wire R, Y, G;

RaceLightsController UUT (.Clk(Clk), .nReset(nReset), .Start(Start), .R(R), .Y(Y), .G(G));

initial 
	Clk = 1'b0;
	
always
	#1 Clk = ~Clk;
	
initial 
	begin
		nReset = 1'b0; #2
		nReset = 1'b1;
end

initial 
	begin
		$display("Starting simulation at %0d s...", $time);
			Start = 1'b0;		#1
			Start = 1'b1;	   #20
			nReset = 1'b0;		#3
			$display("Finished Simulation at %0d s...", $time);
		$stop;
end

initial
	$monitor("Time = %d s\t CLOCK = %b\t nRESET = %b\t START = %b\t RED = %b\t YELLOW = %b\t GREEN = %b",$time, Clk, nReset, Start, R, Y, G);
endmodule
