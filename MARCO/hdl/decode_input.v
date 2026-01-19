module decode_input(

    input      [1:0] mode,
    input      [5:0] select,

    input            button_inc,
    input            button_dec,

    input      [4:0] done_inc,
    input      [4:0] done_dec,

    //output reg       blink_led,

    output reg [5:0] inc,
    output reg [5:0] dec,
    //output reg       clock_mode,

    output reg [5:0] en
    
);



///////////////////////////////////////////////////////////////////////////
// Dua vao che do hoat dong cua dong ho de decode ra cac tin hieu hoat dong 
///////////////////////////////////////////////////////////////////////////
// always@(posedge clk or negedge reset_n) begin
//     if (~reset_n) begin
//         clock_mode <= 0;
//     end
//     else begin
//         case(mode)
//         2'b00: begin
//             clock_mode <= 0;
//         end
//         2'b01: begin
//             clock_mode <= 1;
//         end
//         2'b10: begin
//             clock_mode <= 1;
//         end
//         2'b11: begin
//             clock_mode <= 0;
//         end
//         default: begin
//             clock_mode <= 0;
//         end
//         endcase
//     end
// end

always@(mode, select) begin
    case (mode)
        2'b00: begin
            en = 6'b111111;
            //blink_led = 0;

        end
        2'b01: begin
            en = select;
            //blink_led = 1;

        end
        2'b10: begin
            en = select;
            //blink_led = 1;

        end
        2'b11: begin
            en = 6'b111111;
            //blink_led = 0;

        end
        default: begin
            en = select;
            //blink_led = 0;

        end
    endcase
end

always@(mode, done_inc, button_inc) begin
    case (mode)
        2'b00: begin
            inc[0] = 1;
            inc[1] = done_inc[0];
            inc[2] = done_inc[1];
            inc[3] = done_inc[2];
            inc[4] = done_inc[3];
            inc[5] = done_inc[4];
        end
        2'b01: begin
            inc[0] = button_inc;
            inc[1] = button_inc;
            inc[2] = button_inc;
            inc[3] = button_inc;
            inc[4] = button_inc;
            inc[5] = button_inc;
        end
        2'b10: begin
            inc[0] = 0;
            inc[1] = 0;
            inc[2] = 0;
            inc[3] = 0;
            inc[4] = 0;
            inc[5] = 0;
        end
        2'b11: begin
            inc[0] = 0;
            inc[1] = 0;
            inc[2] = 0;
            inc[3] = 0;
            inc[4] = 0;
            inc[5] = 0;
        end
        default: begin
            inc[0] = 1;
            inc[1] = done_inc[0];
            inc[2] = done_inc[1];
            inc[3] = done_inc[2];
            inc[4] = done_inc[3];
            inc[5] = done_inc[4];
        end
    endcase    
end

always@(mode, done_dec, button_dec)  begin
    case (mode)
        2'b11: begin
            dec[0] = 1;
            dec[1] = done_dec[0];
            dec[2] = done_dec[1];
            dec[3] = done_dec[2];
            dec[4] = done_dec[3];
            dec[5] = done_dec[4];
        end
        2'b10: begin
            dec[0] = button_dec;
            dec[1] = button_dec;
            dec[2] = button_dec;
            dec[3] = button_dec;
            dec[4] = button_dec;
            dec[5] = button_dec;
        end
        2'b00: begin
            dec[0] = 0;
            dec[1] = 0;
            dec[2] = 0;
            dec[3] = 0;
            dec[4] = 0;
            dec[5] = 0;
        end
        2'b01: begin
            dec[0] = 0;
            dec[1] = 0;
            dec[2] = 0;
            dec[3] = 0;
            dec[4] = 0;
            dec[5] = 0;
        end
        default: begin
            dec[0] = 1;
            dec[1] = done_dec[0];
            dec[2] = done_dec[1];
            dec[3] = done_dec[2];
            dec[4] = done_dec[3];
            dec[5] = done_dec[4];
        end
    endcase    
end


endmodule