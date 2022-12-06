//Verilog HDL Code for ALU
//Author: Jhury Kevin Lastre

module Original_ALU
	#(parameter N = 4)
(
	input wire [(N-1):0] A, B,
	input wire CB_in,
	input wire [2:0] mode,
	output reg [(N-1):0] res,
	output reg CB_out
);

	always@(*)
	begin
	
		if(mode==3'b000)
			{CB_out, res} = A + B + CB_in;
		else if(mode==3'b001)
			{CB_out, res} = (A + CB_in) - B;
		else if(mode==3'b010)
			res = A&B;
		else if(mode==3'b011)
			res = A|B;
		else if(mode==3'b100)
			res = A^B;
		else if(mode==3'b101)
			res = ~A;
		else if(mode==3'b110)
			res = A + 1'b1;
		else
			res = A - 1'b1;	
	
	end
endmodule