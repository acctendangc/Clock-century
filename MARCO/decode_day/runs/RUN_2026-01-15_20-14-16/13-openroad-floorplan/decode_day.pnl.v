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
 wire VPWR;
 wire VGND;

 sky130_fd_sc_hd__inv_2 _04_ (.A(am_pm),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(hour_num[4]));
 sky130_fd_sc_hd__inv_2 _05_ (.A(month[0]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_00_));
 sky130_fd_sc_hd__or4b_2 _06_ (.A(month[0]),
    .B(month[2]),
    .C(month[3]),
    .D_N(month[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(day_num[1]));
 sky130_fd_sc_hd__nor3_2 _07_ (.A(year[1]),
    .B(year[0]),
    .C(day_num[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_01_));
 sky130_fd_sc_hd__a211oi_2 _08_ (.A1(month[1]),
    .A2(_00_),
    .B1(month[2]),
    .C1(month[3]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_02_));
 sky130_fd_sc_hd__mux2_1 _09_ (.A0(month[3]),
    .A1(month[2]),
    .S(month[0]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_03_));
 sky130_fd_sc_hd__or3_2 _10_ (.A(_01_),
    .B(_02_),
    .C(_03_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(day_num[0]));
 sky130_fd_sc_hd__conb_1 _11_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(day_num[2]));
 sky130_fd_sc_hd__conb_1 _12_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(day_num[3]));
 sky130_fd_sc_hd__conb_1 _13_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(day_num[4]));
 sky130_fd_sc_hd__conb_1 _14_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(hour_num[3]));
 sky130_fd_sc_hd__conb_1 _15_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(hour_num[0]));
 sky130_fd_sc_hd__conb_1 _16_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .LO(hour_num[1]));
 sky130_fd_sc_hd__buf_2 _17_ (.A(am_pm),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(hour_num[2]));
endmodule
