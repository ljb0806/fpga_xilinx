// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Aug 12 15:54:59 2026
// Host        : USER-20240108IG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(o_clk_100, o_clk_125, o_clk_200, o_clk_250, 
  o_clk_20, resetn, i_clk_50)
/* synthesis syn_black_box black_box_pad_pin="o_clk_100,o_clk_125,o_clk_200,o_clk_250,o_clk_20,resetn,i_clk_50" */;
  output o_clk_100;
  output o_clk_125;
  output o_clk_200;
  output o_clk_250;
  output o_clk_20;
  input resetn;
  input i_clk_50;
endmodule
