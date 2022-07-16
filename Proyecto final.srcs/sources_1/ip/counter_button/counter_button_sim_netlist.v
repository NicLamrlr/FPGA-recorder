// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Jan 31 10:35:48 2022
// Host        : DESKTOP-PFVITI7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Nicolas/Desktop/Proyecto final/Proyecto
//               final.srcs/sources_1/ip/counter_button/counter_button_sim_netlist.v}
// Design      : counter_button
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "counter_button,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module counter_button
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [22:0]Q;

  wire CE;
  wire CLK;
  wire [22:0]Q;
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
  (* C_WIDTH = "23" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_button_c_counter_binary_v12_0_10 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "23" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module counter_button_c_counter_binary_v12_0_10
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
  input [22:0]L;
  output THRESH0;
  output [22:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [22:0]Q;
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
  (* C_WIDTH = "23" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  counter_button_c_counter_binary_v12_0_10_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
ijmtDf91GgYh4GsCVWTcjxJ1dWLN/FSsB70yquxwHtzb0GHdjo6kRTDmyB24Ow11ZqnydGBpkQfk
XxGaPffg9cQWV4g6vGmEW/QHzYHqjyb7oqKLRZ5V0ydsIp2awVLSjMCk2wxTQc/tiXnCI9OlUnf7
qnE1m+Lnqb1A9RxJClYxsUgUMByNtY/bR16tKdhZdNCtmTsfjOeEqbXVGbIklEQev0Y9w2WLBWJb
/cMSqdCmvVQM9K8l75EyfOGAK9I1cf8ZiOT/NXWKUW17mlVLlyMlwXt19lZw4y936M1HFdx9/Rxf
JXhDvlb43cRN/shJA9EDrDi0hu+n2+ygL0Omrg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
SPRd03pePyab0euo/4fJLZ2lSEvIHxGMzrhrot+lHvB1GjTvWBLaTQro3EPKYfLaj+tsnUfeQsLX
IZwCM6RRkG/Xl4h7HUmAumugzse8Jex9xdkx4u84JglKp9LYoTkcAyaEXrmD4OYD7SvFasiMPS0c
SjzEg5fYdV21xp0DFjkPyLXFdvuDWD8F5nXK4mAJIjCF//vg0P9hSVbP0tFvhi2lGdt+QwPoa86D
6UpzqtW8yCiayRYkak5hD6VAkm7W4UzJNloRuMHAixc5q/Ti6BRlZu3AcEJSdJEEEX4vo9aU6dey
7K/CkriNu0qZKG/xO6N4JGKvCOVKdeiz9GkqnQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14096)
`pragma protect data_block
8OU+zFSryQ08okbyhiiW6lJV5kvaVr+Mk3ASN1dUELGqVhJRGdZi4bCQ3L+GW3c1g4gdc1L1gN0n
ZP4z0bxQdQ2i4ZWWPhLfE0viXJEJqKQCVp/lSrDcz+5SgkagDv+7QaRl2ppflrBS25+CgiEvjXw5
GeUV6TADZ3mTGkw3JP8c9FumnHNh9wm88dhYeOFbZgEkLTG9PIxPu+Pef9ffexG2EYepzCZ1V3QI
dCQkz28Ka/O5Lc7ppQ1Htc91rguH0EInjRqHT97ZYXOzZNCzFy7cjH5gWP/sc+JVo/wE63R9dijo
W8Fhk/aLuW+fx0CE+01quuIs4A80qzRII0gVVY1DQ+Xsq4Pwhf2MAw8Aolc8aeE/HiVrsdFj0IDP
fSvX8f9p6YgRzk08mKokLqaozoeIsgUYe3tZMCKjjYssRFWMCShuayuo0GY+LLruFEiqmghZsgEu
8GYH8cjY1+ynqv4FLWNHNDL+k7Z7c+hGZedUcY+aG5G6VsosaLR81viZfP1daUFiOFOxwND0kGqJ
0b2S+Fo9nby0pkLWVD+Y5ER4rBccXtw2IcBjydYAzL/M04mi4Jp6L8gVzz9nYYZydMBtANs2UEVD
Okyx+uR+B4taVIL9WdAkssu26RMuN1bZ/9TH8/IhJRuclog4FA3sPyTXAfY43L9HC+3f9VF9LpRb
lWqf8dUi95OWuNE4tBpzgLnrx+XoyOtK4QgL6iFb7GwzCxCAm/OCVf+jsagxsXsMJWlrEr4GCeA5
wuDWnP9ovziUjjYsP3vg4NFMPAlJvUKJNPw+md2Cung04G1Xtn0uXMLCf4yZYPVXJLzGGbTdCRiQ
sX9TQX0GTLCInkc49RkiAuylU4+buvMLQK2KBP9bVeaSGU0AlEuAL0cISuCoGAfgRilzfDQ7utz/
5NiIE1q2ifXt8t8nOLkaDDeSBSDmEO9iv2eZ1W8XkqXQ+aGJe/GdrVStLcvlQmyVZRX2Qc/Mh2Xy
Xi7X43zW1/tNbyuJ/rgymrZJTzJkukrBbnRblZdWTyn0TBz7PQpwU/8/q++qGkL0MP6zPwjyMF01
sjuKtNW32fEbQYRFhu/UYPxvLJQmeGEODu4D/CJRtH7hUIMvW+78HYalBG6Q2Qb26X0VgglkRD++
cW0+cE8caSFCUO4tiAvmrjE0Ltmsds5T2WuufMjoYq5nL6yMzYlF5PJkYaJWoj0M8XF29P+02fIA
0e+aY2ymx5patGeLYqMqlUUfn8bjCAX9a6lgY4+dgCg8FQwxT6y0exzJKmn4iKOthYvNgGJ465f3
fi5UySAustI/nJeVxqlo8lVGJfwEXKH4C6R0tCf4Ef0o9EPJwoktxnHWikDEEi7jBBgsn9EPKjYC
8tXtoynvZ2FgcC+bYXgP0QKsYy1REQUwTMY2KiSZV8t/ysercDyQ5dY6+gVaVklLsKl+mQqLwapX
qd4YFX/9lN5ev2+cA4NyRvEf2Si0ONdNHuYhsu7oqAEr4llzLatcv0UegUPNL2M8Juk8fMFpZt6i
700qE86/jdrQd1U7ZGfk21o9GUn7ZSv25ZQu3K9/f/XIJxipWYtOirvIgYjXA3Xyr18vq9/VyL3A
sR7PFH3FiWMWndXl/Iq6IXXJjoW668laYHUQ2AXP0bPhh1hhn/V2WI5WLXq7uDtRRzMLMA3Qayd1
KE+/VHZl2zw3j5BJW3UhlMUgi+PPeqFlkYysJ/StOqYkT5nuhSkm9hpyFJO+Z2ZXQheMGiPh7k1j
dly9VvIcAlW6Hi1F8PbGVgYg9aCbTC0k08IlnAAcknmy0AF1a02cOWtfv/wp7TQhIUQsC1r34o1l
moB43Awe4C3YhvIuqciBsW5A4VLPQqeH4TlQ4EpHj/vpcrjyj8GK3qVWzqWaHMgiBKr3fObMhO1r
wQ+mWkWYMqFuEN7iRPM18pJk9coA0bD2ED3b6WsN6djbZ3sXSABwYGiMdocAUGTXaaKagbdIqA0V
iifGPwEN1L7wLaLAdYfc5QutVnKa4s/aiF22kS4LwnO5SvjpoBineAo/yFUh531sQm6UJhc2RPIw
ArT68KZLmpV4C+ZJiV58KRwsdTvS7kq7g5YPQ/9e4+91gFgGl2ywHLIk6JBHV9a0qtMVzy2NNZtP
nXF0QtSivxzt4/qsH2pUTnX/1RYxvouYsTJmCWwvi9kNEQqylT66C4Si1CKJBq7R5wAjZu22Ay5L
WE6cek5AmUbV/T1SdQtdqW60EEazWXmtOFOOkhXcI/vDwTjUIfDOjJX/uWUrn70ZR900BfdOmJYF
KsdodXDvyiWNVQOWHtoizqvMkK2l9e//8Av2NEr8TY4MiDFJFnLdM4iRJCFxkYrpkU0qcqH9Mgvr
zaVNimFiXJ2xNEXhvGn6pp+ylrAFA6fnW74jPrz+l1OoboCpK+qbeezM6aHinATOL+dBHsCU2CMb
S9CzCgus/a25XqUK9YsDBrHm2lHJu5RZLK+CWDzASl9e6ZSk6uer5BlgbCnxpdbh2TYOg48H3EOS
eRcUojkiN7gPr4ioJMvG2cYQA/hy1CJMLi+Tj4hxxQJvD7VLDT6avn7ko9XQdYbassLSB/DSrvlz
fwhcR/iNPCytiCGsLLnnY5uy9y6qB93hbCCIy1smNatiWmpJQ92fO+1++2bjpMZzNWyf85WyK+cG
j6Z/iyBcdg9HeBYgpPbaMzW1uWRJvH+n8DsmLs35YE5+Kcva0VZgJtEYCsIN08qOqYufKmwdMVZp
cXYYCyMIROi8MSBN7Q6xNA+G9tptvKYI9Gfq6KqqX9/MMdt8eRctCVK3bJKV7FF7R3DuFUx/RO1U
KiuOhrklfpp78nQaEXonC29WMboI2aN3ugb/KzS48/bXaJmwEYN6UBoe24juwyVFwiYS+3vCmYwN
D22pEwS7k/+lJ10lkvgyRIlHt0UN33vfBgWYwXYj1PcTuiJcmEUsieh+9z/YKBsJq7rhGIf5uZX3
F3eX2w3wLIEt2XVxc+ax0ov/x5+Jz57HSgG22MIHfeVqr2IvIHN2pPcONguJnoFVoC8EpSzUXjqA
5x3st72jAGPdUkKbgniZoyNy6Kcl/f3lcjA/DP1RI9PnDeTPzQ2LMnDUL5P4vYKaGTneLJFfXCsS
t1AiDc8K4KtCRtVg7nVooSLHHVuc93LnCvp9fAqj/nHcgalIGEvBcy+S7rqKJkCt/krk0ir66CMe
qTC+TMJhZ62x6QG/euUfwC+d4En4LMA0qji4pEfo9fRs8yba2ZXQRbrmS4p0s7p7nn9nrRCm7DSu
/G5Ii4+x+cRde2IhC8S+Cxz9GZRmzwHv2IaCGeefRigsrvs/4MA1pguIexV9xht4IRUwElm51UCe
jU644C016ctdstryMlO9gMFQOEt0epPV1r+Pogp0ZYtZOgwBKPmtCQwpj/65ZzlL3sHAG2Iv4ahK
8DDwTzfww5cSdn39rnnTjB3PuoNjA+++FPmGefNbncSnK06wT3AxiJBuDKooCj/+WMJee1yj4V6U
kCZehxM/6z+SV8jceqDm/S8KuoXYjgeUdZoul5WBqouXVC5Dr7fTACweMbKxwZrvuuDKx8wEJthZ
RFUoQpqUzdgW3H/DZ8F41f0U7MW2lRKpGGvhxvQFRYCHumKX/Rp7E7B4HLz7KpEadAtbPLSrjfiU
e5UpuXUGl81HSUqiFAoDeBfOtRGHqGkJSAaUXUZlyrWmsd/AwD401b72PDqdLZjDkuMTcO4KMSO5
T+lTveGnqliZy8BXCAxlsz0hSOP3CM7mSDDQWDY4k3v63hvKI3UJG4S7hl2w2Qva0rnnyTxlGsOA
2PukW+GY9R+dYz/imq/XIFOVxIkep9XCDxYcIpM3HEikt8iunIz+WJQjI3bOpQkNZm2RABmBaAUw
01AwSHcjOINbg6g/Z/2SLxEIvfEM9xeSh7ZlYnbqRRLPTUd+tEakmVvFumMyHjfCM8AP54zlxAda
G8uI35HYFqkBevkwbiunS6Pla7MBGN4dYy4hEPpB+Kuh1GbczgCVv8GrHFUCK99/Tarkr8GN90tp
u/xi4rGJOrpdWLimxUuRYyt7fjmugHD3H0jizWeriTx8WiuUmi7b4TAc9dysdkf924OgebQRestf
Qb47DxpcAQuxeaSvkeZrTXIBulSpZI4dobFk0aJFWlwzQ1SM/Vt6bYmz4cDc+dYqbxw6hZ9eRSu2
kuUnYU28mhIjLA6FW7qfkyggn4lf4TIa5fgsFFqmzkPcYZyAXoJ4zGR5L9Inz50XRh6gZNUmzAEc
IVpw7tFmegVq0YcCyBTesKkLY3qWwFjHxr23LrOZvizjV7ezKThzZDgftdp0ZGyiO0Q/5K354elH
fTzEn+2THLUgp+g2avInXP7M2n7tr4zqg2dCvQxQ4hsh3Aghtn46VQgPGoxShCfedeVzH8mlubB2
hMLS+EVhAgQB18obpsSI0UAPJHGwev5/wFgvc8/h8NZbQQvZ3L/Oe1M2rhGnMndScrlfr1cUqdh3
dJttVlrfkpm6bWocPKw0JrJTUMHlhb748NkBN3+tt47Okpp8DGfy1Ivq+FysOOOCmaSRsy3SQz7v
Cx3sg6k7ZlhS/yy3VNN+qGb88BFFKLCGY1EuV9OqNQwBUZpUEtH8t75jlemyDoVcED5mSzOLkwEr
mu4SXGA46kWwUN9Byyai9IY/JqgN3Yu6DfD9jopr1CAVEdqx1qgUoYGHTut/pbFjTVK+qDLgqBpH
Y9+GBd7y1ekrnHrgCNNrBL2aSnA1rOMKEzopT+kh39N3gBQo0q/lXudeIuOPEZ2GkdBWpW+PNoPT
YomIO9RtgZclDIsDAoR8E3LpvYnzE1LRoTqxye97fqbb9LNmImWJ/wi+qWFK62A4OWGcyHmU6xji
5UA7rHM2Nu11OQBdS5GnvG5e+vya0N4m63u8QasHca3RCnBs2bL1yuS9MaW4K7opi9pRqMcoSzA7
/YEBBwfcXSsYAeC6p0l7pGpoWHls9lDXPlWnnHyO4QbjbLMMNNkGt21wFvKg0TKLpHSSj818RVE9
BxGPQbWrLiokLyeSVgcCFJvrGCx96FFqV9DJ5xLGodOP3SvhZ0XtCYXUluJ1Gw2Wuj+5KVUh1WVS
kne/z91zIyBwc5jIjXHUt/r7s2LYIAlXV2TCIrQoGT07cwD//AnH0JbWOo8MKt0Iv+TF/9xXPNg0
hI4BN/TBl5/HOY4+nijb3ewOTP56t0EPnUhF6VbT0b8VpmxOGCgapsCkE75YuXBwyrrh1Wr0Joxq
X4p3iZMx9W+ssd4R9NFY4xqCa/PSn3pV0IlG1rd4LvXSTvQOuq+UkEaAWY+4dU94duKLrXtFjWd7
ayf2RUTDoQJvzFg6vh9SX3qgiLoQxvmu93TqO9ZpoqkFE3Y9fz7Gh9QOVq4LXKmmiP0d5Ac9P4sf
pu5P3q3Tct6Xkt/p5Y9WC1XzqOKyMY+K02XJL9uT76Uo9W+G2D98duKBuVunrLTveFCnrccjyIgV
GtfhI79CIL/MRAcNGTycTVSI4NvQTpHHu7tDT9cblzXpqEfiSfUrgZfArF62GziTGH58MPO81baQ
znCdqptNd5SHnoMgpADPbhHHvDvQwgqro+xMkeJRcNk/5GXn/IDIysz9DSy/cGXVIcrQuohZviHC
3y9lrkMH7fiUL3N1nQZ89D1gFbPvbIK1ANsK2GFE8PjpDIjwGUaYPO5TaXLfiQtPNjF3+xpw4Xl9
J+XG9hQ43j/3kbqxEjRjqQJmJGXMCo8GsdL8e7cSw6I6dk3VOu7ZzQnq3kdGjjLzVi7XlMeliKL1
dbAZturUKkM0o9AeN29iJhHYx51GjvJUZJBJA9GVGKCJe0H53IdhJbKU1RLAhvQyWobt8LAAoF3z
1kIja2XMuz3kekec3tWuJ6uMuoSsMQJNtYXECle8dziRMjF7vlbWe5yscxlyxlWqKTSUy8AJ8nO4
Hd88ro0x8QlNl98fvSFoaLRMVmG80JiiqQXlLkj/cmZxzAKSbMDSe1BdRTJs2jo5wP859OsSMlW6
IquJ6yF5d1tCN/ZHuvAlI4jGCweYP6WF5PG3r/E8UhBi7tBx4EbTNMggvJ2AGMUhaf2tQcTjJKUP
5hDVvkZtywaWlZl56/webhHQ1BgbvcmBQdIj5Po0NBHWX2q7SmwzJWNY3/3k/QwnRaPx1zmqjf8m
QHBS4VPM2IIiqnOhrlArHVf4PmNnbu0l45+kNlk6JfAeAD9U/e+rWF5zw3QdE8SFBCZPzy8+ENJH
YR21X6A0f4v6+yUfCs6FVLBv48obstAJrKFOIW2H9qOoJSGbti/oPH1W3pVXNNYiU/32CckeOmwR
kWt7Lm2jQ0mhzS/kd9mEO9i8OxpbW09Dr9qPlGNLd2oeKCoPQHxqjt/QB6ijYCriWEz3+l04xG/U
yO2Yw+sP2S+vnhOE/I46F/JtftgKRhN1AYCYMsgewbFz+NN3H30kOYXdx/V32ylngaEKLFcAB14P
pTSKQlWbq2SYN85+B0PDUjBCAlkj1tq2I+btvxOZkqWerU2n7MMmlCF/ICReWUgG49jbSOOGQ+rJ
6lbtAS0wVUMT5Jmeu1FHRcwAhTypUpZXb68AlU5d716LSc+oiWi6yFjN7TjEE83+gvqrnJEgpLgp
OE19F2QJQP45JOCmPt2OHeN9lnE0YcMfU5nu2USOvqQ9m9OBKZa/Owq26YR0cyUo1TA1oMEx7zTo
TGfjozl0DEDkNP+LzYpU2Xx5AlbCK3Lx3fLQYhIdrf3oInFOJ2nB/Z3Uyh13/N+ETgD/eQytKK+L
xSOpLhwxQpboY3/d41EDz+7QKXSufHl+nP1xR/PIAT0XlT+9GYm127qI71r1s4St8EqdFcix0oVs
AmzU11xw9r/dyRNVupQyHiFFLWSuCg2JaJgPQAVbxF/bK5mwM3EP+CwHvFSb83dKqsR4ejLu6N7V
jzgPp9RoaNedlluZe1rVl8z7ia5cFmO+aKtXN5LlIDrwqb+RQOGVp1o90TPFNSUd0S7Flv+t4aXw
W2Xz1aysm2AT7haBCF637ZCJsABY0WI1vWxWfSlNlcyypf+d6+Bk47+1OxKM8kMADSC86S+WVMhQ
+Ry6t77iFxDvL7KwwNXg2OjGs9vuE790T3NYdLLhfp63xmGFKmaQ1FFcYSdLvyU9OPHWTwExJ2rh
gj/gBQbcThbbo8UVTwKqveGBlRGeh7znne39ITGaAydozl74GU6vY30+zns6sHUxQ963a3y7boh6
uHyoTe6VsW/2rdR+TH4dWpBMLDucwLhH9SS6TSLTxRzt1QFD+rXOvpI4HbSZWcpLt2HyueMI31AS
WPBF2FBvduWQfP9vXc3cmRwPTAew8JZjepu1pwb0z8CFSk4tagrYcoQEi5Iu0POlerFmCbWyYDCs
ypR7fKt02LOneyhJnCfmgEW8kRpWhhSzAsozwMxyAl4RMY6K9+ECvcgjBLAxvrI+1XObxURtP4gm
J1ORKLNO0d3pA3lc03WMvadIFUPx660XPF0/X1joEbicvNf9a1ZxIV2C+U7LUvN+IykIyvP06BwS
HbhfSmioFs+AqIS/oe2o4HpvbyuiyZv/B0rAmIA/VJYKJ2vwmaVcz6thYejLsYgf0joUK9Fv9Owo
Bvuqal1nFQwKvGtn7CZRSpG0/QTWpXVQqCiQVdy8eI6Ou26O1ec64gvVdjk40uaB7w+yE33azyhB
cyj2Z3TVGroUeNar/c1nV/wERCTYLvuVp/6r8CRAPzcmJe9UMU760EviT7qEw2Nrc0iEluzZWd20
w/dPZo7F75ZhGUT0diBiiYQunq61Bz2KC469jg9WooxCt0s9Vmw0gRfjwjY07qo598mRv6eiaz+p
JLM9eP+lbJ6IUkqN0LWYcrc7BYadRilHwjNjhwDWV4lQyfW/ZibjRAtAsIDs0DB+fc8/wJD23g0/
LexVOf4pUbeiLdeQJfVgMYEd0mTYmrrzmAyHShOcBziEyrE8EyKxUpbc1RYa44Fp/CkfAmy6gcxQ
sLwgq/cuIGL1dmK6ndZglJdhdyUvPVc0HEeZljvzixJu3eBhyHBiPqEykk+jew/nitzxdHYw6T+M
7daSHTGzXZNo3tMPVOwg84p0Sdgrcn80v5KepjpbUTorNskw5LgR9MZyRMr8B9jTOIUdAVgowu4j
9OtcLUlYQgoU9bsr0kQeKptmgTycLZz0SUIQ2zV86CiaXYy6pE2FLcLZr6V/eZRn+AeF5TtfFki1
1LV1je9fELGTbqPp4diQ31LRBLGFlVGHo5xx8iFww72tvAgCaOyQhxC2KvCkDPbz7g02uw9xkWeB
Y+VwaLNhTVyllki2c967O+7rcYKCsF21gVA6ljneyFS7cWfBskjYwXLqwkBNOlBHAfdcYRTOMTrg
u13GbyC9vSEerpQN9DdxUjgEbYofKPPqrWYwpMAGfPlrp+rDHuZEwyPPs5ssVvCUfc+nPi9A1UtD
UuxaN9rmS+i82rhkthj6hXX5W5qvEBECIFvhG7oD5oQ1YS4yPVb8SsI7IQAJn2Ad8qmp+fFNxRbP
DOkhat2amiTizzOlKVwyJALu7x8dSrdmKvTrOeh1glmNmNIl1G5IXD2XP+itC8cxYXQgV+35Ag35
EZJaQFB4GSsWrOvgFzKH58ScSVkU7VCp0BpAAb73vJ7zFHbCsk7BfR05jEvWRm7QH3gHwimtvgHE
pJ8y7hDvgnR0JR4MotsQUVmcTo1OdmpH4d1iWD5CAKoGLHj2TtQxZFfcgDC3ctoko+xRv3tfixBL
nZOk7H0hSBIBMOXHa9wRd0Bya/jTzDXHaG6pyMoCtdeF4O1HoeHU3t0TZx5eZoWJppHrtgxhbOrT
/OwquQXu91sE7BSwuxLXaBC/KOl7Q790YAQxdnidXRrjUWf8k2/hvLSnz3CjyhQpgXTieXvlP8Nv
T65U83BINB9oWUSXTzNieY+/FdtSRB8fyl3tWIxurU/6Bxz5/l2iOO+0vErR0eZXyqcEUhdEpJJM
xTQcn/1XVffsYsxo00XLFvkiV3o8C2USfMwcAKn8hJU8oB7tkap/VdPVvAE6c2tC3MA5BAyN5NhU
TqI8VZxGWJdOeUs912fQ+VqvyXRJEZ72jvl6bKI323c7UGTaCFLjVoZNa4UDH2LwIUMCtRiMIZje
0/vNNqiG/Yg4FtVy9cNL3zca9qzWt9ltf/BoHb8lqSYJ0J8yhK4U+/ZI2pL5kj5t/RevI2dQ4uPG
tNFHf0WUJcTwrslTCRo2chdd2pG3H5MwdP1i2QFVTSLv5UP8NPSN8o5Eqz1qhDntBWH7uFtIUME4
BEjb9o0PSvwTbXoi4TMhPVc05F2Zt33vXLAA+99zVFj/DieLREYQHB+eEMlgSz/Q/3wXcXRZdTeQ
3eiVPyqyQODj6Dja7fKSR7PASNvdyCA+WmJyQaAXfIQoi8CE3qrMn90ORMgYHIxicuU1/9fiUX5a
6engJo0cX2RECfKGSzASEMwS0XBE/1JIEV4xP4kLuSVyBkwBOzadwmdMa6gAwKYTtf1xGt2P4syq
FXNJMSazq2hMIbBVpTNfRwp4eEdGniNvSG7Th6uaBriq5TfhvPMKfTWbOZSNhYrwk5u38mI5f1W8
7Y3FPjzrY429kCh7DJ8Srb8xyagxTdhDIbHgRSg62LE/2XXswC4r0mDiO9oWBXwsnY/8Ung+v7Px
bts2kB5SMbxvPVaaHu1T68fwGjp/riReoLUIoLUa/IVcifiQEYjzYkE/KqFad9Rx1ihGMRrn3wGd
sXQ2siPBOPvmHUHpIDTYrH7Kv6IRpgw4N2OnFefhQH4QnJCaqKX/h7CXOWeoZS5WhwdrTexKiMUs
yq/6OctPimhHmKjST3JC6nBtd/6IMlgP4ldsfBb9IExHZOGEumKQOrHhNobVbl7uCzczLFU1bq62
t5hDmQIlHfckYkG2qMc8ohbGwSmBl+zkZQZ1RXhO6OI6ZRv9r9pIzeJxJEnuBWNVdUyAAv53lvOz
RlmQijqhnODGFRCMs2MSb3imypUtRbwbr2ebbomhUHpMZtI7IHq6oa2q4V8O/gqXbogAj94WfsjF
4ZScUn8qbvbmiD49rr4ocPIiMME8hjHfk7UNtHfqtelDldDQAKbgxy2rFPipY8IkV/nSMnHpjUci
dNw3A/WQGgA6jmAeg3r2BJpqPPHZdD5IRDH0hJM1X33am68X0GBZ2cxyq/UPCOnaT+wKbHKjs5p4
csmysFv4x+2g7WNLzt1YKepdkTp57mSzaxiDcDsBNgxPnmh8gHf+z2CYsPTGY2vO6MzfcUzt9/v0
PUvpJIWm4Be5YfavUcYh/VxoFW5ysaQ14CXiaY0iwTUky/m8hyLLJ26l9jSpoX/3D7V4YK0MzCkJ
qaHWMRWBEKAxw+rMH13kRibIMuTKUY7Dtaj4xZgSNUi5srX5M4F2uaGTjlFqN6UviSJzJtI7ciuV
IxQUb/aWbFui102jysJD3qNaNMt2GBrmxeaEYjEGqx9tQvJQnNa2Tk5oXy0lwHjL4t7m33oU4KnI
N6yJACZx8fZqVGBuYsplYM3dF4UDKbM7rxAOZEqj6w5L8ZE6E1pLmQUDdOivPZpulGisuY16Ph9z
QTFtPi0BWH/KTfj7KfNsdAvWCmv1EU9Xade1dA/qbC2bemZdtaYYIRJardDWyDWbThsAj4viHGZ+
pvPTy/aigeWkcGv3DLOta1iya+xl5PhYwlintmLDt1fcEt2uEhnyYbFCSLjWqhmoV02ABseHIRdy
t5g2JsD7ICwG85X3PY4XuCkQ9lJZYZnAsVh9NjwwU0CqmGwn8XlMOK5uvdUx59ElYKC2vNLKoe/C
c7O6JHRrauzUCxZ4e6cHAb3erL5Yz/mnkACj89595Os6+Ty2cPrxx0ZzJLM5s6P3XAUd98iXqe5I
FULzE03T8ead2rIz6Dbns+QcQBIXFaM6zE9rPrD/Vgp1o/Tffm9TOY2WcOzfK5aNaCmCPyY1JjDb
TvAY2jpDOvO1WNpSyjnfQsaheOEJTgb8eBwcZi86UNbQlOGoGbWk3fyG5ZPfirygya8adPJDcoss
rwHHHWbbdf13ib6IP47QiMDinotkzZ9gi8Xo2WPuPgNiXvooiTX+chDZVAP5FJDGvSEjH7jjEQdd
aWkrn4TlKLazt0wmo7Vks9NUsPF27a4ERlQq8uF323Cii9zjqSaPnuZ8AxFR6WKRqjF94Fiyyj7w
LKfbQtGl3LSjfkAc1GATFalXuOrhH9h1D2eeIcU+xDy48ufYDyPUSgLf94sC2bXb65GtBmWw8bSn
LtC4m9bXS1TjpE1kNDYUfQU9w1tj8SidYypuT/BeN3sx5P0nQKbc6y46fp9m4Ll+R7R1r1EOh+rj
z7BJUV8rffhCUMVd0O7uttEPwO4YGpPQK9KRswTTYUwKSOtSjp4MFUPAploJCv5ub/N4XnlncBug
J3eKfGcFizNVPIYmyRMZJEzdmEy/YgnZ/DnDxutgpI1tEQnjJHXcKfEgDGFm0t3rr0xQWVQCuWZy
xkodXzJjdS6RZSatVnBFXarqfOgEu2MujeoyquGQwjKUo5+yPrv7ymgFhdggqIULcFSTgFM925Y/
AdUzxS2QZz1LRtRnHLjFecwg7whTGgSxOKx1LA3e6itTXPwKdmDl8XQMzZgijJAsWWfblLeTw68Z
q8f4TvVB0aiLTZ5r24VzEvs9RQT8DzTmkFJcQ4r+PPSfjinlAMHFBQCh800/GzqZSI6sDQyj1XaA
sFcstjhi6iKAWnS0UCJJHeCwM8NoA5ak0y5flKyiXnIoXz8x9NRd6QPPJ9IPdKYH9iBRS2mk/eTO
AK+wrtmxI3YwYBNgCaSrJ5v0UyC7H0Beu5Hx+2QcXSSrgNCTgOQpVqUYpV18Y+UMla0W7oqfafhL
Z4mML1wnikXNgJSXaZ1ZJ0+yXWwuh9iOL+t6NM3xzMWThZX80D/SQtUjuWlyHpOWAb4f8OijP0vh
2CrzXa5fnmC62Mo2fNrcT024QMl6dijlAZk72pPQceo1DEmrWGZDbZE1DPWrdZRcRNy56Yzpx7So
hqLRx92mGg9k9V6UK2zgLFeQdpluxqrRVWLUjBKV9TlBxoKalcPnLcar5/3v97jJ8rj0MfhPzeT8
lhVfbbVFmhhWfzrlVOov5w0XjfQazSY0JNCk4X1tsorHKdqtP9ibyojl9xQDzSy2dUVeTxZSw6gZ
UkCGLRRvK1U36pzn3lE4F5B59vyLgYFAhCqG9FKiPMImocAHohr2Mf0lhyceoT9L/c0rX2zEC7GQ
n5uIdm8ohQb9s8avYb7GJVjPYZhp9mzNHLT4im0GKbqi1NX8dknYugv9hlfVAM4/N6gHPCjz7/i4
D3LGdUQmKlbg9OcHm7nj9WvD+vii71zvaTOE/ab5h4UBiXgF9MWSbfr17H3+RqNBmbHO65QmLJJH
xf3ijrVARTTkpAQrKmdIhuThffz1MiR8mWQYDUSKeQ8jOgXNx8inEfjwEJKKok4PxRpxM/001Pbz
+ITXB4oZv7WkSrsn1vblo3sUWD1l/BWfa1ghtutWtKwhox7WrBOzEsqLH9E2/bcGIKlXULYcTmCQ
Rk+vHpmTdpv329U8B0JuKTKN/ArEfAiv/ZjNXl3lhOX52oqbC0p1BLEZw7HhyL7YOP8hMqC/RV8K
UkIyrbdRFCjo3PiaJ6zjEmMB5ZEXfqzQolooVO08CBMV7lrubiNCKTRsJpgpQytDmm4Bl51e0qR2
Up/trfZgMbpYZCfiqgCNU2dI/MoILm6hmvxb0AB2iKrRH03YOv32jno1R4eYAS5jTA7H6NqxMl0h
MvdVd3cHr4sbavmOSREU6ehfBN15x/Ti2cnstxU2bVrgRDIZS49IFvc1qGtdYoqe+55hof2H2Fp+
c8t2bA54CgjOQUMmQgUSrLPLszEF+J4eJUEM8CBYfdWQwIO9HRS5vfgQTtmrgEZwuMOlS9f7KazI
g0uNx7t6eAgFxQe7aIrlDftteOS4sTBVwLJAk8QYoD38H1yX6yEj8SCuqw76T+qrLvMnBwec9c/X
wO7Decl5RsmVbKLvVQt/q3eF0x7P05awSX71d7iDad2bybN7jSOEVtIMBTfiwDMbovIbGClBQ/5e
Ld88u/kc9NqVuendLc2sAJ5bAXlNOOFehUm4iH0dozr+jcq8VejW3AG0BS+d1zO8kDnM6nVETofT
HzbxK1AQVaM8gZjjOLQQj5kxtcmzEQ6B1Q19M3+SfaoAv3i8Nsx8RUYanajNf80olH2Z2tR1uYHp
TKPkrIix5XXDX5rTbf264rkqJglc5NF8uQO3VKHIiui3per1H/8051NHnHIQNHESBGN19nQOKK/Q
7i3lPKd/V57+VAIYlUUYE0C5VqPl/vLhYoUsc3ELT9maq/Xfi8r8bjJ7SFsOyaIvFKNDwh0AvNXl
3oBmivBFhwOf7vL1uUq7h0YRQTwt5T1/5FXmG0PVC+NwAhcq/CWWNxQcnTnSK8LLUsksUC01TNmi
s/3pYtN4b1cwDwU898CHvK5bR+wITQNjzt28BrH7YpPHFi9zTuOdaiYjKJJ0TikypHXbdBEQq4sR
SVG5T82DDe9ZFsd1xXZsP0hqwB2utMS+lKwk1PnyivLQP9+E5KCR3ruFPTtYHVaIrjCgQO968jOa
o8OK8AlBmI43erw4SnJsYvIq1DL2HLNt4h0fa2bAn/FDkIaEOrK/K/MPcb9rexmiUFIengpEu4ap
a/0JZVhIsGbz47WPlypS69oKM31WjkewYuEcjeZ9A7Dr1h1/y6psuQ/FGjDmWS7DqOkbE/yovdxr
DNjf4w+M2o9FJHpzizU89UZbZOY8NKmb59NUHiC3l6mtol/T7/JSRUlgHBcFG/QCWy9AgIAIvqlj
bg5p9pokKiaXJNDjRbkVYKUKxmUQZJWHgoo3596CC0TMFivW3n9uEm3t0cdTpb5YNA+cmqGZ+2SW
d/UvjBf/x7RV7WBcdpxbydlW7kDE0gSrmRcXDsiviQdIUwZY9/9g3WdlztPHGTlvKP3fsX9ADt4i
NIdreH6WHVbh3c1KkfrjBcWdmx8v3R6kWNG544pN9jYPlE0eWgN7i89+M3gHBA86iwnazyeOFuYQ
7T/3C2LZ4u7bE9waNt3RmPedSUBSyCow1ulaoQ7wAGgiHW5Our6LH9GqzbM6KHzb2Vo8Tgom3Y7X
XTw/YqvrB+Zj+NxSBies8pH7Nf6RT11bHQGDKmHfeTYRlvBpInpZPQfC2Rapj0ammefadW3LldLq
1L3R2MVziAWdOeNXCB5y5jiX3cRCd3DS9Lo492NuJTidsE0SZVVmJJ+3aev3+6kK4TvYNRaT1KRY
IoTf60qa9+Uji498zc2fY04r+6gfSPuCeMvXOd7yH8ddbe27TJ+9PpFHj2XSUb7APip2buWHURrF
cXU85EhTk1muK4WX3Ha8judoIPhvjrsKK5WPOVtE5WnpOxMpHP201Jg7pwFDNJl0O1hKwplyXgc4
JAE21MWMiPU9Oargymez0kogDh/j5RtCyus0mpwx6iBawuGcjl6Mbbhtsa9sNQ14ZFca3aiUUB7v
JiuCvv5ZP05qKT4LDP48LZoA5iwHby53QSEkRJPaixt3V4+PZkQyQxiz/iCSZ5i8rIyhiUruPtsa
BhuOMAUxXMmFkidkqPhGZDFiHWPAjzk5DV08fKp+eejem1E6do2M9q34/9IZrO7whtMooFd3EP+k
gUCarnPLTp+zomvWymQ8hK3L1rLK0LdKiZZdlwjDZlGJ++y5M5ZzBg6GXg8xHHBuvZWFO0ti77MU
bLTfKYFt9T2snFQaFfZRqclfLX3jHjP9AzlJmqmfbPSyJK20tMby/16NjgVsSe4t8OwHGtoqc2YK
YUBGigmzSJq0mMEbNCt+uNhG5grE8DmVxbAZhtS85L+bo3gKhScBynPHpSXQVYiup2g4fOw5klGZ
bzL8qEQvH5F/+9EnGuBKDl3hvGUeQSyKuNwLcn5dJbI8sNvE1AaAZygwqxfjx2F/ti1OCz4sS6cO
hMPzqxI6MnSveoa75gp8YTiBCYG5RlAGvcwLVRpVCj4LOENYvwwmBhEl0IJhVgvWydgXbRtaV7de
OdKm3MaVhiDgnxbbC8GQSa7PZlQYdzj5My956C8Mcjn2DRx1BAC8C5sVPakn6q/XZSaJmczeQqH6
wIa32XcwPjGIEc3L5a5xugsVUiDDwCdO5ceZgWQ+mSKePP2rROkqztTfM1Gbj/253/IT8hs6uBpe
p8LG8ySP6Vlxnn+nZTJ0Zb1KxO4JJ/08RuU5q9q8gY8xAC1rpBNuQYKsP5C0Ufzf5XuL7r9Z9Jqm
MZMRf9GlbzUrCflzCmSC1PzGkylNvBs+X26abAZK+opmNsxKWX3m1cUOdLqEiw89qRYsLJIzgch8
tTl69mIT9SSaS5Yl4iwuDD/C9ikRKwzRTE312HFZu1xsMwjuUGoOwqRbi5fbGfyuRjGtIrFg+JCa
1MKjeuQZYVqMelu1iKjHE3tDJY0XHP7z0KxqE0E3TnTtP/zqCV8jtV1CiGhErLklx68eJsvqSbcr
LpTl4tF2MLQ1rB/GzbQeVMnew8TEXdluMDq1g8e5fpjy+eBVXcPQtNhRXrhWSyfYAaKAdN06R6co
YeF31rRQcwFPmj7EEOEjofNme8RD1Niuug2TsqpAR2+AjqTyUqSuKTQIEKJ6v7c9AHfw56sXodkK
iyo1SAVKs1Mm75rm6J9JZ6b1ZJ8z9E0avDs52ek7z9fmH1ZQ3JFbmxIj1sg8yUnJEYUFo/JH1OYg
AwErvnck+/wAP3PfkGO204YKZiSX6K7dBEBdVlJVuEQGNRM3Y5cImZPxicJuSvyscOGZNZp90q3X
wRJOWJRGyeZAW20EtTVlCLaglczTucfGZaCco0sQ/ICgcs/kgR2N7jiRzUevj6rQ4YsPtntbBZ01
morOBSViBuq8xGH6txMBehT50eqGWnvvkDBDw3yqggu0o4OkvBAwXVFK35EAxcRrMtrpM5Ug72ax
mkvfOsscXJ85kOZZr+TlzwMuUtnxWtBhwixyt7BiUH5q84B6IyTM5SOMdwQR9r9iCOHEx1SLGDPG
czdBTEQVlfHTW4a+e3Xs8ILpYqk5hWI4wUV21VvV3AZQOOHkn1jl0uaAjhNrqWSs8Ln+bIFx/oIe
hCpAfBvgG9GhLpN+zP8zrC70dmmRo8GWB4CLh91glNW1gMBhhfe2HEY6Dt3zBlCzp2dtGV8xlxVb
Oli8mlpc7M8IABK7Rbcg9e1lv1TznOOiDmcDDxhwnYbZNSWGg3cjPSdPIrEM/MKIQuAtawnS6jaG
hwVvAYIpLH+z7dKqscV0TY9y8HxZp+UIEkOZyf/Qi3V7VE7SGNe5uzwS6OI1m1jtREC0IvJJ30Bv
nff8Y0kUkxZsLsMv3tARROpkJapjQaWFsFEmT4aX+Z0mABhyNwGMlHG3rRJk+Ap+/7vJaqVY8xD7
QhVKuTujs7RwgBHvun1ilxKUrIEssniv/b0zd2FkHV6DUnFP33SVtzY3L1eMlDKG3FvJqv7Ggo1T
kpoLZ7LvvuQL7AivdQby11JoZYbNsxAkht/Is8kz9IjVC9m+Paktj/mqdY8/al1RDccBYmdHQzYe
gxiAqcv4UjmrGtQsigIruJHllYupJhZhVJ2hqPMNpThQFdms62wj2g9kguUzYtuxA2nz+Y5SkVg1
LvFxwHb+F7nE3zPrL16aGGSSN+neDSnrxOqxztwE+693EAvtauS1+BfdLcqGJGpV9Gqu+MH4OTmY
QglyUbkwFECnz9ZKuABDovx13erF/LLdimEeJlaecdqVV9FI4OYVZT8Et4v+CD4sodrx4MK9VAkl
LQnjWlR6JGn7/4C2svHoU0rg7Tgj9XSx3Ff8T8pOq5Ruk4BsCYagWJlN74h1stYd32c+Hi3xM+zR
Oc2bwJ6BZ+x/XPfE4jRhMJb9KzMEpgm5UYp5F6b5WT9FIEmjKyTIaeA98fAhsT9W+j0NO3aU26Zd
o0TpjWIaBa6ZPI63KCBDIhChhjIhd5cem5Xv3B4OHLXtLMwGAjH+qiaU39H3ciWlnHN0SbrNEtnV
v204dOF0buI3NdVuIO+po7dmZbYGy9qs//fQZ7ST38E7d8RT/epkaKsCMqDKSdE7yNV58zOTTZGY
k5MiU0xKQnJVNmM+e3U0J/v+2Mn9OE+0cqdejBPNUSM4IpFWeh4S58dEh+DBz5Kq4ePExnYXTyRC
46BMcBV+0JlnLQtVg+tgZDoQfkZryXaNc0A/+9xfYga34E6PDkLImKKDqMs59mxZuNwnMJpt/oVq
hNAK8fjN5VhP8UMrzBghh4Pc9rkhH6P+PdYY1FYLO7Gv9vKi5uiBEUus+HhboH2zikfpvmR2ZgO+
QY3Grc6vA6XsRAdgAZLn/wKiUwDNQ01QZ0rlEKNwiMumfO2bX7rbDfn6X7rUIBhp8HCEsNHCC9YJ
HOiSQNhwPgdiQgkwpAxZnAuXhnL3E+yY7h+sjrXEuQ9RZiZe4soJlLZz3GmMH73jEDcOWJcMID+P
CkSh1Q3+BQF6NFyPrneEocagZXswl+cDmKXZ0qsXHx5iOjGLn1lrVcEOdYXBZ3TDiRxaW843WrqA
NgK1hF94Czw5G2Jg64BdKydXhQLLt5+KXmLxrlsb2xhCUKoWawwVJb6QqJ9jPcTkW/qTIkMKICso
ArFcJe8JwPgw5Lmb2ov7zlJldrBEQ3T9PgFv+Ijsedo2VDtOM3/f/6TGo3D4ry1hj7M4HtDibjDt
ybKuu+RBMAXSnFeQuaddazMdkT6+9xAH3ogQc9Gl8HYExMmDNG2k2v9yEcnsQ+mxLyIPn0MsBjEj
3PKrw58/0uW3eqy/CmnpHkGLXGcZ/T+ShAcz0CSP4v/ml5m9sDt/oQIAB9SC/3yXoO4KK82ILXoP
YFEM9xS4dHZ/SWVoHydaiVG1KMzsOJUJApzeg9aRPzgMo+7CTg6RCk2LxLPWVmg/xdT0pXGxGbm3
tWRsIzc6Rcbgr5xhH3QBUSlHSDIx2Gcxhn4mImxaEH/KLwC92uplJM4EHbAM/fVOs9so2nPjImz1
H1Dk4ATzgtDUacf74jOink0uRsTGd+CWL78H16eHsDHsJkIxJeoM6mfqzm1Q+C7b4C1e+S2cUHhK
INYnrhcl1A3+AhdEQ8h2bXXawc+CyLfQY+vTKqLmsSPvT/ZBJvc6AvaAnG/O8lcu08NOjJPpMKW0
YutrbRnICPRsefsv36ZkFkcXt4jJi82dcsAVocJZljub6QOGv3pthNlPzwm1Y0DX79owsQOWVaFH
ozkB0l6U5ORaLdLp3xk6QHJleexz787qohlAxZ41t2eulsdggeHIoHW+Qv2HObAMQbfsqJWlBNJ/
JxQhbilKNxmV7y6OutN6Pg7cgcSZk2IVnu/qf+8nsDHTG0eaZYQY03CFHLJ64QVb8o2JFjoDKdAX
KUTtcPhWiZLqpgpJMxknRccwlzcJcs54BojTXsm9YfVK/Zd9ZDKbjcTxsbW1bb3NqB4wuTsJQ78e
6BXFz/vIHgWffhuNdF013YUrj04yVeD5YfiS/kqb/SlxYf350ynecxKz3LGMcRnIJHDbzhIRH5xZ
EkqVbM2k+oJIqVxFeScJfNG2nbVUxmNE3EXj2MMAositkYhoROOp/aiPI0v4PfRqQ/6q+7qL6NU/
j8Yb1QRrIa1G72FpgzhT/OkBLAnCnaR5UGAyWxKVFndWr+v36qUS7I1aRZjaLI/a0BQeHBpaFp3k
0X46JsmigkGXidaRU/gXKKAbFoxymjJV6CeSdsfnvnOJbAmZcVmx+COa3UInz5/4H0W9KkUZn6fz
mulzs/OcY6TctjblK63ysn4=
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
