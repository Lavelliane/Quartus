//Verilog HDL Testbench code for Register Set Nbit
// Made by: Jhury Kevin Lastre

`timescale 1 ns / 1 ps
module tb_RegisterSet_Nbit();
	reg Clk, Enable, RW, nReset;
	reg [2:0] Address;
	reg [7:0] Data_in;
	wire [7:0] Data_out;
	
	RegisterSet_nBit #(.N(8)) 
	
	UUT(.Clk(Clk), .Enable(Enable),.RW(RW), .nReset(nReset), .Address(Address), .Data_in(Data_in), .Data_out(Data_out));
	
	initial 
		Clk = 1'b0;
		
	always
		#5 Clk = ~Clk;
		
	initial begin
		nReset = 1'b0;		#15
		nReset = 1'b1;
	end

	initial
	begin
		$display("Starting simulation at %0d ns...", $time);
		
		Enable = 1'b1; 
		RW = 0;	Data_in = 8'bxxxxxxxx;	Address = 3'b010; #18
		
		RW = 1;	Data_in = 8'b00000001;	Address = 3'b000; #10
					Data_in = 8'b00000010;	Address = 3'b001; #10
					Data_in = 8'b00000011;  Address = 3'b010; #10
					Data_in = 8'b00000100;  Address = 3'b011; #10
					Data_in = 8'b00000101;  Address = 3'b100; #10
					Data_in = 8'b00000110;  Address = 3'b101; #10
					Data_in = 8'b00000111;  Address = 3'b110; #10
					Data_in = 8'b00001111;  Address = 3'b111; #10
					
		RW = 0;	Data_in = 8'bxxxxxxxx;	Address = 3'b000; #10			
													Address = 3'b001; #10
													Address = 3'b010; #10
													Address = 3'b011; #10
													Address = 3'b100; #10
													Address = 3'b101; #10
													Address = 3'b110; #10
													Address = 3'b111; #10
													
		
		$display("Finished simulation at %0d ns.", $time);
		$stop;
	end

	initial begin
		$monitor("Time = %2d \t Clk = %b \t nReset = %b \t RW = %b \t Enable = %b \t Address = %3b \t Data_in = %8b \t Data_out= %8b "
					, $time, Clk, nReset, RW,Enable, Address, Data_in, Data_out);
	end


endmodule