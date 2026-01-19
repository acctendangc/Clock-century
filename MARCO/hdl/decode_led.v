module decode_led(
    input      [6:0] a,

    output reg [6:0] led_1,
    output reg [6:0] led_2
);

wire       a_0;
wire [1:0] a_1;
wire [2:0] a_2;
wire [3:0] a_3;
wire [2:0] a_4;
wire [1:0] a_5;
wire [2:0] a_6;

wire [4:0] sum_dvi;
wire [3:0] nho_dvi;

wire [3:0] a_dvi;
wire [3:0] a_ten;

assign a_0 = a[0];
assign a_1 = a[1] ? 2 : 0;
assign a_2 = a[2] ? 4 : 0;
assign a_3 = a[3] ? 8 : 0;
assign a_4 = a[4] ? 6 : 0;
assign a_5 = a[5] ? 2 : 0;
assign a_6 = a[6] ? 4 : 0;

assign sum_dvi = a_0 + a_1 + a_2 + a_3 + a_4 + a_5 + a_6;

assign a_dvi = (sum_dvi >= 20 ) ? (sum_dvi - 20) : ((sum_dvi >= 10) ? (sum_dvi - 10) : sum_dvi);
assign a_ten = ((sum_dvi >= 20 ) ? 2 : ((sum_dvi >= 10) ? 1 : 0)) + (a[5] ? 3 : 0) + (a[4] ? 1 : 0) +(a[6] ? 6 : 0)  ;


always@(a_dvi) begin
    case (a_dvi) 
        4'd1: begin
            led_1 = 7'h79; // 1
        end
        4'd2: begin
            led_1 = 7'h24; // 2
        end
        4'd3: begin
            led_1 = 7'h30; // 3
        end
        4'd4: begin
            led_1 = 7'h19; // 4
        end
        4'd5: begin
            led_1 = 7'h12; // 5
        end
        4'd6: begin
            led_1 = 7'h02; // 6
        end
        4'd7: begin
            led_1 = 7'h78; // 7
        end
        4'd8: begin
            led_1 = 7'h00; // 8
        end
        4'd9: begin
            led_1 = 7'h10; // 9
        end
        default     : begin
            led_1 = 7'h40; // 0
        end
    endcase
end

always@(a_ten) begin
    case (a_ten) 
        4'd1: begin
            led_2 = 7'h79; // 1
        end
        4'd2: begin
            led_2 = 7'h24; // 2
        end
        4'd3: begin
            led_2 = 7'h30; // 3
        end
        4'd4: begin
            led_2 = 7'h19; // 4
        end
        4'd5: begin
            led_2 = 7'h12; // 5
        end
        4'd6: begin
            led_2 = 7'h02; // 6
        end
        4'd7: begin
            led_2 = 7'h78; // 7
        end
        4'd8: begin
            led_2 = 7'h00; // 8
        end
        4'd9: begin
            led_2 = 7'h10;
        end
        default     : begin
            led_2 = 7'h40; // 0
        end
    endcase
end

endmodule