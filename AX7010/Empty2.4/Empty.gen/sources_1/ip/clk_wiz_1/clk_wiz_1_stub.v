// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Aug 10 14:41:55 2026
// Host        : USER-20240108IG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.1/Empty.gen/sources_1/ip/clk_wiz_1/clk_wiz_1_stub.v
// Design      : clk_wiz_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_1(o_clk_20_48, resetn, i_clk_50)
/* synthesis syn_black_box black_box_pad_pin="o_clk_20_48,resetn,i_clk_50" */;
  output o_clk_20_48;
  input resetn;
  input i_clk_50;
endmodule
