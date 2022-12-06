//Verilog HDL Code for Spinning Disk
//Author: Jhury Kevin Lastre

module SpinningDisk(Clk, nReset, Start, SSeg);

input Clk, nReset, Start;
output [7:0]SSeg;

wire [2:0]n1, n2;

Counter_3bit C1 (.clk(Clk), .rst(nReset), .cnt(n1), .Start(Start));
Seven_Seg 	 S1 (.bin(n1), .dp(1'b0), .sseg(SSeg));




endmodule