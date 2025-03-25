`include "quadra.vh"

module multiplier_1
(
    input  x2_t x2,
    input b_t b,
    output t1_t t1
); 
    localparam int X2_OFFSET = X1_F + B_I;
    localparam int B_ROFFSET = (X2_F - B_F) + X1_F;
    localparam int OP_W = X2_OFFSET + X2_W;
    localparam int RES_W = OP_W * 2;
    localparam int RES_I = B_I * 2;
    localparam int RES_F = X2_OFFSET + X2_F;

    // x2: U0.17
    // b: S3.12
    // x2': S3.26 (9+17)
    // b': S3.26
    logic signed [RES_W-1:0] temp;
    // Compute x2 * b
    always_comb begin
        temp = ($signed({{X2_OFFSET{1'b0}}, x2}) * $signed({b, {B_ROFFSET{1'b0}}}));
        t1 = {temp[RES_W-1:RES_W-T1_I], temp[RES_W-RES_I-1:RES_W-RES_I-1-RES_F]};
    end

endmodule    
