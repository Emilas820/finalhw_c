module reg_univshift(I, S, clk, clear_b, S_l, S_r, A);
input [3:0] I;
input [1:0] s;
input clk, clear_b, S_r, S_l;
output [3:0] A;

wire [3:0] Y;


mux_4to1 u0 (s, {A[0], A[1], S_l, I[0]}, Y[0]);
mux_4to1 u1 (s, {A[1], A[2], A[0], I[1]}, Y[1]);
mux_4to1 u2 (s, {A[2], A[3], A[1], I[2]}, Y[2]);
mux_4to1 u3 (s, {A[3], S_r, A[2], I[3]}, Y[3]);

d_ff k0 (clear_b, clk, Y[0], A[0]);
d_ff k1 (clear_b, clk, Y[1], A[1]);
d_ff k2 (clear_b, clk, Y[2], A[2]);
d_ff k3 (clear_b, clk, Y[3], A[3]);

endmodule