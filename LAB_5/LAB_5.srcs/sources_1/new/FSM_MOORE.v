module fsm_moore(
    input clk_pb,
    input clear,
    input inp_1,
    output reg detect,
    output [3:0] fsm_state
    );
    parameter s0 = 4'b0000, s1 = 4'b0001, s2 = 4'b0010, s3 = 4'b0011, s4 = 4'b0100,s5 = 4'b0101, s6= 4'b0110,s7= 4'b0111, s8=4'b1000, s9= 4'b1001;
    reg [3:0] present_state = s0;
    reg [3:0] next_state;
    
    always@(posedge clk_pb or posedge clear)
        begin
        if (clear)
            present_state<=s0;
        else
            present_state<=next_state;
        end
        
    always@(*)
    begin
    case(present_state)
    s0: if(inp_1 == 1)
            next_state = s0; 
        else
            next_state = s1; 
    s1: if(inp_1 == 1)
            next_state = s0;
        else
            next_state = s2;
    s2: if(inp_1 == 1)
            next_state = s0;  
        else
            next_state = s3;
    s3: if(inp_1 == 1)
            next_state = s4;  
        else
            next_state = s3;  
    s4: if(inp_1 == 1)
            next_state = s5;
        else
            next_state = s1;
    s5: if(inp_1 == 1)
            next_state = s6;
        else
            next_state = s1;
    s6: if(inp_1 == 1)
            next_state = s0;  
        else
            next_state = s7;
    s7: if(inp_1 == 1)
            next_state = s0;  // reset to s0 if 1 occurs
        else
            next_state = s8;
    s8: if(inp_1 == 1)
            next_state = s0;  
        else
            next_state = s9;  
    s9: if(inp_1 == 1)
            next_state = s4;  
        else
            next_state = s9;  
    default: next_state = s0;
endcase

    end
    always@(*)
    begin
      if(present_state == s9)
        detect = 1;
      else
        detect = 0;
    end
    assign fsm_state = present_state;
endmodule