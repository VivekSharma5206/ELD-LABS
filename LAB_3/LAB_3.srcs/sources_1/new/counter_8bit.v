module counter_8bit(
    input clk_1Hz,
    input reset,
    input up,
    output [7:0] count
    );
    reg[7:0] count_reg=0;
    reg[7:0] count_next;
    always@(posedge clk_1Hz or posedge reset)
    begin
        if (reset)
            count_reg<=0;
        else
            count_reg<=count_next;
     end
     
     always@(*)
     begin
     if(up)
        if(count_reg == 85)
            count_next = 0;
        else
            count_next = count_reg+1;
    else
        if(count_reg == 0)
            count_next = 85;
        else
            count_next = count_reg -1;
     end
     assign count = count_reg;
        
endmodule



