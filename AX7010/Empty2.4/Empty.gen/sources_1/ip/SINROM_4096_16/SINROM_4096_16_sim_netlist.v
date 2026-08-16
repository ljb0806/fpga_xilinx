// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jul 30 12:18:11 2026
// Host        : USER-20240108IG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty1.1/Empty.gen/sources_1/ip/SINROM_4096_16/SINROM_4096_16_sim_netlist.v
// Design      : SINROM_4096_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SINROM_4096_16,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module SINROM_4096_16
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
  SINROM_4096_16_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43328)
`pragma protect data_block
taA9QdFPZMJClvKsTekAYqKgctwIBg5jBXj0xG0wtR4sCUgm6vg0HZsT0AJpvjm3Fk73bcOI/YbN
FdK1nGiGNP/HDrsYorzB72JjgJtpZDK858pu1ReyDtEp2MR5d20gnSYbfQEDisoShPOjMEv3AVz5
TWsuSAK5uBfkTzOT8PqOB6QGNd+3LXCm6VBVB2u4/k3Z8Cj0U8LFnPTPil6+YBcijE60ky14mkqn
ccE+B60Z8/fmi2u2kkubyzRH7CNvukq46IspnXf9VE1kL5cNJ3esJ5byujtwSveMGciJ7BIecv+p
D7YGhB2o3fjM3ne99wRvBl7WoeKJcfAASGzB3Jyz8F43NFp+f0XKydk5SSoyZfVMiRE2VSt9UsDU
5ZNc5JYL8gEaob958CtB2vd4G/nPXlbbt2/g1M13LqCACCkN5bV+uyhUBGIkfZODjhemUS1UissM
gu9LaRVKIGjhXJCFijb2bzSWXP4FX1V8WRW4sx8bfeUHGp61en5XuHD4Jaa5/1eZUanYYfSOdY6P
0p7nzTXydCFl03DJMm4AQX9h5twZbgPU/X4NjyEHUDObgJlUy+LX24Y29Ckh2ZHhjDF64X+3T6/i
zL2v3xuzpHyTx3+OCSR0L7FP2rB6l9gqa0IN0MnfgkPPXc+r/SKQU47I8fGW5vQ07254IaUW9Ahf
TWZoWPIHMEXsM0vRcF2NaqsYbgWS/R43g/R0QO+oPSFxC3jiKZG7z9TnTsQp1XkJTjT2S6zoy5a0
rLWBtC2SnwvWjnalrnCQybxyVOc9F/g1F9qUup+nufV8+9w0MQjGbszvR8xlPB9MRkD0cVoDOXSd
mfR5bOUd7K/Gp5/RpdC4cDXAW6cM0FoVZYTHYO6nzntbBjKxYHsu+6OADvzliGJh73EJLzwuI9LI
3Vqsgnyq/SVcjkkTSH2SuT/kcdCuh5SywmpQMnmU4ByQaNc0oM9VH27mSvssn9MNRYr6aCgz2tgh
JkumD+sf3b2af4DjnkpkmPsNpGpsbVoNUs5krCIYbg60j58NyByI4F2FR77GKc35WRrM/UBoc6c0
aay21A24+U3GUGRbwFHpqkPLf0LFavvB5KHTYaWZWGbvGa136ZIRs5XO7pdtyyhOYF+ZDymte6i/
3dfR9Io0irXR0Vq5/7Vtjtf0kRZfxF/Y0SJCca1qbw8eKjzV/Tth8fcHiE1bPGd0WVXTKDWk+UXD
/RkhkobIczCkSt004WEgHfF8Hb6MBFxiEb3qCyrc0QaZVFe0ILQS7VaMfpTzeg2xzxkaR1B8ExEk
0OwlanCbx211RzgxHVocHHSRa2W6j72f/4EPCr2roCQGN0Yj/Mj3yUnyFLAA5FNrrGXQyDURqDyi
0aiKPN+/tidnz33j/L8RWbZpCHLwREunkH2zlf6rIDxITu6eUzFfNkWIRBVIEw4RtHqsn2eLQZ56
6NZBvOtmf+wAW8BfHXe/JpaJ2Op8/ao9RF/eZFRYwuvt2ffm5ZnAD/zupRuq/ZOruCgHuQUQi2px
jBZ3HlrflgZK/sFfUk4C4XFoeXjiHXsHYu851P27OLSH6yQi9IuRjvWpBCKjjFpnpghtvyrog59b
1arfvdw7EkYQg6gjQz9TmFAIPj0RXiVX+ZApxwFTuwA/wcrdO6aAku4QtAOQLd2cf+MIzM/PuTNY
dSR3gTQKF2qVQbDby7Tnal8QaBx3MhsciKFokVk9uAWb/+HjAKzWDDJuEZC/pux97zs4v4YHC6CV
3Ib2Qjh3hoeI7b2JSEiO/fs3a559X373czLMIfp+7oOrFPrYEHMaiAqDPLexMGpo00FVUC6UAudY
4suobSeM9wl3sJCPcAtYQrOO/xOvll7YUP4woKAihczDd2wzu/wjsO8ZEhA8THl+6BrWPyUoQXFb
XzKcATqDq7JNsr0kEp8IWEgXw31XLX+UUyIp8h9dm6Zu9M34iEXP2k2DkAGzGhIykd3BmjYBUn0D
AfAupbAtG3IIF0Iqoj7Kd6iuXb5mOUGZ4zYe+cekuOUEXi3oC6Oaymb6NK6rzkNvt3uI1hTbyV4Z
taSvxM9iLcmqap2YUHTZzdxF7MqbL+Tw7tU9MrhTjZtr1jQz7DUloEDjMSNwKomkropM6qg0o6NA
KlaUIfv8rh4TidzxAif3d877HCDmX8T/05trTxvSNA5/YQ5SznPM1EepbX9axQDNxx4REcjHAShT
KtsRo1oy5TTqC9SWcU/+F/OJxI+Q53TZYda5loszob6az7wq8l/aYqhYy7mrdEGjbA6JrXYqadIJ
a4t+KygagKimre4Qfhc4QkLk6r4AT/N7zUP+dHvKZ9XjWMREWAeKfBMDXvPb4eXS6evSLILeOb0i
2DxUtHImSXFTrRgQct/Y45q3g5D2Llo7lMBQHFooCZticrtfSou6WmsDTuiUFUUXUCAHDdbPquXf
BawzdDF2bxKOuTZ+PUu4QCJDOAHm2dANdMDQpdLJvh9Lsv4/UIgP/hSorjmeooENNtgW/RjLBTe1
4Ok+OHSzABvd0nT4lRldFlAQriDj+QfTzmEo8PJGSqQKHRoxi+P+mNzmxLIzhIL1AL12oYPRgQTQ
JICq0EkCSJ2ioaE2ovEr+pZpmCB6KaFB0B3xAzZR8KaRmV1TRi2+JN/20OhSUX8eav4fygpwH1Nn
Cg+3T7T/LTmtAKTfLRetNSsKhwuUvCJ/eFsjrDRLeB7vGF9fh7HMMfrkEvEZAghIHN2hcrPoC8ER
DoxvvuZVj6z5uNvWwT5sQnZ24itUkHgCzuuUOEOCdrjf1ocG0xzs5T7w/gEmUwgJaV/GLsrqpZmm
cLw+pRHW86LHLUjjE0gcFwRj3ofh+gQnmPjVcSx2QLVdIZhffwxCjWG24rq8ECJb081TzRPWOHzA
YS3W7jeSRgiREGLhpQzi0GJg0uGo8hK3KXPO8INzglZRdlRR6O6u7tlR6YTog9ehsiGNoLxdyr80
i9JLP1v3YDRuiF4HkIXez2oNluAc81he22aOkS3fetZUUXAqfiBjKcRgZX2fcXjZ4urmiMXynYqg
p+kn+CKtuTlfFNIlLWptH1suMZHMNGFCz3n8HjJMW7FF9vfv12NmZ9IPBuojWdg82NR4L444f2De
MPmIPjOHWsd+2hBs8nXZep47JKWWQV9UKOQO2YPjZnSB9aelN2MTnwAjbAGaNAD2jZxZ8O6OSCJN
w3Le+45dGehRGv2DJS0Vv6d5mJDmMGjeoFtqpEI5PRalO4wSSaT3S+EcPAl5w1fT5UByeMrA0lHU
GL9YKrmVtE2vWfJpM47Pjff+G+CFdmQAaDTIoazBYU0iG3YbyjUrA/8WplknbWb3gdJkPPsQrClz
d9Fa5mdZFLCOe3DC6yVVdBpdxDLTM6SqdRZeWU20gheof4sqIaii2qhaQEgOpR0rhglLftc/VNa8
K6XrcWWNPJasRxYOB9SexT85vWYGVLIRkuXmkyA6CYaFjOVPk4jMTUuUJB+SGMXBFN+Gg9nHshnN
QSNmieX0OwzvOpRrP5uZ9789EW+AVuK87I5l2tuVSQcazJzHvsITaK3jZBqWIm7I7x1rgBJDQrDC
NeR4KFrLBWSbSNdXjEe9TuvNcEdzUbbX9DE/+PmqJJR1bDp+hQzTgWrPnpHAxKcz9e+OM+I4nBuh
6q7c7ehUTTCtvjUUyPzAl+1L5KmnE9M9v0eAz1crCCndjZKagD+E4bEm/7huBrUb6BvzFwp5dDg7
LVg5F2j9if/W+IYRSdPO+XVBZvJWk8jz8UZet9C/SXp/s9YheuEp0o2n7Zydni6nxHvMkhTVZZNp
Zuo9sy3yugjoxX5nKU7VolqpQN+K8NOLSgPtNJKxt/pCi4KGBH1TtyQ0FBXdG2NbRFS6EL3+xcyd
0ghxtPmjjuANzyFf9ATrUfy0uaOX/MroItN1tvZ4Tedm7ZAjcyLJeYgbJIpaId91eXLKn9oOJABM
bgFL7GyE+IkUJc9e4+vow/GwNYa0znmyP2s6TGB2q1KEugzNQNRSV9+jXERSjWJfK8lSYs/M0IdD
O2PTjVBtte27nUMHum62mzR1Ji3lYwaAOm5HtS3/6fNtTjw1BFUlQjqNKOc4CBduCM41v0Q+BeKq
385VXY5V+tbAwee4mcdfy+NFcqJ6xkWFWuAVA1xEELnIGcROWG9xanhytSMzpdw800tORw2KauOb
is3A4IKJSZ3sgemw4Y6nwNXBFVo0giozOXN+8vu74GpUWclcqZqlU9ZLCn5pqsvshBrnZ8rZHC5D
7444+gj7TDBTAODgOYNymbWWyUR4YOzWsEHquMtEu9N1FE1ku1BRZ5C3wq3Bmg/lkGW+LWatxDF6
9tQuwXtX9kgGMcKYD4cZ86+rVxCAMnkZCSfCICfYQqXW+bEknEgCjhZQ4tYqk5a3fgXLQw3x/8xD
VN423alCRRY8idUSBIIybHDjhQuwKIMhxrOfwmHt309/uiF0CGjwt9jyJvLdKUh2TMwa4DKVV/7C
W4DPqzSGsHuii1RzozDGT03ZV1xZBox5wn3A9fNJupMMMOVlOK9Qbaptlk8hNNLMqSHF2BCs2W4w
2MXP5/vCWJPXHoswuWmM4Ic+Nu40eF7Hw91oJoUakJxudS7TZa9jUIYYbPyi2AYRez4iXuEToUac
UZlESxvku3RSXWTURW9og2Axi5vkrypLj+CJ3qelKOyqqIW6dmawqesvz3+6zmCmvQwMc8kNNh2u
btyFa5SBLztfaw0Ol3ldq3LJO47klh6LR8zoGdVQFumtZLfwuEk1MCDjOco86QKRHwbX9gIYko19
QMS86qS+tJno1gNqeUpMlUaBZ3bVpyMLd2QfScnf6te7oOVfeXgbAJlmlcGrdhLg/aYCMjYmDc/r
dvk1MmvrVdD9vz1rj7d/TdmFnGMR2G8XHdvksUENqpILhvzsGpR0VfMvuiPuEEWcjMGya7zFF74f
JVJ7upSoFH4o4k9IW/rEFIwpevLCTdzSIEzD4aP6iRBwyYz+bfHb/jJAHIHpzRAVhfDh2hfBloXG
H1SQn97mY03f2Do4N77VgM3dfrzE1a1zmBc7p5F8GO9xoB+QkqJMR07FhIJMAVjfLTl1n2doaIeB
q9MlIcUWLUi/h8nDCA2981YyhKin70gj7rPJw+1cgApa7R2TckNruTFPWWPpZioCSz9DgqXHiZ0G
2xGn2a4rBBAyF6Bfj7VB3sHAYecTTVY8gf4kLh3xc914QzRhHGt1JA69cqRlbnZ4keCsXHFdG/7x
gkOJcUL5hpMESklpBmNtJSG4TEu1mYuGObTJZ49KMdc/l9Rdb4/YcMa4XsR1ZejSgGAdfD7iEbx0
tfE1JGYCLET7PJWFRf6QTQpTlhSuiJM8AdZj7+5c8Upk+GjoToJx760ak8llppKSLzv2VvUn609g
bIbrVoQY2QtkoVcOBXK36JwFM83HAKIq+yL1dlOor9vsjuKbtywC7oi3TExdXkB9awMryf8202oo
DSnCqu1BnspnPnWjli4wjjGARe1T84rkUKbkOv6h/943AcRXvixkj8fd0nONh2qfzlu4cBKF8o7q
3arqqGEID3EGaq9awONR7+M+N/gYXZzk2KNWq9VTAYtQmpOmXwgJjL2yrAv1cVVmYUeubuyidCrV
nQERD3BOYmbFMBNrE+AH9iYqx56hAhDcHrrZVxbwGoaoQhFohT0RfcJoRfna0W6pMCno0vIq4yEO
yuM+u7XBC/afn7xwwRSElIm66Ns/wTM8NuRTjFtQRJuccYL/SjTxZVHR4WkJBtsimN//XeyvwrIF
nEnM89RVKEflwdvqplslpA+r1+NopNuKHwYbhlRnsTE/1xvkIMRU6oifH6ZUlLllkcuPAKDcADO3
EfbEUo5GmtNAP8vqRVPdIWLhoewzlrZM6OwJxJ2KUKBP4dke1Wq5EFnR7BFgUSPpSmY0U31IvF5v
BC49oUlnqhksFGnaNNmGTvCmGdzURBSe0syG8xprGFyF3p8ujSrewWBTl/K6fuKbM4n2jhD6xVIT
dGNvQ3Do6aA/s5rZANLNhyR8wzkg5oJQWU6sY0LdvSSEpxxo6OpGOCi2ZPugjALzk3KrZfHc6PXk
6QM4A/MNOzKsjLpToXEPtRbTOaB/CB9FHuEdpktm3J/MASiRLxIiiUYJsPzeFuZHa8tbH1McHQ+e
HvJz2fxT/IIecB8ahBiQX0mkIYSbJZdRYAtV3TocXoyaEC5eE2reB0GJ2ZCQEtSU0E1CO4fiQDKm
woDL4UWNWZ3HPhhjPrYolMKCKl9V9x0ZtmS9Ks8zSNI4V7RXZfBLEtOHwmiB89AM5OEwXtVNd0f4
QQ7OlfYRaVg2CC8wJ13/WgKoKDgLulyKeV4Jk+rPVKyLKDWLG0F1i4FZ7QWvuaYkC6m/Qdsbg/Y4
3iKjF/k3VjnvtvHW+wIQjB8xWdXfOsmPiRq5XuEzgUrC1zS4TjDvYF+2jvBg1XRIGUq05TbiOJUc
aNNvuL3om2pxaBeWpU+3q719jkzxL47hDuVmn48vHYNrXGzx024ibljZYGEtKqfktlmM9I3WeYmp
EWwj3YvAJBzM3EjTS55xnw+8DHRBenB/X11U141wZ6NxCfEuLzO2hyUX+vjXZhaY+SRnTJZmavIV
1if0kvXy35+OFM2goIt60XE8X4AalWaOMGj+miAbszShKnLfGgGzTx3wgp8Mym70cA0mVL8YwmJK
yiWSNHAUEcNrm9TmyDbMX8DpPym9VYj1H2fkpjSn7NUbur6IGaVI3uW6RpU9O1jabotzA8IWwg8a
rihJzcFm1XRIUqv6inGiE7go2rozsQgA/VbdKEPKD+3L0aGny6NBPpiTqd/gSP9Wh3ORhx2uCnUQ
30AeofgrLSdBSqboiWxFMAgxrWEDVTz9XjdgzQAzcXwlzCnxfGIKb2fW0Y1HPSzTpDZl4HN9Bzo5
Rkv4M/LMh3tV9aPqE/FKXIWja3ukPDGU10LlVlco6uNcJ7RdZJTs8HZhA7ae9/O/yoZU2lthVci/
IxKkOqoHhhvIgGKF3GufEUuyXdUY2YFCsWS2FgkXl1OBwwSGcfONlg420yK5Mprrp+8ugHkPiqDd
n4O/gGZLwhFO5ISJmL7fjpJZgf1TX4+YArA8tVOUIqd3usgbUOkiVe1TfKzbl0DdTunqy3jvTuqj
WQtUU1v3e4L65FtZlIr3+OSOovsuO4V/VcXCnfcfUacLw9pNOk+MgC1tq9ye1pfkbkuz/QcnrHwD
kaUQ81RLbiGB6uqsx9zHWNiETVurhsB7H6UaRbP7iebJvrQENL7ZYIv5ReW1Hk0Y4H1Qi/PUfL1b
P3LRldf8KTlvznmvpoA9hrXF17JO5W2jsUmJX8dCHCdXfkpl2IPKWxbvniG5eaFVib89SkfPPKL8
7JCbg3sd3SU2SNMJvhxnkZ0zJXv/xcyDMlIIUpPYSRKRKTU/cw2fhcCXfB44VP5risXXBu9vq47g
IYcCQu6RyhqcxriPnRlu5AUjzxXItM517fHhWR4BgIo9t/QNktPkQc0Ddlt4J7j2RRrYqKQFerjH
YgY9a/AX/BxYYp4y4u7hDyoVzQNvWikhnub6JEnJRlNsVcG1IKgIjssBPFSPk+w965OseO+gNO68
HDMbMddp5yM301+9QYKuxxLm0UpyEIdPV6Sg461SCqQVMwfCQdVZqEYZbixC1iTz56YYt5G65elK
/ftmWTOD/dTzldd3HZ4mJBCaGHuvvjrX6VUEyh4G9OAKEY5ZEL1URfIRgFNt8TrRN7H4gnCFuSpN
KCfKpRGYbkN3AVk8Sce/mdezJD35VJMiYDmE6Az5qtDAEFUWTyICbingRASkb6tmYfWLJRGz+yP6
Aoo331xcKYL+cAIVMmvek9Y2m9tDycxemz6UZLC56/DnG86EnW1Fhw9BSw0gNzC3jvtQpbmyU2NL
47ER4ISHOcza3xtKLeL0HkYLhXOLQeF6Rwy4JR3v9pD8drLSpX0EJbtTJ09rzGUpwyLdDFmjB8Xu
PNawfqOU/bNtpA+TgLegVQ3QTnpud71Q/lOtp1Fer0w2F5RgKP8frKCXm0y4YpLdpBaVxkC0b801
MqcE5q9yKiR9qeRZOpObL97jyQzBP5fLs9dNHCrvck5KFUgxLfKV0rBPGdtAQFsm0Kv2wX7Sih5V
yYX0S40iTzBywCSVDGSxxwXXqpIpXSENPspWI1HZiSPXz1/BDdQVF0IO+bf8byjD63+vTDstxLFv
SlGA4Vqf6LHg/K+dw01arpi+5eu3zK4KFgrK3w9A/3CB/BLYhXkx9dpUlCYdoxk15f9ap2+8jqLa
YDNSMCCaeGiq//uPGLefFCwsQRJKT8wD1KJ2mzZ3SjwbVN4epVnyqfEk2BLqb+wtG/QOlRI/cbqK
hOEbhYyuZKwBnc2qH4mSTI8XL45pfKGSJ+vr9brUq3PsSfRSLBPahucvSEq5nGNEohWhJgWo9njU
kTzahf2ZlTmZuftCXE8b7ShokNbFhSqLAy8XaML80J5ii9P2Kf+VEdoVsjIKFMHLM1vLrR3MFyBV
SyBQ8YdFdMqd9ei2MQGhU06f5AQK9si2RiVnUaiziq9pINFKvHszFW9SvB+uxgMs1QjEOwReZuK5
t27iNHapnfuG4+G9rNOM2a5dp9R4veYpQ8JDJWucAenI/qRo9bh3Zeorg6BRXVGo4Q9zf1MwvsOb
z2Rd5PNu2L8bZ3kkRV4GQAxf9U+2FMcdccS+KPym2AY2Ss8lguUTiJjIYaIFaKn3asSBDRhV0WIW
FKELc3EMOK61Px5vauPSKAVO7JawQbw8IuYvUE3Qeb779cfvonTqeA/PuRkEEMEYWqBUR7FsRMWS
N3r8z/luic4mgvwA0qnFp/nQOAtSL699SPcGUMLELGvtAA/E7CvKeV6LdIcX/RNRvQTRyXwoX3Lg
166Gm02Ase8m32INuOEsZX0TZAtwjg8OtpC6RgWmhjoLiC7up1eaRMDpvV3AwcxDDB2ht448NRYD
5wdL1oj9fGpUXb8QYA67GHwLXSZboBD1AisTx9RD4OANFmrRXYWySRx2qknuMWADQ3Dzwc5UF/Wk
gFuX/mH4cjt/XLVgXdXyHk1K3GarckPAUKrxA6LYoDuSN/B1i+eyIgNymZvqLoKzIfvXBrr0eG28
kA8XSyjBPqIT+egmzfO5tDJ04htsxXehIGHOb5JOQiocy120yfjN0lZYBWaJ2j31/fdvUILOt6Ko
2vA8XACvrODCR/WskDois60p6SJYfohQmdXRYMgh86J1Kn9wjXKpkqvt7MCHNFP0USJqzysB38co
uWeLw4UpRDM7vCN6z6M4a9cZDiyc7GxE0Tfz54CHyV8rvpyaMBLrjqP3X0jbM7D+y/ddN4v6wCag
o19tNF8UIFUK3RBHMhk0jloPv75aESAJP1gVNALodhDRUdJu/KoWQYu5SqrQ6LhDtzSNGfi+s2jW
1mFEeW5MYi/NFNv9Az6LAinAEZg5e6dO1kGkLlZV9ZcaqoMiQf10VHE2uYXdUy/+KJ1cBKrPQIoh
KaeOhCdBGTIkeHL1A2xitlAfXn4HmuVQhMmPFIKWG48wDH6iu/x79imWXjQ68PZybFFqjBT1SUM9
5ixEWfKAxSAeZm3XuRJFysCpSt1AaiH5iPbCWT3UqUdnLI9JJGdAXhYvF3ZnVbuHSsy8XwJkBxqu
HHbsuFW6A91JHYDdbN4bsvxdU88T4THo2gcyO6b2KOqx48Ma6hYvLbLjYq4yakDonWVyftU7ngO3
FAss3dGyPIWEcOi/xbmern//WIUpc+Iu6aCawke/mxzxb0S0OFDbbzV3pG8KaymLEh58CkGa/JmH
KU4gM8sWhLAuwADT3SPGuVSJU+hV4liOhDe56RlLsCrnR1pgK+HujDjbr9rxedwEIAIoeFx92r4p
2cyvoIGqihPtMp5YaI+tBLi6SwEBXtEObT3+rb9EpxhstRWA3oxEL8joGrJBK87BOyhh/ILRR47a
qe2VpUC0wOiXwtmJxLi/t0qkOR5htwC0lV2PtvgqI68BAzgyCPBMPhe5E+PPmxARJIZ5gdk3shvI
QjpxVlOrzLLqGRl0YG7LH0C/AQFaOeF4Z97JL8jwVikzyTBtGvhfwb7UinkpzJ9//UNI840YL0Zg
pZv/i07uFDKTmMRo0bObinf0bFt+YaEYBeYEwZ4gDzJVJmqEmQ+XW/ooQhqA7UzOvfpjaNCDD5Jk
2dzUvkvHxzNjNkeXG8FeDdFuJahQMiszYhzhm3WfPH2a34h3M8nuiEVRrCo84SXqTS37ahdbhqqC
bXza1TMyk+vhtxc89S4RFIbg25I5kO/AywBuqb30TTiiMTx6rWmN9GJJeDFBotgNvbVD1onPWldA
dWYteflFYXneZK6bTcqj4vMM1V3CcNJ0Ouv37hR1nVnG/zq2VBgxhCY1tkQhQRAHtohbDZmsgfL2
iN58ANNN/QA5t7ajmoGTf3vtecAfbc9uU0a1u2A1BeJEAcfaR6xizbHaCkIAsf7Uy6wonX8jKNQZ
utefizRJN19CRDJX3+3MedVRSZpCtvGIwyv0fFJzmyr0lZV48rSoKY5omz/hNbjIdc/RHggnVRdz
WiBNF3qS76vmSuuifJ8ERuCfBn3r814MebDi9PMnrX/BOShSfF5yyI6tm6EmghrJ6jXAE2sOO9Mj
tMEpMY7q9GtLY3+zblD92yHgXBDfVfcUZtXOzOD3fRetaCfzE+4tvi8Nr5gfylUU2qseMnJVO4m7
e9fHqOzEofm/Whjniqr/ZitpW1xRypdytPt4PRWp+oZvqFjDteaxqa4b27FqfKACJcWkDMU3cBJ9
3p8SuxQ6SDLOjFAeH0YBZ7xL/Qm35zkwMJWmgQfwIu1VT/1ONPW95YNrmSORtzpa4aCnocz8/QwA
/ITgpA3fiflQ/Ry2P37/xWyO4vFcpP73IRrnul+5cFi+L7S5BudykoUxgktWYQFDlluKqG194oRy
VtQTqW67noQQ3WH4KvDsuH+g6PUMsTEJtBXHeJtegAWLQ2GB0lx3h7WqEwTzuzbMoZWde1jd0JMR
SXDN2LS0E4DSag/QwCUleUm2lF8JBhvQftua4O+O0zg4dL7/ifh+YRrvF/ZlH/UJwYGI94lCCOE3
z5OLw/UKU0uZMWxWUxfeA/QlVaA6VQP18se9U0ri8PmmTJ2hVW3xrmztPDe8AZMUrg8AdUkIl8OK
Y7vfCJnTaC7u47felq1IL1EXFLu2Vwa0qjGFEDJ1IftDqr0bkZJDu5W6KYvjrfXw/MDNConFfbRc
xT9kTA1k1oldaG6ItEXtWsTMxV+L7VF5ktFs8Tr3gW7nsEKufzftyBDRr58tBZcG3GOrlRwR72wY
FB9AkdhgHGJz2Ap8Z2MtYKlME+VOH48hdSOwLAISC/zr5giF50LlVoMASVrcJF76qKSc9Kts0FyR
0J4sf9GAB+mQYm16+U5Rv3DZcg3t4cCbR6EzuxmS/AOYtgjki9jXt2fvC0vW9GPnBoD0/7OVsVER
wIFWPrcWoanKLygK7jVzIJpSeyb6cCWzGFS4/sfdTurbdPg7b3RYjM3xvP5VTeqUEmXeKigvS0EH
e+Bij0B7PmMJ5nYkumEh/veeICJlSAsU+qhwuOCzi88tIuZOVgbB1XKqdsuHON4VKa2Ha6MnmbIE
pBpDU9zqrlCz6yC+bedAMmCCscoCFolb8wnYhYTvmAkYU+Wdo6J2y742mUJh1bGgCEg9XOMRBRWV
O1CG7GTK3kedJFJLLz8qs1oOKN/Be49DWUJL135hA+WE5SMmPRs2nQ1YyXSzmGJjB7pqXUtly91V
E7aVgeX8HR3dpWG6uUvHXgNdXwN7Vt9/EgM7MuzzF5mNywEdkGaAwYnP4133Umo7Z/Bn24jmlpXt
Y5jXv/lzlaJr4jVUzA31CJZJb5KjjlSUSFgb5WK8miO+LuNhfB8xe1qAH0flZ+zAlYSb/tD2k0QP
nqPHWmEEyHeqxrsPM/B5L4azcvyIgln7WTUQ9NUFmTsirOu8bjGiD73oFnX6w36qFbhl9Fs2o1Wi
kXd9SWEXv6a+ro77DMHkiwmkWBNwCHaAP2tu6Gl5ZRGmgM7MOc+cCd4qdMfs5jQWOdR5nrAb9dmz
dPlffLcOOPLBOJS2BPqrPmEvyhshuz7G9sCHaOqJyZ6/FKiy+zWdas/hpHLHLqZeUKDIXzNrmb5Q
O4ghaHwxT/cnyw+pVNbgAHF6R+3lxhYD8EH0uSldhUIzfSHE3MDRk4dtyubTz9vqnol7EfAz9kgW
xt41NOaNs/fXMxcCseaWxEOIkT4ffOmVEXa1ptIB1FO1oW34ugdENLK5PPZghDu6uKs+eu81dPgV
ChGM/FN5hB4tNgurmWV8q51ryRUS2G8Yj4vm1MaSqdE+nHTujBxDmyNjuNfHRrj2uF5pQY2F5EFb
3jpRXDSucb4P5KzsmR6vnjpT+L3/IIM0Jar6QTngGbfd/6Cyc0Y5PixDFNdRF99ugtbCxnPvCkDp
Qpamu0AFqJUu34D14gsOV9iYlVf4aimTC8RCuOrQw0d716p8VxLSiWicFj2gDLnKX13Ga9L5i72M
ViQuPPB3lMWbSuP01zVQ/RSjrTE+T9ALYd+vVCIpn/dog4aA2PHD1AHGMNMD1cDt6a8Wi+HVLity
oEMlUU/H/EuFUF7fBzd20CGzOGyrBODOHpx6xNB6Wnc8Nr32Hq5o9/zVzuSMQ3dbBbNXDAP/Ij8U
Dvhwk8ODbvvRgdo5JrjmmYP4AArQQfMb50PyO3tDsk3C3HIcr4GsaBXWag6DlxHgeEzpoNLW8zmC
poGcf4E5qYlyVzEL1XFWlwRjTHv+u/JM8c3yLAFZqWd2ZFb8OSvK5kLg2aQb6BAN/NuMObo86H55
ArPv4SDLtuybkShkD3QUe9bJRsq79vgGj92CHeE1zNPtMbjibB2lYrZRwI/Q7JQou/Rm4YZ+oRmt
d+9yudg0oXXKC61+dmQl/mu8kzmsmJ3kCFayGqD1LgRkweYEUOCygb/Yo/6w+lXihA+BtqkJqhNA
kUW7rb1hI2kAUfRPO+/A3KcIeZFYgg/Nwn/5p2THJ/P3qu+q6JQI5Z/xF1fr4JUiPkAujZOEf1eh
74aGCWfgcgl2IZI+90HROtKzeVE+koPlbiZ5U+cFcgbwSiFDgEm85Pjwyk0mxbSAT6xiKcc57Qww
zlY2tDlqmpVtrP8TrhH5pu5ldq61DfQhvzecMdw5amDdmi6AXk3+yXDPd0MNb3CCpXyvDk2fg6e4
0KQYdieWziM10bds8XLqrk/OpFC842/t/lxODU97RVDxGjzwaOQ1BcTA7QB8pdO/gH/w58oQjgWC
X9h9PBbemejFlR6Oe2VHPxGGHkK+2ZTdvZoyhwltxkis+qMCWc4nwzi/5n0ly/sOgBRkGJQwe1ky
u20fxcbXdJteG3PfTiGE3zSguDbtexTLUbsr6XeaJroEpBqsqBP7Fx7RQbSPiMJl0DBCJzhx8hiT
ZfTchIqcBYuHl1cCmNStTHyaS8GbhG82xAbgBtMxMcSKwDPNsC7+07dKCax8lBU5onjzevhsuT6O
u4L6LQCEnGFaU7RnA7rZNUkRAD7G8BVeup57us/6xnz6fRQJiNx7D+E4Alqgeri7PpnCFcL+teCm
//fREaif6FKqTC1NuqQV9FMBVZo0DPdU87sQiONy8ab7WCVyQpyqEx6usJ++OhGzv0qjYPJ6BEyO
sgPXAuFiMlB1S7ZeJcUvOBzGgVqSsGZMcS0Rk22yF77wNMLezBQZJ7hNKc83Sh+gltdZvhUGshIl
SaCgGlsUTQd57zucSmVwN93TgzMo2XmFIBB/XpyTomeOv8gvoQbA32+DSaGNABq6XXwsByexYYhp
rI9EGiRnbLBjdVQQJ3gBufqz4YiGyV7F+4DYIdFU3to8LekXIlJG36IX9dp2gL96VpkHt0Gqvseb
wqL6y2aoFM3B5Nm/MYUO8MIBJSZL0v7fyzZsZsPjrZtOlWdZ7lF2DT83/2U7yW9WgF6ctYY8OEZA
hmRin2TFlE2am4iLV94EJvKizx4G2WcVrbO85FkMraDd0cxF5okdlfQlxg8hX5KQVBoGBoJO658o
9V45IuiPTt2itZvfXiEhbMRXudEMP06UgDrRHFYOBC/8wLVtgBZFhiqc+DrLi1xWu7gOCGUvrFoM
pu4j93tyiPkkeiMzhsASJgvzFgy9QFQQUYhxAAa9pWJZcl89yzf3UAtfCOoUMeyzC8nF7dWbfyLX
U8R0pF3fjpz74G+73dXctsxxo/pOwq8e9hTUHxBDjJMI6xuS/2YI2knyxmLfXjDg4AUVDnKcCTzD
TMpG66FP6TFzrNhToq9zuGFVauwpuJbGpeK5HUjdGHScB9KUZewqKfopPzxpMeW0zSCcj0nmRmAl
DhTTyhmmZPtQdF+1dWOLCf/DEkYWYHKK3FvaCfRhOll23qMz8hsuGw2o9FdIrSCZxVzgCEqOHYaX
pTXR3lqgqdST5vZN9O4qgjFqBtZ/vpgzACGU6rb7V6+SfUnuvYSTa7nmRacCZsZo7ktI0ycNzAP7
Bs3bYnGN/w0nWrHp7F4xv8WtyuraLOFo1pd5i1nR3tExkyrj+Rnb8+QCnLMhIlobmsNWT36Z4IM5
qQpjbJolGj2quQ4lP0wI4AXp2cUnNm5fgwIBdc1q9F/hZyGRC5D6cv5yvXEbuC8tz4s8ZhvxIg/x
FKQeOT8qnYkIKtwZkSEUeA3Fn8Q6a7WAwssqxMNZGowVYHSaNxcNZ5AmjGAgtsf/bEmS6NPQn1ZR
59za3lyO7/28R4yp3N45ouM2Y/lbrzNy6ukV+8KV+crmAQY/BpnVr53oTTisxZLu5XoHXiy1T1JJ
Un6KLsFOq1ADcMeg30U+PyoFC7n8OFhQR4AYqBjUayayKvfJ6NW9YdZDTIaDRfkMvqJjO+5Ez8Or
cM/baPp6VELYm7kXTYr9R7EhXEjKYtthwZPI/9ZFXwXzhnjwD130wDjv0s6vqjQ674BnwSQuQI4c
NNs4fJ8djlaxP9M5EGTxj/ml8na85sPHXeOd7jNUDnQuCNyyXu5IoBcPsM7kvKs1tRzSpB+VrukW
ldcwh8Hp7Uz6wQyZ61zEaxCIuqKbgXplwd8NH9U4H8UvRV8q3i5aUs7RJBtPwVAvBMfSrL4v1leM
uHNhefg0yrnkpBCYt0nGfeFOnY6deb/bUUh1Y1Nmywe9GVjoQI51bo/QRnxKVv8SokmlAucWsXk8
UUXT/s6qpVuR2qn6NCM9optfJ6MF6qW1AQFOwEEBc82CAQBGnsL7pCn/XAl9AKQawH4+qxFAmpnk
4uhBe17dZLEoxQMrnYaHaK61jX6CUVxw2+t6hVUz0F5NwxA9/aIKRyV1AtJVC7VYEJze9myU2TKk
LVVn0ykiMe7dnWtHQOn9J5G+YduEw3//Ys6TNi5qRXueOaLigrU7r1dRtOXxfcOYw5HowEdF7ID0
vCD03ToXrygT22HoUbHTTDWrSBREXqiWjrrInIqQbdIIMMWH556H1d1Hnt3UErblumROYyW/5E/3
o9Fidc8kiqsJM5tfxbAnsgDBmo3v86Em6ic19p10XervzDNVJa8ccS2eC0eQ5akcWb4YLkxqO+Ll
wduY37TlmRpRsoMBmxWaJcNvS5v1O7Vl/9V0NDaHPCVpVDkJEAdP2Es+zseY8/jASvEb0fAohcfU
Stj5EjNj+/zPWcyzlnP8twMo56MSWSEmLIAtWQfQNruFavdG8Ja/B+gDfzn6OGqv+ow87gpwFd28
c4SBr4dVXR2b4JZRCm6YDd+SCLkdTXbvIH/GrIor49HnfMKSHjPV3Ul1RIoarumDoIyIrPyTTBcW
iA6QIwYUvnk/fupFZlvi4hoHbsKL3VAVmV23yryETxEjcqs8oqpygySAKnzLwxKcGrUO6cYzjWE2
2qWJeX/8pRqKiNiGDUWKSVkLybFPH0u9a4m+FrEAmvtCtafgDmp/WVqAZHL+sXfmpUwNu9xz6CM1
aMrnADJbgpiDdH9CyLK2+BmcFdOQx6aC/EqocWUa8MdneV/PHLc12YSI97ETLhdVYvLAzcMVM8o7
0IonhC0/6Fmov5PRyUcgq9zJ16ZDKS8mgbYgY4tyf3or8MQNReZVQUcVXHuqaQ4Ie68Kbee4FRdY
+eCdmdFjRNc3PN3Xo4JBjIJiygK5Fb7xVVf6E8w0vSl8njhfVOTNYip/FjlnSrbC5lG7mZ0WWc9W
QYLn0qzG8nHh9FW3bOBssTkL2vd3i249AcdGLchS6YTMh38+tgxi+5TDUqlQ/5x0uiCLq9rqda9Y
0ciEzcqUtfnX5U1r/uPl6Tqy488slCoAA2bgfP4LDqGO7GgHDS0u12qsFsETiIdjnKWa/J3d8Z1n
4QYP11dKwSZjmnWElOSlcGSdZ9u98MYhfPgLlleP8QcOPAoACvTjKfss/wCgG21p9Itkb0XDospB
oJ5knjT3/wQIrB4e3Eav75dl2fTkoyqavOkzJL6Q6bTZJZfMfpINAaIjNVoXCVccN+4XCWRQVZci
ntdxiS2YsdgME30K1DO0EFVNk/dzcYwN2Dp2k5KU6NWV4iGA/cSSSErP/66OHW6NhDSoVGO88YPt
ej3tV9JgKJmjuyzj9SulwNFJfNY6k2eeifX/sPDhHle55JHnqy8ZsGS9EYEhavMZaiE7dZ2BEAFX
7xheCbilFT3W8CusKVElAdVHL+LQTNPR7X+3NCwlT/Do2X9mdnYnsfaAa6Hks10aTbf++eGtN3VC
O/ASQ4Uf1rBi6HRnIKO6rd0VdtC0tw/5m+T88Uo+kWIlxvVlb8NxCRtYHnnYW8F6GtDEmia72tJ8
QIxYmxAzWzR/Slm3Wce71nTT49vCI9Wss0U0rut8YG1j3rysPCJSBQ76sASSB/sqJpct49Cb+u9Q
1CwKpnJv6o92jVKnGGJPdojImm5o9qTSZBk7aH46tcb4OqvYM4pvB7fMrzKGSDSkePH04jnlIbuH
hdunRV2p5fi3HKcO6N04Rmt/zF+Mas46jr8bo7J36VcPOpN6qcupBHw16yV5dQsHRw62LfxRQ89T
7iIPZVVwhvStlxvOoSZjcLQIFQmA+lvFVo/a0P0+U8NBkQJflWUMohZPkyjgdPkWHbB5Xfiju3Qz
1qrpMspqbcAGR4K6wGujKLHWbag9O+qP/mH4DwYqy9Ax3CrNsE6EHBlMGwtbZXRkZl67gQZ1bQ4H
iU6p7BzU66qycpl8H6yUdJ70JoXoDdndXCg38trbs/Humd/gsJCSgE0RNKTQjSiO03lXcajN4QDL
qhu8xZeQPDvJ/t9KLkxVxzjCrQn9zHmJkZcXK5nfhJMLsYTKJu/rz8R0IG73l/l0uykJRU9h8nJF
ZYNHZiQ9Owrhoipms0QRjDURr5qIUX/ffWYnh3Vb0TWHlegBd1t13PwbAn4StvchQGXy7O70O0Vy
ziFPTN2ipu+qds7nQItImRAUEmNHDJ7lpsu+0Rr+CjoOvTbVgwKvg/J1Lm2EQa/b6o1EVU/F2BK9
05TSJLuhOvV2HSYbzFdNOesvlav2JRACdOAa9kOmM6mkMRJKX0Qvfc0rtYOV+4umNO82Yz8qZEPa
1RLJLem+0dArw3dBbE/BCm9nB5vYLHyYAzysJcUWvdzIpwLR5Isvcwsi5rgZVsT7GzV+zPMuhCe6
Pckg0kGebC9w3fk4FlFLALS2qu24Q+VRJx1Jqvhg6kkMxW5Y9GMXvNwpTxDerGCDBhouX7MTSWpM
yItyV+g48gliVEBUJRh+BtmTLPSIp2DEBOZC5mGkVxgrd60+07L2Vp+TpMt8Ty1MxyfF+3I1DxJU
bwbs2JGtocmHJYkkZsgksFZV6H6eF1pF7O5/Sg3ExBDErp1Rj8JproqfJqVfO5Bwviz2qGrAjmRh
E2s2wJ8qnXZsRgDpv9hWu6fRBNEq/qBGqgRke37mgmMZg3cLvN+qKspGpdoHM7LlMEfnvIP6q3fY
kELIskiPHXInGvg6OcP/6LhSNqGi07/gtT5CdrV63hBZimChCLLBqNhCniMXWWKv/Wc+CXhDUKyD
ghIWM18YKQWOgCufYhDdQnTWUi8AYoo2tJ5pswZIibHmVLsTtf1huklt39dcXKlKrnIpbdWFlGWM
tyJg0Q4uudl4k/rLyh+zZeOdTC0LfO3/lK9Lz1tXgGEl0wycAXKX6wSVUDUn27gwF5ZlvdBWuiPb
RkfAjUusuc5U0E3aG3pCU+PcrnDsy3XJjpDUa9KnDYenzqqCxwz4K34ZtVdnfIN6+mjNY60G+gmu
A6xa06JeqI0U5mrU2XOPVnhQKVyYIY6VElYE8m1oGCicR2V5BVPYGKM5eAQ/WLEo9rzdZA3pm7HF
GOoUoe89viH6CoFHnhLBH1MRTDRlGjjvSERxXmJz9D4A2Q24I3a0hRl1OWIHe5hUsduQJp3+liJC
TCr+Fn46dkh9zv/tOqAWgM8wIIJXHSsb2t7KORMJVg0CMgJg4A+UsD+VPLKb7xTn3Z9HaTKU3Kxh
Ersi9QzLFI2Wr1Usl3axWndOYcQKMeNjIy+b9TBQhftP7eymSqGPd9xbsiSdOUd7WV6GvWsnRP0t
O69MYp/O4+uR8YunHSrm9yA89L2CY3FBGmAUeUlAWeAXKOlUKr3KTxSRIPaIqhBCYEKSwuQuH+DK
cRb74ns7d+pOZ9W6HRE+co/voFMiIXH1U8spuYWh0MI+xzLDPvAZvaRwP3X9NytnI4CvG2bti7C9
LnjvmccR+boMBw3E5er2HilYOCSGgAjpJuAdrwOpQC7IX+XtUW5cKjs7k3juki+uAY4YcEUR0TbT
FBFtkKN96T0l4fLI0HzZA62kUBfagX5lJ4T+4eph6pOpYhKpEkP1zJ1eiXVBhHlTJLq/rIfKWG+w
jtGqiXBPrmpdj8NkSEe3yF9NF0TJB+uIp15kRs2kb16SFEfT8lvLId3t9SnLlCYVRgz2Quk62q4i
tbZyNogdkuol+WEP7Tm7GrmpMX3+33ogMtAIoOQ+LElWX6fvOoaDcjWPFDpNiTlxfnC1kDrk6S+d
vOEsabvCI6uyGexWtcUfM6LNDYtuaicP3EaYQiSuHQZOakr8qbK+rAAcbeatReEykZ28XxqY9afH
kjIhHSdiq/lxVAqWlKpVj+jrS3SbYAJpe8da6hLC5KhNnLKURiI6kXG2EvnQZe7FeScPYIO/132V
jB2j59Ah45WIzfmUriP5i5VaTG2q44bMKeqcxr09bfedWWp21js3wjqaNkU6YaphwwHwcaWvBTE5
PhuFPQW0pVf9MP/kwB/sinKCOP1R8OzM+8oGuMRlYrzpM2TuOSc9hzHjHTnsyGoUHcDT0i+oZ+Au
FjqBqYuJ9ZrxqgnGGvC6ljut/e3itrxvS+pMOE+gtJq/FBfY/an9gzqqsSXdsFh7nR5amsNwhl+f
y0I0XxcOfwfeYoP+KQtwgjQ99orNrVkENOpYGGcN8D8PH9KeZgyi/aBmSwxbF4ERnsh4Nf2uva0y
k7igtx2JOmNXgMvFnDZ0Ibe6hvA6DxBnmatT/X4wWTyznMrr5QeZenWcsV704f2PbupRr+1N0OUr
2gVQqJzjVBVbX6qKV2U8tm8s77Y4jv2VfhzrTeqLhmwssEaB+ddRHK4XyQs3xDMV7AVNsF/64TR6
llh4VisEWlAphvh9GmJspyxwRqPrekdrUlzAXsU5CckzCTZat2k5JHjon7zQLJKv3GmJS7pX79TH
gLEj/8LiI7zRPUQnZHL6gWb7bONsvl9GNIEWxfWAyhkE1M4Pgo3tbwtrI6tmPOO959tWTSaMeZ/K
Q7nGTVGNBjIAgum+6HKCIjj1kDhYQYHFcDdpOQOKP8Ny1GCnUy6L7IPY6SUdoFmUP6wKGbkTD1wt
CFa/hySRfZ/o0oPyHEyZ7njEJ4QOVCZaL/hJg9S+UiBJFVhIm2AWaBEWlqa3lTYaHCTbsrlMnkqV
+06IKAcVRMF2JRkscKWe13iF1XSCywktDCisQHAVih0uACF5q6RcAI4pV32UXl4zVUUnEZbZKoXe
wLha8xqNeIw5T2Cqpbt3QYopqH3ZGffxyHKwO3chIUMKCe1m4/RyGJB0aaIDjO+HaTAkymcJwo8T
HISkeAisD9uoRRUL5ghW07sWPWQb0U7zs0CPZhpjYc8ftT+Ckfd3XtAMoPwrbFQXazVpbMRJLvST
5F2YEkAzwL4KZW5GdrydtgkqS3rS2LtFVi1Z//AzLgLWTwT0UwmDhzVadtSnkKc46W3whAK3sYLi
ubvu83aKsrMF8GuSr0g1uxN4rCsMwd0tPwXRFw5BIB6PE5T070zkzlHONVQGB3P/kkMj7aVAXmpJ
T/vFLU7bdDohcFhDnJ8ApORnJspThFzD92hK7kKlgldHD7n8XtQzt53+/cyNliMQ8EweHa35u/YF
F/fXCIvIdUUSfnWNxftXMvpSYULIBkcl+ChsjqMRm36tFCoWooEv3ugNtYzRmiAi/ocOIjS1ezlc
bfGoXOV04mnaTCHq8zcemBiAafJgS/HGy3wkatjX8sN1P87fuh4XKmKM8DNvnkg4dbgdJj4MnvLQ
uUOOt6jmgmHrPleoZ0w0gn6ynxSCQg/7Ap2itcfA1xKmNONjopJLOH4mkGyG/cdesR2qZ09Zpmvy
GRJACr++EWa0GEoyOVhMVYbS/jBrjDuH7wysYM5OQ4GNcBne490r7TCBmrZDiYgxqeVefCTE4TPi
AhlKOLdDLCfEsMn0Kfho7K69J9bubcaO1UAYfb5QyT/9vylwEEwdnic4c7YRkmaJAGOkUQHIot/H
6YzsV5qxmXVfYnoc20pMYXwE0f1u54RHvxPPq3mKAT4pjc5SCj4ASKMFbZAF3zHdokpIzjmbJ58I
XOepvzlo5Vswa/5spipSJRozs1I8n4A8DSP7hWnwz1qYIugS5emI+KDapSEuigcvWxxuWq7q6Ttk
BVBT1UwhRonKe8SnRDJQHRv6RmtEYKmoUNpTcaaFcje9nPbBobJE+Uk7cVHzPpkJfaTB1lpdHiIC
JpyIXKZZL9JIIoO0HujNXyM6Dd/zI+FwjAvPnAWaTIdt/LgznSs0GNMg14S2FL9JSbPELhwpN2Rg
yk2T6HQb6cKp7LPM8guouFp21uaCrOaZXNzE5crGhIdCYDHytyUEcdHzghvx/basw9rT9oTJIGFs
RepcI0P9blkRHhQlY2D6LmwEBBkA0kM4pRhkKx/OE6/S4cdku8Eu3326wgsi+oEtTzJbdggX5TEv
dGSdIdb1UHn08pceveILnfZ9j9BcMt4r0MSd3Dh4RuNJVXKlJjXtsLFHIhipibGB0ndrjTvwc9KJ
flOF7OUTA3LFsKnKtouHJuwl4RjYE8wNAeDx5BbB28dLU++c1YQNMDN0prPTapfEFJ9JNcZjPvaO
NIjEqAYWcbJ6t+FC4XA0a+gbAN2G0noC8t/xGzclRMvBQASjDvqOmz5Ez9I+PqR+do6dB2rW/N7D
QOHTZa0RKT5QS7PJJQkxCXCfHKpS3IBrgexhmG9SzIrRYE0fLt0OpV7+lhYPNz4mSMkT7XL5OA6r
TaKxXJUsIMQu85Bu+deQseoIAE1jXCMQEu4Gh65cN9EMHpR8SZ36Srvn30kjE+aUKZQ/B0wUf/3b
2tu9mpf8lHlqd3XT1qN6rXTybdazmFNA5T6TjRf8Dhf7C1HlRkt9/7hs1cBV1o5FI4FYlC+jD74q
BYYj+oRmYSH57omyWJ0ygacQ9M8kgECp4k8UVOUjl5lkti/aymu1kzanWZ0abc/ElkWQ/zBsF13/
Fb08O4OhEsHWE80+e6OPdEtaGViujclD/avT/+s6at2ut0G5bdK0OUjLwlXkYnS92FVv8uNsOXqB
DBeAlRNN0Y8uZYAroChPhzesNo8+z+LiV+aeFDKDkYlFxLi0yCiCdSQkk3LVaeP4hUj/fiZZbXMK
ZAr5HNtttYCh6ztL/xaZBDkukvaKZxQM/OnrY0dZfccCxPar11b/dd17OAw5fCtcWX2IjWAHh9nc
/+ps2FNtiBh2fzA6PLPmEr1RtyYEnATc490L1GmTpWsH7K7/qA1vEasJ6n+xsCzckynRanmvyd6S
o1NZcul7pTXSN8FbseX+2yf4bYBeYBj69rhXsp2kO0N4vw4JLLbb/Jrx/oBNZD4074Jdy/x70sLp
X+FlYP0sHGIqhZA9F2+JbmU68BYA3g/CvHaR/EzKFSxxzWudycMjg4qZDVA516j4McQGsZGUN65m
qsLzAkva9fis0qiCqFjc7Fiud3O/u2ZMq/eWWZ82wVZZ1Em+9r/A4r38UaIbZkmXR6E5LZ/3nOQR
zl/6diHfVzKKfH9IbNOBHspQgRdDUnpHdl8VrLVON5DP9H6P/oi9FJnOzBqFlv5oIMf4+15HEHUR
KjUBkWFf0ehXKlMApK0W+9tvBjFRiIyJv1WLljawYpgS23bO7PSzkiHWUsjnyEcsRTzvyr94b7hz
ZN8qpPAvDk/teLth1V0vq2ZwFQtFL10ZbtlMQaotlEGpHSlVyqQQuUGyynKQF/R/mPN1SO4GstlM
H/vNuQUbhKIUAy7yqwJqOTm3qzurchSt93ljpf6JvgtPLdmX/OYcRrQ5S304Z0LFVgd2vlUjlN1U
B1lvzmGpcLasIPG7N6G/fwbS4Wcwjm6/PERrX6eXJFq0HQujww46kDDO4kjluaCOy5JdmC+1GRGI
fD1oUIAvx+B3g30c+YBTbW08WtDR9iCP+tARkicaO8VfExMr48ZwCfyF3ovX1bAZfyNxLYWI9Ou7
w/vFcpyYbeZe5AOr+7kpC9VfBXouwAYb5eOIdk0Q+JjnjD9CXM9tkXKI+COcN9IM3PgbEGntQdMq
RhPAJfaxXPAuIqJYpLp7Hr8uY/j4H6mIw80hLMimpTrDVgY5RuN2n7Qk+TYkhnQ9XtPj/IxAELxA
06UHWL+8cWJVK6sPAxaFe9rroV82gRuBqZ8dQD9FN988FWCyfajN8ZivLIfreeGNPZs+l92u0fUN
Ai7HLNDdxRNqn4lm5H8LKpG2SwIgskQqTTLjq9zuqhUz/b9UkD8jK2NzEfChti/DoxMmwjfnXqT0
omJoal33M8EQNHkWl0Ekn761o/PfyKQFHD11w0/3FvVYBgKCxCAxdjOpEuXt2LshX2NQFrq/3k7/
ew5AVDlrqCEwakPYGM5rUbKTLJPKM+LzvmUsllS8c9ai1bImBUfuQCAAcei2jhrXxc2k9UlCYQFk
+hFEKA/1IOl0O24GNAmoNynCGpLXLN4TTfZ/t/XJkydD26tUiVfNY1YUYph4w2TKambqJ7WQQmTF
I6sxQEA62gxkBQ/qd+z58bBlxpzjOEHLFgHgVYGqZIIYrcmAi9vfvlaBg7Mh8zAj3f7k5tEkOBFZ
XVa7IoFQJy3UHm6jrhMEj0BVH+2XiEFvwzBTYJ19/f7+pgGmcrloKB60mkcgmeM2An9VypGboi85
GYB67WtklqbcFq059ANSPcJAwlbfD+JGGtb61wpcCP5BqUuy3Lk24GfcToYdPtzswHTfPtI/CV8O
SwYQBgVMEMkF6G0ARHadVr2Gvml5/gkv7wB9eMtMPq/aL8iaaPINM9xd6uGmGz22PqGio1Wu63Tv
Z4jrYt4rWMnXLtEpOuVEgpBo4HCbzm2FDqJ+MxOSqMKo/NdPY1/7S36MqcdoMDhm27XBc9SUmBxn
wDTR5J9XZQG9WxIc/EBqKQmGHoSqqC8JJoQxB9yMn0AdcJ95no9t/yUvlv753Yb+zTXVkg4lJGKD
ls+lPnhGcV/A0rj8dghqtDuVY/GII04bij2LZZ/fiQzFLtejF9NqK+Mzjt6FIo8vSm5eZpktymwy
Ad+DXkZsDezcgsfIC25gYdfGyoLPr5Sge1G0bl6LXIhF6L9V87kBd/oaCygSsW7eqkEcJRP1vWZt
5itggW90tA4NBFi68S1zUN/eALhUgvjBLVI5zQ96BWEvEPLUWOIBgAuYUd1Xz9Dtbux2+vAVH0TA
SEKQlEnbukAEUbhfZBMLnh5j+5gk0LtuP24vRy12TKF+5KAthBFfeVPf7Ba5R3QwI3u+CckLgkW6
gIwBoqOLYXKWlC7retu8Bz8YBfdI2n0Orp6vwumH3mbKFyurtWBoknG9/U8NJ1HOQKUedotO7iYu
J2xl1fm/Z9ZxSO/IgG/ud2/bZlgks7P8X2SYQo8olVqKAc8lubYjyJ/ZyvzybfZ3hesIOtsuRC39
9aoXqhFio1loU9HEiBbGR1IB5XRfQKyYxHFwLRdmMZ5bQGyAzOsUDeL1jkFQsdLY8F2Dzrvfm5nT
YlPFF6pbouseNem2uFtPN7XjUvWCF97ZPgNwp4wC8o8vDnCHyi9ITCwLqm/MckFnyg0g2TIDAiOB
mrdxyneH2zQJGh2FXtAGAaBk83KAEP/Bry8fpSuhQ1yDF4UXsGlcXuPSBtCaHQjc6g80Uoe659e+
Mcip3L0a2EqPH9bcar6hBU0KP9Vx9+xKyHDi1xGI80xvSHrbPEBn3RJDxjpeVzWNooUf2WA3H/LJ
egXCxf5vwW2o0scVeX4H315a2bXTQXD1KE0Tfnq/5+610nhX8wYesXXGlV7kJMTO+O9Ggij0MxaO
eAmeTAx3NHhmT/ObGPG9+VMoVwNrrfOu8rjmV9kLCRjq+wxbs05c1OisadjdbsxGwlG31NQyH5vV
B5D/7u4Y3D1DYGAuDTO+o3aLV+VYHUFfzQdEJzktR8nVOXElR5GAUSKy1Y1QVYJjqI1fPddZFuy8
9e30v7VewVMRX599C3aDN+cSGm/BW+CkahdnxfSoo2gOWlta1YuYqyupjVwSfBb01yKS9T6SuEo5
qslFwGuE+w0/SOzuoA4MxL0jcTrqzA8kq0AfCOGFvLrTQV6et7YcwmuzTPT/O5ycirc2+nDG3S7+
ZKfvl7EaF9d86fVjWWf1DLEft6dJkGFNCEOe29taY0REk2lp5xHpbHtfzKHEyuslr4Mi4mk3d3Ff
e2JPsCoZkqYA+CUjIaCsffFVzkBGjMbxZfcrrIpQiUjyhG7arstOKgx+GYbxoSFH3uBYPdSpZcMy
FoWRrVSfO4p+/mHtLp8FpDLF78CoAGS5JXt5qqMxuS3YZ2R1mSZIMKgA0zDQ4a99d7JkF3KBf2yH
nI9ZvGpdFIN64wsPyYKd0tP1xPh8e7ltmWWmxU7PyiydJFi+uiwyQDw6tY9B2GrIHANmgnFNceOk
dAYTJERDbTXB3FSwMjvwFLdckJpF0SSbvHRLRXrylL5o/dmArrk2SUEfJ/u4DDliXpQNcY8HdzU2
vosOwT1NCvrwfkdPGpV7N6C8LkzUtrI5OOIlAB1nJZY6s28N9KFq7FxosYLEefyO1n1wwQb0LLCz
Mr6J9gfqNQ0icz55dKFKWgqYqZqmzY5y4nL2+Ivx7OPpS5xljQB5UcryrXJmCXqk+3HlFyxqhuHM
wZbLHMOodG9fDnt3JP57VBD7sWJUM5Iio1iAJvNuNVk5WpmUfb/6wLCPIQayllVQACydPWNY848R
EU4CARAoR8bPuAfgtNzEE3bvFavdWT7jEHlKmO7lRoP+CmxbdcfDSbdrkIMQA4/t+cVC6d+Baa+C
vEnExAugQFOWOv1q/nhyruoVQLeI3gWinuAz9Zlt1JS9JBofsaJEtwS4mQAuqgZhmLuivdKxZqVF
Iv3OZuS+uFxPV5iP/BtCX4TpvAV/F3Zr2arYrIQ2a48GQHnGMUwisWpwbzs9Mx6jh+nBTSfPYUcS
aP5lpSVaHxSMG4Ui/BCbSoeP5I3dOn2oxKg8MfpJgHwoIX/pJ58hRCf+25EF7+gTeuaRZBqDcEaw
EfrEKgELwd1Grqz7olMFr/xZFgmTJ+ggF20nEu/Abm7QfbWTpAFK/Ths/O6Ar4p/MEUbVndqVL1P
Ux9hlq1a+joqjRxWeeiEiNnAFDv4xKe+azNcvQaDVpAE51PldM3UqpEaFtkGKzmetxuk7+/yAHjj
2ASMCc3WqgV75egmZljPJmrbrRZ8VB4XZKf8d+khyLl6s5AItNs5bOoKFEFGO/sEOHZJPFFuyp5D
0j51/8q8GUOZTR6YZ0swePcbLD7HPr4gL1xakBK0zvZ59zrmt7j5XdKo946h4VYwLw7FiK30Wa6n
N4itknLFEupqwMi7gYIl89lEhXRgv3F25Xca2IIhpdfondreT78dCuNZ8qTcZ9rqWkAXZTMJsXZK
4rKCohDM+wtV2FkfKf4X1SdCsDVySHdx99WtMKEc84Y/xCZ3qQTzI0aJHIJJA2EzBTp0dTLR7MlM
aG7O+RWqks+ouEAdHWr9VR+5a/83PEDGjqHIfSCHUtj7L3ChkyjObMMFTfG+liLe6tOL4DXqh6r5
wvFyToIyt3ubTGXVexEwLVfR3QSo5vzyCavRm01mEHvaiMdCrFYtv92it18M5mEwGdx3ofk5Jrsy
vgUBmQgv/drPYJRFVpVufSuzIHRv6bDeFzlIQwLDjJc4StBsBCLAEoAdbrCAJL0Mnn3DPWUUixak
k9kWMIZsU4swDlnPA1pAiG8s+egjNEjXmL46Vb5IQmOIrnS5jpopFe5UDmZ6KeMxbk5eV0CjNlF3
RVK3ku7xKtV/oxUy5mNSicNDEBU7CjdEawp2/j2l5IHYjwIarlUgF9hvugxWh1d4FpnR9yLMIXIF
lTtUAc85YL3kdgx5CJo0W/dkhD4Q3zs/1Teq3Wnu4W7eTqmmJaYcYEPJxh+bpoJhP5PCT5ktmRbY
c8t/0yd/9W8fj2G0/6atXMsfG6tX+JqSnACpQ06TE9X0NTwAgxEdKBKyHe+jvGUZDAOrYcyO+MuA
E8k97zqH9RLDZXLoEW0eiHxwiE8gN6v78JCZd7QjK2eQwVP2i2LZq9Jr5Ev2s9jjFCDZhAZm5Wp8
FjTTcR7VT1CNGOpGrbHbeC0Ak7Ykw+NUrBTGhy+UXp9CnQlY45KhOIosBDsoywMJL5yeYWcYv1z0
9HS7OB6lN32HQPXeETeIRjVD4+hNvsdl196S/QF4LIkRhUL/pmFIix2WDr8EYNx6VaooAMfi9U1F
n1E/+GfGpmfbzjW0EHgbkr6fDwpuiLU9PEh8O3zuxW6w9L6IdpgFYLI6BeSaEkDbJ9e+VZQW56Dx
hEwHIeJeWuDW7ePOUaNA5+EWlynFQWpvXNiBwBRx7hlALz6AffEISxMvJYJ9yn/VtH+IlhBReMnE
9EGxTlpR6lmP37FOzzGRfEw8uGAhGDHsKtVXQrK1zXSF0QAytFdgSeoRUmJWwpM7YSbeUA6/5kDE
nJaBHmS06Ps6Qbpslo/KPDE7x4iNh6oFSC80HJlZwVMBi8iAQiZ5GR4flOmrsE3c0lSsV3VyJpI+
Q7bnHeNNtv9mytQee9sVTNcXjkSPHyFhnPmO1KwouI7rQpqFrWukF/a7xrV51tSH0LVlR1QkG5rm
Vc3EFBz0lcEVRBxGGZroZZ+SAymLe/JvR8Gk+kfcyNpa9bpsN5qnc205+i68wSX0EHcmR0jWmDsb
h5k9A/yyFgiSffBkVOVNo+iT6W8Rmp+0AgTdRYtlterONVR+PCe3f0pVjL+5s/9uFftWm50Fnq65
YMLc40XX/n5kbW1xe5Df5XDRQt8KL2epff9w2OzxYJq8GPa1gzADfEKipEbdnbGaIiA2lhqhSqzA
eUSxvxueEZnPP3bE703fg4euBjFK3KR4BrJZtSbhsusMucF+EaUXt8U/19MhY2eZiMdnIR15gVeU
bymYjN0J2sdUUGJZJQNEiJejxHp+psd+B3ycvRwHMvf+W/9hm1n65EaDE221jT/kVE9wR05QViKT
sGa1LmLOtLAOjmMyVNks6hVBjyXucDjYdX5U0FYHxMZJsdYgHqzCRFYAfTn5081ihAp9MBhSCJ3d
hnmzj6D2ft1ULGd1RPO4h8P88vNUuT51PTE7M1OkclL3NPoDDqAbtWNoVqVukWmoM/KV/HTi8oXe
icbh5nkKSBwBhoFSb0bhIBCI9I6qkD3WgatqaNdTXrZ2WoHIDQ0u9eF1X1MTZxdzKR3QjW7BofAv
ywl84CS7vV2z6mZU7MqscSys20g6NHxn06mcD3FkBt7YBgIv7R4iQJ+RUUolI/FsrZPqtZMPv/QA
v4ngZaVrpXUs6yoWkPmWvOZLhz8Sg4IXOvrdDwgutc40FSrZCve17kQ7aQdK7aipW38a3olRInGF
LT8NgS94nHhDLeEreyQdhWWQMIc/NRvRfLZ8Y2Z8EaXXmw++Duwrt6HKGM4O3Mxxzk3r8ymrF2YE
GdlJ7AK13yd9KIAAWUo75jNwzIl7pau2UeGQ63stlMxfdfjjHM2L1lJRkFgRangZyB/nPxTC6ftD
T0y7I/2ZI1bsLouXVftdNT3ZPYoqaegji1vTaUO2rIAIdQ4a+pWAPtrT0wJ6lW3EiBgW8R8xkyzA
iCx5H7+WayeUdD7qYUe88PQ5svuLMxJw2YnVS4tERNMcZwrnvCWL8JYtd8k7PZMjhVj+QYkp2jt4
nag3T68pBOQR9vP1nWRJ6vq5WvShBJzDcN8wLHqTyYypCZkKjO8AHoWCqMnjwYsolxDcps639NxL
eR2+HrZSeYZIx8KhdZz0Qd09La9Ek9PzGr0XtsTdu8fQJZ1rQ6l4uOB1emlJIfDdoSaPYP1KyKTA
hORbUBpLjO1xzLYk9UVmODiOmERnksglB3+S8EurjnY/2M0k/J3JU7ffCivyJFtThYNjAPPzlze/
Kh2/gTUz+GuwBsvGZANFP8LkLlbf7YDFfTDE0ucqJutqXUfl2x9/bVFUTyXZDA+RCQH9llejw8QW
M5JPY4PasqqoBcIA6qDjkCnjSJ1X+C3ORg3FsWkhpURzVp3iyzUAV8zn9qj/rQq5h1jgcVF6T49D
tajS+RkaT7W+CN0be1s3TIed/WxlMgEZhnOiPmM+4AykDvxm9Vq40MSz+ZHd4Ih2tO7Vj0WrKge1
e9o11gKwTtpOBO97lT3T76mCEXFVIo8vFUg1LktpKXaTKsREb8eZFxtK2PoA7qIMCSs+iufzLRWp
RYDFpGp4Dtx5gD4p7yh85q8BR0YlOvh2k7ac9BlOIRAC2G7g09Fl4FF9FVXhJG7WLDrOsjeGEMyr
/B163c4DfdqY58jOcC5RWNFeeWjrpoIhoUC3BhSH8Oa7rKNEFAIcQCXUX+Ui6iDJexXZ9I39ukbS
mUexv5CudH2z3u8uqjAJQzGJzYdpIAyXDy/GLweo7hH0yeB/3Un7n2GiqFHqzh+gmwkz0crpzR6v
ZElexnXxYPyb2tovTnawMUl/rzJVYyXeOdTGaDdJ9Um+tp/BX+BKz70kM0Lm+q6uASLRExQ2qvtp
beVtfjkn99v0gbmaE9anOHa6cS17LqwvtZJIdZO5yDNfw5QS3/sFmVHeOYh21gNSkfikwW4en/xe
TQt62/3jXopl8XG6pwvNv5JzuBG1LB1DQkmElmA3EDdxN6xO2IsmzCoZfnCH6oL0A9K8yM7oefb6
as+ZkqsEGKPUJ0PA+az1ye3qNSBM39dvsnRMS4BXEi2lUbkqh+8evtW/1ezQerzrHE2O+sx1lP1i
EyoGyID22XwN+B5CNn19xY9IX2dGPo+nf2eyMs7Ei7a2rDGArmbnkqMVKBvAzYFfXg0u0+A/ZceK
hUpcWH+TzxQbzLYJxXwPo6LH95Ku5ktj/JWYl2Q5l5VI1fVKcL+7T/ZZNGBEz3lwxa7U/XHqUzxC
Dfb5WZR09E81YLmG+3atHIWCiuD4tz6Zgy1RufcQKO3lfScJCQwGE7UmsihkoaD4toz3w5d8FwYP
VDq2gHLxtUxceCUnlFeLrcCSUeBMu/RePdbcRsbqJY4D16ktp39c5m6PlDA7sCD3zT2TJzSlCzEM
Dvb2f9Mq7/jw4iWlKAhMmYHCgRlfhhtp94jxFgI/+yASHhp0/hInXytwD/NdFaWpVofYnlDAXXjx
qmsYnrXUS+rh39ODSJDAXwSteLuZDCgXnCjBh+usK8i1bZTsRcB8XD5NMN3rtc26+jQOmXV6xlKw
1jOfeKkSSlYOyeV/1G+PFvAatf4RBBd5ue/TnXQ8i9snqI7yOD6FQzofAhytlVOmUcPUIPUhkLg6
q2qBVpZBn7T0kIRTgtyou/kqhgtTOoJ5IfKve3wcuFRsk5YKYiwZWThCQ79HmndZ0zEtClIfjZdl
eqgGFk6vWU3KkTckimk1taJA13G9ygtZFBNJ3zgCoNKbnZqKFhvZ3vjUzEJA4gdu2o2ydGOtRgcg
NZZHyCN3ybIY0dO5jrYeH0h8L+vyvs3EEm9g6Ve+lWLyqqhXfrUrRAyh73nL0xHItdvkCjuvVpHH
oCBRiqUqL6oM9500xOatDpIKaS8dIhwWra+Iq+06sXLnztZxX4h2g2pa0eyOkf1LQbNARViAISL1
fhWktqLxOKrTc1gA37tF5f6NjVlLuTm3mk6iKausYK9pgdKdDTk1OGoULRwrKtrcoBkuFm8at/wg
qW9zKob94sThpuchh+95VLKJC1Dg9W0gsY3qy/2+tLO32xqstUz+A7XnhFY1Rg6Qy/fLXsCcFOL4
yG93gdHnLPP01a3nY1y3e2eFlkP8ZPYJdnS7gI7LH8MrWfPDr3GjGNBf9mJCeEh/dNlOyXjBlY4Q
wXu5+uaUFuTD94b19nLwHIPPEjnz1eSgFRk5lyyc1Svu1xhSNdyKCfH4qETIjrj9gbkbvfJk6dyH
K1/k20T/j5Fi1ukOUOtp1MowbEogaCm/wVuPjhUeSDb5zEk6CA7b9Gr2Ak9DTfAvZD8/iVJOE61J
VFo3fGPzXDNkZlAO8lNhQPLTs7d60XUEBH3dczKQ1VOQrfYq4iaaAqJOpuJdTvty1kkXnFjFzMWb
h/B0yxIfIMV7tIEA7OjGskuCoJiciGNb1okFotswEz3N8jpNFb7THUTdhGRZFAunjHY5nCgdwDjR
njGk1r+5asEjzi5yUtd64ibv4kFEvIHlV0/VdCAiG5XZzze6dPm/iHWQnA+p2DagqS4Xq5ZsQpr7
VHhZgffjZK7HTOKBkE85rN6tKg2Oqr2lAEXBz9peVgusQD39s6nHeYzeVFXGUpYtab749YjMXBxc
vUpd4Ve2WtUI1F5anJr6aGvT7FlnlD1l8kFHe+wPaUW2p3AGZqx4O7bGazpJSHGQpn93fsXJTm+x
JwmbvKTwwYtPCg5GbmHAnONjvNbDri7FCA6SJMMoMHjOZdhDZ93XXDb4OvX6VGClPosK2KiSaHzX
LYYu+DLZfq3D0b+OAJlsfWIdKGIg8QteUPuC1T/mN+R42aEK0/uMKVQoy4nGdUzxDQ6x5vlx6FwZ
+ruiHGaXcywHUKX6lR89vtg42EL1Sk5xYc6XHcGKYUJ/9zxh2mhIUsnmqD1AXilrtn+dvVMyRKNf
1agOwA+f6/ZDOZgLokq3OccLdKIKuJnnDUzQoSxrZDT+05VNZQngnbR3l5rRi/f6YEWSXgGKcW3k
yEIT+biY+r5XnLXTsNRavgCpPRa0xH112VF34Y+kPmYaMRbIupif/HSlQ+FsOsqmTT/NiaykaiZS
dvj9SpL+s8p4SrYcQpQLrgszhav324KPekpEkQGhsZvAQS0XO+yJL3EYGc9qnU1rX3Iw5OF6vGPb
eF+Mlh0vYe+djgNNgReMKy2RbPtCjOjHexbB9PIMmACybBAFNjivr1TKHfwZn54GAEKIEuaOFYUs
p8vO5VvyFu3WoNjwHAsEiyZtjxqB+WohcPb6Ov8gKQFgks650JwFVtRUsHm68zPu/m1M+A2n/hRq
5noh8BdMyqQO2kiOd0cpP1s1wu6EOjiO08b6og3KibiRJ3K1qVvwa1Alwg8zFWJyvN7lAiRP8DEW
WJ0lPXRzflolKjLtii1Z6f22gM6Lq2J/ax28TLUUMQghweXoGIaaj2UGrd+vVfL3JLaOPEQZcJjJ
ireJ/+4431FVRxKVRyBZiVHHfRTKOLoD6LA37OK/IMIfQbKlha0Y7YcfTOeEPqQqTc74fEqDN8b9
apP+xh9bHVLaAGN6F2r6ccsRUwfCRUmAY/VShGo/5meC+/Vk4FKFhhTY5IQ03Ct1DCRDG77pA7iu
iJd77IMt/MeD/eA+5ifplb2hmbI0xLrfUuJrjbG7m9s+BC9Y/oGQr97ReXmn9JCq62E60ssCUArN
p+QVZEWdt2pkz3xSqC/ylXrBiKntqv47DdFZfR8efx2Wzri+hNqOB03HSdyuc+6dEtN/w9VDDz7r
NkAYSXBJyH6XQYb4vF9P5DAV0z7pBlmbN8HmFMpTSbr9xKKukPWJo1Z71yCjslrb1Zt0AQPWlbLK
9rBUyF24NaYzk1mu0WlL2URHQutack16xA/NG9ocS2uyqhRvWMdguSom19uWsDbWpbZhEBvITBuz
qroUp/NumK4GoMFEFj0Og4u1n03OzZdJqd90qpz5rCA5GMYF1us0nkARVbSdtjWqO6brqFVZcBW6
i6MB3LG2sBrtbzXoolMbcUOHqEy0Z2WvsDY1qvxm8gDT+suMnT4GdZN0+iJOetTvzm/rhQ41lXqB
oIYdLeQII5rvMNemmr3S5ucQDr9hluAxlfOY6x2+g1lskQBxbjp0ZuSRmZJNLkW7UGM9LgPv8CoN
TxTR0l1gjr4l4OEA69NHSNulpP1RFhpWi3TDc9+Qu3kXFcxFqyAJkYwc+xM5aX/n2kY388Isffe9
q+hleDxehlZP84YbFDHQ6OICeNZWBRDvSch6TxNwnTFD8+61JqUm+8t16H5y5BFW+xC8RV4DuLw9
5tjINbfq/vaWkOFT7Ct/hwvt3M67AfHF9YJYjxChKn3kiglaUvu2bxDrjZj8V5ZP3Y038d+W0Zct
qFyiQzeMSxHblWXdwuwlktq4nFEw77MqRcV178Kkoz9dAg25phB3PzrS0ZTH37UKK1tzSV0Z5+bz
IFtc07ezJzYOoDXUdr/wBp2XejnkxW7T5ISorM+5XuMidDivUcAS9IEiLsYygaPtYvt5glAPLaiO
kJZB6be7t6EdG25MP0ysi5nCXvcPeZByvk+RkiMn6jH8drB7O/UC2mUO2wiiO0tv1iH9/jkqQal1
8iqHn6FBGu4jmVHOmT3vGSJNFezRWiXDxIou4/f8A6AoG7+r7ZWZXlygMbv7Pzl076DYr/oQ0yKH
SOTyOwndkFK+XUZ3uBL4WQg7je+coq59GIKJpYVET0mT8+tnyiiTww7YtVwovl6IL0N22/TMGzAX
MEyZHdrlkzH4fvfeHe2l+EBZsJHW2lKnEnmlVdTInrkHUEEe3kLMaoyQxaPnxDWHHU3Xn2rs9yjF
lUNIOjWwhR8yEpz5IfXXC6vWGmdxUQVwUlW6/sCBU58KKysuxZiVqyq/uyTF/HuP4CwYxSVTvvbV
C73gg9VsoB7lRNSZ3hDYPg62QtdI1b1OpZJaFvZBOIOloBdhn7DKAyDRQh3pa6ns7JbZp5LKWqv1
a2sp34DDIFIEqYVt6OrsBSl5WqXh6jb0IDaQa/iLJBItfzaM4uSAFR5v15jjxbp2FPupRF9EXN3p
mJT1lgp+SIbEzelzhA2dLbZ39s8kTMb5GpIX+S6EQVNSNUgs2GQRHMNN6rNdZSToHMg7/JRDGKyM
Ii7Sh4BXQOk3b8M0cIkc17f7Rfcjxnwr6g0pDddhSU+d1pNiMb8u8xESVSOMeK57oliDJ4lwwOn8
DJlZJQheLeb9PjlYMwuWUPNcMKxAPQlMDSc+jX/Uu1mS/PacyzSTuc+f4qhXCaCEguPoZQCeCLnn
Sg8aI6hdQog3LWvf0rtGk/cExh/UCtz/6Uv54uf2VId+XZS6dim3AIeo+xf45QfGoZT1zXbQI+ok
U5hr+p6ySlE6BqBmx1PSfVLo0abgfRE460xGcUam2qFpWplXFXxjSPkPuUcInkwEs94n4TW7hcRQ
rRSw6/0aaSKeRyV/osq1N1dVqi4RJgtsONO4a2M03AhNhjRQpnjghwVWa03sC8G6N+xPiMDDquJt
1kxiSLacinnvJDLjP7tPbGYjwvS07nAGlzZjv2Ef+qHUGQSHRn3NzImQqaTdBjfZlwg+T4uhQN/i
JhRTjNrzJnimvsyhyIQUc6Jw7w0EnoZeRWERvdd5l95BhC6eOMKUK/LnPXG5s/Rib8NaLAIQYEzp
czTeaJEFvPd3MbCWh/LUGy+o2i0UlWh1i/mkjIeN/cQR3c7Pn6mkPXMRSYZuY6Wb6uVFMOAbEjYC
LrXVzRhnNuqSQZqluHbq68r68atuq+/FYWet9ou+QIWv/yKeLSHAxkV9SCAG1kog1SrchJWbRB+h
Ro64thwEZMC125ag3jcMc3u6+naWItrYz0klDoQQdcUgM2OEx+74KGLxEE04HTwDGEOYPV5LLeNR
J8cI77OnefZDPe5wv67L0GrVQLRlWfkqjsXxc/EzR/NKvTBCiNbhMA2KeYWqMVs4JHBnAZ4SIY2R
9QHnxaYsNNyCdAuo4Z2MwjUJD/KakiyThCYL5dDxbOoEgpZMV6c18g2o6AI5V3NddamvCxZqHFx8
hHB8gc0AD0XY8FUh0hTdBI+kH/K6jBlrTK/fYSh6sPS4Aa8/D720wTlBnrywZ4BstkSADBVuRgTy
Uxb2xCRrtRgdK8XIhUI4WMSRc3heW4SoGq2r1Epxpoy371JHJNSI+JqWMNvgDTxNzFAdUXl/DIDW
cr8AxU6740D9KDKKNL++HTlKoGnGmiyB+2HLPawOUfaHT7SAFARYoG1Mg9Ye6RFWg9biEEf1n2Y9
+GC4lKXKBVlMKEnjPuOOWTa7/v8RgHU3VT2vzr4hXXyUboAw7QAuc1Q9rb1t+bmsjQdvBCxiHs0l
UTWv8g+mxbH/1B6vVy0auVNIhnjSAD0uB/al26FMs6ZW7lyHZRTP01Y72Z+CAZuvbxVKotn+vd8a
RHikHIR932yrwLX+FqPiBVmb/a2popeZ+xszOfvCyvr4RfDCoe6Zh2YqFs2Ei2uODswDmYbQiM9u
EG4auSLGRb8fmNsOeVgrWueR140ly4a8954gILntz0Iq38Jg6+6TOB3MRkmCdqO0d4/Sx5CgdMw3
53K/i1ImdKQLM9DbLrMbniHtrrDhylYkYFYyCQZQFGDlrzmO7aNVvNW84xVrypOeCyAy6k2DJS58
rtHyzwBj5FcuF+jw/teNjBAq4Og+QegUgP6y2so6+dOUYZYgVES0CFfCaFUeb1YMCG6yq+DE123U
EFVohEu/i4SIpvGx0RiqGM0lXBuxZqE20dVLTD8wC5hjM4duwS5asnRBJ2lobtxxeKYeftBGtlqB
pZfCzZwCB/OwBUNr59kj3+GXT5CKk4DM0SNMZLIWc4bILHO4rxUSsTCoOrGJ2RgV81lpg2xMOXdE
ZzI4lOq1B0SsclUNQdY57QvK55yADUi/+Gn0ovYJRKfcRg/dfs1sVgxt9DHoNA2EYKNd3LLdsQzd
Bafxwayxz7r31+HLgmRipQZFxeZsCvb80MqlrtldIQRM0hvL8xYZWmWh7cICFIogA7loHcT0TOJI
+De5vMM1CTBJqXqsU8bd4E9PhO/WLYiXtouYOwh4j7HKV+F/BjkavVrNBV8GiLk4o59XZacAwBg2
LquhQKULrxo4Or/bjie5BeTTOEEwfYVecqw6D4TIp+3/nlXQVznSQSRZL1+v7Wi0Ygtbx803M4dB
2E5kHD/4CpYLsUCt5ffOsw8rgdvwZWE7bKVFaG4RnjexyiTHpzxb6iKoMDpp5alqo66LMQ1fA9Qu
OlrpiO//jqUzey9oY+QkrPGUnj5vvznhjBzYx3ra/hTPaa6L0MR4aXih3M4GpHkifUMDjFV2kkx/
5+rKnnoUH3WG7YlBXbL8u3fUb8lckc9nMfmOGC+A7A8B1WEO2ANikON+EwYM/LE3UE0ihdmdz4wf
M+ulwLQwO/RIvDF0ibuMeNCxs1q7QYctoPAEERlPdLINIMTflmuluWzitdqtyhLzFvRbrYnupM1x
2csNHzjpxtLs5epxeXG3T2nMqBaYRt1KOqqZb+93ZjUpLx+lgDtQQI+ruU59PS7jLG7UPms9OcM0
aBObFbJw2v3menoAY123mcIduC8OgcgFt3o7gKE267WXzoZ6XzeSBk5NbkR3GBtuWx2tqMSF5EqJ
yk7rOkZmGkkIQNfB2oMPTmKmw7rd+Ibd9iOYLTziNXXWouLXxmmiZVyX0WYNg5jYW9yQzrNjdyMX
hYbxb7P8lcshrz2IscWky28g0vBhR+87BrX0C4RrJMbkN8g+MDs9VNLNFZE347MjMA/ZXimpxfC5
RulIODxLJ15nJp8XP82/PBE1aPfiL8JYDzNuKHJ1lfWK5a5OaDjY8KG+9A9LjndfPqor8XlbbNjm
jsvCm7tq/m6CT7EmO8bUxciPofAn9Jskla6Sf7NKOOgF3ewTeKDeTZMf9kM8L5KAyNYh4dCYnI++
SXgqawpK7P9uNHqE9nDTNktqf6BIycMjqG+kvj4rV/eOHJTGtbr9XwBV13rkqrR2Zxd59fsLJ5iW
W2PdrbjxTUBeI98T3a+i2ALhPfkmMsuyg6eCTnI0oUZNf9/JdcdaE1ZFfuftJWzagvcuSK5MoUmR
uZvMOhFRl1zxbafXD38AJwKKKTKHehlNNWp8WpQ7qThcTqqnoLUwtsVn/JlHjFrrp/iQCXpnFBsX
Om2ryZm+PdZCa0adu3mKoDZI4+JkZgEnWUYcsyWj3gODtTUdvVrREyXDEfDIJ/z8OIYR+XXiW3gR
hom8cs0WDWGn1d7Zw7kJkBzyAym2X/TcO1L7uMq+ZoKyJoZkUKgBHdHWGoDGwZc34E6nGvNdjqot
Vd8OFbaYIgwWcQiSQaExN5INb4dQpZYu+k+Jz1S0VXrHDShX36F+bSkKJew+FGCnhXwox7MkoM4F
GDdiDoC0fTXD9QdT6ckYMxzMuTkrBh9W0V9Zy2+lZs80iNoG3PYbo/iWEr1Gf2TYVrQ3jI4dXeFg
JZi1LvZiRVI7MBQO7wR8oelCZ2Vv7RnMYFsXVMf6ZoYKf0OafPPi3ujPMWXlEOS2iHq5hq8NE0e7
6YJfKGftK6a+C1SD3IiEX9/Dl9Qx/MPf8KvnJzzoLi2BzDzdeeYVdEpsNKVEfNOo9ImfMoWH1PvB
V1HbLnsR1ybmTKZ+O0vQ0Hij0KB5mK8gRway2JH0g3DNrTew3brXRFRQY0+PspwFGt1IVutoUgYb
KIjAJO7Z61VKoQ+8gi2z4YzTBBad1ViMHcCLImXsXMOfWcWLmWIAnIK7ODZiEAimocmEl8eZnuCG
sL13KqDDtl6dn9a57KqT81jD9A68thIZB1PaHsKJe6hpeetQvHdSHU1sQEbbJY1RUm0LrzBRoEmC
fLdCQcbKH7u9H+kXuxfyCTyg6SYufEm4MMFCAfBXtOXWRobvfvHzESJEUVwZblG+MZ4y59SN+lp9
+vG90TfCHBrGTUQeTuBkbgFupqhmgYX4duBHnuvMZFcFCivOoJbjmiNZWB37ih6yd7K5wFsPE0sq
tchL48sD+PqIO5sZ43taTmJKJh0sbP8r8enTwigGPQm8aItfDdAzw2h0o8xfyLz3XSxRDu8kIU9K
GFx05Pp0R1ZBne7YFIzqR2slW+XxF4TQUcHDGGAu+eASyIyW6pEP5UK43MGSf8wxflmmVLQvjepA
JPUmMnNZ03uqXoKTafyKIve8Ih9/Ww/aolwygY6JOL9RGQ4P8bsNiNbfLzvt/iZUVynedtcqR8uh
abijP8+LaQtlMDYYjl15p26bh10dsCyY3u8ZuB5XWZvDS0IsW6HKMHIiDrOVWTQxgS94XEwKa14N
PE8gMbXfMhAgeUpR90ezQj0VsBE7G2S2YixDEZ8L5urZi30s1Hk05amoA8G2o3f2unw3N7ZjF9WE
Q5K0QUIaZJmpNnB+AMwszU/vjUlMwL4UUrCmcONAIf62/ajne1qdNaGtb/ke6fUND2RQoc1etK2I
Xjf1PYXIgJGnHV9xkYDh2h9hUoOfSFFcczUKckDlqDhmBNMiGFNsaI73Bz8BSgfqMtqcWj23x2bw
hVHqXGOKfqCqaIV6NbbRMrTOJaZLh2cT3iBI5GmvkVsqrC2QsbfGTOMilRgoAcySiZaSV+xFzswh
TgTtPFEDJ2WyTWphNqZOgeEgE6Do94RxbRyDYpVb6xHQP6mtzGs/nFrM0bGy3iZ/DnX3zRw9AUic
Gecfh4A3wb0v9QGWBq54S8kpZQ+4IwtiZ9pYvAIRjtryYgMTtVnYKxxs7vKWz4Qhe+PRVpQ7mb/W
TJV8lJW3hspcrtWV0bNJid+MPuINp9iae3orxuNH40ErYu+rmP4GMrDVPz0/paUjUEOSBgs1KL6j
Dl6BfQzeRpVXHaqnNzyqwqT2nkUWdPtjzgBBQHUyMFjyjlBzwe0DBAr8BUQezSUSoxa9xQRUXWbt
IhHVtxTHpEz5CAE2pjfsn/YHBhp/wQd7mfU96JH5dP0HJZm5FJZQgfEc6io9+UVmzY0h/bSSzmFr
jEGCHcAHytC+EZMHzw35z4o0j/LTaBLr6r+Yo2yqBSQLVcBWhl3yh2JBzCcM/Dws1vHoTIBAfKE3
J0J8Is/YVUX6u0zN0xCgqDeKBOJJ4RNRW7/6h8+t3a/maQuleQRtYQ+XZGmue1K24R+r/80kiKKj
Mdw8jZarlkKCINoIU/aBqucmhKguNXbIzW8LERNGG1VPhx8j0JxGLqgUo03uKv1/qw8QB807/7WR
UlcunYrKlOaZc3hKL8vyTx/qOUpQi1BUKqmLgdPbUWLZ0gdgFBBs6H460Kjk85rJJeOtDMpsPXoX
3ReHPW6lH3NuLKn7TPqJTu+K9srJBdc828m2xo9BAZiPCEPK3m2tmB0kUojj1hOLWWK+2CF1ZaB1
kTN68/BSWx8+OYjnzcD+xFN2zXGHTksgBglxM+2dFw51BUCj28EYqY6CGqF2qrUYhSvDy6FvGWKY
9mJ94RLnQHmyro9v6b90PrXn2EXEmmw+pWYTF6Xqh2uhhUHaNo+tMkHVHfCHM7jOSMm9CXwU6NPx
bN2hwZlpJweea6NS/cH+D9T09tLgK9REl/QLdSUfH976LV/QpltdK6dekQRC6hU1mB+dLv9q3I/f
g8ctTawqrPYOML95j/DEy8Izj8FRIP5e02J5ajHWMObeEmo1/01vNYgFkPNwi43yLg1TZNvNNMwU
ZjBIv/CALuKh96CUASzBdVcMidTDvrh1xOcPn+nQiaZVdE3PIS82wp5zE2xtMj3FxSyeiAcEZ0Et
eLG3bFn2ofD0uRSyAc6ONzVmD/3pJ2DOduNSZTvZrVOj1JcEf2AUD6Sk50bTBSRnyaYWxX0ZiNOH
W7cNpK2tx8mHEODmX3A0e+OjNWs+spwR6x+SaV2rumcIwy4GL6aHTFrprkL7P6IsoGXk9tbNu2Uu
CFJT8OTLdOv0Y6LheYV8b18IizK1w9o2iCY1sQC57IQzmSTP0RXMsGzWUBZzfEljX31uWdhpLC6C
NJWKhPZj0qHdDkPEFtGT1znb8LeeK6d2nxshutvEpYQrNlvHIpJTW2ZZbXQ9IUGvCjZe7byxbO4z
zpEtXsXig7jDlG/e8yn/1+HXp9yIGG5Bg58Q3gM8VXu35zQBFcO+jx/fX5LZNMboWi4cBg/8hgjg
BgJotkd2TWREydwxAm8q4kbByp6iCjRgWYijojVbNzBuFmko08rM1YRiOp9n7qwpCNVE6YY53oXr
OLPTMxosoLsiNAb4JVs9NP5v00AgtgEKdsbIzIjuDTQ1IK5gJqPld9qEG8XZAumPLQv1PtFqQM7/
S8RfpozjwwdW0cFQF7aRGFnjRVDgh9E6Ey5GV52wb8l9BBmZVjuld8neUS16RNLMdbR1Vszwxj9U
EO1fG0IPJ01MFRZ3eKz/LVbbiUGz2cDI1Ba2wY8moKdvFX1n3QPnvlLt6bZ0RdlLvWLVelbR0SFd
p1V5FMgPsFgVjw/ZcoBpZBdH8Fc7pJn1mhfG+VZmjry8hCDRNrVTIuISZoacO6FHwQWI/sWUwWfv
d6HzqHMWfF+xhhlTr5mBTg/WEOvz4xmgS8Zf1CyJdsgOQJX/XRDrLlNjGX10/jHri47z9/Do2oBF
URanDhf+gUJy5biLnkJH5iygr8VsdruahFHUj2FuZ2OBJDqVjVbI1PhpS0n8opDQTjqLHRjY3AMa
pCDyNwTcgjkXOaWBwn4cxjUTdTZrFVZVjQnPDnVheGWyH0wgblTkgfiua5Ck+zbgq6QKuy8+icQY
sS6LA/qf5T4yW5xAYbgEeVXGF/0fl7sS4Snm4QoNyAXRuqoSyLC6yyCQ1NorbgpEhDSCG6dqP3d1
urqF1mJVg5N8925pC5wq3ibNKgg50T3CqQL06jK52TzsIifjk8aKkl77+nCLuRz4WVqaX7MvYiSO
OJsxUEM8WClZnFSrEL7XPqaH8dHv/SDaOa7rK6O2d8rHbiK1/2Y1eqzlDKvqC7JrTo+8Cb92BJzj
rXrerLcu516ZvYcpqS3Btc9F/oQiMWVG8cOUvbLdPwVvW3cvVDJUusJUsJoT14/pIrksano0w8px
4YzqIL4ZQqcmkMG/KzhOz3CWPzmC3jGRqVjn/coTYt9t75rRfiHZ2d//WggeVwRUDrVX+gNKUi4y
2X9VMQXknkorvac2XYmCvjbFdG8qSaLQTwg83CCkZjgmJZ5W8pWEfCYk4/uIJXuvaYvU6DfLFd3V
gOQWdPlNM/RBDiJYbRy/3r/95W/FmiVn41sCGc/TTk+iJcxd1NRgB8S1Gsl128c9osmZX3feijLr
/uKPZ2d/ivGXbgqtsh+6CNxvaifJQygCpuxfD7FiRd9g7rcJg0/8hrLIkDwYdYhfpNRzBqOT3qtE
XICTyqiJ1dMOb2D8KDnXMW2TT/gMu/G6WQjiWbVjCdfyPto3U6QkQ+cgmYtnUbNxZ3/qE7w9YNNH
d8l9ICkZ0I1XI7oPFMRrN5Iv3ojoabqNa0R+7IWSU1DhQ1h6DAyVkbdHs79EmG/z3qqcJ9CtNjbd
k74ktQGRO/ewy3/mqmdsciCupNXCMTVhamKvdJGGeIktJqQEJH3RBHIIzHCimgvx7QwGRpSfC2Nb
aOScQYufLhDVE0MTy931pU+CZSerSrMbwLNzDIeh0Nnplnq3WHHdHfzzgorlc/I57w3eod+4ngoj
fqaiLtmgnHgowxMT8aKeTNnw66IxcDwylneHBN28AHZ0yIf5NVpAP0ZThGYbyGZVFVx6hMMVIdxx
uhD9LJGJlmwFmcCw/oywqp2QlkYUQmE4sYBzVhbEo8ZZ2JNdtnEh0905PZ9XC/IpqrGnyYTvySxR
2zJgmGgU4iIodJhd2bvDh2nXh47PivL0ALLW7r/nV35TWPRBsPuCio8rh/wSBumn4HSsiGmCM9Li
XiSGL4HJH3HJh+9sf9rFp2VGDMypm3k7aU5eIrD3ybjG6wH0ra1GxurjW0rmIuyRITQVkaSFMj8c
S4RNGW140hhYpPzz30UVE+vJeGQUMcjwR6Sk6Zu+QK92QJH0Osoe/oyAvLPEv7rR9rPj8K/k7i/9
9hwzksFn21txzWif4pDAKXnXt+bdF4htqbKk/iUJPzGXy94SQtfuF3ksrokonzFWBkEPensW909g
EJ+MU7Kbfp+//Y1Ih2+nVUMcqyGzZ/LtLFu3AsL6i9OJLPflEe60WBMyozh5xxypazfVGad/KTGg
qGvzLemHJD+M6uWlTOwgHkt2m61wOl+5VrmeNAL8QBfCWG8mFpOltatMmRO+jmgjTW/siyyQIRAp
xYg1MgPm+fk0nAojEX+POAGRmt7GvPFvTj7c54zamcH6+0rFEQo1VryKBoQYCuKmayhDlUYueELk
4OSI17ttltKn4nlZfjhuCl6RoPakchc+dPgD2BOdkibHkfIjNqYer9jtc7YeRMpd/OymRh2fW6E1
gvbkVfkd0ziYyLpgzX3dAD8H8P8IZzJ3FEx9Vt+0aK20WgR7yxGvtVONkPQp5+eVyhq1VJoRz7fs
1uJYWR9ekdIBHaH9/YEStSWn4z0KFfXIQxYGGf4ZmFPTQlMFT43H1x+CbaRS60eyfLvQ8jis4Hy3
KbTQVouDRrQw61WQrC4vqF4jIHyszG/aobL7eINJH2RFMjA33qA+UqSKxRQvNOIIsmdtOGEQHL0R
IZbUmt9jPaRjd4/8ont3wFjMkyAtXh39QDigikiUJb0Oq53hejWiBrsCxEy4z5cxMxYdJiQZCdC6
OmLDj+00ibGYEeXO43kcCr2oDFHAGEedzfZqgWE1ZUYKb8HdV40QeqJAmRp4o+oHIwYBdt4h98qh
Jh2oq5K9PFG19ld5/em9HtMkbAu/3qRs1eeC4NDhL7JiXCwBpbhG9gZQROwQSiq8vEvptUTn85Ix
0SJVNpkHRsQYyYKmsbf0y3Sgtgr7L0YYDnkLtvnlGPd7O1Eirt3NLZSGFRMzrXYsZpewcOXlxsMB
ghSyEZ1q0QdSGKjFASdY0KbHr/+p+6x2Vy/NqbnRDnZ7yf4bumeS0FVqLjaHH/U3hxyVZ9/NGgQn
JWBexFb0o7w9VVRdg0N3RREmMTH9EEnK7OurB64Ca9GJU5dK1Uilu638WhsHcKZCloNKbegL4cZc
FwBFm0OxGp8rW1NtnMsgeG70+14NAcTas+jeYhcY6TPUQMAmQpAFF2SxNLUD5Xie+xTk9ui+3Uas
cEUSip3rD1nqciKparkx1485HB0u4brJE7RdTqohY9x+Wo4/O1wR+own50JmtwLqw7bulVB8SXRy
uKd27WZ3lhaFoRj3y4pUBHmnCFhwkBopgyAphOQfg78ki+I2/tZNsdbAvwmobXuel6d/hN/zfJzG
HAaRwreXsjO2xaODFH6BPOBXFwd08w5nlGCbkfbUQj9j36mj41u76IB1oJ0ybpqSXyTwy6ld8hvX
fJMlKoy6IaWzSvQEBkVPL1LRyWV8K4QHX/vlZk9/UVOjyoqdl8UI0fs1VS9zVMYL7X0t+z37b+cM
NXNQwysR0xZ5GnA1zL5uS1KQADi2AjR3gW87s9zC9JD/oaF3D/qtXNZ/dlvPptVcvCoQM5igJXIo
Hj0Ep21I/SwfTCoaqoh0MRjEX8zIHr56jEBYiRh1SiMTqlTr9WUkUFxFto6J1tVkCohdUEvAD0Aw
/dQ1K7sILPlZaSFxZcbRIkVyNwumbKw/L32vW8X11bfaEqBUknyk4ZMHsNI2fdJ76KFBYDP2ruGX
bD/vRNFD5/I5bG2p7jxeX3gd4ZqPATpTHBD3Mtw5cNGkvtCuKiDcqfkKlpg2nebGlCGOzZXMY20f
rFQFBWtI5EO3SCdtg9ori+suJjxDpEvyceD1DnFyjzHX7YZfOozDjSeXQVTxXxX+0rMgyzpZPjDf
fT+6Mn9U/T/G6RNikvc2qj7hnA+oowkBaaMufdbes/19qauNNIRhsCK+ouYFp5f0dECsqGNwXqHs
FNUvLm58jkjnnXg4bklBMVeu59aqEd4oWl1p+IgO1dN9c0aWY0GuDhXkVyQovvHK7cuZhe94ddw3
QTpras6IMTTEdNl6pqHgvU7eiZnTPAu6hFfTCHYTW+k9h1X0SLAvw/zm4OI/fxNBnN47NDhL16ZA
hmA0fjfK4alsY3zcNsOHfs/1/0QTQNoEwvIEvwpKc75qn/sWc5ePZGHXFUM1vJqkkJOfG+cZWqJ6
MIoC1RfSzVOKpqOa7riwAXpqh5uaPSR78uuMnQ3bmu8nI/JoaQa2/uaz/4ZssyRllV5DrH2Zxajb
/XN3YK/pVNZ3SynSQGwQdl959Mu9VYvaF8i48SEmDjAFtQkUD45WdqS1cybpZ0zLj274M5gpElTH
StImc/4ODLihWSDCdLdc1FV+P2Q0VfDDhmlXeph4UXsMXw5WzlyeCpmEcSTV/ImthVelTYH00QTy
oMx0cKz7Fkmh8818pYUZj0VUoXOakpLAhaNQs8HXSuCxLj3nGclKcr4EuYm8sgV4R0mq++wO1R7U
Uun+6TTCy2VcVTPCx7dKrm83AinpHnnj+FMkooD8qsUA0tblBaKBTrEBoGYDujyfOr2O775WKa8I
FcwT7XT49qJn4aS+9Tqs7uZKEsxlkLsFXzQPGwu0OGtpHA2rs35E0HK+96jyGHfJb+7XEUUDUp+Z
m8RYP9dOJQxYBhMU0jeJbwRFjrpbHG+4PJupaQP+EBgKTxSY9bdapRfRe4IIGJcUQ8fFbMXyKZFd
VwV9g+gK1YeHP97OtcTof3k9Q56k55NG1Ykx9usf5ZCCBlLJNETYQQAwHwns8PeWOMH3Q4cgPQvb
po1NmXTC8XEm/67RftjtfcILi/seUMJrnT/HJ/CkMF4f217rtUuR8qGjRyy2v5aw95Y5ON9kndQc
5gTqaUoRUPv4wS3PNSYhicmxAei5qdm3WSJUWBsGFTs7qwEZCH9ewNKg7QYkTSgpzBAefDCyEpfc
ONU7gYxhws9Ny+f/HiwSRzcMmIeWUy6V1NknXQUuvnU6FgMt17qaoVz1JOs8XLU9NHKfIuNyEgkV
jzp8hpnjMdt7pNx84FwYBIcX7uPScoUs++MAYtFq6ShQBi6F0Xe9pgJ6AJz8KBLnjAA6f0MMhL4g
rmtaoe6gZ8yNugCaQaReY/s8czCUc4FUF/2Eza5sKWbrSP10JXzoFO9gQwE7ueMmAbnOMBSWUTmP
605jCAjSTVZEKM1Qk+8HCrQMMj8LGk77dfE5is76Dqe2eveEZYEqvGdVos46j1wTWE2Af/2VnbXr
T87Zy1Q6843Q/y5EOy51YARRbuZJN5mI8JGYpSuQoVTPMaOnRXFSQrDJNIQKD1wFv8yH1kawGV83
E090Fqw3uSgmE7IdMZsZ1BkUAFfQK1hodL6h+24CpCEmg1HMI8ISUEm+AFlL+zux8SjT72oJTxKm
zAHyEB9neP2Bg60zEBQhnmkRzjM6zHZwW7amlYCcquYZHOER7zX0/qVWyZb1tcHweKPGA0RmY6nr
U8Hq/XEVfTlXnk1rWaWYJcV8P3mexDLExrkNqA/TAMKlb3zeYPU0jze27hMllMwifiIKSO0m0wCU
tSU4S3GjPgJauaeeCP248nHiLUgUeIN7HqXTqNSmm72DUE6tJhZtu/pDKIi1ZZxJrMOaOrqx6JYF
OBHQkVOWScrWyUOfZy5cbzse1PJfSHtEiK+LULFsgnTMrfD8ErsR2/Me4rwsHmrQM3zhS0+OYiz6
AMvhOlPNyL1DVE51sG6aNtRalUjAns6JgZWMn+HSR0LxfhYY9GVNHCexdLbneVyoyKp3BiZSWJXL
y1pBT9M0IMtOCJ1he3XznpX89kLqrvATr2peHX67D034tOQSwH4hKvB5Hj+BwI2zKljeULDfa5Gy
JcEJ9aq6NJ38I0eTX4c+QGINsvP6TvWrcbsnKVxZY6XtaQkSnCj1frOFiNuC6aPAvXa1esHCBznB
kpyFkNgIml49VJrCARxMn6pDyBndFDEtEzPEoV2aIo0ps/ORy0R4X+EwPAGZz9kPKsguPAtN5GOB
BitshX5zZddFWrhDRgI5GVCHyS8ZWPDZtJKOmNASQu69L2jkTGF6Gpwdp0IzYBH/+4XoS7uhdLr2
K3Vc2QNHwm/HvTGhXmjmVWpnK3n3DphOCMpePH0qvmAJt1j9ipr5H+1Bpzb97trSCn5Ix0ggLvsC
oHsoyEiiP3gBk5EhroF8a9saxLNDX03PUreABTzbREeSlWvR43hDF1GLytp4Ov2/HY+c0eE4S0gk
xCNFB/UJKqidnUpsQ8sWIvlo/MskbUBMcaJhChCHRYS76k5xmmOSpJ79VJN6jssYV+go2WS441br
pvb4L8SrLKuJG+uldWA0ghvh340IcGXDHWBqR5nzH+rNIpSdzGjLmA9yjRM8zR6BPxnjFyPjPEht
DcjCe34nxpchPt4qXkTkgEU4rD2kPmkm8MTzKJFNdrbJJka3NNUYcYyUa2vUh1IeluUg7uY7Z6RI
ADcwFA0Tsm5S7BCCaKOc1rH26CkGVqI1vOkTMEdCt8671qMMoZZdIl94ke+kbaXkD7VWPJ6bX5sA
S+7tOa1bujf0FRLCtkEXyB/pawVvo2gLGzh5JK9dprYb8VqaNRI/iuUdcELVCS6gdHzorkJua2W5
1VWGKLmPGncYrSU+OgyJ2261uf9NcEDHe7Eg/pWKCDKCyj5GbkTj36vpLWx8XyGjiiv6/y3aiP4c
hL0YkB0PzgoLEeSckjFJgrb2dX5wkTiCKgNTC2xjEPGvSk3Zhw2sPd/i9AIvMlyCdQuXx2DLFzHc
4ZJOb+XH7kAYprp1O+BM5L5Kpn8r2kJlAwLmpCD2iMQEAo4tn2wuQjh6raOmRVjdsCgTdRRnQwcV
dOO1M0o4aS04smadEHiTBFrQYlae1DoXPX9ObZeue5KrgFh9zBLcEyReHDFlF+d4ZM942FaLkRBJ
uDYuGRxnsrVIekMKWY7omrXcQjf+EiJwQoY/H5Dc+oc/HCWM0W8wXyof7G+PWAj2suiSgOvF0mYQ
HhFPxCxA7Z65SUnw3UXi0p6w0zD1wh3ApbC/+2JN0iYSCvhugepZbHRjKHyLGVDjE0E+rJc6cqoL
BpV+HKTzGr9FIxKh2ZxqTNaLxcSH9uXrCTOzikxpiK4caZYJ/1fZVciQQQFy20K2EeKv61xSeAUJ
aQPMYGCuvJ8c8OgrOj3IY+3FnJ9iVAXRqQAHiDM/eTYWu7Bee+EeJVZwpWpWTqs7HIzoDDPc89kY
fmD96QSxe0pjBsb20UNUxWr5X4rS2czfYQym5mxOIK3Vrl9PlsbmpKhu4OoImyeh6T9ou0sqesxD
HPmY6OKfnCZDBb0RDMdgZl9aoWBgm9BMG5vAYJnydlW0EYliYbMfGZIAF0gsdv0tTOxFWHmyX5gp
135+kNydqSlG1d2u9VguQaVb7sTaRn2nRS5PA/P3uteIQfPHvAwOobBQR30LP8X0dij6GZE/zUZz
Rdjah1+0gnzkVDc9Mf8RrCzmfZ0tBaY/4TkxliGdvHoRpzLl8FOU1xUhFk+xPI48KYKe/BxpkZSj
EgRwv3aQJOQnrmXKbQtEvbqHtLSTPwtundvBniFtUevybZ2LimocksMtJyfFW15XIVVPq57GEQMo
PpajF9Q8fn0tgyVxGS/ZVYtt8LsNHAxo1yzOBhrZ5KEch1tKQMvT5CuWqEKHFugQUE7WC0jJX3YG
lZc/q8TWBVkNEODef4yqHYp4R9iYriwsKG3gm0Xi5qW9lG57GQudfaz3NoKzWQH10FCKlLunSNO1
RIfHaqzid9ddQwv8/E1X2Wn6q1bXMQwVIPM+relcAgZ2Fz9fCYjhwaTo5IWTBIPtRJetPxPF52Ll
/Vbc+SF1oo+FtOKKiCY7eqT5pPWpsJj1140E5kImV5rT+YGYtYTU9esoB/cZQZ9DbD3RMuhABW82
sbRVIovulWuzZUgFBmHxyvgAjIGm6uTGxUvnEkWNqa4EtI9htQuB9fE2ywmhq8eWV5jlxg5jgVII
Qstz23huQhzAL/SxgXFA0zhLAUlb7UugiL2Q5GMXFVRFHlY+sVC3VarThg2hNz4e3bGtc1V4EJjh
cplevPcJbN1q3auZrMADB3OZfmhtB0tN5ALyqBHpCpup7XhfEa9YoXx/LSXZD/GTLEliZbjMHL6/
MXF+kKYnj5vK6YaU0pVAsqxDnbYYAXpDZhr3eePpatLCw4lnc5Ptb7/6v2x4si3HWg/6BnpnZxxs
v4tHwcPaCHbWbEu5Xxil9dNu+XV1CJcAWe1yfpUIWIzOOrajIsQTD3JGVcLlGByuewE7tdoDxv9H
7B467lQ0Tz/5rjILr0t1G5iPQVyUl295des1CWIsSA1McNN+oFCidLdWbyHDTyEAiwnEU/vCHG+Y
V36xRIZEgj/fCE0MlTvGR9YpC1zrQBjisrCtDipRbpw9vSD+27llXBSg0V5qRON+E8+3REKvWTcj
DIn4/enX17jwmGR+2NaJNW4KT5PSZ1aP1ikBGqF4zECCw7YW5/pLrT/2JiuItlbMxVQrq2CYl+lI
9IuabvtyYtLoMiDHpwI9zxSUYBXQ1cOMjTVlC08M0U3+pnWqa0SheadK49J4FKxZyPDlGKXCai80
J2amKuKi3EHOw4C49WX+FxsAqP+xDO600oH3NosazOP99mbZn59EZeUr/5/RZ27Cu9ywBMvuLpXV
nCvgBZMES2Tu+dRThjmNyUfS8/UYDF9AFb8LU+DcGTmwZL4mOxwPF/UdElcKQ8Jnq3Jv2ydj3tZF
6k8+W0JRUNneNv4pEJ4ZWBjnLGy6dgOWiL/POkcgLFOaSIxbCjRk3aXlU74sVTUqQyCmDUKN33UW
8SbB1fBh7j6U0M1+0dBvUEWwye93ptFABxF1+AKSa07B9wf6DHA+xXVgEuuITwWHdUBeiSZS013G
yA7qKIHx7mhzx5oXNmOVu3wdUJSuCR7TMXCIjnP4be7mHowmYRJDO4bNe/hsOndhzdlj7ZQX+UeV
HCVcNq8gyaFJM58i8V1xmny4JSkOZb2lncFZiUt0Haqul9/804anl8IJrZW7KCi9WCotmmHuRVBU
3nllMWVuxmNlGYchqLsocH2WmsHLiTWv68GRrYmN79CDI9E5o/Kh7OKmUX1o2tlUS5dHoGXILMVa
DTxVWZmuWojcQ9ln87Vl/ycv4f5bZXUCPm2m4eaX7LL36Tz2bif/gEFW2LP/6mCxPAt8+073papJ
3Cjr3jZfFgIUVkxf+dS0ENEGtjAwJMuH5gE6mCiJx7vqf9yFiDck7Qi71Zdccul0HUZK33Vkt+Sv
4m5ySB+DF5qPF1L8WfsZgyu3uj8jS51CFH4FsA2FTDwuf+jimRfc99SV0402pg/QHj/z8UuOqdYz
17TzdMNoGiqDYnYAuhaMabSfLt7uv5Rvk+AHo740qojIoWB5yIOaCyy67Ub6KMPabSGoGBG2sCxP
fW4e9tayCMkh+BtmZcwn/s0Be5I6V4lbLG1wFSQG9RNJiymY4CxXI2GcP1xjKAmiX9o8wjMHdZVz
EUzUMwNuhcToPDjOX8a4fFD6fHuEFfBKEetURbO3YP6b0rZPhIvLvYZTZV4Aq+RR6HYy83VnDz18
7IamUgCzSIB2g6wVdWUg9/oUbah36KGrJ9k5YyAhh8j1wWC8B0JJHVeNvtKin1ez0H9kuGS321qu
IvPeobZgBYTZaWkBQQMWwkNiCj4hjbqIAZfPVkHkTMeGiUSIT1PsyH/MquBU8Rnr9H03gfd8EcSP
KGpxHpzpMaODFMZUSuZ6QJkcBcVZieF6eq38NlJPWGLk+ZomWZvj9N/nr5fEft5cKGKT60rKEFNL
BbHKDpWIh/4OB0S8hekDEYZFvotSr8Jgh/AaxYbOYxKw+oEQ8oyFIKucDfUsHTEpXVUJ5vLDdMNp
BX1s/45Ou8ouBSXOb23qkzECkyA5kIpC4NRj/oe/TfJgiWjbmT/aeDeW/xxmU0PQFKMGabKBBnfX
a3GLMKs9HK0+7ZywmgBijWWOfiDxZT8JJiipCQWJVoYmuSMV0jrM6FuJXgHeDjZ7kYVf7ga08Es7
jcZdOIdGfBxkarHd+DwpeFrlkWVYcWoQGmAcFrBRo7vlJZFYyq0aXGt/2l3P8qYD5+a7DTZvDDYQ
ZXb4AbBgl0OOmGeaAIXLMH3pIcInU9qtq+zZeA+t3WCO9ZHXY2LRS8OTpxdvIoPegNw5NN6TRM5O
ZtfsBPNYmOrECxRM+piK9hDcejDqZoCWuoNxaBARlcd0XhwHWHJOrkNUeqakhC6M0tviaSKY0Asm
GonrPoK0I9BRwZ05JnaYGsnw4yppDkcPdmNsOFc6+6RhpLvbvkDPFUt8f2hf4Cf8TIeqg4DX8j8s
MLYrka9I2CLWTNQFqbNF9orPhMmW1+ZuNYszlLO6/5XKJY18hv8tOmP75VIIk8GPf25BOcU9akFk
s95YBYG9+JIaX3ZHVU9605ClmV5Ebz8jKhnu0agNaObGecPi29gQwr7f3kdpYZTtX1BgMWUKbHhN
1XVlN6aDjA1lunzOPvyhbQFG+QfCuQLY+o1nZAcce8wmR5PUFV+dKdT6Lst7vKRTq41M+kcNndkK
FL6kCGKFwPWtDwNwr7LAs5lpJOkfdvK4Ufrbnos77PoxqEXBzIU6uqwvApfaxj4MBV6TVtGcXmZG
wNoJ9JRfRSavphy2rlIkeGRxKpWrZlMESXELSw4JLf4gwEEoqpv9dZWB1GRNhK9c16HqvFYhhXPZ
mqnqBO297jaW3P+bvt6i3w/T/TRGaxvNpDb8mZbHYX0wn68yDkha0tMFNz4wayDGaqfWWJyS/kfy
4DhOrv3ZoBKjpZda3Og0NPOFjsJcETBSDpR6rBkqIKwrxSU6D/s/eUemZWkmxKF4a87/VYX54/DI
AmA07vzf/kxw08Ikp7Vf/3++AMaWpZf5alZY3kjmqfYQxJqsfrMuV9oqnHDuKcr9aqF8ekr73e7+
KeLBZuobel/OMWFh4gFmF6S0dOuof5YIN5t84IaYwYx/mRJQARBMSMWPSNxfPNvx1hGJpdJP1S9U
Ngmomdav5A5qhvNj0BbLGYlv05ewOe0Z7zf7ru/boM1/stiJVkAoIhJKKiR6ZvONPMVWqpvyeWTh
K2pGhUaOfL14oMObOoqAf6SDM6/jBVyL8AhdfFEndduBCEAM0wdYhom+hkmXcuzi+K3v+ve11/po
4jiE1M1HkxzFz9q0X9ZHW/O/JMKWbJ1KwxGDrcUkO7Qo3PiXisgujFfI3EaFOlXo7sC7bCJO44GU
Wsen/YkwHjUE+g4ZymsBJDdKSlWk2TckFo5dE1J2vEqCY8tgQnOSCyQJoFigbIeA30bSz72HGdkk
5Hl0oqxQaPtaMDE/YxOvXXrCwVhCX5JFw50Nj5ajJ6u729QX1bqMt7meAqLzy7fS2UJeBlZG5IHp
07B7VHJhNcpLlqfyheqKBksW9gpCaQjXLYeUJpOzbvu8fP+0MPeLy28oUjGob72BCM8J+GZoG2h8
/8izvLH8m8KvvKCeT/yA4bWdROI54Y2TcqAmI+nGHGymqQakJLe9EcfUaEwmE/JTYvnT9Iqep1Ph
p8MRa3CBNXF0AXpHN28X6Q+Vl7zIcM1qwbqqQb8Rs+LBEzBxF414ALEFFCtRvc8Vi2R+EiJTzq+f
YChinKPvI2r/rTF9OnfWJ2dPww5QQ0VqO1xlIet1/mkL4JTW6C+htDc274uEnm+k69gEzfJhgOGz
LpA/yZl/0bI6Y4jyWSsP9wv4QveIbr/XgcH6FnK7JfSDTyxqbC7tfTIQ299qftfAqW//naM0Biqg
rKLqORbq/0ftTlk3Ef9cscq95A99mgJk3uGDOhvW8ZZfhzX8XXCEcHz06LbLgcux3qxMC9MXWONi
5HF+S2Q5/8YvOhDXnc3XvVX/aKCDJvM3rhzo1U1Vx80xE/mffy0Ih8LT7lV89i90w+9Pwi4tTyhi
gjwDzAz9PfxNSAaIg79yQoC+tf97+SEdk26vE3PdqvsIAkwHy60W+ibCHqwjwCbloDg6jocHOYT9
YSXti722pADpy8DFyOmEktF7CTDuX8laWLRl3mn8r/6TzCX2C2G48CAIKeP9g/m2vQjOozcOf8Wk
pIbQ+UBDGMZw34KrTObcHHzCYaUqmfQLEZYnxQWLv7LrcZ2KRGWZ8/HLLkqnJSa974nfTnPyLF3c
GneNmf5G2TzdWObyYQrDnsbuaVAXO3i2AFm7DW+TYtmpEYsOvneriHFnfAChJJzERydrQHLX2Skh
HsIVYs0mb51QsnebTJFqByZSt9JpthGUt89ppBJGnlck1X41/lrK9RzhwA9X9LseF4eI1gA31kUm
9F4F4zhKGUiuaCf2k16te6u/VXKcENDWsG1OKEcT3NfBtzGnaZnMmzwlvZBeURYXw2YDtXrPdSgD
A2mOxzaDwcWndbmjOAxCo8F3kesMfnkeIMO24rSgkzLIlB4RdDcdlgQedCl93qwxiZWfPsg8JCyB
ThoYNMC4II9TMAJ1EG4LW9m3q1hYhJyhOdDix3n+TtKZ5zny/DsxBStNNvno15RTJLRlEWgh2rp6
hnxq+oQvthNaQpU001RtzXIKQ8CEdZIRPoiLFX7s8RKbk2sTrPDUqbpDlZkBChxttmdsBZ7i1Nfs
Ok+9R+nIKlyzImyPfjyUdmNo5e0SGkACF/ZKekC2Nn2aQcmDKztEK5srHbZFkIsSOk30yapLoCk0
kFZIrsfcI2Z+Pm3o3pr8JRxBiueNUuWern/DovwyeiFAklOmKTy+zhxUSbpI1H0kfo1HiUbhr/L+
xFJbpDIUG3T8V4VQs+k3iTPgh4i6sx3rhkHooO+LMUc1ujq74e29UbuixFOLbXBwvvV1TrDwJ9Ic
o9Yy5muEPVP/bVepgLVJfKe6dusW6YmFk3vmSxJhtxCnfueILrUnfE6FUhD1LHgHzATpPYtE8rLq
ABMufm28c66gymgt/8ncbn1q0u6CvZj4lc8z2oDLIxqt2PquqXPThhyRMP4TtHCPg+8uTUQAXSfO
VTDa466x7eHHXNJt2SPhmmCiEoHGBiyOWRnJIBvD0R9bJtmN1qDZsFdUtHpnaGufs/jHUi8Y0wjh
5ADqPrhJwFttrPLgF9bNyGPlQljF3Tuj7pSP/9oulzyI1v7URBc0jG/vt2PQXfiXbvdi39BHjcHk
W3u7FhOjFh8fzfHMcfrSNsGlybvLWoy9A0kFNKuBg/kQXD0RVJb0TJ0ACRs9Og59xajmS4PasvKz
muK5FzaTxvADaG5HueYDkU6dgKlHark2svoqdRtK9OKH17+rRlC8pn3oWzP6oRvWhghr413pFVVT
/k9wLH6vFJvyfD7kyaizRccCO7j4TQFBrsqRW2Fvs3GUOO/FkfAO5E7gLFn3DXBC8Fn1u1/1wrPo
r1n2aDUH5ZvQy384O08uTuQfdyHQ4qqX2JRvlDpp+Tki4L7BfVxlLxZux+rcpQeLDBUCBgBwZwIi
l639pDPI1GybVFKqYC3+NjvEl/Mu7SD+nRkKI/XzQKHNJvnv/OWGvEY0idjoXPcAP3t3U/IHG/vg
7+czWEpIuGI2VLETfFeX4VVG5TtQ99bN136st4PMrZQHB6Jzf+8qOh9ZKk47+fNfOPIcll96crsU
TCPTYzs2KO2C8ptO2/qZe13Px2CoGsgIlTZ68wU/Bk1o5gpIsDTtVhGa2EU9OdK5bqZlAoqvYOLt
oNiwFKH2alEG7qVeuyX0IsLuGOE0CEkvwf4ab8aWN50hSZRftPD5oTiMmZNHK4pfv0nbN3lxsftc
2DqOGVIjBHZXpy5rTYl1lBdKVBP+NlGHEvvinsagTjkvnaZgTzbglYP9BZbEZTOPEgswpkcAe5SB
XYWonLNa5FE3hviffwmwdwSs4SZ34y1HLnSYp4QlfliNRI57Y+A/W6fIiwcXtlMCMr69NaxhFMhL
3BUw1iG4gtg7eqCYCIp9xtM/YKd8uZeEvhEcbbAMRZvpwXcZyXAUfxT3i+aYi9ljfVHhZi2sX7ie
C5gu4XEVUVfFB8R5RsVxnFJV1s2llB/qKsrH+NZOVG1FWmXrXhfL+cOq2On6X1Ib43DXPW5eElBO
rwEKUkm5NOJOQlFOn/bcyAFHCi9RyqF2n8hZM/91OPmkLHdbOdqNSIXBtdoamPf1ar9Ipp2e7uU6
RyVqnCou0Kl8PTWbScV7LFL70MlCq6SCuOUs2bhg2O8Clfzrrn3gC9KBjmye2VYFWMfgDhrZVYL7
GICyow30skuyo+I6e9NoFXZXDrvooRmJuay3WN4H68jIuyr8wAFK3LbptYto+l4bnK2xyXvZjxhG
U+CEtW7PCQe/9efOzl0Cqp5fAFCurWY3DaACjB9PrkuOuEEjCTTkxMGoju3QXKSD9IW2OMj7xHlN
wqosKEntcNmH5gi0FpiAFnK6L2RWYdGNmXxadLykOaLbSV7/I2VQ5ac6zF5RkjzwtLgAbF73Kzh3
jMTX0UpOa8DawcOqPoSU+Q0YS9mN+DObS6IW5/QU/1F9SpVfsxSa2xGC1AB80SP/h5SYuVaXLV7X
N2AUPzcTAEYWZzH1gLwiS9tLiBHQVbi0icCNz6U3dPjl0UQo7qJL6NoQ0ctntH5fYLNN01pHNF6w
xX4gpA7q0JBYpgEqdPJoW34a1kvufJegkGyoiWvfK3OrdbtssZZh77Ry4tlBO6GrZHlpWaRNKhhI
LGZSkdR3baDPQAnoRsVNJIIWwmgjfgwtoWk0wSzdN13eITRmbEUlpE4cTHamqCysjlSJxXho1MGq
mrGKrpOfOoWO5bMxHaqzO5VrIYiU6iaGHopd6pyqby5Li7TvaA6Z8s/Y2vKCIJbVjFMqpb1pwGdr
REjDYrJvjStGwDRzz/kDc9JZ/DSfYLS09BKJHr+FV7+EDlMaciY8zo2XpEoIIDVz71ME64Y6K5dh
6XPAkhd3gQimJ/CYl/GESsIUfcWy18TjuGXSnSTWl6znZqJ+DpGszp8rugE5iFWDA3lb0Kg3oP1d
qUgJDzlrb9exc2VDL6wUKD7Bk7zjdSQa7GTCZAYA97F6l+rbbFaQKSrR3CM9Fr9jeu7XqgXi+wqe
EoGOTwwfmp8c1KUJD5Xnqslwk/LzlmDKX0ILiWM8qw1XDbZVxQT0xTs2WfA5l2Jbnv1+raIvKgHW
J9duLzNegPEbo5TyPCj+tZdBKWxwh8va4PgZWccgT94QjQ3I556y/wcfoL//4W2aiqXkcIb246Ef
Zl2TRrHSGhqhBkoMTZ5MXMDsfgdfUrRmyfG0gijU6/3jPuIR7JPpckvFdYSjumIAI9C+GfDZM1lN
8sESmYuM/h6JQuNC8P6MPmb/x9CreysoDZCn44Gy6sSjXTyHCygoA06lA5brWgv7ZlipwajjsTFl
2Bd2OgDplJxfKVji/uuqjWmyTzQf9Vj3Itj3vfROk1ckM7gqKLRYxKz/fzobWxi06JRpan5rHNVe
UTTh6ihhQhoNIUstOTve/hET9MiE45GlO5lCONGOs/K9euLs9Dg4vxlWp+V5A6T1UqADEm8gT6dX
u2EPHFdy72B//tgOw6uV7++3SK03/XIAai7uQFEmw6X92di2DbCK6n4X5sKWfAQyG+WnOKDjuktY
D+FNVFIai9AiEEs8MuIQlz4Z4FhaVU8quiUGA+eeI71bl8+xvHmwpGgVAASpxc0jpSeE8xsajMo5
cNc1o3tfNystIycI3rE4s5jAn+g2q4RiiPNWd/l1h2gRLGsmOmoIxK2v7XZCSPDcVDEdLzZ7IB3M
zCbzxG0rTl1BXIdebp9A1QC4JkE0IXZ3UkTJiE7aNo9gRVhspcSozv+Tj8p40saG3lJSNaKYhNAC
+P6SOHXq+TkfIF4AGs8lTeX6x+SIQNGnpAQybL2KlCVfQrxSlyF7xOmVbferkcldugVc+6MhGVLB
+HU2vKC5vGYy86IiUuPE4XZJRJd0zE5mtktz20yTqbVd6oyH95VDsJ5sZR4mfXRFabx4BWD7pC6C
i/BOe/UkptXbG2jIrjKk7Fz4LsDG1RQkaYQgPBLXnSaTG9RPD3cN7FQct0PqBSc7NALg+Vh+E6HO
jcyLdXJO4Ig/sRWSadqwuFjy9AVbkCtOaHY1Nb39mlHEDsC1PAx7CNDM8aAk3NB/6vnSzPi0vOCo
5i+rEiwj2ZE5oH9ztFUFFYOmf6MS5ZZSImvTeEzTQkguuHran3iPAY9FywZ6i4+JPyIo25YvHtc3
LvkC7yI2brT0HIadm62RhaLIa0mIFyC7aYLcybz4xAPF9QOQlq8xOC87CEV/Mj0wmtWqdq8S2x1X
hTHoGonznK4dawUqbNQ6UFmkvz965mqVvPUFojCCnYl66cUXWyiC8Umk+qw16uM2/ud1W7wUBWt3
PBSU6QZiCG3KW2Kt0IczHDRxJZrfoF/LBMxAhDLnHziOXvFGX0YnY+giEmMPCPWVheJ/0UgdrH6U
+teAKpmpAW/7sWgoarrvaj4pnX67MLHV1GWz6S0mWFs9lna88DhbQ4HVa/tm2qN32FjvCLnbUUWE
MBkn0AnzhjLsHv5BurV8V0oeA/n7EAz57xt5xbwhvICHkPoacNVAy4SCRSAJmZ9jLcnbqQMxA8lG
4o3+tI9QKysOauY9HVt3MWMReYE2y1aH5G2zpDoon2eyuAtsTZwF241z+xwLXFQAzqZGoivhypa8
/414kOSGzu2VEeux1a8fwSFSzGl3NCeZb+PIKvbr/JvoGSSXCMVdTZye4CA+mxj4oQGzpBoQU1Ec
I7X3CxZ0mpfICKaoW+mavwsea0bM8JJl5cY5K00v2HDjd3ya0rnzEh7UE0zFitZhjqt2CNIB2MNB
VntnPhNbSy3+xVChZ2hHNXDlm4DheKUzfwhC5VAJXV20CrJSJiw7iIZ1RKDvDLDRE6d+tbKD64oX
cvGYkEVDnewD2SXolEy0LelRxtAcr+vENK2crgfBz4ZEl2QJ4Dzf4rURKm1WmlreXbcTXK9xHM2V
sn+CTnS2erR+BOFtiVcDYVdmmBxDjeFPIlGDaTuv+UdXin7ZqalgX+vXQwtTY+cV0SVugcQKtsca
KqXUEoGghF7qHeOUbdX1oCw02xgJWhpzmwzyXHwcTIW2r+cgmoEPpRqR81luFS48otc0GtDuCJGd
2LH/8J77Rl7EQymaP84Vr9Ft0d1UW1L1dxs9eAdD5jnxVFtT0iHT0GnLszq+tIaDGd4iU5/KXc8b
uJfvPdnxzIf5uUUCpzayL8KQf9fFGIGbAW8lItPIm5S2F2PQytRckZxx4ftS/y633CpwwMqP8nrv
CFV3XZTpUEaGuiXqo5DOWbV5eDXC+uVSmBQ8GCt7rAxgUkATg2QUSSBqctPHj/anqYO8gnHVVLPg
9mw5VZq0SAx0DxDxg43ydNl1FLrHQmRLFJzOKPG/Q6BnHvheJu+vF1nQgq2UrjTPW7/cWdNFiNJ/
4r0NUTSPyyCTwywrat05+e+1xTvJbKbd6s+Je9O2SR2rYOtQg4bQEaYeGaU9ZygvfUVzDBh7KdSE
K8OzDXbNG60DsTDZnkQe8caSaenbXfDs1zf1+3vKgldGzRMqE+l+DxWYxfD/CAwmlH6VePCUlNAu
XYiCzjdIdxnLrUIWZLB066BPJh+B/3Nl4NREOTZidXAr3njFcuGM9769NhYmt5GLAsfXfCVXEt2g
Dqt8GlXZHRqA4kFon+GhEUIWjqyGvOFmpxwkYLW6SVObnhgs28BY3GgCgNdaf980nZb3aRgP0ZHQ
2VrLiqj+7zsMUFA37X1DwHErSV6OLf5BGplHdNmmgiOrldwUK/t9+ESxIGHuoSoSXML2F2Eno2CD
MBTd4W9jjaiHGXH4+Og4siXgC8MrsJO842hPxljNHhSW/XW9ya2b5B77uLSMVCVWD6aTagNKvJP4
INNeb6nMVe0AcCdIbjhlsG3QtWen2D7jjKXedfKhpQ7XO/4HgtNHH98jN8NvmiZ67DHeAwJYLg7K
GEoezzO7juj2aYhB0cZ+XoXqr9MeiqfPKWEgkfqIZRz2TeeHR4D7phNrDcR3bUKKMY/xqH5/wzEq
QVpP8kehbYPL+Yq56HmsJT/tfZVW0laaAgCEL+eWYr0Y2LRFHDDKPeYkj4hPVActsRtN76UBDThc
TF82n7xY6R1a9FCeTDMAMTSD7BggkhFkUzbDR8Sc7N+ZR8e/S37wd7NgD/OhnOP3QI15cCEH/EzR
HNTCQAhQOY/RB10xW3Pj8yUAP6Vp0Qiq0VAu6z/Snvf8qJ7JqdSzyuQW7PY9toOhSQ0c9tn9KCep
oIq312wYkEkiXmc/xmWinbiYGT9LrBup1wecWJYll10Jopm+u5XzxaBqrcCksDGsU3P1RNV+DM0Z
hXExruE3g5zgyrS34zAaifi/wTc/hIKI9JfZVVFGFkGBZSFF9A3iv+TI9iQ0KDSTa0IhQke4eAI0
q8k8EqzAMYc=
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
