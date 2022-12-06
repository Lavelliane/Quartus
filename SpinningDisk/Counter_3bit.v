//Verilog HDL Code for 3 bit counter
//Author: Jhury Kevin Lastre

module Counter_3bit (cnt,clk,rst, Start);
	input wire clk,rst, Start;
	output reg [2:0]cnt;

	always @ (posedge clk,  negedge rst)   
	begin 
		 if(!rst) 
				cnt <= 3'b000;
		 else
			begin

				if (!Start) 
					cnt <= 3'b000;
				else
					begin
						if(clk) 
							begin
								if(cnt == 3'b111)
									cnt <= 3'b000;
								else if( cnt >= 3'b000 && cnt < 3'b111)
									cnt <= cnt+1;
								else
									cnt <= 3'b000;
							end
								
						else 
							cnt <= cnt;
					end
			end
	 
		 
	end

endmodule