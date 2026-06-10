module vio_wrapper(
    input clk_100M
    );
    wire reset;
    wire [5:0] sec_count; //extrmly important to define
    wire [5:0] min_count;
    
    
vio_0 t2 (
  .clk(clk_100M),                // input wire clk
  .probe_in0(sec_count),    // input wire [5 : 0] probe_in0
  .probe_in1(min_count),    // input wire [5 : 0] probe_in1
  .probe_out0(reset)  // output wire [0 : 0] probe_out0
);
    
    top_counter t1(.clk_100M(clk_100M), .reset(reset), .sec_count(sec_count),.min_count(min_count));
endmodule

