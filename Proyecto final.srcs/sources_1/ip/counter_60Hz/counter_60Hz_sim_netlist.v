// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Jan  2 13:29:53 2022
// Host        : DESKTOP-PFVITI7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top counter_60Hz -prefix
//               counter_60Hz_ counter_60Hz_sim_netlist.v
// Design      : counter_60Hz
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "counter_60Hz,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module counter_60Hz
   (CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [17:0]Q;

  wire CLK;
  wire [17:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "18" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "110000110100111111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_60Hz_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "110000110100111111" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "18" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module counter_60Hz_c_counter_binary_v12_0_10
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
  input [17:0]L;
  output THRESH0;
  output [17:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [17:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "18" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "110000110100111111" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_60Hz_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
hi1I7bLbXouerCqL4FgGJj03sTtg7SoEGLkMnW7zpW6UnFdjIBQ0FaV5x6l8ORMApgHv2gE7tPNm
y5obR0pyGeyVLM1tfYlI03uQbWrH4DS0JYzeFUGzyji/QpkZOJJsjSQFFJrdvz5wQcMZG6SKSrzP
rNhi9AEJH8XJmfqEUT/JURRSR3HH87aA2YN857Us97nhWr6Lp6cUJfzpW/GPrrLdE2qO5/x3elH1
xHH5JZAvoI+I/1qmqYrcMLDFPe5B+YbjZhp4m0otL6KM4FgtEaEcd6BVNm04A2kznAqv0tSPwMrE
q3T7RrQ/2VDFhC6kE7bCWkWkfvYwCGoUL1HLug==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
iFoqq+qeEOtBj0twbQ6ap7juECRP77tuA7hNmjn1JKQDjV+9rK6lS+sVuV6H0lHFUIxBwTrNuI8k
LDMxflIPi6VWS/nQhl4kAr/Mtjzuqxk5xE7ESSmIhOTvM2UFz6aUKOTIoLOItP5WHzN93WhoBOcr
xJUgl2jAI53QXgC2nPNkuT9MntaUpu6UqxZKnViHxhoqantcn352oxO6Oy7phfuXN7OVNKo/xtVv
8BcKGSjiC84bHeIq0Wb9oxrZrn/uZflsrkv2MElQEjTWVa1Lqc+U1tFh5pbf8dyAwhwu/YBGLttI
FNqiY+1zYXPq7a6rqCmVE+WHEBGwdzOYpRDcWA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12672)
`pragma protect data_block
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
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
