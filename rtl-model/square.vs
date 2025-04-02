`include "quadra_types.vs"

module square
(
    input  x2_t x2, // U0.17
    output sq_t sq // U0.24
);
    // Compute x2^2:
    always_comb sq = x2 * x2;

endmodule    
