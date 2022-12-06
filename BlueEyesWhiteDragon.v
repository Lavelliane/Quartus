module BlueEyesWhiteDragon(Clk, Up, nReset, En, Count);

	input wire Clk, nReset, En, Up;
	output reg[2:0]Count;

	always@(negedge Clk, negedge nReset)

		begin
			if(!nReset)
				Count <= 3'b010;
			else
				begin
					if(!En)
						begin
							Count <= Count;
						end
					else
						begin
							if(Up == 1'b1)
								begin
									Count <= Count + 3'b001;
									if(Count == 3'b101)
										Count <= 3'b010;
								end
							else
								begin
									Count <= Count - 3'b001;
									if(Count == 3'b010)
										Count <= 3'b101;
								end
						end
					
				end	

		end

endmodule