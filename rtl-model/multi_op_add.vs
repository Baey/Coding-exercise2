`include "quadra.vh"

module multi_op_add
(
    input  t0_t t0,
    input t1_t t1,
    input t2_t t2,

    output s_t s
);
    // t0: S1.27
    // t1: S3.27
    // t2: S3.27
    // res: S5.27
    // s: S2.27
    logic signed [31:0] temp1, temp2;

    // Compute t0 + t1 + t2
    always_comb begin
        temp1 = $signed({{2{t0[T0_W-1]}}, t0}) + t1 + t2;
        // temp2 = temp1 >>> 3;
        // s = temp2[28:0];
        s = {temp1[31], temp1[28], temp1[27:0]};
    end

endmodule    
