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

endmodule
