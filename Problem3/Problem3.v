module Problem3 (A, B, C, E);

	output E;
	input A, B, C;
	wire i, j, k;
	
	and G1 (j, A, B);
	and G2 (k, B, C);
	and G3 (i, A, C);
	or  G4 (E, i, j, k);


endmodule
