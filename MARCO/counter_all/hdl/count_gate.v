module count_gate#(
    parameter NUM_BIT = 7,
    parameter RESET_VALUE = 0
)(
    input                           clk,
    input                           reset_n,
    input                           inc,
    input                           dec,
    input                           en,
    input        [NUM_BIT - 1 : 0]  max_count,
    output reg   [NUM_BIT - 1 : 0]  count_o,
    output                          done_inc,
    output                          done_dec 
);

wire [NUM_BIT - 1: 0] count_o_next;
wire [NUM_BIT - 1: 0] count_inc;
wire [NUM_BIT - 1: 0] count_dec;

wire [NUM_BIT - 1: 0] count_plus_1;
wire [NUM_BIT - 1: 0] count_sub_1;
wire [NUM_BIT - 1: 0] count_sub_pre;


wire comp_max_count;
wire comp_reset_value;
//////////////////////////////// Flip Flop //////////////////////////
always@(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        count_o <= RESET_VALUE;
    end
    else begin
        if (en) count_o <= count_o_next;
    end
end
//////////////////////////////// MUX 4 - 1 //////////////////////////////
mux4_1_7b mux_4_inst (
    .a(count_o),
    .b(count_dec),
    .c(count_inc),
    .d(count_o),
    .s0(inc),
    .s1(dec),
    .out(count_o_next)
);

mux2_1_7b mux_2_1_inst(
    .a(RESET_VALUE),
    .b(count_plus_1),
    .s0(comp_max_count),
    .out(count_inc)
);


mux2_1_7b mux_2_2_inst(
    .a(count_sub_1),
    .b(count_sub_pre),
    .s0(comp_max_count),
    .out(count_dec)
);

mux2_1_7b mux_2_3_inst(
    .a(max_count),
    .b(count_sub_1),
    .s0(comp_reset_value),
    .out(count_sub_pre)
);
/////////////////////////////// Compare//////////////////////////////////
comp_7_b com1(
    .a(count_o),
    .b(max_count),
    .en(1),
    .aeb(comp_max_count)
);
comp_7_b com2(
    .a(count_o),
    .b(RESET_VALUE),
    .en(1),
    .aeb(comp_reset_value)
);
/////////////////////////////////// Adder , Sub ////////////////////////////////////
ripplenbit_add #(
    .N(7)
) adder_inst(
    .a(count_o),
    .b(1),
    .s(count_plus_1),
    .c(0)
);
ripplenbit_sub #(
    .N(7)
) sub_inst(
    .a(count_o),
    .b(1),
    .d(count_sub_1),
    .borrow(0)
);
and a1 (done_inc, inc, comp_max_count);
and a2 (done_dec, dec, comp_reset_value);


endmodule