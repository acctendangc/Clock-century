module count#(
    parameter NUM_BIT = 32,
    parameter RESET_VALUE = 0
)(
    input                           clk,
    input                           reset_n,
    input                           inc,
    input                           dec,
    input                           en,
    input        [NUM_BIT - 1 : 0]  max_count,
    output reg   [NUM_BIT - 1 : 0]  count_o,
    output                          done_inc,
    output                          done_dec 
);
always @( posedge clk or negedge reset_n ) begin
    if (~reset_n) begin
        count_o <= RESET_VALUE;
    end
    else begin
        if (~en) begin
            count_o <= count_o;
        end
        else begin
            case ({inc, dec})
                2'b10: begin
                    if (count_o >= max_count) begin
                        count_o <= RESET_VALUE;
                    end
                    else begin
                        count_o <= count_o + 1;
                    end
                end
                2'b01: begin
                    if (count_o > max_count) begin
                        count_o <= max_count - 1;
                    end
                    else begin
                        if (count_o == RESET_VALUE) begin
                            count_o <= max_count;
                        end
                        else begin
                            count_o <= count_o - 1;
                        end
                    end
                end
                2'b00: begin
                    count_o <= count_o;
                end
                2'b11: begin
                    count_o <= count_o;
                end
                default: begin
                    count_o <= count_o;
                end
            endcase 
        end
    end
end

assign done_inc = inc && (count_o == max_count);
assign done_dec = dec && (count_o == RESET_VALUE);


endmodule