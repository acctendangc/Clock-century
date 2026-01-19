module mux4_1(
    input a,
    input b,
    input c,
    input d,
    input s0,
    input s1,
    output out
);

wire mux_1;
wire mux_2;
mux2_1 m1 (
    .a(a),
    .b(b),
    .s0(s0),
    .out(mux_1)
);

mux2_1 m2(
    .a(c),
    .b(d),
    .s0(s0),
    .out(mux_2)
);

mux2_1 la (
    .a(mux_1),
    .b(mux_2),
    .s0(s1),
    .out(out)
);
endmodule
module mux4_1_7b(
    input [6:0]a,
    input [6:0]b,
    input [6:0]c,
    input [6:0]d,
    input s0,
    input s1,
    output [6:0]out
);
mux4_1 m0 (
    .a(a[0]),
    .b(b[0]),
    .c(c[0]),
    .d(d[0]),
    .s0(s0),
    .s1(s1),
    .out(out[0])
);
mux4_1 m1 (
    .a(a[1]),
    .b(b[1]),
    .c(c[1]),
    .d(d[1]),
    .s0(s0),
    .s1(s1),
    .out(out[1])
);
mux4_1 m2 (
    .a(a[2]),
    .b(b[2]),
    .c(c[2]),
    .d(d[2]),
    .s0(s0),
    .s1(s1),
    .out(out[2])
);
mux4_1 m3 (
    .a(a[3]),
    .b(b[3]),
    .c(c[3]),
    .d(d[3]),
    .s0(s0),
    .s1(s1),
    .out(out[3])
);
mux4_1 m4 (
    .a(a[4]),
    .b(b[4]),
    .c(c[4]),
    .d(d[4]),
    .s0(s0),
    .s1(s1),
    .out(out[4])
);
mux4_1 m5 (
    .a(a[5]),
    .b(b[5]),
    .c(c[5]),
    .d(d[5]),
    .s0(s0),
    .s1(s1),
    .out(out[5])
);
mux4_1 m6 (
    .a(a[6]),
    .b(b[6]),
    .c(c[6]),
    .d(d[6]),
    .s0(s0),
    .s1(s1),
    .out(out[6])
);

endmodule