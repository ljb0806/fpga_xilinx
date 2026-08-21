`timescale 1ns / 1ps

module PD#
(
    parameter                           DIN_WIDTH = 16             ,
    parameter                           DOUT_WIDTH = 16
)
(
    input                               i_clk                      ,
    input                               i_rst_n                    ,

    input signed       [DIN_WIDTH-1:0]  i_data_A                   ,
    input signed       [DIN_WIDTH-1:0]  i_data_B                   ,
    
    output reg signed  [DOUT_WIDTH-1:0] o_phase                     
);

localparam signed [DIN_WIDTH-1:0] Q_MAX = {1'b0, {(DIN_WIDTH-1){1'b1}}};
localparam signed [DIN_WIDTH-1:0] Q_MIN = {1'b1, {(DIN_WIDTH-1){1'b0}}};
localparam signed [DOUT_WIDTH-1:0] PHASE_MAX = {1'b0, {(DOUT_WIDTH-1){1'b1}}};
localparam signed [DOUT_WIDTH-1:0] PHASE_MIN = {1'b1, {(DOUT_WIDTH-1){1'b0}}};

reg signed [2*DIN_WIDTH-1:0] mul_res;
reg signed [DIN_WIDTH-1:0]   mul_q15;

// Full-precision Q1.(DIN_WIDTH-1) multiplication.  For DIN_WIDTH=16,
// the 32-bit result is Q2.30 and cannot overflow this register.
always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        mul_res <= 0;
    end
    else begin
        mul_res <= $signed(i_data_A) * $signed(i_data_B);
    end
end

// Convert the full-precision product back to Q1.(DIN_WIDTH-1).  The upper
// two bits must be equal before the redundant sign bit can be discarded.
// Saturation handles the +1.0 result of Q_MIN * Q_MIN without wraparound.
always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        mul_q15 <= 0;
    end
    else begin
        if(!mul_res[2*DIN_WIDTH-1] && mul_res[2*DIN_WIDTH-2])
            mul_q15 <= Q_MAX;
        else if(mul_res[2*DIN_WIDTH-1] && !mul_res[2*DIN_WIDTH-2])
            mul_q15 <= Q_MIN;
        else
            mul_q15 <= mul_res[2*DIN_WIDTH-2:DIN_WIDTH-1];
    end
end

// 这个变量的位宽根据 FIR LP Filter 的配置进行宏定义修改
wire signed [31:0] fir_raw;

fir_compiler_0 fir_compiler_0_inst
(
    .aclk(i_clk),
    .s_axis_data_tvalid(1'b1),
    .s_axis_data_tready(),
    .s_axis_data_tdata(mul_q15),
    .m_axis_data_tvalid(),
    .m_axis_data_tdata(fir_raw)
);

// Remove the FIR coefficient gain and saturate to a registered DOUT_WIDTH
// result.  With DOUT_WIDTH=16, the output format is Q1.15.
always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        o_phase <= 0;
    end
    else begin
        if(!fir_raw[31] && fir_raw[30])
            o_phase <= PHASE_MAX;
        else if(fir_raw[31] && !fir_raw[30])
            o_phase <= PHASE_MIN;
        else
            o_phase <= fir_raw[30:15];
    end
end



endmodule
