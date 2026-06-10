`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 09:53:16
// Design Name: 
// Module Name: top_counter
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


module top_counter(
    input clk_100M,
    input reset,
    output [5:0 ]min_count,
    output [5:0] sec_count
    );
    
    wire clk_8M , clk_1Hz;
      clk_wiz_0 c3
   (
    // Clock out ports
    .clk_8M(clk_8M),     // output clk_8M
   // Clock in ports
    .clk_100M(clk_100M));    //input
    
    clk_div_rt1 c2(.clk_8M(clk_8M), .clk_1Hz(clk_1Hz));
    
    dig_clock c1(.clk_1Hz(clk_1Hz), .reset(reset), .min_count(min_count),.sec_count(sec_count));
endmodule



