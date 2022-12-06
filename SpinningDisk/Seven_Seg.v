//verlog HDL code for Seven Segment 
//By: Jhury Kevin Lastre
module Seven_Seg
(
	input wire [2:0] bin,
	input wire dp,
	output reg [7:0]sseg
);

	always@(*)
	begin
		case(bin)
			//G F E D C B A
			3'b000 : sseg = {7'b0000000, dp};
			3'b001 : sseg = {7'b0011101, dp}; 
			3'b010 : sseg = {7'b0011110, dp};
			3'b011 : sseg = {7'b1011100, dp};
			3'b100 : sseg = {7'b0111100, dp};
			3'b101 : sseg = {7'b0011100, dp};
			3'b110 : sseg = {7'b0000000, dp};
			3'b111 : sseg = {7'b0011100, dp};
		endcase		
	end
endmodule