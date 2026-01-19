module clock_century(
    `ifdef USE_POWER_PINS
        inout VPWR,
        inout VGND,
    `endif
    input           clk,
    input           reset_n,

    input  [1:0]    mode,
    input  [5:0]    select,

    input           button_inc,
    input           button_dec,

    input           am_pm,

    input [5:0]     alarm_min,
    input [4:0]     alarm_hour,
    input           alarm_i,
    output          alarm_o,

    output [13:0]   led_day,
    output [13:0]   led_month,
    output [13:0]   led_year,

    output [13:0]   led_hour,
    output [13:0]   led_min,
    output [13:0]   led_sec


);
wire [4:0]    day;
wire [3:0]    month;
wire [6:0]    year;
wire [4:0]    hour;
wire [5:0]    minute;
wire [5:0]    second;

wire [4:0] day_num;
wire [4:0] hour_num;

wire [4:0] done_inc;
wire [4:0] done_dec;

wire [5:0] inc;
wire [5:0] dec;

wire [5:0] en;
// wire [6:0] year;

alarm alarm_inst(
    .clk        (clk),
    .rst_n      (reset_n),
    .alarm_min  (alarm_min),
    .alarm_hour (alarm_hour),
    .alarm_i    (alarm_i),
    .minute     (minute),
    .hour       (hour),
    .alarm_o    (alarm_o)
);

decode_input decode_input_inst(
    // .clk        (clk),
    // .reset_n    (reset_n),
    .mode       (mode),
    .select     (select),
    .button_inc (button_inc),
    .button_dec (button_dec),
    //.blink_led  (blink_led),
    .done_inc   (done_inc),
    .done_dec   (done_dec),
    //.clock_mode (clock_mode),
    .inc        (inc),
    .dec        (dec),
    .en         (en)
);

decode_day decode_day_inst(
    //.year_dvi   (year_dvi),
    //.year_chuc  (year_chuc),
    //.year_tram  (year_tram),
    //.year_nghin (year_nghin),
    .am_pm      (am_pm),
    .year       (year),
    .month      (month),
    .day_num    (day_num),
    .hour_num   (hour_num)
);


// count_gate #(
//     //.NUM_BIT    (6),
//     .NUM_BIT    (7),
//     .RESET_VALUE(0)
// ) second_inst (
//     .clk        (clk),
//     .reset_n    (reset_n),
//     .inc        (inc[0]),
//     .dec        (dec[0]),
//     .en         (en[0]),
//     .max_count  (59),
//     .count_o    (second),
//     .done_inc   (done_inc[0]),
//     .done_dec   (done_dec[0])
// );

// count_gate #(
//     //.NUM_BIT    (6),
//     .NUM_BIT    (7),
//     .RESET_VALUE(0)
// ) minute_inst (
//     .clk        (clk),
//     .reset_n    (reset_n),
//     .inc        (inc[1]),
//     .dec        (dec[1]),
//     .en         (en[1]),
//     .max_count  (59),
//     .count_o    (minute),
//     .done_inc   (done_inc[1]),
//     .done_dec   (done_dec[1])
// );

// count_gate #(
//     //.NUM_BIT    (5),
//     .NUM_BIT    (7),
//     .RESET_VALUE(0)
// ) hour_inst (
//     .clk        (clk),
//     .reset_n    (reset_n),
//     .inc        (inc[2]),
//     .dec        (dec[2]),
//     .en         (en[2]),
//     .max_count  (hour_num),
//     .count_o    (hour),
//     .done_inc   (done_inc[2]),
//     .done_dec   (done_dec[2])
// );

// count_gate #(
//     //.NUM_BIT    (5),
//     .NUM_BIT    (7),
//     .RESET_VALUE(1)
// ) day_inst (
//     .clk        (clk),
//     .reset_n    (reset_n),
//     .inc        (inc[3]),
//     .dec        (dec[3]),
//     .en         (en[3]),
//     .max_count  (day_num),
//     .count_o    (day),
//     .done_inc   (done_inc[3]),
//     .done_dec   (done_dec[3])
// );

// count_gate #(
//     //.NUM_BIT    (4),
//     .NUM_BIT    (7),
//     .RESET_VALUE(1)
// ) month_inst (
//     .clk        (clk),
//     .reset_n    (reset_n),
//     .inc        (inc[4]),
//     .dec        (dec[4]),
//     .en         (en[4]),
//     .max_count  (12),
//     .count_o    (month),
//     .done_inc   (done_inc[4]),
//     .done_dec   (done_dec[4])
// );

// count_gate #(

//     .NUM_BIT    (7),
//     .RESET_VALUE(0)
// ) year_inst (
//     .clk        (clk),
//     .reset_n    (reset_n),
//     .inc        (inc[5]),
//     .dec        (dec[5]),
//     .en         (en[5]),
//     .max_count  (100),
//     .count_o    (year),
//     .done_inc(),
//     .done_dec()
// );
counter_all counter_all_inst(
    .clk(clk),
    .reset_n(reset_n),
    .day(day),
    .month(month),
    .year(year),
    .hour(hour),
    .minute(minute),
    .second(second),
    .day_num(day_num),
    .hour_num(hour_num),
    .done_inc(done_inc),
    .done_dec(done_dec),
    .inc(inc),
    .dec(dec),
    .en(en)
);

// decode_led decode_led_sec_inst(
//     .a          ({'h0,second}),
//     .led_1      (led_sec[6:0]),
//     .led_2      (led_sec[13:7])
// );      
// decode_led decode_led_min_inst(
//     .a          ({'h0,minute}),
//     .led_1      (led_min[6:0]),
//     .led_2      (led_min[13:7])
// );
// decode_led decode_led_hour_inst(
//     .a          ({'h0,hour}),
//     .led_1      (led_hour[6:0]),
//     .led_2      (led_hour[13:7])
// );
// decode_led decode_led_day_inst(
//     .a          ({'h0,day}),
//     .led_1      (led_day[6:0]),
//     .led_2      (led_day[13:7])
// );
// decode_led decode_led_month_inst(
//     .a          ({'h0,month}),
//     .led_1      (led_month[6:0]),
//     .led_2      (led_month[13:7])
// );
// decode_led decode_led_year_inst(
//     .a          (year),
//     .led_1      (led_year[6:0]),
//     .led_2      (led_year[13:7])
// );
decode_all decode_all_inst(
    .day(day),
    .month(month),
    .year(year),
    .hour(hour),
    .minute(minute),
    .second(second),
    .led_day(led_day),
    .led_month(led_month),
    .led_year(led_year),
    .led_hour(led_hour),
    .led_min(led_min),
    .led_sec(led_sec)
);
endmodule