module top_fsm(
    input clk_100M,
    
    input clear,
    input inp_1,
    input inp_0,
    output detect,
    output[3:0] fsm_state
    
    );
    wire clk_6M,clk_1hz ,clk_pb;
    clk_div_rtl c2(.clk_6M(clk_6M),.clk_1hz(clk_1hz));
    fsm_moore c1(.clk_pb(clk_pb),.clear(clear),.inp_1(inp_1),.detect(detect),.fsm_state(fsm_state));
    pb_clock c4(.clk_1hz(clk_1hz),.inp_0(inp_0),.inp_1(inp_1),.clk_pb(clk_pb));
    clk_wiz_0 c3
    (
    // Clock out ports
    .clk_6M(clk_6M),     // output clk_16M
   // Clock in ports
    .clk_100M(clk_100M));      // input clk_100M
endmodule