module vio_wrapper(
    input clk_100M
    );
    wire reset;
    wire [7:0] count; //extrmly important to define
    wire up;
    
vio_0 t2 (
  .clk(clk_100M),                // input wire clk
  .probe_in0(count),    // input wire [7 : 0] probe_in0
  .probe_out0(reset),  // output wire [0 : 0] probe_out0
  .probe_out1(up)  // output wire [0 : 0] probe_out1
);
    
    top_counter t1(.clk_100M(clk_100M), .reset(reset), .count(count),.up(up));
endmodule

