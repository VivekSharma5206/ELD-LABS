`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 10:12:15
// Design Name: 
// Module Name: pb_clock
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

module pb_clock(
  input clk_1hz,
  input inp_0,
  input inp_1,
  output reg clk_pb
);
  wire inp_pulse;
  assign inp_pulse = inp_0 | inp_1;

  always@(posedge clk_1hz)
    clk_pb <= inp_pulse;

endmodule
