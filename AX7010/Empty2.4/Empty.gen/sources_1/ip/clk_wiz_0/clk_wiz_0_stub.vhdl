-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Aug 12 15:54:59 2026
-- Host        : USER-20240108IG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty2.4/Empty.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.vhdl
-- Design      : clk_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_0 is
  Port ( 
    o_clk_100 : out STD_LOGIC;
    o_clk_125 : out STD_LOGIC;
    o_clk_200 : out STD_LOGIC;
    o_clk_250 : out STD_LOGIC;
    o_clk_20 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    i_clk_50 : in STD_LOGIC
  );

end clk_wiz_0;

architecture stub of clk_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "o_clk_100,o_clk_125,o_clk_200,o_clk_250,o_clk_20,resetn,i_clk_50";
begin
end;
