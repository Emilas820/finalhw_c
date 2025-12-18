module decoder_3_8en (x, y, z, en, D);
// enable이 있는 3X8 디코더
input x, y, z, en;
output reg [7:0] D;

decoder_2_4en u0 (x, y, {~z}, D[3:0]);
decoder_2_4en u0 (x, y, z, D[7:4]);


endmodule