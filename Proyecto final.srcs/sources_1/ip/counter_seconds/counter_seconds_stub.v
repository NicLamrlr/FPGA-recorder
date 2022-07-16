// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Jan 31 12:32:00 2022
// Host        : DESKTOP-PFVITI7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top counter_seconds -prefix
//               counter_seconds_ counter_seconds_stub.v
// Design      : counter_seconds
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *)
module counter_seconds(CLK, CE, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,Q[23:0]" */;
  input CLK;
  input CE;
  input SCLR;
  output [23:0]Q;
endmodule
