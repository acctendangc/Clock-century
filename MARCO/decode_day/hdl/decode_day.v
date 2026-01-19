module decode_day(
    //input        [3:0]         year_dvi,
    //input        [3:0]         year_chuc,
    //input        [3:0]         year_tram,
    //input        [3:0]         year_nghin,
    input                      am_pm,
    input        [6:0]         year,
    input        [3:0]         month,
    output reg   [4:0]         day_num,
    output reg   [4:0]         hour_num
);
// Xu li tin hieu am_pm cho bien max count cua hour counter
always@(*) begin
    if (am_pm) begin
        hour_num = 5'd12;
    end
    else begin
        hour_num = 5'd24;
    end
end
// O day xu li cac thang va nam de chon ra nam nhuan de dua ra so ngay cho bien dem counter ngay

always@(*) begin
    case (month)
        // 4'd2:begin
        //     if ((year_dvi != 0 ) || (year_chuc != 0)) begin
        //         if ((year_chuc[0] && (year_dvi[1:0] == 2'b10)) || (!year_chuc[0] && (year_dvi[1:0] == 2'b00))) begin
        //             day_num = 5'd29;
        //         end
        //         else begin
        //             day_num = 5'd28;
        //         end
        //     end
        //     else begin
        //         if ((year_nghin[0] && (year_tram[1:0] == 2'b10)) || (!year_nghin[0] && (year_tram[1:0] == 2'b00))) begin
        //             day_num = 5'd29;
        //         end
        //         else begin
        //             day_num = 5'd28;
        //         end
        //     end
        // end
         4'd2:begin
            if (year[1:0] == 2'b00) begin
                day_num = 5'd29;
            end
            else begin
                day_num = 5'd28;
            end
        end
        4'd4:begin
            day_num = 5'd30;
        end
        4'd6:begin
            day_num = 5'd30;
        end
        4'd9:begin
            day_num = 5'd30;
        end
        4'd11:begin
            day_num = 5'd30;
        end
        default: begin
            day_num = 5'd31;
        end
    endcase
end
endmodule