//
// Quadratic polynomial:  f(x) = a + b*x2 + c*(x2^2)
//

`include "quadra.vh"

module quadra
(
    input ck_t clk,
    input rs_t rst_b,
    input x_t  x,
    
    output y_t  y
);

    localparam int A_T0_OFFSET = T0_W - A_W;

    // x1_t x1, x1_d;
    x2_t x2;
    a_t a;
    b_t b;
    c_t c;
    sq_t sq;
    t0_t t0;
    t1_t t1;
    t2_t t2;
    s_t s;

    wire a_t w_a;
    wire b_t w_b;
    wire c_t w_c;
    wire sq_t w_sq;
    wire t1_t w_t1;
    wire t2_t w_t2;
    wire s_t w_s;

    // x1 => a, b, c
    lut lut0 (
        .x1 (x[23:17]),
        .a (w_a),
        .b (w_b),
        .c (w_c)
    );

    // x2^2
    square square0 (
        .x2 (x[16:0]),
        .sq (w_sq)
    );

    // x2 * b
    multiplier_1 multiplier_x2_b (
        .x2 (x2),
        .b  (b),
        .t1 (w_t1)
    );

    // x2^2 * c
    multiplier_2 multiplier_x2_c (
        .sq (sq),
        .c (c),
        .t2 (w_t2)
    );

    // 3-way addition
    multi_op_add multi_op_add_s (
        .t0 (t0),
        .t1 (t1),
        .t2 (t2),
        .s (w_s)
    );

    always_ff @(posedge clk) begin
        if (!rst_b) begin
            x2 <= '0;
            a <= '0;
            b <= '0;
            c <= '0;
            sq <= '0;
            t0 <= '0;
            t1 <= '0;
            t2 <= '0;
            s <= '0;
        end
        else begin
            // First pipeline stage
            x2 <= x[16:0];
            a <= w_a;
            b <= w_b;
            c <= w_c;
            sq <=w_sq;

            // Second pipeline stage
            t0 <= $signed({a, {A_T0_OFFSET{1'b0}}});
            t1 <= w_t1;
            t2 <= w_t2;

            s <= w_s;
        end

    end
    //RES_W-RES_I-1:RES_W-RES_I-1-RES_F
    assign y = {s[S_W-1:S_W-Y_I], s[S_W-S_I-1:S_W-S_I-Y_F]};

endmodule
