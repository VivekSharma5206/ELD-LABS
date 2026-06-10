module clk_div_rt1(
    input clk_8M,
    output clk_1Hz
    );
    reg[22:0] count_reg=0;
    reg[22:0] count_next;
    always@(posedge clk_8M)
    begin 
        count_reg<=count_next;
    end
    always@(*)
    begin
        count_next<=count_reg+1;
    end    
    assign clk_1Hz = count_reg[22];
endmodule
