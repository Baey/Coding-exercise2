`include "quadra_types.vs"

module multi_op_add
(
    input  t0_t t0, // S1.27
    input t1_t t1, // S3.27
    input t2_t t2, // S3.27
    output s_t s // S2.27
);
    // res: S5.27
    localparam int RES_I = T1_I + 1;
    localparam int RES_F = T1_F;
    localparam int RES_W = RES_I + RES_F;
    localparam int ROUND_SHIFT = S_F - Y_F;

    logic signed [RES_W-1:0] temp, t0_ext, t1_ext, t2_ext;

    // Compute t0 + t1 + t2
    always_comb begin
        // Extend ti to mat
        t0_ext = $signed(t0);
        t1_ext = $signed(t1);
        t2_ext = $signed(t2);

        temp = t0_ext + t1_ext + t2_ext;
        s = temp[RES_W-3 -: S_W];
    end

endmodule    
