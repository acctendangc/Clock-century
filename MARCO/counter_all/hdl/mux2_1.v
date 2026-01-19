module mux2_1(
    input a,
    input b,
    input s0,
    output out
);
wire and_1;
wire and_2;
wire s0_not;

not (s0_not, s0);

and a1 (and_1, a, s0);
and a2 (and_2, b, s0_not);
or  o1  (out, and_1, and_2);

endmodule
module mux2_1_7b(
    input [6:0]a,
    input [6:0]b,
    input s0,
    output [6:0]out
);

mux2_1 m0 (
    .a    (a[0]),
    .b    (b[0]),
    .out(out[0]),
    .s0(s0)
);
mux2_1 m1 (
    .a    (a[1]),
    .b    (b[1]),
    .out(out[1]),
    .s0(s0)
);
mux2_1 m2 (
    .a    (a[2]),
    .b    (b[2]),
    .out(out[2]),
    .s0(s0)
);
mux2_1 m3 (
    .a    (a[3]),
    .b    (b[3]),
    .out(out[3]),
    .s0(s0)
);
mux2_1 m4 (
    .a    (a[4]),
    .b    (b[4]),
    .out(out[4]),
    .s0(s0)
);
mux2_1 m5 (
    .a    (a[5]),
    .b    (b[5]),
    .out(out[5]),
    .s0(s0)
);
mux2_1 m6 (
    .a    (a[6]),
    .b    (b[6]),
    .out(out[6]),
    .s0(s0)
);
endmodule