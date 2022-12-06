module FullAdder(a, b, C_in, S, C_out);

	input a, b, C_in;
	output C_out, S;
	wire w1, w2, w3;
	
	HalfAdder 	H1(a, b, w1, w2); //W1 FOR OR GATE
	HalfAdder 	H2(C_in, w2, w3, S);
	or 		 	G1(w3, w1, C_out);


endmodule


