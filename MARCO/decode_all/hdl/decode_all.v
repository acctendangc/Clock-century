module decode_all(
    input wire [4:0]    day,
    input wire [3:0]    month,
    input wire [6:0]    year,
    input wire [4:0]    hour,
    input wire [5:0]    minute,
    input wire [5:0]    second,
    
    output [13:0]   led_day,
    output [13:0]   led_month,
    output [13:0]   led_year,

    output [13:0]   led_hour,
    output [13:0]   led_min,
    output [13:0]   led_sec
);
decode_led decode_led_sec_inst(
    .a          ({1'h0,second}),
    .led_1      (led_sec[6:0]),
    .led_2      (led_sec[13:7])
);      
decode_led decode_led_min_inst(
    .a          ({1'h0,minute}),
    .led_1      (led_min[6:0]),
    .led_2      (led_min[13:7])
);
decode_led decode_led_hour_inst(
    .a          ({2'h0,hour}),
    .led_1      (led_hour[6:0]),
    .led_2      (led_hour[13:7])
);
decode_led decode_led_day_inst(
    .a          ({2'h0,day}),
    .led_1      (led_day[6:0]),
    .led_2      (led_day[13:7])
);
decode_led decode_led_month_inst(
    .a          ({3'h0,month}),
    .led_1      (led_month[6:0]),
    .led_2      (led_month[13:7])
);
decode_led decode_led_year_inst(
    .a          (year),
    .led_1      (led_year[6:0]),
    .led_2      (led_year[13:7])
);
endmodule