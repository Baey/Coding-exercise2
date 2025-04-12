`include "quadra_types.vs"

module square
(
    input  x2_t x2, // U0.17
    output sq_t sq // U0.24
);
    localparam int RES_I = X2_I + X2_I;
    localparam int RES_F = X2_F + X2_F;
    localparam int RES_W = RES_I + RES_F;

    logic unsigned [RES_W-1:0] temp;
    
    // Compute x2^2:
    always_comb begin
        temp = x2 * x2;
        sq = temp[RES_W-1 -: SQ_W];
    end

endmodule
