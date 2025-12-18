module jk_ff(clk, j, k, q1, q_not1);
input clk, j, k;
output q1, q_not1;

wire j_, k_, d;

assign j_ = j & q_not1;
assign k_ = (~k) & q1;

assign d = j_ | k;

d_ff_3latch u0 (clk, d, q1, q_not1);


endmodule