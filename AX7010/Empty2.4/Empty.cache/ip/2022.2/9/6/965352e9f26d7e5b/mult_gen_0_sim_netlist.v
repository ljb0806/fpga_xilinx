// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Aug  4 16:05:47 2026
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
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
dgbyKH0KfTdUOAwTyzXIswyQuST+utqsbZlbDa+Db3f5z/zRKxqBSiTQv/OMo9pNbMDAMfZJKRyC
R+nQHRaJjyk8wIAbMBG+YYJkHmSvLpHBqWEO/cB4SAAMvCH/PewYco/iKbUWnPR+Els9i6wljGrF
X4qyeqo+LEwRLlU58gA8EpZEoqcStjTJyb+KRXRESFzYsIO1FVgUE/vHsDfc9ZNzI/B3FdhHMKKv
ezpbRNiAzLd/Vq1ssd2soqu54I7ei0dU5sdxtjV2qnOc/7WXiNZKNPftKo8/g++EnQ2PHK502coa
c315U1Cax1OncLcatfSKye/wEkHRnwWh/KxjGA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lLN9KBENVl5KDGkfS8lCAlyERS6Sc4hzz/LmZwiiJdldvMxMt9/OVQpLlXdXvd5KuV0HgVpzQtKb
vOJgUkkfLmLsXhTUEaEXpD2a/OkVdorgdB+et8t8s8KtOal/UFww/tiswo1i880Syfc5cTkJLL1t
f/1YpX/GQNvmrbgEkKe19jeVMvZfb85Q7NdsXGxMBF+0OiTri1PeZm5Qbtug8EpitCS3y2EDr9wW
Lpqmx64uKt0cWXdsEz6N263l0A8TSbLmWEot4yR6O0LGf1LDM3I1ErUXBiSp1k/s9da8mWMexgif
26K+1hLA0Ebj3OrCjIy8YC2jQ0B6UOYUlnvzjQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11120)
`pragma protect data_block
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
Lb8jPIQ=
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
