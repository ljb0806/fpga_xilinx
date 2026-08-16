// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Aug  3 14:00:44 2026
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
  (* C_LATENCY = "2" *) 
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
cgT/J3UE6+ksx+mcY4c01f7msWvvwUi1HHSHd4XRYYC/Q7accX8htIGFfJ8Lw/2sJuv7EtCtcLhc
EeRKT1CQbHlYYO9yFB/Tl2gFx+JJuHQJlLGrbnPzqX8uo0PMSo7xW7XRMTAqV4TgLC4CjMX4dPAq
vLib2bXGBscewhBWRDUVGibUVicL7Zycb0+QMnRqWW80WjjelwIQM5a1nSHS8yrVz85TArYT7SKZ
lDVqPp79xvsmqgj7MToRWRZZUMAevvvA40EU9UzkkixQBBSanMFN55NtNNURZ/bq2og8OlquWUbf
7HMiOfv90ZYI/ds8fZjghWN+yKj/PvhGIuVI6w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QAqkaxo11VGaHr23R/YQt3Q6spOdkL+GuU/Ti++gnsSDyGf7jEm1wV+snNXdkSOtKCc7YAXfiSOR
DdZ/v+DWVXPb2Llfy3ICHqNnViXSIBVNmdl71qvuRzu32iha8qxUgoUY07UKKh+w/bJRIvCe/8Hp
JX9FI6eQgejOaT8OJf2AaBsd5pMEYn6axfQeqIIKdYCeouiD3MCf1m+ojnf+z7bFZbXepj6ssTAq
0ypIvhprIvtxWHLDkZqBooZcySD1Iik9/9rAMLtPFMv/XqUpafzIiFNMcbWLVuC2WG60F8j3ERWG
nnc42SeFJkHkL9vterFlHcDMKAf6S37nDqeFqw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11280)
`pragma protect data_block
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
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
