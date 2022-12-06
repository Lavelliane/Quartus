//Verilog HDL Code for BCD Counter
//Author: Jhury Kevin Lastre

module BCD_Counter(Clk, nReset, Enable, Count_out);

input wire Clk, nReset, Enable;
output reg [3:0]Count_out;

always@(posedge Clk, negedge nReset)
	begin
		if(!nReset)
			Count_out <= 4'd0;
		else
			begin
				if(!Enable)
					Count_out <= Count_out;
				else
					begin
						Count_out <= Count_out + 4'd1;
						Count_out <= Count_out == 4'd9 ? 4'd0 : Count_out;
					end
			end

	end
endmodule