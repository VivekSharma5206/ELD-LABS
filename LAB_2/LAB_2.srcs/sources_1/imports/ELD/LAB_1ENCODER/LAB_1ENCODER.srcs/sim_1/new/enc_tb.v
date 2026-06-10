`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 08:14:19
// Design Name: 
// Module Name: enc_tb
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


module enc_tb(
   
    );
    reg [3:0] E_inp;
    wire [1:0] E_out;
    encoder_42 instance_1(.E_input(E_inp),.E_output(E_out));
    
    initial
    begin
    E_inp = 4'b0001;
    #5 E_inp = 4'b0010;
    #5 E_inp = 4'b0100;
    #5 E_inp = 4'b1000;
    end
endmodule
