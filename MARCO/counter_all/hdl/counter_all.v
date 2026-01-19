module counter_all(
    input clk,
    input reset_n,

    output wire [4:0]    day,
    output wire [3:0]    month,
    output wire [6:0]    year,
    output wire [4:0]    hour,
    output wire [5:0]    minute,
    output wire [5:0]    second,

    input wire [4:0] day_num,
    input wire [4:0] hour_num,

    output wire [4:0] done_inc,
    output wire [4:0] done_dec,

    input wire [5:0] inc,
    input wire [5:0] dec,

    input wire [5:0] en
);
count #(
    .NUM_BIT    (6),
    // .NUM_BIT    (7),
    .RESET_VALUE(0)
) second_inst (
    .clk        (clk),
    .reset_n    (reset_n),
    .inc        (inc[0]),
    .dec        (dec[0]),
    .en         (en[0]),
    .max_count  (59),
    .count_o    (second),
    .done_inc   (done_inc[0]),
    .done_dec   (done_dec[0])
);

count #(
    .NUM_BIT    (6),
    // .NUM_BIT    (7),
    .RESET_VALUE(0)
) minute_inst (
    .clk        (clk),
    .reset_n    (reset_n),
    .inc        (inc[1]),
    .dec        (dec[1]),
    .en         (en[1]),
    .max_count  (59),
    .count_o    (minute),
    .done_inc   (done_inc[1]),
    .done_dec   (done_dec[1])
);

count #(
    .NUM_BIT    (5),
    // .NUM_BIT    (7),
    .RESET_VALUE(0)
) hour_inst (
    .clk        (clk),
    .reset_n    (reset_n),
    .inc        (inc[2]),
    .dec        (dec[2]),
    .en         (en[2]),
    .max_count  (hour_num),
    .count_o    (hour),
    .done_inc   (done_inc[2]),
    .done_dec   (done_dec[2])
);

 count#(
    .NUM_BIT    (5),
    // .NUM_BIT    (7),
    .RESET_VALUE(1)
) day_inst (
    .clk        (clk),
    .reset_n    (reset_n),
    .inc        (inc[3]),
    .dec        (dec[3]),
    .en         (en[3]),
    .max_count  (day_num),
    .count_o    (day),
    .done_inc   (done_inc[3]),
    .done_dec   (done_dec[3])
);

count#(
    .NUM_BIT    (4),
    // .NUM_BIT    (7),
    .RESET_VALUE(1)
) month_inst (
    .clk        (clk),
    .reset_n    (reset_n),
    .inc        (inc[4]),
    .dec        (dec[4]),
    .en         (en[4]),
    .max_count  (12),
    .count_o    (month),
    .done_inc   (done_inc[4]),
    .done_dec   (done_dec[4])
);

count #(

    .NUM_BIT    (7),
    .RESET_VALUE(0)
) year_inst (
    .clk        (clk),
    .reset_n    (reset_n),
    .inc        (inc[5]),
    .dec        (dec[5]),
    .en         (en[5]),
    .max_count  (100),
    .count_o    (year),
    .done_inc(),
    .done_dec()
);
endmodule
        // "dir::hdl/comp_1_b.v",
        // "dir::hdl/comp_7_b.v",
        // "dir::hdl/mux2_1.v",
        // "dir::hdl/mux4_1.v",
        // "dir::hdl/top_ripple_carry_adder_n_bit.v",
        // "dir::hdl/top_full_subtractor_gate_level_n_bit.v",