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

 sky130_fd_sc_hd__inv_2 _05_ (.A(button_inc),
    .Y(_00_));
 sky130_fd_sc_hd__nor2_2 _06_ (.A(mode[1]),
    .B(mode[0]),
    .Y(_01_));
 sky130_fd_sc_hd__xnor2_2 _07_ (.A(mode[1]),
    .B(mode[0]),
    .Y(_02_));
 sky130_fd_sc_hd__or2_2 _08_ (.A(select[0]),
    .B(_02_),
    .X(en[0]));
 sky130_fd_sc_hd__or2_2 _09_ (.A(select[1]),
    .B(_02_),
    .X(en[1]));
 sky130_fd_sc_hd__or2_2 _10_ (.A(select[2]),
    .B(_02_),
    .X(en[2]));
 sky130_fd_sc_hd__or2_2 _11_ (.A(select[3]),
    .B(_02_),
    .X(en[3]));
 sky130_fd_sc_hd__or2_2 _12_ (.A(select[4]),
    .B(_02_),
    .X(en[4]));
 sky130_fd_sc_hd__or2_2 _13_ (.A(select[5]),
    .B(_02_),
    .X(en[5]));
 sky130_fd_sc_hd__and3b_2 _14_ (.A_N(mode[0]),
    .B(button_dec),
    .C(mode[1]),
    .X(_03_));
 sky130_fd_sc_hd__a31o_2 _15_ (.A1(mode[1]),
    .A2(mode[0]),
    .A3(done_dec[4]),
    .B1(_03_),
    .X(dec[5]));
 sky130_fd_sc_hd__a31o_2 _16_ (.A1(mode[1]),
    .A2(mode[0]),
    .A3(done_dec[3]),
    .B1(_03_),
    .X(dec[4]));
 sky130_fd_sc_hd__a31o_2 _17_ (.A1(mode[1]),
    .A2(mode[0]),
    .A3(done_dec[2]),
    .B1(_03_),
    .X(dec[3]));
 sky130_fd_sc_hd__a31o_2 _18_ (.A1(mode[1]),
    .A2(mode[0]),
    .A3(done_dec[1]),
    .B1(_03_),
    .X(dec[2]));
 sky130_fd_sc_hd__a31o_2 _19_ (.A1(mode[1]),
    .A2(mode[0]),
    .A3(done_dec[0]),
    .B1(_03_),
    .X(dec[1]));
 sky130_fd_sc_hd__o21a_2 _20_ (.A1(mode[0]),
    .A2(button_dec),
    .B1(mode[1]),
    .X(dec[0]));
 sky130_fd_sc_hd__and3b_2 _21_ (.A_N(mode[1]),
    .B(mode[0]),
    .C(button_inc),
    .X(_04_));
 sky130_fd_sc_hd__a21o_2 _22_ (.A1(done_inc[4]),
    .A2(_01_),
    .B1(_04_),
    .X(inc[5]));
 sky130_fd_sc_hd__a21o_2 _23_ (.A1(done_inc[3]),
    .A2(_01_),
    .B1(_04_),
    .X(inc[4]));
 sky130_fd_sc_hd__a21o_2 _24_ (.A1(done_inc[2]),
    .A2(_01_),
    .B1(_04_),
    .X(inc[3]));
 sky130_fd_sc_hd__a21o_2 _25_ (.A1(done_inc[1]),
    .A2(_01_),
    .B1(_04_),
    .X(inc[2]));
 sky130_fd_sc_hd__a21o_2 _26_ (.A1(done_inc[0]),
    .A2(_01_),
    .B1(_04_),
    .X(inc[1]));
 sky130_fd_sc_hd__a21oi_2 _27_ (.A1(mode[0]),
    .A2(_00_),
    .B1(mode[1]),
    .Y(inc[0]));
endmodule
