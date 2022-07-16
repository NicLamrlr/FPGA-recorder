----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.11.2021 12:35:31
-- Design Name: 
-- Module Name: en_4_cycles_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------



library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity en_4_cycles_tb is
--Port()
end;

architecture behavioral of en_4_cycles_tb is

  component en_4_cycles
    Port ( clk_12megas : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_3megas: out STD_LOGIC;
           en_2_cycles: out STD_LOGIC;
           en_4_cycles : out STD_LOGIC);
  end component;

  signal clk_12megas: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal clk_3megas: STD_LOGIC;
  signal en_2_cycles: STD_LOGIC;
  signal en_4_cycles1: STD_LOGIC;
  constant clk_period : time := 83.3333 ns;

begin


clk_process :process
    begin
    clk_12megas <= '0';
    wait for clk_period/2;
    clk_12megas <= '1';
    wait for clk_period/2;
end process;

  dut: en_4_cycles port map ( clk_12megas => clk_12megas,
                              reset       => reset,
                              clk_3megas  => clk_3megas,
                              en_2_cycles => en_2_cycles,
                              en_4_cycles => en_4_cycles1 );

  stimulus: process
  begin
  wait for 1000ns;
  reset <= '1';
  wait for 200 ns;
  reset <= '0';


    wait;
  end process;


end;