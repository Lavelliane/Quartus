//RaceLightsController Mealy-FSM
//Made by: Jhury Kevin Lastre

module RaceLightsController(
	input wire Clk, nReset, Start, 
	output reg R, Y, G
);

// STATE ENCODING
localparam OFF = 3'b000,
			  SA = 3'b001,
			  SB = 3'b010,
			  SC = 3'b011,
			  SD = 3'b100,
			  SE = 3'b101,
			  SF = 3'b110;

reg [2:0] pState, nState;


always @(negedge Clk, negedge nReset)
	begin
		if(!nReset)
			pState <= SA;
		else
			pState <= nState;
	end

// NEXT STATE ASSIGNMENT
always @(*)
	begin
		case (pState)
			OFF		: nState = !Start  ? OFF : SA;
			SA  		: nState = !Start  ? SA  : SB;
			SB			: nState = !nReset ? SA  : SC;
			SC			: nState = !nReset ? SA  : SD;
			SD			: nState = !nReset ? SA  : SE;
			SE			: nState = !nReset ? SA  : SF;
			SF			: nState = !nReset ? SA  : SA;
			default	: nState = !nReset ? SA	 : pState;
		endcase
	end
	
// OUTPUT ASSIGNMENT
	reg r, y, g;
	
always @(*)
	begin
		case(pState)
			OFF		: begin r = (Start) ? 1'b1 : 1'b0;
								  y = 1'b0;
								  g = 1'b0; 
						  end
			SA			: begin r = 1'b1; y = 1'b0; g = 1'b0; end
			SB			: begin r = 1'b1; y = 1'b0; g = 1'b0; end
			SC			: begin r = 1'b0; y = 1'b1; g = 1'b0; end
			SD			: begin r = 1'b0; y = 1'b0; g = 1'b1; end
			SE			: begin r = 1'b0; y = 1'b0; g = 1'b1; end
			SF			: begin r = 1'b0; y = 1'b0; g = 1'b1; end
			default 	: begin r = 1'b1; y = 1'b0; g = 1'b0; end
		endcase
	end

always @(negedge Clk, negedge nReset)
	begin
		if(!nReset) 
			begin
				R <= 1'b1;
				Y <= 1'b0;
				G <= 1'b0;
			end
		else 
			begin
				R <= r;
				Y <= y;
				G <= g;
			end
	end
endmodule

						
	
