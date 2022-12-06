//Verilog HDL Testbench code for Seven Segment
//Author: Jhury Kevin Lastre

`timescale 1 ns / 1 ps
module tb_Seven_Seg ();

	reg [3:0] hex;
	reg dp;
	wire [7:0]sseg;

	Seven_Seg UUT (.hex(hex), .dp(dp), .sseg(sseg));
		
	initial begin
		$display("Starting simulation at %0d ns...", $time);
		hex = 4'h0;	dp = 1'b0;	#10
		hex = 4'h1;	dp = 1'b0;	#10
		hex = 4'h2;	dp = 1'b0;	#10
		hex = 4'h3;	dp = 1'b0;	#10
		hex = 4'h4;	dp = 1'b0;	#10
		hex = 4'h5;	dp = 1'b0;	#10
		hex = 4'h6;	dp = 1'b0;	#10
		hex = 4'h7;	dp = 1'b1;	#10
		hex = 4'h8;	dp = 1'b1;	#10
		hex = 4'h9;	dp = 1'b1;	#10
		hex = 4'ha;	dp = 1'b1;	#10
		hex = 4'hb;	dp = 1'b1;	#10
		hex = 4'hc;	dp = 1'b1;	#10
		hex = 4'hd;	dp = 1'b1;	#10
		hex = 4'he;	dp = 1'b1;	#10
		hex = 4'hf;	dp = 1'b0;	#10
		
		$display("Finished simulation at %0d ns...", $time);
		$stop;
	end
	
	initial begin
		$monitor("Time = %2d ns\t A = %d\t DP = %d\t SSEG Display = %b", $time, hex, dp, sseg);
	end

endmodule
	