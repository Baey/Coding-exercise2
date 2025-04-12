`include "quadra_types.vs"

module multiplier_2
(
    input  sq_t sq, // U0.24
    input c_t c, // S3.7
    output t2_t t2 // S3.27
);
    localparam int RES_I = C_I + SQ_I;
    localparam int RES_F = SQ_F + C_F;
    localparam int RES_W = RES_I + RES_F;
    
    logic signed [RES_W-1:0] temp;

    // Compute x2^2 * c
    always_comb begin
        temp = $signed({1'b0, sq}) * c;
        t2 = temp[RES_W-1 -: T2_W];
    end 

endmodule    
