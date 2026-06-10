`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 20:04:15
// Design Name: 
// Module Name: encoder_42
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


module encoder_42(
    input [3:0] E_input,
    output [1:0] E_output
    );
    assign E_output[0] = E_input[1]|E_input[3];
    assign E_output[1] = E_input[2]|E_input[3];
    
endmodule
