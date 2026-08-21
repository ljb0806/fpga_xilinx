`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2026/08/13 16:02:45
// Design Name:
// Module Name: NCO
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//   数控振荡器 (NCO)，实现逻辑与 DDS 相同（相位累加器 + 正弦查找表）。
//   与 DDS 不同的是，相位步进不再由单一 i_STEP 给定，而是拆分为：
//     1) i_FREQ_INIT : 初始/中心振荡频率控制字（无符号）
//     2) i_FREQ_CTRL : 环路滤波器输出的频率修正控制字（有符号，二进制补码）
//   实际相位步进 step = i_FREQ_INIT + sign_extend(i_FREQ_CTRL)。
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module NCO#
(
    parameter                           DWIDTH = 16                ,
    parameter                           PWIDTH = 48                ,
    parameter                           AWIDTH = 12                ,
    parameter                           CWIDTH = 48                // 环路滤波器控制字位宽（有符号，需 <= PWIDTH）
)
(
    input                               i_clk                      ,
    input                               i_rst_n                    ,

    input              [PWIDTH-1:0]     i_FREQ_INIT                ,   // 初始/中心振荡频率控制字（无符号）
    input signed       [CWIDTH-1:0]     i_FREQ_CTRL                ,   // 环路滤波器输出的频率修正控制字（有符号，二进制补码）

    output reg         [DWIDTH-1:0]     o_nco_out                  ,
    output reg         [DWIDTH-1:0]     o_nco_out_signed
);

// 将有符号控制字符号扩展至相位累加器位宽
wire signed [PWIDTH-1:0] freq_ctrl_ext = i_FREQ_CTRL;
// 有效相位步进 = 中心频率 + 环路滤波器修正量
wire [PWIDTH-1:0] step = i_FREQ_INIT + freq_ctrl_ext;

wire [AWIDTH-1:0] addr;
reg  [PWIDTH-1:0] phase_acc = 0;
assign addr = phase_acc[PWIDTH-1:PWIDTH-AWIDTH];

always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        phase_acc <= 0;
    end
    else begin
        phase_acc <= phase_acc + step;
    end
end

wire [DWIDTH-1:0] douta;
SINROM_4096_16 sinrom
(
    .clka(i_clk),
    .addra(addr),
    .douta(douta)
);

always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        o_nco_out        <= 0;
        o_nco_out_signed <= 0;
    end
    else begin
        o_nco_out        <= douta;
        o_nco_out_signed <= {~douta[DWIDTH-1], douta[DWIDTH-2:0]};
    end
end

endmodule
