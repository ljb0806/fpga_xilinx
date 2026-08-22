`timescale 1ns / 1ps
module Empty
#
(
    parameter                           AD_WIDTH = 16              ,
    parameter                           DA_WIDTH = 16
)
(
    // ==================== Zynq PS7 硬核端口 (Block Design) ====================
    // DDR3 内存
    inout  [14:0]                       DDR_addr                   ,
    inout  [ 2:0]                       DDR_ba                     ,
    inout                               DDR_cas_n                  ,
    inout                               DDR_ck_n                   ,
    inout                               DDR_ck_p                   ,
    inout                               DDR_cke                    ,
    inout                               DDR_cs_n                   ,
    inout  [ 3:0]                       DDR_dm                     ,
    inout  [31:0]                       DDR_dq                     ,
    inout  [ 3:0]                       DDR_dqs_n                  ,
    inout  [ 3:0]                       DDR_dqs_p                  ,
    inout                               DDR_odt                    ,
    inout                               DDR_ras_n                  ,
    inout                               DDR_reset_n                ,
    inout                               DDR_we_n                   ,

    // MIO / 固定引脚
    inout                               FIXED_IO_ddr_vrn           ,
    inout                               FIXED_IO_ddr_vrp           ,
    inout  [53:0]                       FIXED_IO_mio               ,
    inout                               FIXED_IO_ps_clk            ,
    inout                               FIXED_IO_ps_porb           ,
    inout                               FIXED_IO_ps_srstb          ,

    // ==================== PL 用户端口 ====================
    input                               sys_clk                    ,
    input                               sys_rst_n                  ,

    output                              o_AD_CLK                   ,
    input                               i_AD_DCO_A                 ,
    input                               i_AD_DCO_B                 ,
    input              [AD_WIDTH-1:0]   i_AD_DATA_A                ,
    input              [AD_WIDTH-1:0]   i_AD_DATA_B                ,

    output                              o_DA_CLK                   ,
    output reg         [DA_WIDTH-1:0]   o_DA_DATA_A                ,
    output reg         [DA_WIDTH-1:0]   o_DA_DATA_B
);

/*** Zynq PS7 && PLL ***/
wire clk_100, clk_125, clk_200, clk_250;
wire clk_20;

wire [31:0] gpio0_in_32_gp1;
wire [31:0] gpio0_in_32_gp2;
wire [31:0] gpio1_out_32_gp1;
wire [31:0] gpio1_out_32_gp2;

wire S_AXIS_tready, S_AXIS_tvalid, S_AXIS_tlast;
wire [2*AD_WIDTH-1:0] S_AXIS_tdata;

clk_wiz_0 clk_wiz_0_inst
(
    .i_clk_50(sys_clk),    
    .resetn(sys_rst_n),

    .o_clk_100(clk_100),
    .o_clk_125(clk_125),
    .o_clk_200(clk_200),
    .o_clk_250(clk_250),
    .o_clk_20(clk_20)
);
/*
Hardware_wrapper u_Hardware_wrapper
(
    .DDR_addr                          (DDR_addr                  ),
    .DDR_ba                            (DDR_ba                    ),
    .DDR_cas_n                         (DDR_cas_n                 ),
    .DDR_ck_n                          (DDR_ck_n                  ),
    .DDR_ck_p                          (DDR_ck_p                  ),
    .DDR_cke                           (DDR_cke                   ),
    .DDR_cs_n                          (DDR_cs_n                  ),
    .DDR_dm                            (DDR_dm                    ),
    .DDR_dq                            (DDR_dq                    ),
    .DDR_dqs_n                         (DDR_dqs_n                 ),
    .DDR_dqs_p                         (DDR_dqs_p                 ),
    .DDR_odt                           (DDR_odt                   ),
    .DDR_ras_n                         (DDR_ras_n                 ),
    .DDR_reset_n                       (DDR_reset_n               ),
    .DDR_we_n                          (DDR_we_n                  ),
    .GPIO0_IN_32_GP1_tri_i             (gpio0_in_32_gp1           ),
    .GPIO0_IN_32_GP2_tri_i             (gpio0_in_32_gp2           ),
    .GPIO1_OUT_32_GP1_tri_o            (gpio1_out_32_gp1          ),
    .GPIO1_OUT_32_GP2_tri_o            (gpio1_out_32_gp2          ),
    .PS_CLK_50                         (                          ),
    .FIXED_IO_ddr_vrn                  (FIXED_IO_ddr_vrn          ),
    .FIXED_IO_ddr_vrp                  (FIXED_IO_ddr_vrp          ),
    .FIXED_IO_mio                      (FIXED_IO_mio              ),
    .FIXED_IO_ps_clk                   (FIXED_IO_ps_clk           ),
    .FIXED_IO_ps_porb                  (FIXED_IO_ps_porb          ),
    .FIXED_IO_ps_srstb                 (FIXED_IO_ps_srstb         ),
    .S_AXIS_aclk                       (clk_100                   ),
    .S_AXIS_tdata                      (S_AXIS_tdata              ),
    .S_AXIS_tlast                      (S_AXIS_tlast              ),
    .S_AXIS_tready                     (S_AXIS_tready             ),
    .S_AXIS_tvalid                     (S_AXIS_tvalid             ) 
);
*/


/*** vio Part ***/
wire [7:0] wave_sel;
wire signed [15:0] Effect_A;
wire signed [15:0] Effect_B;
wire [47:0] STEP;
vio_0 vio_0_inst
(
    .clk(clk_100),
    .probe_out0(wave_sel),
    .probe_out1(Effect_A),
    .probe_out2(Effect_B),
    .probe_out3(STEP)
);

/*** ADC Part ***/
assign o_AD_CLK = clk_100;
reg signed [AD_WIDTH-1:0] r_AD_DATA_A;
reg signed [AD_WIDTH-1:0] r_AD_DATA_B;
reg signed [AD_WIDTH-1:0] r_AD_DATA_A_u;
reg signed [AD_WIDTH-1:0] r_AD_DATA_B_u;

always @(posedge clk_100 or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        r_AD_DATA_A <= 0;
        r_AD_DATA_A_u <= 0;
    end
    else begin
        r_AD_DATA_A <= i_AD_DATA_A;
        r_AD_DATA_A_u <= {~i_AD_DATA_A[15], i_AD_DATA_A[14:0]};
    end
end

always @(posedge clk_100 or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        r_AD_DATA_B <= 0;
        r_AD_DATA_B_u <= 0;
    end
    else begin
        r_AD_DATA_B <= i_AD_DATA_B;
        r_AD_DATA_B_u <= {~i_AD_DATA_B[15], i_AD_DATA_B[14:0]};
    end
end

/*** DAC Part ***/
assign o_DA_CLK = clk_100;

always @(negedge clk_100 or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        o_DA_DATA_A <= 0;
        o_DA_DATA_B <= 0;
    end
    else begin
        if(wave_sel == 0) begin
            o_DA_DATA_A <= r_AD_DATA_A;
            o_DA_DATA_B <= r_AD_DATA_B;
        end
        else if(wave_sel == 1) begin
            o_DA_DATA_A <= {~r_AD_DATA_A[15], r_AD_DATA_A[14:0]};
            o_DA_DATA_B <= {~r_AD_DATA_B[15], r_AD_DATA_B[14:0]};
        end
    end
end

/*** AXI packer ***/
adc_axis_packer adc_axis_packer_inst
(
    .i_clk(clk_100),
    .i_rst_n(sys_rst_n),

    .i_adc_data_a(r_AD_DATA_A_u),
    .i_adc_data_b(r_AD_DATA_B_u),

    .o_m_axis_tdata(S_AXIS_tdata),
    .o_m_axis_tvalid(S_AXIS_tvalid),
    .o_m_axis_tlast(S_AXIS_tlast),
    .i_m_axis_tready(S_AXIS_tready),

    .i_gate_enable(gpio1_out_32_gp1[0])
);

/*** DDS Part ***/
wire [15:0] o_dds_out;
wire signed [15:0] o_dds_out_signed;

FM_Generate#
(
    .DWIDTH(16),
    .PWIDTH(48),
    .CLK_FREQ(20_000_000),
    .CARRIER_FREQ(2_000_000),
    .MAX_FREQ_DEV(50_000),
    .MOD_FREQ(50_000)
)
FM_Generate_inst
(
    .i_clk(clk_20),
    .i_rst_n(sys_rst_n),

    .o_fm_out(o_dds_out),
    .o_fm_out_signed(o_dds_out_signed)
);

/*** Cordic Part ***/
reg [47:0] phase_acc = 0;

always @(posedge clk_20 or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        phase_acc <= 0;
    end
    else begin
        phase_acc <= phase_acc + 48'd28147497671066;
    end
end

wire signed [15:0] o_cos;
wire signed [15:0] o_sin;
Cordic #
(
    .DOUT_WIDTH(16)
)
Cordic_inst
(
    .i_clk(clk_20),
    .i_rst_n(sys_rst_n),

    .i_phase(phase_acc),
    .o_sin(o_sin),
    .o_cos(o_cos)
);

/*** mul & lowpass ***/
localparam signed [15:0] IQ_MAX = 16'sh7fff;
localparam signed [15:0] IQ_MIN = 16'sh8000;

reg signed [31:0] I_mul;
reg signed [31:0] Q_mul;

always @(posedge clk_20 or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        I_mul <= 32'sd0;
        Q_mul <= 32'sd0;
    end
    else begin
        I_mul <= $signed(o_dds_out_signed) * $signed(o_cos);
        Q_mul <= $signed(o_dds_out_signed) * $signed(o_sin);
    end
end

reg signed [15:0] I_fir_in;
reg signed [15:0] Q_fir_in;

always @(posedge clk_20 or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        I_fir_in <= 16'sd0;
        Q_fir_in <= 16'sd0;
    end
    else begin
        if(!I_mul[31] && I_mul[30])
            I_fir_in <= IQ_MAX;
        else if(I_mul[31] && !I_mul[30])
            I_fir_in <= IQ_MIN;
        else
            I_fir_in <= I_mul[30:15];

        if(!Q_mul[31] && Q_mul[30])
            Q_fir_in <= IQ_MAX;
        else if(Q_mul[31] && !Q_mul[30])
            Q_fir_in <= IQ_MIN;
        else
            Q_fir_in <= Q_mul[30:15];
    end
end

wire signed [31:0] I_fir_raw;
wire signed [31:0] Q_fir_raw;

fir_compiler_0 I_fir_inst
(
    .aclk(clk_20),
    .s_axis_data_tvalid(1'b1),
    .s_axis_data_tready(),
    .s_axis_data_tdata(I_fir_in),
    .m_axis_data_tvalid(),
    .m_axis_data_tdata(I_fir_raw)
);

fir_compiler_0 Q_fir_inst
(
    .aclk(clk_20),
    .s_axis_data_tvalid(1'b1),
    .s_axis_data_tready(),
    .s_axis_data_tdata(Q_fir_in),
    .m_axis_data_tvalid(),
    .m_axis_data_tdata(Q_fir_raw)
);

reg signed [15:0] I;
reg signed [15:0] Q;

always @(posedge clk_20 or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        I <= 16'sd0;
        Q <= 16'sd0;
    end
    else begin
        if(!I_fir_raw[31] && I_fir_raw[30])
            I <= IQ_MAX;
        else if(I_fir_raw[31] && !I_fir_raw[30])
            I <= IQ_MIN;
        else
            I <= I_fir_raw[30:15];

        if(!Q_fir_raw[31] && Q_fir_raw[30])
            Q <= IQ_MAX;
        else if(Q_fir_raw[31] && !Q_fir_raw[30])
            Q <= IQ_MIN;
        else
            Q <= Q_fir_raw[30:15];
    end
end

/*** Cordic_Atan2 Part ***/
wire signed [47:0] o_phase;
wire signed [15:0] o_phase_mag;

Cordic_Atan2 #
(
    .DIN_WIDTH(16),
    .PHASE_WIDTH(48),
    .MAG_WIDTH(16)
)
Cordic_Atan2_inst
(
    .i_clk(clk_20),
    .i_rst_n(sys_rst_n),

    .i_x(I),
    .i_y(Q),
    .o_phase(o_phase),
    .o_phase_mag(o_phase_mag)
);

/*** Phase difference Part ***/
// The 48-bit phase uses modulo-2^48 circular coding. A 48-bit subtraction
// therefore automatically removes the +pi/-pi wrap discontinuity, provided
// that the true phase change between adjacent samples is less than pi.
reg signed [47:0] phase_prev;
reg signed [47:0] phase_diff;

always @(posedge clk_20 or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        phase_prev <= 48'sd0;
        phase_diff <= 48'sd0;
    end
    else begin
        phase_prev <= o_phase;
        phase_diff <= $signed(o_phase) - $signed(phase_prev);
    end
end

endmodule
