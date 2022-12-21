
//Complex Counter FSM using Partitioning Scheme #1
//Made by: Jhury Kevin Lastre

module ComplexCounter
(
	input wire 			Clk, nReset, Mode,
	output reg [2:0]	Count
	
);
	//3-bit state registers
	reg [2:0]	pState, nState;
	
	//STATE TRANSITIONS
	always @(negedge Clk) 
		begin

			if(!nReset) 
				pState <= 3'b000;
				
			else 
				pState <= nState;
				
		end
	
	//NEXT STATE ASSIGNMENT
	always @(*) 
		begin
			if(!Mode) 
				begin
					case(pState)
						3'b000	:		nState = 3'b001;
						3'b001	:		nState = 3'b010;
						3'b010	:		nState = 3'b011;
						3'b011	:		nState = 3'b100;
						3'b100	:		nState = 3'b101;
						3'b101	:		nState = 3'b110;
						3'b110	:		nState = 3'b111;
						3'b111	:		nState = 3'b000;
						default  :		nState = pState;
					endcase
				end
			
			else 
				begin
					case(pState)
						3'b000	:		nState = 3'b001;
						3'b001	:		nState = 3'b011;
						3'b011	:		nState = 3'b010;
						3'b010	:		nState = 3'b110;
						3'b110	:		nState = 3'b111;
						3'b111	:		nState = 3'b101;
						3'b101	:		nState = 3'b100;
						3'b100	:		nState = 3'b000;
						default  :		nState = pState;
					endcase
				end
		end
	//OUTPUT ASSIGNMENT
	always @(*) 
	begin
		Count = pState;
	end
	
	
endmodule 