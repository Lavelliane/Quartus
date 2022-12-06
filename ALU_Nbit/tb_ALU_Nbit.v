//Verilog HDL Testbench code for Comparator
//Author: Jhury Kevin Lastre

`timescale 1 ns / 1 ps
module tb_ALU_Nbit ();

	reg [2:0] A, B;
	reg CB_in;
	reg [2:0] mode;
	wire [2:0] res;
	wire CB_out;

	ALU_Nbit #( .N(3) )
		UUT (.A(A), .B(B), .CB_in(CB_in), .mode(mode), .res(res), .CB_out(CB_out));
		
	initial begin
		$display("Starting simulation at %0d ns...", $time);
		mode = 3'b000;	CB_in = 1'b1; A = 3'b101; B = 3'b010;			#10 //Addition test
		mode = 3'b000;	CB_in = 1'b1; A = 3'b100; B = 3'b011;			#10 //Addition test
		mode = 3'b000;	CB_in = 1'b1; A = 3'b001; B = 3'b001;			#10 //Addition test
		
		mode = 3'b001;	CB_in = 1'b1; A = 3'b100; B = 3'b010;			#10 //Subtraction test
		mode = 3'b001;	CB_in = 1'b1; A = 3'b101; B = 3'b000;			#10 //Subtraction test
		mode = 3'b001;	CB_in = 1'b1; A = 3'b010; B = 3'b001;			#10 //Subtraction test
		
		
		mode = 3'b010;	CB_in = 1'b0; A = 3'b101; B = 3'b100;	      #10 //Bitwise AND test
		mode = 3'b010;	CB_in = 1'b0; A = 3'b101; B = 3'b111;	      #10 //Bitwise AND test
		mode = 3'b010;	CB_in = 1'b0; A = 3'b000; B = 3'b111;	      #10 //Bitwise AND test
		
		
		mode = 3'b011;	CB_in = 1'b0; A = 3'b101; B = 3'b000;			#10 //Bitwise OR test
		mode = 3'b011;	CB_in = 1'b0; A = 3'b101; B = 3'b111;	      #10 //Bitwise OR test
		mode = 3'b011;	CB_in = 1'b0; A = 3'b000; B = 3'b111;	      #10 //Bitwise OR test
		
		mode = 3'b100;	CB_in = 1'b0; A = 3'b101; B = 3'b011;			#10 //Bitwise XOR test
		mode = 3'b100;	CB_in = 1'b0; A = 3'b010; B = 3'b000;			#10 //Bitwise XOR test
		mode = 3'b100;	CB_in = 1'b0; A = 3'b100; B = 3'b011;			#10 //Bitwise XOR test
		
		
		mode = 3'b101;	CB_in = 1'b0; A = 3'b101; B = 3'b000;			#10 //NOT A test
		mode = 3'b101;	CB_in = 1'b0; A = 3'b111; B = 3'b000;			#10 //NOT A test
		mode = 3'b101;	CB_in = 1'b0; A = 3'b000; B = 3'b000;			#10 //NOT A test
		
		
		mode = 3'b110;	CB_in = 1'b0; A = 3'b011; B = 3'b000;			#10 //INCREMENT test
		mode = 3'b110;	CB_in = 1'b0; A = 3'b001; B = 3'b000;			#10 //INCREMENT test
		mode = 3'b110;	CB_in = 1'b0; A = 3'b010; B = 3'b000;			#10 //INCREMENT test
		
		
		mode = 3'b111;	CB_in = 1'b0; A = 3'b110; B = 3'b000;			#10 //DECREMENT test
		mode = 3'b111;	CB_in = 1'b0; A = 3'b111; B = 3'b000;			#10 //DECREMENT test
		mode = 3'b111;	CB_in = 1'b0; A = 3'b100; B = 3'b000;			#10 //DECREMENT test
		
		
		$display("Finished simulation at %0d ns...", $time);
		$stop;
	end
	
	initial begin
		$monitor("Time = %2d ns\t mode = %d\t CB_in = %d\t A = %b\t B = %b\t res = %b\t CB_out = %b", 
		$time, mode, CB_in, A, B, res, CB_out);
	end

endmodule
	