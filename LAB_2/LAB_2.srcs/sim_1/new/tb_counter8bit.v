`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 09:37:16
// Design Name: 
// Module Name: tb_counter8bit
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


module tb_8bitcounter(

    );
    reg clk_1Hz=0;
    reg reset=1;
    reg up;
    wire [6:0] count;
    
    
    counter_8bit Cl(.clk_1Hz(clk_1Hz),.reset(reset),.count(count) , .up(up));
  
    always
    #5  clk_1Hz = ~clk_1Hz;
    
    initial
    begin
        reset=1;
        up=1;
        #50 reset=0;
//       #1000 $stop;  
        #950 up =0;
        #1000 $stop;
    end
endmodule