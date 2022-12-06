//Verilog HDL Code for Stopwatch
//Author: Jhury Kevin Lastre

module Stopwatch(Clk, nReset, Start, S0, S1, S2);

	input  Clk, nReset, Start;
	output [7:0]S0, S1, S2;
	
	wire [3:0]n1, n2, n3;
	
	//FOR FLOATING POINT DIGIT
	BCD_Counter C1(.Clk(Clk), .nReset(nReset), .Enable(Start), .Count_out(n1));
	BCD_Decoder D1(.dp(1'b0), .count(n1), .SSeg(S0));
	
	//FOR ONES PLACE
	BCD_Counter C2(.Clk(Clk), .nReset(nReset), .Enable(n1 == 4'd9), .Count_out(n2));
	BCD_Decoder D2(.dp(1'b1), .count(n2), .SSeg(S1));
	
	
	//FOR TENS PLACE
	BCD_Counter C3(.Clk(Clk), .nReset(nReset), .Enable(n2 == 4'd9), .Count_out(n3));
	BCD_Decoder D3(.dp(1'b0), .count(n3), .SSeg(S2));


endmodule