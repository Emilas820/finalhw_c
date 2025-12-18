module counter_Async ();
input rst, clk;

output clk0;
output [3:0] out0;

reg out_clk;
reg [2:0] tmp2;
reg [3:0] out, tmp;

always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
    out0 <= 4'b0000;
    tmp <= 4'b0000;
    end
    else
    begin
    tmp <=tmp + 1;
    out0 <= tmp;
    end

end