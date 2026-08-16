// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jul 30 12:18:10 2026
// Host        : USER-20240108IG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SINROM_4096_16_sim_netlist.v
// Design      : SINROM_4096_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SINROM_4096_16,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [15:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.652799 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "SINROM_4096_16.mem" *) 
  (* C_INIT_FILE_NAME = "SINROM_4096_16.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43440)
`pragma protect data_block
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
8kldhbxp
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
