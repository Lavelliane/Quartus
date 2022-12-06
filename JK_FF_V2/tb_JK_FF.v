//Verilog testbench file for JK Flipflop
//Made by: Jhury Kevin Lastre

`timescale 1 ns / 1 ps
module tb_JK_FF ();
	reg		J, K, Reset, CLK;
	wire		Q, Q_bar;

	JK_FF UUT (.J(J), .K(K), .Reset(Reset), .CLK(CLK), .Q(Q), .Q_bar(Q_bar));
	initial 
		CLK = 1'b0;
	
	always
		#5		CLK = ~ CLK;

	initial begin
		Reset = 1'b1;		#15
		Reset = 1'b0;		
	end

	initial begin
		$display("Starting Simulation at %0d ns...",$time);
		J = 1'b0;	K = 1'b0;	#18
		J = 1'b1;	K = 1'b1;	#10
		J = 1'b0;	K = 1'b0;	#10
		J = 1'b1;	K = 1'b1;	#10
		J = 1'b1;	K = 1'b0;	#10
		J = 1'b0;	K = 1'b1;	#10
		J = 1'b0;	K = 1'b1;	#10
		J = 1'b1;	K = 1'b0;	#10
		$display("Finished Simulation at %0d ns...",$time);
		$stop;
	end
	
	initial begin
		$monitor("Time = %2d ns \t J = %b \t K = %b \tReset = %b \t CLK = %d \t || \t Q = %b \t Q_bar = %b", $time, J, K, Reset, CLK, Q, Q_bar);
	end

endmodule

