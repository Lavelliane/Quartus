//Testbench code for T Flip-flop
//Author: Jhury Kevin P. Lastre

`timescale 1 ns / 1 ps
module tb_T_FF ();
	reg		clk, rstn, t;
	wire		q, q_bar;

	T_FF UUT (.clk(clk), .rstn(rstn), .t(t), .q(q), .q_bar(q_bar));
	initial 
		clk = 1'b0;
	
	always
		#5		clk = ~ clk;

	initial begin
		rstn = 1'b0;		#15
		rstn = 1'b1;		
	end

	initial begin
		$display("Starting Simulation at %0d ns...",$time);
		t = 1'b0;		#18
		t = 1'b0;		#10
		t = 1'b1;		#10
		t = 1'b0;		#10
		t = 1'b0;		#10
		t = 1'b1;		#10
		t = 1'b0;		#10
		t = 1'b1;		#10
		$display("Finished Simulation at %0d ns...",$time);
		$stop;
	end
	
	initial begin
		$monitor("Time = %2d ns \t t = %b \tReset = %b \t CLK = %d \t || \t Q = %b \t Q_bar = %b", $time, t, rstn, clk, q, q_bar);
	end

endmodule
