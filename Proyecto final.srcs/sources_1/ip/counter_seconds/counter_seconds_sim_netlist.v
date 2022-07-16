// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Jan 31 12:32:00 2022
// Host        : DESKTOP-PFVITI7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top counter_seconds -prefix
//               counter_seconds_ counter_seconds_sim_netlist.v
// Design      : counter_seconds
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "counter_seconds,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module counter_seconds
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [23:0]Q;

  wire CE;
  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "101101110001101011111111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_seconds_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "101101110001101011111111" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module counter_seconds_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "101101110001101011111111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_seconds_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
l1NG3g81+vM8a/OECNXckQ6Ih+534PcHu9If3GBzfNiHrQt4ZqWyOCmUfR9HBrKJ6dazleZpBLLQ
VkjiEZOvOw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z0LH98ijrG2zSKQ428sLNLNN8LOYW53zGTr9NWQ16ZrFJS/8H+Sypz2sLY7sCYpj+gN48UB+J20x
PvOEIxFZVPZNmhrcvIxztIiTduaVtyypOS3Jx8r3YE6fOwVJrfZ9eXRQUIdKvbN0bVZFUcjZ2HOu
2IHyG/UIDoelWrgO0GY=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QNC1y7mnDIW3BeoEUG5xtIOyuA9VVC6sNeWDOT6S5qoB4e5s9LHwLIGpByH8Fz0PGaafc2Pp1LqC
lzXnevLntdeO+Pz1NMCI4Ojicg8oWhR3msMyGBNzheYZMtUoYnT2zC0eafrxC+G2D8yNbUPHtf++
Y0MP0FYlKg8jJhDSX3w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bRemsiwW6AApgQWC90BqiBlMFD2jEWM37Ph/oR3/T151pMQpEWD3gu3SGbUebLL6tc97cE/PgSCy
KS0n/kkTjP8yz3D6tbz01kj9QAWvzzWfukcjy4U1p/TuuIIUFcvoH/P+MznfeFrHL11ZwDgOg40p
h2VhrJPIbdfbr6mfhPFTBuWKYDGmQfgZeWyn7BSTLS+wvNUS+AvTJnaPj6O9Szcq/v+sphPqX1F0
wfrQOmRJVSa2EfFZxZ1m3+2NmDfYPFsxF203jiTh4pJ8JuezHfzsaK6jbmB9h7QKD6yMUsYRx/O3
idyz3Inko4ZzfMIyZuEPWm6TSA5xk5DeltwcSw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QxSXl52RB2cLbPW8z4SvG8lZpaZT78HIOf6Q3fEiSBBQziVQn5oJPSJW8PdmH2pB/aVZpPeDnm2a
hpp7ddkUsyA+NHykeuxUJfwhWYhyemZLGnSdZXVpbaOhu0TLJiOtAVsDmRdPFs7q6CpwvvPImbuY
YK29r9Mw8w6ATmDgWgWs+wefEAeKjvUWKQmUr9SKi88H0j+hCCdtMoYZnO8+mjtjWlqm6U7NqCPr
K58IyvSojGlh7czWW8xHzOdgUBj872QexFBFCXAZ3caYI+I5tgzbPak7R4g1nHKG2e2HAjefrx2S
bXb3PhWqaTkKbnVCol5mWJuxPclCBxrEtqSjug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cz5g65hbB8shmQPsohjzVr+SPRr5lrGQqqziYjnrsCWqDM27xVRVWn5/2voSXHOso9pm8+P7GN+L
Mz6Nn/qXS+pi/muryE2WEZ1r1ya1OKX8h7vIWuyvbtfcgSkvPQb+oNRpZXNONTBmmBFus8k0rin2
VJPxBV5qCpoPGWDVS1QCTJ852TyqzdEMM2h/x7mD8lHifZIkjoWi+O8HkWSf1j2JrYg2fikk0O71
heaF0CkbjGmy7ezg8wpLUywMgWUhCjFFanO1rqzaTEvWYxCjx+FFJRXRyfP3qUeBqMaTvZsGSDDl
/9EG0TehdoOmg4VPXawJiGfiqr2sBbg7f0zlow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
GhWDxjrqN2NQOTGnpSCVxE/URbyP/cxrJuEh1DWL/pXX/eED+uLgAtiFEAjOcrC5x0mHjLfkF4R2
SnTEI+TBFicOHbpearYvvkA8YfV4H7lGOgbIvRTyTwi5XbCt6NAixUGl4GuUfl0gIzFjovq5+uIh
hE0kDkqqJWm1ARmqd9Z0X4doVMjPvtZOQxnmlcLX6O++5crqc4G6PRE3tUhBN19u3R6ONXnvsyD+
D8IidBONSkUG2t5Pfedtj+R7NMVjOOCY9aztmryub0Y6c532ktVyO2c4l1M3PKSL19EU7mmEkQqi
0EFLONiIuSCeV84Nk1jLT8lf2E5Sy53Mvtbmxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
g0eIZvP314dlxTQes94TNVdTVSobig4zOGeBkC4c3oLghxyWKpUKXPbXJ0sVZ5kWWaZ+UyCWPgcG
T9ZqMyUnagmF0Edawqula9QunDgUDP/brJH0xCaIVKdGnq3lbLTy+f7Kntwy92KsztMgLjuxxEVU
jE0yPRtrZ1XeKPct0AHIDLUSXqTQcFW+I/+lvR97ES1KuYyGS2tol7W35GjAr6XKF4zoZKX1ToTV
EMJCgb+rUv5hzV4Lhk8+jcoh70OHaCf+72xlONqvtDd/7ht3ibKRb0axB6/1pVfgRJMdny+7QDGo
BY0q8iPwPFWjFnm0rVgMvTmwfHQLZhN10QskfA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15520)
`pragma protect data_block
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
pvPW71QeW9SRPsdP7A==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
