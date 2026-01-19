module alarm (
    input       clk,
    input       rst_n,
    input [5:0] alarm_min,
    input [4:0] alarm_hour,
    input       alarm_i,
    input [5:0] minute,
    input [4:0] hour,
    output reg  alarm_o
);
reg state_alarm;
//   state alarm : bang 0 thi dang o che do khong de bao thuc
//               : bang 1 thi dang o che do bao thuc 
// khi nao co alarm_i thi chuyen trang thai
always@(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state_alarm <= 0;
    end
    else begin
        if (alarm_i) begin
            state_alarm <= !state_alarm;
        end
        else begin
        end
    end
end
//   alarm_o     : bang 1 thi dang bao thuc
//               : bang 0 khong bao thuc
//  So sanh voi tin hieu thuc te  
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        alarm_o <= 0;
    end
    else begin
        if (state_alarm) begin
            if (alarm_hour == hour && alarm_min == minute ) begin
                alarm_o <= 1;
            end
            else begin
            end
        end
        else begin
            alarm_o <= 0;
        end
    end
end


endmodule