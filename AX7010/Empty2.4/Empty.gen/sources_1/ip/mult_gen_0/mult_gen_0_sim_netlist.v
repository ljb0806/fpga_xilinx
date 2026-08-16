// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Aug  4 16:05:48 2026
// Host        : USER-20240108IG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Data/Project/VIVADO_Project/2022_2/AX7010/Empty1.1/Empty.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
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
  mult_gen_0_mult_gen_v12_0_18 U0
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
kzYp4+ctOmYBKajMUA/Xfv8OLBMUxPzeb0pUyrmhbBsU7nFUmEvopLOqgsYbEVYhVf82Yn2NkhzP
k8EAxcL9iwTBTyJH46GaY+8ogmiRGRSRVmT6yxqcoaAJ7BpAhCzaa956D2OVOO9pLxO1iRF5UAd+
bpjj6zgw0gdGhpQ/fXnvouLqRhKIIUufrDJa0AlE8RgysucZfTX6iGHAVbLId8pzlcLwq5oxWrdc
pQK2bR7e/lRf8v1tukE6YRg6XUpv4XzYB/TNsZyLGWSscBEsDEAHjojVGEII9g+yHpFoXGSx1ZUC
ENgH40CxZfZxv+MkWcx8njAPsufo6w0PPfpDLA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VaFzIxzj9UJ1HJGSuu/smkbrgPZV81BAaZ9TcqcijErMpl/amBviXw6H8ZyS/xoiOvzQ9GjDg7B0
XclsF+qpYFZEMWRvTRQxjoYZv5xBOWlOzGpf+QY94JDiBEOq427ViV9oCIReVrKuUx/9Dyl++44k
T0PIIAk3loiqfREjqRMkFtWW5wAGqj33S56oh2nVBlxG7gYqYZsENC8m6IsZFKDbgRlVxHYMukyv
1fDX803UMrrH0F+KuABBF+6+RHctruBsd/QX5BuBMQHMI+L3Kt3N5o7hX4gd6U9ZCYUsan17mlQb
lK4XK1G8xi/NCr61S2DbwVVfPTKTxsymnptSBQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11088)
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
