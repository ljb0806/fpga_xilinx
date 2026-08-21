`timescale 1ns / 1ps

module tb_Empty();

localparam                              AD_WIDTH = 16              ;
localparam                              DA_WIDTH = 16              ;

reg                                     sys_clk                    ;
reg                                     sys_rst_n                  ;

wire                                    o_AD_CLK                   ;
reg                                     i_AD_DCO_A                 ;
reg                                     i_AD_DCO_B                 ;
reg                    [AD_WIDTH-1:0]   i_AD_DATA_A                ;
reg                    [AD_WIDTH-1:0]   i_AD_DATA_B                ;

wire                                    o_DA_CLK                   ;
wire                   [DA_WIDTH-1:0]   o_DA_DATA_A                ;
wire                   [DA_WIDTH-1:0]   o_DA_DATA_B                ;

Empty Empty_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),

    .o_AD_CLK(o_AD_CLK),
    .i_AD_DCO_A(i_AD_DCO_A),
    .i_AD_DCO_B(i_AD_DCO_B),
    .i_AD_DATA_A(i_AD_DATA_A),
    .i_AD_DATA_B(i_AD_DATA_B),

    .o_DA_CLK(o_DA_CLK),
    .o_DA_DATA_A(o_DA_DATA_A),
    .o_DA_DATA_B(o_DA_DATA_B)
);

initial begin
    sys_clk = 0;
    sys_rst_n = 0;
    #100 sys_rst_n = 1;
end

always #10 sys_clk = ~sys_clk;

endmodule
