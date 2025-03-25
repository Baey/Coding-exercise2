`include "quadra.vh"

module multiplier_2
(
    input  sq_t sq,
    input c_t c,
    output t2_t t2
);
    localparam int S_F2 = X1_F * 2 + SQ_F;
    localparam int SQ_OFFSET = X1_F * 2 + C_I + 1;
    localparam int C_ROFFSET = S_F2 - C_F;
    localparam int TEMP_F = S_F2 * 2;
    localparam int TEMP_W = TEMP_F + C_I * 2;
    
    logic signed [TEMP_W-1:0] temp;

    // Compute x2^2 * c
    always_comb begin
        temp = $signed({{SQ_OFFSET{1'b0}}, sq}) * $signed({c, {C_ROFFSET{1'b0}}});
        t2 = {temp[TEMP_W-(C_I*2-T2_I)-1:TEMP_W-(C_I*2-T2_I)-T2_I], temp[TEMP_F-1:TEMP_F-T2_F]};
    end 

endmodule    
