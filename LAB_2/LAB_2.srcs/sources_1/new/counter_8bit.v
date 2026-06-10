`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 08:52:07
// Design Name: 
// Module Name: counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_8bit(
    input clk_1Hz,
    input reset,
    input up,
    output reg[6:0] count
    
    );
    reg[6:0] count_reg=0;
    reg[6:0] count_next;
    
    always@(posedge clk_1Hz or posedge reset) begin // positive edge triggered asynchronous active high reset
        if(reset)
            count_reg<=0;
        else
            count_reg<=count_next;
    end
    always@(*) begin
        if(up)
            if(count_reg == 85)
                count_next = 0;
                else
                    count_next=count_reg+1;
        else if(!up)
            if(count_reg == 0)
                count_next = 85;
                else
                    count_next=count_reg-1;
    end 
    always@(*) begin  // if count was defined as wire then instead of this block we should have write assign count = count_reg
        count=count_reg;
    end              
    
endmodule