`timescale 1ns / 1ps

module FM_Generate#
(
    parameter integer                   DWIDTH = 16                ,          // 数据位宽
    parameter integer                   PWIDTH = 48                ,          // 相位累加器位宽
    parameter integer                   CLK_FREQ = 20_000_000      ,          // 时钟频率
    parameter integer                   CARRIER_FREQ = 2_000_000   ,          // 载波频率
    parameter integer                   MAX_FREQ_DEV = 50_000      ,          // 最大频偏
    parameter integer                   MOD_FREQ = 50_000                      // 调制信号频率
)
(
    input                               i_clk                      ,
    input                               i_rst_n                    ,

    output             [DWIDTH-1:0]     o_fm_out                   ,
    output signed      [DWIDTH-1:0]     o_fm_out_signed
);

// Hz 转控制字函数
function [PWIDTH-1:0] freq_to_word;
    input integer freq_hz;
    reg [95:0] numerator;
    begin
        numerator = freq_hz;
        numerator = numerator << PWIDTH;                     // * (2 ^ PWIDTH)
        freq_to_word = (numerator + CLK_FREQ/2) / CLK_FREQ;  // DDS 原理(半时钟频率是为了四舍五入) 
    end
endfunction

// 计算对应的控制字
localparam signed [PWIDTH-1:0] MOD_STEP = freq_to_word(MOD_FREQ);
localparam signed [PWIDTH-1:0] CARRIER_STEP = freq_to_word(CARRIER_FREQ);
localparam signed [PWIDTH-1:0] MAX_DEV_STEP = freq_to_word(MAX_FREQ_DEV);

wire signed [DWIDTH-1:0] mod_out_signed;

DDS#
(
    .DWIDTH(DWIDTH),
    .PWIDTH(PWIDTH)
)
Mod_DDS_inst
(
    .i_clk(i_clk),
    .i_rst_n(i_rst_n),

    .i_STEP(MOD_STEP),

    .o_dds_out(),
    .o_dds_out_signed(mod_out_signed)
);

reg signed [PWIDTH+DWIDTH-1:0] dev_mult;
reg signed [PWIDTH-1:0] dev_step;
reg        [PWIDTH-1:0] fm_step;

always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        dev_mult <= {(PWIDTH+DWIDTH){1'b0}};
        dev_step <= {PWIDTH{1'b0}};
        fm_step  <= CARRIER_STEP;
    end
    else begin
        dev_mult <= $signed(mod_out_signed) * $signed(MAX_DEV_STEP);
        dev_step <= $signed(dev_mult) >>> (DWIDTH-1);
        fm_step  <= $signed(CARRIER_STEP) + $signed(dev_step);
    end
end

DDS#
(
    .DWIDTH(DWIDTH),
    .PWIDTH(PWIDTH)
)
Carrier_DDS_inst
(
    .i_clk(i_clk),
    .i_rst_n(i_rst_n),

    .i_STEP(fm_step),

    .o_dds_out(o_fm_out),
    .o_dds_out_signed(o_fm_out_signed)
);

endmodule
