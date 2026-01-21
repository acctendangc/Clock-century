module decode_input (button_dec,
    button_inc,
    dec,
    done_dec,
    done_inc,
    en,
    inc,
    mode,
    select);
 input button_dec;
 input button_inc;
 output [5:0] dec;
 input [4:0] done_dec;
 input [4:0] done_inc;
 output [5:0] en;
 output [5:0] inc;
 input [1:0] mode;
 input [5:0] select;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;

 sky130_fd_sc_hd__inv_2 _05_ (.A(net2),
    .Y(_00_));
 sky130_fd_sc_hd__nor2_1 _06_ (.A(net39),
    .B(net40),
    .Y(_01_));
 sky130_fd_sc_hd__xnor2_1 _07_ (.A(net39),
    .B(net40),
    .Y(_02_));
 sky130_fd_sc_hd__or2_1 _08_ (.A(net15),
    .B(_02_),
    .X(net27));
 sky130_fd_sc_hd__or2_1 _09_ (.A(net16),
    .B(_02_),
    .X(net28));
 sky130_fd_sc_hd__or2_1 _10_ (.A(net17),
    .B(_02_),
    .X(net29));
 sky130_fd_sc_hd__or2_1 _11_ (.A(net18),
    .B(_02_),
    .X(net30));
 sky130_fd_sc_hd__or2_1 _12_ (.A(net19),
    .B(_02_),
    .X(net31));
 sky130_fd_sc_hd__or2_1 _13_ (.A(net20),
    .B(_02_),
    .X(net32));
 sky130_fd_sc_hd__and3b_1 _14_ (.A_N(net40),
    .B(net1),
    .C(net39),
    .X(_03_));
 sky130_fd_sc_hd__a31o_1 _15_ (.A1(net39),
    .A2(net40),
    .A3(net7),
    .B1(_03_),
    .X(net26));
 sky130_fd_sc_hd__a31o_1 _16_ (.A1(net39),
    .A2(net40),
    .A3(net6),
    .B1(_03_),
    .X(net25));
 sky130_fd_sc_hd__a31o_1 _17_ (.A1(net39),
    .A2(net40),
    .A3(net5),
    .B1(_03_),
    .X(net24));
 sky130_fd_sc_hd__a31o_1 _18_ (.A1(net39),
    .A2(net40),
    .A3(net4),
    .B1(_03_),
    .X(net23));
 sky130_fd_sc_hd__a31o_1 _19_ (.A1(net39),
    .A2(net40),
    .A3(net3),
    .B1(_03_),
    .X(net22));
 sky130_fd_sc_hd__o21a_1 _20_ (.A1(net13),
    .A2(net1),
    .B1(net14),
    .X(net21));
 sky130_fd_sc_hd__and3b_1 _21_ (.A_N(net39),
    .B(net40),
    .C(net2),
    .X(_04_));
 sky130_fd_sc_hd__a21o_1 _22_ (.A1(net12),
    .A2(_01_),
    .B1(_04_),
    .X(net38));
 sky130_fd_sc_hd__a21o_1 _23_ (.A1(net11),
    .A2(_01_),
    .B1(_04_),
    .X(net37));
 sky130_fd_sc_hd__a21o_1 _24_ (.A1(net10),
    .A2(_01_),
    .B1(_04_),
    .X(net36));
 sky130_fd_sc_hd__a21o_1 _25_ (.A1(net9),
    .A2(_01_),
    .B1(_04_),
    .X(net35));
 sky130_fd_sc_hd__a21o_1 _26_ (.A1(net8),
    .A2(_01_),
    .B1(_04_),
    .X(net34));
 sky130_fd_sc_hd__a21oi_1 _27_ (.A1(net40),
    .A2(_00_),
    .B1(net39),
    .Y(net33));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_31 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(button_dec),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(button_inc),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(done_dec[0]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(done_dec[1]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(done_dec[2]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(done_dec[3]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(done_dec[4]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(done_inc[0]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(done_inc[1]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(done_inc[2]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(done_inc[3]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(done_inc[4]),
    .X(net12));
 sky130_fd_sc_hd__buf_1 input13 (.A(mode[0]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(mode[1]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(select[0]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(select[1]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(select[2]),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input18 (.A(select[3]),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_1 input19 (.A(select[4]),
    .X(net19));
 sky130_fd_sc_hd__clkbuf_1 input20 (.A(select[5]),
    .X(net20));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(dec[0]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(dec[1]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(dec[2]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(dec[3]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(dec[4]));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(dec[5]));
 sky130_fd_sc_hd__buf_2 output27 (.A(net27),
    .X(en[0]));
 sky130_fd_sc_hd__buf_2 output28 (.A(net28),
    .X(en[1]));
 sky130_fd_sc_hd__buf_2 output29 (.A(net29),
    .X(en[2]));
 sky130_fd_sc_hd__buf_2 output30 (.A(net30),
    .X(en[3]));
 sky130_fd_sc_hd__buf_2 output31 (.A(net31),
    .X(en[4]));
 sky130_fd_sc_hd__buf_2 output32 (.A(net32),
    .X(en[5]));
 sky130_fd_sc_hd__buf_2 output33 (.A(net33),
    .X(inc[0]));
 sky130_fd_sc_hd__buf_2 output34 (.A(net34),
    .X(inc[1]));
 sky130_fd_sc_hd__buf_2 output35 (.A(net35),
    .X(inc[2]));
 sky130_fd_sc_hd__buf_2 output36 (.A(net36),
    .X(inc[3]));
 sky130_fd_sc_hd__buf_2 output37 (.A(net37),
    .X(inc[4]));
 sky130_fd_sc_hd__buf_2 output38 (.A(net38),
    .X(inc[5]));
 sky130_fd_sc_hd__buf_2 fanout39 (.A(net14),
    .X(net39));
 sky130_fd_sc_hd__buf_2 fanout40 (.A(net13),
    .X(net40));
endmodule
