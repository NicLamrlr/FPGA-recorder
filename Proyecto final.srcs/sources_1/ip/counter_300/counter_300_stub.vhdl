-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Fri Nov 19 12:11:05 2021
-- Host        : pc-b042-14 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {E:/DSED/DSED_Group19/Proyecto final/Proyecto
--               final.srcs/sources_1/ip/counter_300/counter_300_stub.vhdl}
-- Design      : counter_300
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_300 is
  Port ( 
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end counter_300;

architecture stub of counter_300 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,SCLR,Q[8:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_10,Vivado 2017.2";
begin
end;
