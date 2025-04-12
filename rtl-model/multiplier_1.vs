`include "quadra_types.vs"

module multiplier_1
(
    input  x2_t x2, // U0.23
    input b_t b, // S3.12
    output t1_t t1 // S3.27
); 

    localparam int RES_I = B_I + X2_I;
    localparam int RES_F = X2_F + B_F;
    localparam int RES_W = RES_I + RES_F;

    // x2: U0.17
    // b: S3.12
    // x2': S1.17 
    // temp: S3.29
    logic signed [RES_W-1:0] temp;

    // Compute x2 * b
    always_comb begin
        temp = $signed({1'b0, x2}) * b;
        t1 = temp[RES_W-1 -: T1_W];
    end

endmodule    
