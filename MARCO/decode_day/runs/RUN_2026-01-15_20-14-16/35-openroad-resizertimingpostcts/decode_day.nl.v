module decode_day (am_pm,
    day_num,
    hour_num,
    month,
    year);
 input am_pm;
 output [4:0] day_num;
 output [4:0] hour_num;
 input [3:0] month;
 input [6:0] year;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire net15;
 wire net16;
 wire net17;
 wire net13;
 wire net14;
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

 sky130_fd_sc_hd__inv_2 _04_ (.A(net1),
    .Y(net11));
 sky130_fd_sc_hd__inv_2 _05_ (.A(net2),
    .Y(_00_));
 sky130_fd_sc_hd__or4b_1 _06_ (.A(net2),
    .B(net4),
    .C(net5),
    .D_N(net3),
    .X(net9));
 sky130_fd_sc_hd__nor3_1 _07_ (.A(net7),
    .B(net6),
    .C(net9),
    .Y(_01_));
 sky130_fd_sc_hd__a211oi_1 _08_ (.A1(net3),
    .A2(_00_),
    .B1(net4),
    .C1(net5),
    .Y(_02_));
 sky130_fd_sc_hd__mux2_1 _09_ (.A0(net5),
    .A1(net4),
    .S(net2),
    .X(_03_));
 sky130_fd_sc_hd__or3_1 _10_ (.A(_01_),
    .B(_02_),
    .C(_03_),
    .X(net8));
 sky130_fd_sc_hd__conb_1 decode_day_15 (.HI(net15));
 sky130_fd_sc_hd__conb_1 decode_day_16 (.HI(net16));
 sky130_fd_sc_hd__conb_1 decode_day_17 (.HI(net17));
 sky130_fd_sc_hd__conb_1 decode_day_13 (.LO(net13));
 sky130_fd_sc_hd__conb_1 decode_day_14 (.HI(net14));
 sky130_fd_sc_hd__clkbuf_1 _17_ (.A(net1),
    .X(net10));
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
 sky130_fd_sc_hd__buf_1 input1 (.A(am_pm),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(month[0]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(month[1]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(month[2]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(month[3]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(year[0]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(year[1]),
    .X(net7));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(day_num[0]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(day_num[1]));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(hour_num[2]));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(hour_num[4]));
 sky130_fd_sc_hd__conb_1 decode_day_12 (.LO(net12));
 assign day_num[2] = net14;
 assign day_num[3] = net15;
 assign day_num[4] = net16;
 assign hour_num[0] = net12;
 assign hour_num[1] = net13;
 assign hour_num[3] = net17;
endmodule
