module alarm (alarm_i,
    alarm_o,
    clk,
    rst_n,
    alarm_hour,
    alarm_min,
    hour,
    minute);
 input alarm_i;
 output alarm_o;
 input clk;
 input rst_n;
 input [4:0] alarm_hour;
 input [5:0] alarm_min;
 input [4:0] hour;
 input [5:0] minute;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire state_alarm;
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
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net26;
 wire net27;

 sky130_fd_sc_hd__xor2_1 _19_ (.A(net26),
    .B(net6),
    .X(_00_));
 sky130_fd_sc_hd__xor2_1 _20_ (.A(net14),
    .B(net2),
    .X(_02_));
 sky130_fd_sc_hd__or2_1 _21_ (.A(net21),
    .B(net10),
    .X(_03_));
 sky130_fd_sc_hd__nand2_1 _22_ (.A(net21),
    .B(net10),
    .Y(_04_));
 sky130_fd_sc_hd__nand2_1 _23_ (.A(net23),
    .B(net12),
    .Y(_05_));
 sky130_fd_sc_hd__or2_1 _24_ (.A(net23),
    .B(net12),
    .X(_06_));
 sky130_fd_sc_hd__a221o_1 _25_ (.A1(_03_),
    .A2(_04_),
    .B1(_05_),
    .B2(_06_),
    .C1(_02_),
    .X(_07_));
 sky130_fd_sc_hd__xor2_1 _26_ (.A(net18),
    .B(net7),
    .X(_08_));
 sky130_fd_sc_hd__xor2_1 _27_ (.A(net20),
    .B(net9),
    .X(_09_));
 sky130_fd_sc_hd__xor2_1 _28_ (.A(net16),
    .B(net4),
    .X(_10_));
 sky130_fd_sc_hd__xor2_1 _29_ (.A(net17),
    .B(net5),
    .X(_11_));
 sky130_fd_sc_hd__or4_1 _30_ (.A(_08_),
    .B(_09_),
    .C(_10_),
    .D(_11_),
    .X(_12_));
 sky130_fd_sc_hd__xor2_1 _31_ (.A(net13),
    .B(net1),
    .X(_13_));
 sky130_fd_sc_hd__xor2_1 _32_ (.A(net15),
    .B(net3),
    .X(_14_));
 sky130_fd_sc_hd__xor2_1 _33_ (.A(net19),
    .B(net8),
    .X(_15_));
 sky130_fd_sc_hd__xor2_1 _34_ (.A(net22),
    .B(net11),
    .X(_16_));
 sky130_fd_sc_hd__or4_1 _35_ (.A(_13_),
    .B(_14_),
    .C(_15_),
    .D(_16_),
    .X(_17_));
 sky130_fd_sc_hd__nor3_1 _36_ (.A(_07_),
    .B(_12_),
    .C(_17_),
    .Y(_18_));
 sky130_fd_sc_hd__o21a_1 _37_ (.A1(net27),
    .A2(_18_),
    .B1(net26),
    .X(_01_));
 sky130_fd_sc_hd__dfrtp_1 _38_ (.CLK(clknet_1_1__leaf_clk),
    .D(_00_),
    .RESET_B(net24),
    .Q(state_alarm));
 sky130_fd_sc_hd__dfrtp_1 _39_ (.CLK(clknet_1_0__leaf_clk),
    .D(_01_),
    .RESET_B(net24),
    .Q(net25));
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
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(alarm_hour[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(alarm_hour[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(alarm_hour[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(alarm_hour[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(alarm_hour[4]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(alarm_i),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(alarm_min[0]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(alarm_min[1]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(alarm_min[2]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(alarm_min[3]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(alarm_min[4]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(alarm_min[5]),
    .X(net12));
 sky130_fd_sc_hd__buf_1 input13 (.A(hour[0]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(hour[1]),
    .X(net14));
 sky130_fd_sc_hd__buf_1 input15 (.A(hour[2]),
    .X(net15));
 sky130_fd_sc_hd__buf_1 input16 (.A(hour[3]),
    .X(net16));
 sky130_fd_sc_hd__buf_1 input17 (.A(hour[4]),
    .X(net17));
 sky130_fd_sc_hd__buf_1 input18 (.A(minute[0]),
    .X(net18));
 sky130_fd_sc_hd__buf_1 input19 (.A(minute[1]),
    .X(net19));
 sky130_fd_sc_hd__buf_1 input20 (.A(minute[2]),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_1 input21 (.A(minute[3]),
    .X(net21));
 sky130_fd_sc_hd__buf_1 input22 (.A(minute[4]),
    .X(net22));
 sky130_fd_sc_hd__buf_1 input23 (.A(minute[5]),
    .X(net23));
 sky130_fd_sc_hd__buf_1 input24 (.A(rst_n),
    .X(net24));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(alarm_o));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(state_alarm),
    .X(net26));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(net25),
    .X(net27));
endmodule
