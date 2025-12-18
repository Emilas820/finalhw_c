module clk_dll(rst, clk, out_clk);
input rst, clk;

reg [24:0] cnt_clk;
output out_clk;

always @(posedge clk or negedge rst) begin

    if(!rst)
    begin
    cnt_clk <= 0;
    out_clk <=0;

    else
        begin
        
            if(cnt_clk == 24999999)
            cnt_clk <= 0;
            if else(cnt_clk == 0)
            out_clk <= !out_clk; 

        end

    end
end

endmodule