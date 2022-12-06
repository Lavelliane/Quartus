// Verilog HDL Code for JK Flip-flop
// Made by: Jhury Kevin Lastre

module JK_FF
(
	input wire		J, K, Reset, CLK,
	output reg		Q, Q_bar
);

	always @(posedge Reset, negedge CLK) 
	begin
		if(Reset)
			begin 
				Q <= 1'b0;
				Q_bar <= 1'b1;
			end
		else begin
			case (J) 
				1'b0: 
				begin
					case (K) 
						1'b0: 
						begin
							Q <= Q;
							Q_bar <= Q_bar;
						end
						
						1'b1: 
						begin
							Q <= 1'b0;
							Q_bar <= 1'b1;
						end
					endcase	
				end 
				
				1'b1: 
				begin
					case (K) 
						1'b0: 
						begin
							Q <= 1'b1;
							Q_bar <= 1'b0;
						end
						
						1'b1: 
						begin
							Q <= ~Q;
							Q_bar <= Q;
						end	
					endcase
				end
			endcase
		end			
	end
	
endmodule 