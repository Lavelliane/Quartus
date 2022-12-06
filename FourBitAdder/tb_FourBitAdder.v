//
//Verilog testbench HDL code for a four bit adder circuit
//
//Author: 				Jhury Kevin P. Lastre
//Course group:		Group 6
//Schedule:				Wednesday, 9AM - 12PM

`timescale 1 ns / 1 ps
module tb_FourBitAdder();
    reg    [3:0] a, b;
    reg          C_in;

    wire    [3:0]    S;
    wire            C_out;

    FourBitAdder UUT (a, b ,C_in, C_out, S);

    initial
    begin
        a = 4'd0;    b = 4'd0;    C_in = 0;    #10
        a = 4'd3;    b = 4'd8;    C_in = 1;    #10
        a = 4'd11;   b = 4'd3;    C_in = 0;    #10
        a = 4'd12;   b = 4'd6;    C_in = 0;    #10
        a = 4'd5;    b = 4'd4;    C_in = 1;    #10
        a = 4'd1;    b = 4'd9;    C_in = 0;    #10
        a = 4'd15;   b = 4'd15;    C_in = 0;    #10
        a = 4'd15;   b = 4'd15;    C_in = 1;    #10

        $stop;
    end

endmodule