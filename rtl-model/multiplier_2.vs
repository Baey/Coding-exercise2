`include "quadra_types.vs"

module multiplier_2
(
    input  sq_t sq, // U0.24
    input c_t c, // S3.12
    output t2_t t2 // S3.27
);
    localparam int SQ_OFFSET = T2_I - SQ_I + X1_F * 2;
    localparam int C_ROFFSET = (SQ_F + SQ_OFFSET) - C_F;
    localparam int RES_I = C_I + SQ_I;
    localparam int RES_F = (SQ_F + SQ_OFFSET) * 2;
    localparam int RES_W = RES_I + RES_F;
    
    logic signed [RES_W-1:0] temp;
    // logic signed [T2_I-1:0] t2_i;
    // logic signed [T2_F-1:0] t2_f;

    // Compute x2^2 * c
    always_comb begin
        temp = $signed({{SQ_OFFSET{1'b0}}, sq}) * $signed({c, {C_ROFFSET{1'b0}}});
        t2 = {temp[RES_F+:T2_I], temp[RES_F-1-:T2_F]};
    end 

endmodule    
