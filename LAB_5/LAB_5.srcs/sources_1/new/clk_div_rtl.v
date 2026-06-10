`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 09:50:46
// Design Name: 
// Module Name: clk_div_rtl
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


module clk_div_rtl(
    input clk_6M,
    output clk_1hz
    );
    reg[22:0] count_reg=0;
    reg[22:0] count_next;
    always@(posedge clk_6M)
        begin
            count_reg<=count_next;
        end
    always@(*)
        count_next<=count_reg+1;
        
    assign clk_1hz=count_reg[22];
endmodule
