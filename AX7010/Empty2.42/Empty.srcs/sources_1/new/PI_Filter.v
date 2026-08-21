`timescale 1ns / 1ps

module PI_Filter#
(
    parameter                           EWIDTH = 16                ,
    parameter                           UWIDTH = 48                ,
    parameter                           KP = 6                     ,   // 比例增益: 左移 <<< KP, 3 = x8
    parameter                           KI = 6                     ,   // 积分增益: 右移 >>> KI, 8 = /256
    parameter signed [UWIDTH-1:0]       LIMIT = 48'h4000_0000_0000     // 饱和上限, 有符号 = 2^38
)
(
    input                               i_clk                      ,
    input                               i_rst_n                    ,

    input       signed [EWIDTH-1:0]     i_err                      ,
    output reg  signed [UWIDTH-1:0]     o_ctrl
);

wire signed [UWIDTH-1:0] err_ext = {{(UWIDTH-EWIDTH){i_err[EWIDTH-1]}}, i_err};
wire signed [UWIDTH-1:0] P       = err_ext <<< KP;      // 比例支路
wire signed [UWIDTH-1:0] I       = err_ext >>> KI;      // 积分支路(右移衰减)

reg  signed [UWIDTH-1:0] integ;
wire signed [UWIDTH-1:0] nxt_integ = integ + I;

always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        integ  <= 0;
        o_ctrl <= 0;
    end
    else begin
        o_ctrl <= P + integ;                 // 输出 = 比例(当前) + 积分(上一周期)
        if(nxt_integ > LIMIT)
            integ <= LIMIT;
        else if(nxt_integ < -LIMIT)
            integ <= -LIMIT;
        else
            integ <= nxt_integ;
    end
end

endmodule
