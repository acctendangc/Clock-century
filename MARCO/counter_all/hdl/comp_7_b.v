module comp_7_b(
    input  [6:0] a,
    input  [6:0] b,
    input en,
    output aeb
);

wire c0, c1, c2, c3, c4, c5, c6;
wire a0, a1, a2, a3, a4;

//Goi den cac comp_1_b so sanh tung cap bit 1 cua 2 dau vao dua ra ket qua c0->5
comp_1_b u0 (.a(a[0]), .b(b[0]), .en(en), .c(c0));
comp_1_b u1 (.a(a[1]), .b(b[1]), .en(en), .c(c1));
comp_1_b u2 (.a(a[2]), .b(b[2]), .en(en), .c(c2));
comp_1_b u3 (.a(a[3]), .b(b[3]), .en(en), .c(c3));
comp_1_b u4 (.a(a[4]), .b(b[4]), .en(en), .c(c4));
comp_1_b u5 (.a(a[5]), .b(b[5]), .en(en), .c(c5));
comp_1_b u6 (.a(a[6]), .b(b[6]), .en(en), .c(c6));

//c = c0 && c1 && c2 && c3 && c4 &&c5 
and ga0 (a0, c0, c1);
and ga1 (a1, a0, c2);
and ga2 (a2, a1, c3);
and ga3 (a3, a2, c4);
and ga4 (a4, a3, c5);
and ga5 (aeb, a4, c6);

endmodule
