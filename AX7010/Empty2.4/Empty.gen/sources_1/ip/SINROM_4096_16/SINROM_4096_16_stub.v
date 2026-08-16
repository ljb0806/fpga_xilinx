// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jul 30 12:18:11 2026
// Host        : USER-20240108IG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty1.1/Empty.gen/sources_1/ip/SINROM_4096_16/SINROM_4096_16_stub.v
// Design      : SINROM_4096_16
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *)
module SINROM_4096_16(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[11:0],douta[15:0]" */;
  input clka;
  input [11:0]addra;
  output [15:0]douta;
endmodule
