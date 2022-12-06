//Verilog HDL Code for Register Set Nbit
//Made by: Jhury Kevin Lastre

module RegisterSet_nBit
	#(parameter N = 4)
(
	input wire Clk, nReset, Enable, RW, 
	input wire [2:0]Address, 
	input wire [(N-1):0]Data_in,
	output reg [(N-1):0]Data_out
);

reg [(N-1):0]AR, BR, CR, DR, ER, FR, GR, HR;

always @(negedge Clk, negedge nReset)

begin
	
	if(!nReset)
		begin
			AR <= {N{1'b0}};
			BR <= {N{1'b0}};
			CR <= {N{1'b0}};
			DR <= {N{1'b0}};
			ER <= {N{1'b0}};
			FR <= {N{1'b0}};
			GR <= {N{1'b0}};
			HR <= {N{1'b0}};
		end
	else
		begin
			if(Enable == 1'b1 && RW == 1'b0)
				begin
					case(Address)
						3'b000:  Data_out <= AR; 
						3'b001:  Data_out <= BR; 
						3'b010:  Data_out <= CR; 
						3'b011:  Data_out <= DR; 
						3'b100:  Data_out <= ER; 
						3'b101:  Data_out <= FR; 
						3'b110:  Data_out <= GR; 
						default: Data_out <= HR; 
					endcase	
				end
			else if (Enable == 1'b1 && RW == 1'b1)
				begin
					case(Address)
						3'b000:  begin Data_out <= {N{1'bz}}; AR <= Data_in; end 
						3'b001:  begin Data_out <= {N{1'bz}}; BR <= Data_in; end  
						3'b010:  begin Data_out <= {N{1'bz}}; CR <= Data_in; end 
						3'b011:  begin Data_out <= {N{1'bz}}; DR <= Data_in; end  
						3'b100:  begin Data_out <= {N{1'bz}}; ER <= Data_in; end 
						3'b101:  begin Data_out <= {N{1'bz}}; FR <= Data_in; end 
						3'b110:  begin Data_out <= {N{1'bz}}; GR <= Data_in; end 
						default: begin Data_out <= {N{1'bz}}; HR <= Data_in; end
				   endcase
				end
			else
				begin
					AR <= AR;
					BR <= BR;
					CR <= CR;
					DR <= DR;
					ER <= ER;
					FR <= FR;
					GR <= GR;
					HR <= HR;
				end
		end	
end


endmodule