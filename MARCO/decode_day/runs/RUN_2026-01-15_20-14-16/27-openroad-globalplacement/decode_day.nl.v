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

 sky130_fd_sc_hd__inv_2 _04_ (.A(am_pm),
    .Y(hour_num[4]));
 sky130_fd_sc_hd__inv_2 _05_ (.A(month[0]),
    .Y(_00_));
 sky130_fd_sc_hd__or4b_2 _06_ (.A(month[0]),
    .B(month[2]),
    .C(month[3]),
    .D_N(month[1]),
    .X(day_num[1]));
 sky130_fd_sc_hd__nor3_2 _07_ (.A(year[1]),
    .B(year[0]),
    .C(day_num[1]),
    .Y(_01_));
 sky130_fd_sc_hd__a211oi_2 _08_ (.A1(month[1]),
    .A2(_00_),
    .B1(month[2]),
    .C1(month[3]),
    .Y(_02_));
 sky130_fd_sc_hd__mux2_1 _09_ (.A0(month[3]),
    .A1(month[2]),
    .S(month[0]),
    .X(_03_));
 sky130_fd_sc_hd__or3_2 _10_ (.A(_01_),
    .B(_02_),
    .C(_03_),
    .X(day_num[0]));
 sky130_fd_sc_hd__conb_1 _11_ (.HI(day_num[2]));
 sky130_fd_sc_hd__conb_1 _12_ (.HI(day_num[3]));
 sky130_fd_sc_hd__conb_1 _13_ (.HI(day_num[4]));
 sky130_fd_sc_hd__conb_1 _14_ (.HI(hour_num[3]));
 sky130_fd_sc_hd__conb_1 _15_ (.LO(hour_num[0]));
 sky130_fd_sc_hd__conb_1 _16_ (.LO(hour_num[1]));
 sky130_fd_sc_hd__buf_2 _17_ (.A(am_pm),
    .X(hour_num[2]));
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
endmodule
