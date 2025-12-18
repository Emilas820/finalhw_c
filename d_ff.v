module d_ff(rst, clk, d, q);
input rst, clk, d;
output q;

reg q;

always @(posedge clk or negedge rst) begin
    begin
        if(!rst)
        q <= 0;
        else
        q <= d;
    end
end

endmodule