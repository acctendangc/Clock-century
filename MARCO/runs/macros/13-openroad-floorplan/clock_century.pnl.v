module clock_century (alarm_i,
    alarm_o,
    am_pm,
    button_dec,
    button_inc,
    clk,
    reset_n,
    alarm_hour,
    alarm_min,
    led_day,
    led_hour,
    led_min,
    led_month,
    led_sec,
    led_year,
    mode,
    select);
 input alarm_i;
 output alarm_o;
 input am_pm;
 input button_dec;
 input button_inc;
 input clk;
 input reset_n;
 input [4:0] alarm_hour;
 input [5:0] alarm_min;
 output [13:0] led_day;
 output [13:0] led_hour;
 output [13:0] led_min;
 output [13:0] led_month;
 output [13:0] led_sec;
 output [13:0] led_year;
 input [1:0] mode;
 input [5:0] select;

 wire \day[0] ;
 wire \day[1] ;
 wire \day[2] ;
 wire \day[3] ;
 wire \day[4] ;
 wire \day_num[0] ;
 wire \day_num[1] ;
 wire \day_num[2] ;
 wire \day_num[3] ;
 wire \day_num[4] ;
 wire \dec[0] ;
 wire \dec[1] ;
 wire \dec[2] ;
 wire \dec[3] ;
 wire \dec[4] ;
 wire \dec[5] ;
 wire \done_dec[0] ;
 wire \done_dec[1] ;
 wire \done_dec[2] ;
 wire \done_dec[3] ;
 wire \done_dec[4] ;
 wire \done_inc[0] ;
 wire \done_inc[1] ;
 wire \done_inc[2] ;
 wire \done_inc[3] ;
 wire \done_inc[4] ;
 wire \en[0] ;
 wire \en[1] ;
 wire \en[2] ;
 wire \en[3] ;
 wire \en[4] ;
 wire \en[5] ;
 wire \hour[0] ;
 wire \hour[1] ;
 wire \hour[2] ;
 wire \hour[3] ;
 wire \hour[4] ;
 wire \hour_num[0] ;
 wire \hour_num[1] ;
 wire \hour_num[2] ;
 wire \hour_num[3] ;
 wire \hour_num[4] ;
 wire \inc[0] ;
 wire \inc[1] ;
 wire \inc[2] ;
 wire \inc[3] ;
 wire \inc[4] ;
 wire \inc[5] ;
 wire \minute[0] ;
 wire \minute[1] ;
 wire \minute[2] ;
 wire \minute[3] ;
 wire \minute[4] ;
 wire \minute[5] ;
 wire \month[0] ;
 wire \month[1] ;
 wire \month[2] ;
 wire \month[3] ;
 wire \second[0] ;
 wire \second[1] ;
 wire \second[2] ;
 wire \second[3] ;
 wire \second[4] ;
 wire \second[5] ;
 wire \year[0] ;
 wire \year[1] ;
 wire \year[2] ;
 wire \year[3] ;
 wire \year[4] ;
 wire \year[5] ;
 wire \year[6] ;
 wire VPWR;
 wire VGND;

 alarm alarm_inst (.VGND(VGND),
    .VPWR(VPWR),
    .alarm_i(alarm_i),
    .alarm_o(alarm_o),
    .clk(clk),
    .rst_n(reset_n),
    .alarm_hour({alarm_hour[4],
    alarm_hour[3],
    alarm_hour[2],
    alarm_hour[1],
    alarm_hour[0]}),
    .alarm_min({alarm_min[5],
    alarm_min[4],
    alarm_min[3],
    alarm_min[2],
    alarm_min[1],
    alarm_min[0]}),
    .hour({\hour[4] ,
    \hour[3] ,
    \hour[2] ,
    \hour[1] ,
    \hour[0] }),
    .minute({\minute[5] ,
    \minute[4] ,
    \minute[3] ,
    \minute[2] ,
    \minute[1] ,
    \minute[0] }));
 counter_all counter_all_inst (.VGND(VGND),
    .VPWR(VPWR),
    .clk(clk),
    .reset_n(reset_n),
    .day({\day[4] ,
    \day[3] ,
    \day[2] ,
    \day[1] ,
    \day[0] }),
    .day_num({\day_num[4] ,
    \day_num[3] ,
    \day_num[2] ,
    \day_num[1] ,
    \day_num[0] }),
    .dec({\dec[5] ,
    \dec[4] ,
    \dec[3] ,
    \dec[2] ,
    \dec[1] ,
    \dec[0] }),
    .done_dec({\done_dec[4] ,
    \done_dec[3] ,
    \done_dec[2] ,
    \done_dec[1] ,
    \done_dec[0] }),
    .done_inc({\done_inc[4] ,
    \done_inc[3] ,
    \done_inc[2] ,
    \done_inc[1] ,
    \done_inc[0] }),
    .en({\en[5] ,
    \en[4] ,
    \en[3] ,
    \en[2] ,
    \en[1] ,
    \en[0] }),
    .hour({\hour[4] ,
    \hour[3] ,
    \hour[2] ,
    \hour[1] ,
    \hour[0] }),
    .hour_num({\hour_num[4] ,
    \hour_num[3] ,
    \hour_num[2] ,
    \hour_num[1] ,
    \hour_num[0] }),
    .inc({\inc[5] ,
    \inc[4] ,
    \inc[3] ,
    \inc[2] ,
    \inc[1] ,
    \inc[0] }),
    .minute({\minute[5] ,
    \minute[4] ,
    \minute[3] ,
    \minute[2] ,
    \minute[1] ,
    \minute[0] }),
    .month({\month[3] ,
    \month[2] ,
    \month[1] ,
    \month[0] }),
    .second({\second[5] ,
    \second[4] ,
    \second[3] ,
    \second[2] ,
    \second[1] ,
    \second[0] }),
    .year({\year[6] ,
    \year[5] ,
    \year[4] ,
    \year[3] ,
    \year[2] ,
    \year[1] ,
    \year[0] }));
 decode_all decode_all_inst (.VGND(VGND),
    .VPWR(VPWR),
    .day({\day[4] ,
    \day[3] ,
    \day[2] ,
    \day[1] ,
    \day[0] }),
    .hour({\hour[4] ,
    \hour[3] ,
    \hour[2] ,
    \hour[1] ,
    \hour[0] }),
    .led_day({led_day[13],
    led_day[12],
    led_day[11],
    led_day[10],
    led_day[9],
    led_day[8],
    led_day[7],
    led_day[6],
    led_day[5],
    led_day[4],
    led_day[3],
    led_day[2],
    led_day[1],
    led_day[0]}),
    .led_hour({led_hour[13],
    led_hour[12],
    led_hour[11],
    led_hour[10],
    led_hour[9],
    led_hour[8],
    led_hour[7],
    led_hour[6],
    led_hour[5],
    led_hour[4],
    led_hour[3],
    led_hour[2],
    led_hour[1],
    led_hour[0]}),
    .led_min({led_min[13],
    led_min[12],
    led_min[11],
    led_min[10],
    led_min[9],
    led_min[8],
    led_min[7],
    led_min[6],
    led_min[5],
    led_min[4],
    led_min[3],
    led_min[2],
    led_min[1],
    led_min[0]}),
    .led_month({led_month[13],
    led_month[12],
    led_month[11],
    led_month[10],
    led_month[9],
    led_month[8],
    led_month[7],
    led_month[6],
    led_month[5],
    led_month[4],
    led_month[3],
    led_month[2],
    led_month[1],
    led_month[0]}),
    .led_sec({led_sec[13],
    led_sec[12],
    led_sec[11],
    led_sec[10],
    led_sec[9],
    led_sec[8],
    led_sec[7],
    led_sec[6],
    led_sec[5],
    led_sec[4],
    led_sec[3],
    led_sec[2],
    led_sec[1],
    led_sec[0]}),
    .led_year({led_year[13],
    led_year[12],
    led_year[11],
    led_year[10],
    led_year[9],
    led_year[8],
    led_year[7],
    led_year[6],
    led_year[5],
    led_year[4],
    led_year[3],
    led_year[2],
    led_year[1],
    led_year[0]}),
    .minute({\minute[5] ,
    \minute[4] ,
    \minute[3] ,
    \minute[2] ,
    \minute[1] ,
    \minute[0] }),
    .month({\month[3] ,
    \month[2] ,
    \month[1] ,
    \month[0] }),
    .second({\second[5] ,
    \second[4] ,
    \second[3] ,
    \second[2] ,
    \second[1] ,
    \second[0] }),
    .year({\year[6] ,
    \year[5] ,
    \year[4] ,
    \year[3] ,
    \year[2] ,
    \year[1] ,
    \year[0] }));
 decode_day decode_day_inst (.VGND(VGND),
    .VPWR(VPWR),
    .am_pm(am_pm),
    .day_num({\day_num[4] ,
    \day_num[3] ,
    \day_num[2] ,
    \day_num[1] ,
    \day_num[0] }),
    .hour_num({\hour_num[4] ,
    \hour_num[3] ,
    \hour_num[2] ,
    \hour_num[1] ,
    \hour_num[0] }),
    .month({\month[3] ,
    \month[2] ,
    \month[1] ,
    \month[0] }),
    .year({\year[6] ,
    \year[5] ,
    \year[4] ,
    \year[3] ,
    \year[2] ,
    \year[1] ,
    \year[0] }));
 decode_input decode_input_inst (.VGND(VGND),
    .VPWR(VPWR),
    .button_dec(button_dec),
    .button_inc(button_inc),
    .dec({\dec[5] ,
    \dec[4] ,
    \dec[3] ,
    \dec[2] ,
    \dec[1] ,
    \dec[0] }),
    .done_dec({\done_dec[4] ,
    \done_dec[3] ,
    \done_dec[2] ,
    \done_dec[1] ,
    \done_dec[0] }),
    .done_inc({\done_inc[4] ,
    \done_inc[3] ,
    \done_inc[2] ,
    \done_inc[1] ,
    \done_inc[0] }),
    .en({\en[5] ,
    \en[4] ,
    \en[3] ,
    \en[2] ,
    \en[1] ,
    \en[0] }),
    .inc({\inc[5] ,
    \inc[4] ,
    \inc[3] ,
    \inc[2] ,
    \inc[1] ,
    \inc[0] }),
    .mode({mode[1],
    mode[0]}),
    .select({select[5],
    select[4],
    select[3],
    select[2],
    select[1],
    select[0]}));
endmodule
