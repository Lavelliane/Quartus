//Name: Jhury Kevin P. Lastre

module T_FF ( input clk, input rstn, input t, output reg q, output reg q_bar);  

  //assign q_bar = ~q
  
  always @ (posedge clk) 
  
  begin  
    if (!rstn) 
		begin
			q <= 1'b0;  
			q_bar <= 1'b1;
		end
    else 
		begin
		
			if (t == 1'b1)  
				begin
					q <= q_bar;
					q_bar <= q;
				end
			else
				begin
					q <= q;
					q_bar <= q_bar;
				end
		
		end     
  end  
endmodule  