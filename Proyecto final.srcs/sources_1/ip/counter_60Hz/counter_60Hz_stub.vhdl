-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Jan  2 13:29:53 2022
-- Host        : DESKTOP-PFVITI7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top counter_60Hz -prefix
--               counter_60Hz_ counter_60Hz_stub.vhdl
-- Design      : counter_60Hz
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_60Hz is
  Port ( 
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );

end counter_60Hz;

architecture stub of counter_60Hz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,SCLR,Q[17:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_10,Vivado 2017.2";
begin
end;
