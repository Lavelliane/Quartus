//Verilog HDL Code for Modified ALU Nbit
//Author: Jhury Kevin Lastre

module Modified_ALU_Nbit
	#(parameter N = 4)
(
	input  [N-1:0] 	A,B,
	input 				CB_in,
	input  [N-1:0] 	Mode,
	output [N-1:0]		Result,
	output 				CB_out
);
	wire 				n1, n2;
	wire [N-1:0]	w1, w2;
	
	
	Original_ALU				#(N)	A1 (.A(A), .B(B), .CB_in(CB_in), .mode(Mode[2:0]), .res(w1), .CB_out(n1));
	Combinational_Shifter	#(N) 	S1 (.A(A), .B(B), .CB_in(CB_in), .mode(Mode[2:0]), .res(w2), .CB_out(n2));
	Select_Mode							S2 (.w1(w1), .w2(w2), .n1(n1), .n2(n2), .Case(Mode[3]), .res(Result), .CB_out(CB_out));

endmodule