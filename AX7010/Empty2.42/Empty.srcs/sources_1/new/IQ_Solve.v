`timescale 1ns / 1ps

module IQ_Solve#
(
    parameter integer                   DWIDTH = 16                ,
    parameter integer                   PWIDTH = 48                ,
    parameter integer                   FIR_WIDTH = 32             ,
    parameter integer                   FIR_SHIFT = 15             ,
    parameter integer                   CLK_FREQ = 20_000_000      ,
    parameter integer                   LO_FREQ = 2_000_000
)
(
    input                               i_clk                      ,
    input                               i_rst_n                    ,
    input signed      [DWIDTH-1:0]      i_data                     ,

    output reg signed [DWIDTH-1:0]      o_I                        ,
    output reg signed [DWIDTH-1:0]      o_Q
);

function [PWIDTH-1:0] freq_to_word;
    input integer freq_hz;
    reg [95:0] numerator;
    begin
        numerator = freq_hz;
        numerator = numerator << PWIDTH;
        freq_to_word = (numerator + CLK_FREQ/2) / CLK_FREQ;
    end
endfunction

localparam [PWIDTH-1:0] LO_STEP = freq_to_word(LO_FREQ);
localparam signed [DWIDTH-1:0] IQ_MAX = {1'b0, {(DWIDTH-1){1'b1}}};
localparam signed [DWIDTH-1:0] IQ_MIN = {1'b1, {(DWIDTH-1){1'b0}}};
localparam integer FIR_SIGN_BIT = FIR_SHIFT + DWIDTH - 1;

function signed [DWIDTH-1:0] sat_mul;
    input signed [2*DWIDTH-1:0] data;
    begin
        if(!data[2*DWIDTH-1] && data[2*DWIDTH-2])
            sat_mul = IQ_MAX;
        else if(data[2*DWIDTH-1] && !data[2*DWIDTH-2])
            sat_mul = IQ_MIN;
        else
            sat_mul = data[2*DWIDTH-2:DWIDTH-1];
    end
endfunction

function signed [DWIDTH-1:0] sat_fir;
    input signed [FIR_WIDTH-1:0] data;
    begin
        if(!data[FIR_WIDTH-1] && |data[FIR_WIDTH-2:FIR_SIGN_BIT])
            sat_fir = IQ_MAX;
        else if(data[FIR_WIDTH-1] && (!(&data[FIR_WIDTH-2:FIR_SIGN_BIT])))
            sat_fir = IQ_MIN;
        else
            sat_fir = data[FIR_SIGN_BIT:FIR_SHIFT];
    end
endfunction

reg [PWIDTH-1:0] phase_acc;

always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n)
        phase_acc <= {PWIDTH{1'b0}};
    else
        phase_acc <= phase_acc + LO_STEP;
end

wire signed [DWIDTH-1:0] lo_cos;
wire signed [DWIDTH-1:0] lo_sin;

Cordic#
(
    .DOUT_WIDTH(DWIDTH)
)
Cordic_inst
(
    .i_clk(i_clk),
    .i_rst_n(i_rst_n),

    .i_phase(phase_acc),
    .o_cos(lo_cos),
    .o_sin(lo_sin)
);

reg signed [2*DWIDTH-1:0] I_mul;
reg signed [2*DWIDTH-1:0] Q_mul;

always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        I_mul <= {(2*DWIDTH){1'b0}};
        Q_mul <= {(2*DWIDTH){1'b0}};
    end
    else begin
        I_mul <= $signed(i_data) * $signed(lo_cos);
        Q_mul <= $signed(i_data) * $signed(lo_sin);
    end
end

reg signed [DWIDTH-1:0] I_fir_in;
reg signed [DWIDTH-1:0] Q_fir_in;

always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        I_fir_in <= {DWIDTH{1'b0}};
        Q_fir_in <= {DWIDTH{1'b0}};
    end
    else begin
        I_fir_in <= sat_mul(I_mul);
        Q_fir_in <= sat_mul(Q_mul);
    end
end

wire signed [FIR_WIDTH-1:0] I_fir_raw;
wire signed [FIR_WIDTH-1:0] Q_fir_raw;

fir_compiler_0 I_fir_inst
(
    .aclk(i_clk),
    .s_axis_data_tvalid(1'b1),
    .s_axis_data_tready(),
    .s_axis_data_tdata(I_fir_in),
    .m_axis_data_tvalid(),
    .m_axis_data_tdata(I_fir_raw)
);

fir_compiler_0 Q_fir_inst
(
    .aclk(i_clk),
    .s_axis_data_tvalid(1'b1),
    .s_axis_data_tready(),
    .s_axis_data_tdata(Q_fir_in),
    .m_axis_data_tvalid(),
    .m_axis_data_tdata(Q_fir_raw)
);

always @(posedge i_clk or negedge i_rst_n) begin
    if(!i_rst_n) begin
        o_I <= {DWIDTH{1'b0}};
        o_Q <= {DWIDTH{1'b0}};
    end
    else begin
        o_I <= sat_fir(I_fir_raw);
        o_Q <= sat_fir(Q_fir_raw);
    end
end

endmodule
