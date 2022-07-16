// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Nov 19 12:11:05 2021
// Host        : pc-b042-14 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {E:/DSED/DSED_Group19/Proyecto final/Proyecto
//               final.srcs/sources_1/ip/counter_300/counter_300_sim_netlist.v}
// Design      : counter_300
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "counter_300,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module counter_300
   (CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [8:0]Q;

  wire CLK;
  wire [8:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "9" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "100101011" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_300_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "1" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "100101011" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "9" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module counter_300_c_counter_binary_v12_0_10
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
  input [8:0]L;
  output THRESH0;
  output [8:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [8:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "9" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "100101011" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_300_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
GRTa3EM/lLhakfgmQTBuycO5CIvSVj14Bz75VKFkiMOwj1M8kbOIn2G9oNsRLR3mEaSH+Lyb0UqV
ugw7nK519jPlje+ZosyU9P3dLq++GIFxP7zvnWVsyCeWKuQjbxokZB66ppQQpnF+j4Arl3zCRB39
Z/Ouqb68VVq2PlK0k7IVRKnA0eLvjC3B3Aiwxu0ooFqEUx0UKkjPA9tptIKETWIk6U8rbW14bBma
jcY3YlDqEU5szTUjLOIFHSFWnG8vGzEv5vhYOi+EjquNRWc3qcs/2sjcsfkLBXf+VZC1rKaRxve1
554PvYpO7vIURGD7bGuJa76bUpZKvPUl5iRTyQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
sP2n/YrriehDHukOlVa+Lmo1jg2kcvidES0JsmzhDl3HyLat2Jlr5O99e+JuFtRUJB0pveQVci4i
ls7hqtarKXmwf2Nsd8ZaLohp0NIytzo/PDC0E6QGUgFopQG1CCOZp5kZHrhV3F5FW4UoAvEgxrh0
w4Y5FQmQdHiFb17bBTnEYBUdktWeU7feJJpJMQNCzcTi8YOG6+LQ1Z8MJJGNHmW+WFXpXO7ALWhm
g7A6N7j85uWMml4H2jUDFF94EWi/MBMCNtUubqrtHxLt5Y8Cri5kMrdJQuYl11sQFZydjVro37Xl
NpL035bF3QtYE1rY0h7J+TeV9U8wEpXDGRtrLQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7808)
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
