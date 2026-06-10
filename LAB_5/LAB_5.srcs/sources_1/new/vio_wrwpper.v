module vio_wrapper(
    input clk_100M
    );
    wire detect;
    wire [3:0]fsm_state;
    wire clear;
    wire inp_0;
    wire inp_1; 
   
    top_fsm T1(.clk_100M(clk_100M),.detect(detect),.fsm_state(fsm_state),.clear(clear),.inp_0(inp_0),.inp_1(inp_1));
    vio_0 v1 (
      .clk(clk_100M),                // input wire clk
      .probe_in0(detect),    // input wire [5 : 0] probe_in0
      .probe_in1(fsm_state),    // input wire [5 : 0] probe_in1
      .probe_out0(clear),  // output wire [0 : 0] probe_out0
      .probe_out1(inp_0),
      .probe_out2(inp_1)
    );
        
endmodule