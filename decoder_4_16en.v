module decoder_4_16en(x, y, w, z, D);
input x, y, z, w;
output [15:0] D;

decoder_3_8en u0 (x, y, z, ~w, D[7:0]);
decoder_3_8en u1 (x, y, z, w, D[15:8]);

endmodule