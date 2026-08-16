// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Aug  3 13:49:39 2026
// Host        : USER-20240108IG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [35:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "35" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_18 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C/5Mh/YfQK+xvzcE2CGtETuPBeLiyJko5tNa9mMrxf8GTM/0mqqMZ+vYDutRWwlkGLoBJ0ubJ2JM
hSYnF9uwe22zt9N5LFdSRZxMoN1o6c2PdIJyFX9QiG+G0k5olg9eEzsigfNpc9kE5brQ+zVlZ0BV
klXrD05hnhWq+ZJys/w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nhu9PWmxjSOqIMDTXJV+4qo0FPiBJCygcWuN/bfQzqY2oUKKM8378Fb2UT55vg8n4G10m17vIBgN
+Wy6buZC7GhxULhm+9qKdG61k/7yfhvEyQUBzudlOBUaIUk7ZAeE6SGH26C8h1WgBFSBJBshielG
kmSnefelvtJmMqQynpqanYQE+2/nM45zHVEXMtgEl8NM+ittmjnbmsjMG+VmkcpjTiitr8v+SSgM
RUwmbOuITmj1SaUWkm+IJTDW4bnipSqF0iXScNDVurlEpJm4oLvKdM1ottYIIcXR6+Fa5dGLRubI
LjYe8sQ49kCgXyYdFk4JbJANd3OdYx/U0839pw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oLOGB6O+5m7WVYa3aB6L+szJIkfErI3K6c0Z4Xd6Cc9YLnPbUoTR/E3N7bfACANo1RtCR1KrgOT9
QRzSpMaWuUNpHkoBWkpOvvqpujGg7n+KNjtsXpeAJDMZq0hpkCFMyTIbglQJfVL4ds7LBIztVpT+
XPSPp0rHN6MvUs/o0sQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b3H7uIeGCIVDgn3FEC671rtMncRXCjR9RBfw6OuWzlyF5wFk4ElX2tB2gwrWUb2Com7mmOGUcT8m
dWBnb4fgFyaI4CcP0cDJZ1RBfKHzHsnVnUtydmh17jwFjOhuG4oqUfxDBVOziYixuf8xqsPD1kIx
AAGgp8eCh/3TTWsXe8MqUHFhWLAFBHiM+g9tiFtJxHBAyX5v+8avU7rSRQOteILiCl/aE/ZTg1U1
TZRYZm9xCtpTek8kcIXycf8cf1vmkeYfjYqsPcKnLXjswHKcSvCTgJBvdf6/NU1hADbYz5krZkN6
cP43YF8Es6pXZ5MZxRyvAulHMEmC1vBKEV4L2Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hNojWTRiv5xJXFjSuajQtOI6VJWjSVIasMceSy/iOADWwlykMyPQqJwBZv9vgyG2lsbPzupIZZOt
sY4+VQKC49eSzzBiqlXJuuRgTh4eG5Sj78MJPFi8Z4JHdANbBDjcsfEyFcFinPG8C+6ObqSWv3sT
fh66lPvK05YKvRong1DaI4yDI+LeF0XCXF9jXawejRWPqZyQQRofEUn3P6/HL3rOQ9WrwtOgLOh4
eld6oolD6hKjdN6z7BtfypoG1+c9GyXB8peQYSYy2mC/UhPM2He7IScIeEh8FKNZOETke8ShtPdd
8KijcT3YF0mZbR+JEAYmPRwljDtmkR1nmLPJ5g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vNoNhNOiLgedrjzCipcIWa66MfCSJrQLJjludHrumavTx1oA+4ROcs5sx9EIY16AxVabVb6PSj/B
6g7QMmhWOHO5XWCGsLGngpWlMaz7FPJIrMDMH0FqHULVZgn+ytshKF3OiHU9DKUfGAkx2o6xKR8J
v2jv+NfcjYrjtp1y5L007VCIwcNtkKJJXaDQjJxbYYOB0uzxwQIXRo+SEib+esXDvZD6Ikc55nl4
wE0bh+voYoBpOgDoGMiOgpg8YJnYWFS+aCT4aHJqb0+12fK4HJHyN34p2V9mna/PBHxQttZEjbwL
t5GBDgl9IiQOzvoyMMwa3D9yJPGWNEJTOJaUbw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UWO1yL0EL8CXhMsuZN3v7pq9vqI3Hx8I4AdpxQRWS35PlhqAcAjYeBVG9msiPa5PzWiULLQfpvtc
jErP46XJGtGsEiYBMIv0Sy4sw0m1buhgPQC3ebkJgAk3bspWMUEsvYaN1IfFXabxN+RYANz3tJ2Y
oHgpnvvpm8OrlQUsgkwwn7FgVUGvBHoaj3vopWTMROl61+OL1aj+VLKQvwlZuA30e5yG7JAT159Y
e+xbMUxDz+W4RK0kPzZxnlU6X2HGieEEqGVzuAHvbaqUsRHZF294LqHX4u2WuTM74rvH69Kh5wL6
jYEYgCU9ma4gBAA98slrAnjNqn4bY2f9DG+now==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iXm1XonW4ervg3D4DUJphNzJ6vN12GMfC70OgzuNrZ2kX9fFpWbL5IBPnCTMNnNWQy0GGe6hvPmb
j7EpeR3MIhJR5BcSdHMR4BVvSo0AEM+UmieNsuTc7dTw++8EucnKuLvloLldJo1b29DO+LZfqkGP
M9z2zkXfSVOqQRNGzxLR5gGJLHNfjxGz8MOIJ3HaDDAbO1eEgkWN9ZeesYwJrgERNSubcEhjLzl8
dVi5A1iTEa6WcsQ7XpUZkZTrHlM+/ZUnuZelrt2eHwx7m5XAZzHXbVz6YPrxLVx80IcJzqkykiEp
dMotGjzHWB0+tNy/gRFTUB5rpFt3LtF2+O9mZEf4nNluB9zmYqmvU9T4zeiID3NuEe4WOZjruJ0Q
gBPt5imaHECnAFxZ7QWVRp1rGkX8eS8I5qjfVJm8+pKqvjc1MGkAv2Vh4RG+n36yShUI44QIDYIY
zqj5fbexc27+CEmjJEFy/Cwik0yDg15IXyQYIkVLbBBdXfuQsGR6lI0A

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e2TCE/IVroj0BoMutEWWgUoHdqmqHN4Vq1aGvl8tHLqPMgKPyusaF/EU/+MvsIWjDyZip1MmWOcx
jQu5Oy8IWt51LTRIQJ0x+kU2WDMNmZRHSdVAR8ORyzaV+63xJ+1FR21OuVBTsdN0zc5+xPOZn251
Ih7Dkw8u+guep7Yr4t3jgw+4crsiBVVM+5WJvUb5HgZZLCirWswHL2EOSwrlxmh1UfYzXoib6RPE
Ra/hqZSom0279kPBw6Fx+riPQZSw7jyFJal9sJMpp1RQHG0wo0DgA0V8Ot4NHxUc9Fwq4+hnCyfi
r2lvbn1yjpQbLFKBIZrlQAud1cQVbPc9abtdFA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZrBaFF+HnVDZGm1vQ9+cKtXO0MZoBhRQhhbuNn3hPOyudscPw48cUk7lbU+l2e6ZKcE++gMiSnuB
v/1odxPkF3c0xHLtqjEP5LJPBQapSZWfj+fGbdil3jpV65yTM2bmdudmH5vAkziKTC01D+9ukTyO
NK3eIODIOgVMhIPo/JI5XJEEv1a4HghuXTDRk6cuij5FjkbyetS2+i8DFYuBKsibTPK+1J3kNC9c
BZfi5UHiiupSPfnEsyxTNRjROHlYTAc6d4FcDYps1SXRQvDhNWWnD2xd4kGGr0AJuAZJafFIAyjy
MQpA/In/QVRxzqE/D7KiXn1qznVIWbzfKEwLcA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LnYLv/NmJPaHDIr6d1U1pQTM3mMoITZBevRazqA3txov8bxmCDGNFOaErrWQ6KEcqnV4SAEFqogI
sQye3hGPCyD5PwyMqUMBaBuR3jrn0neOvdxlbr85l8dwVJ1g/ymGiw5zQoiQX4YD81xfhwArSNej
jy1I0U0b7Yl+EkTOZNHcBi7sk1OlkAdzOq4x+kRQtGMA5QN34UJV1G6g8eQTCiuWh5B2vedUzgcc
+o5x2HeXJ2Hb9g3xErlDxXu8MpVjC6br6G21m6O1LOvseOgnGg0QYbR88rjXAAZ8rsAXlioaa7Rr
4D3mVCkvZ1X8+qbaYon31nAnJ/WVN4L1PdAqTQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11344)
`pragma protect data_block
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
vg==
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
