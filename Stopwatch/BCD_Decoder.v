//Verilog HDL Code for BCD Counter
//Author: Jhury Kevin Lastre

module BCD_Decoder
(
	input wire			dp,	// decimal enable
	input wire [3:0]	count, 
	output reg [7:0]	SSeg
);
	reg [6:0]	num;
	
	always @(*) 
		begin
			case (count)
				4'b0000 : num <= 7'b0000001; // 0
				4'b0001 : num <= 7'b1001111; // 1 
				4'b0010 : num <= 7'b0010010; // 2
				4'b0011 : num <= 7'b0000110; // 3
				4'b0100 : num <= 7'b1001100; // 4
				4'b0101 : num <= 7'b0100100; // 5
				4'b0110 : num <= 7'b0100000; // 6
				4'b0111 : num <= 7'b0001111; // 7
				4'b1000 : num <= 7'b0000000; // 8
				4'b1001 : num <= 7'b0000100; // 9
				default : num <= 7'b0000001; // 0
			endcase
			
			SSeg <= {num,dp};
		
		end					

endmodule 