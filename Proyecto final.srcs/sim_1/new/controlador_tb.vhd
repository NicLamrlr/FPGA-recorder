----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2021 12:25:53
-- Design Name: 
-- Module Name: controlador_tb - Behavioral
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
use work.package_dsed.all;

entity controlador_tb is
end;

architecture bench of controlador_tb is

component controlador
  Port (
      clk_100Mhz : in std_logic;
      reset: in std_logic;
      micro_clk : out STD_LOGIC;
      micro_data : in STD_LOGIC;
      micro_LR : out STD_LOGIC;
      jack_sd : out STD_LOGIC;
      jack_pwm : out STD_LOGIC
  );
end component;

signal clk_100Mhz: std_logic;
signal reset: std_logic;
signal micro_clk: STD_LOGIC;
signal micro_data: STD_LOGIC;
signal micro_LR: STD_LOGIC;
signal jack_sd: STD_LOGIC;
signal jack_pwm: STD_LOGIC;
constant clock_period: time := 10 ns;
begin

  uut: controlador port map ( clk_100Mhz => clk_100Mhz,
                              reset      => reset,
                              micro_clk  => micro_clk,
                              micro_data => micro_data,
                              micro_LR   => micro_LR,
                              jack_sd    => jack_sd,
                              jack_pwm   => jack_pwm );

clk_process : process
begin
     clk_100Mhz <= '0';
     wait for clock_period/2;
     clk_100Mhz <= '1';
     wait for clock_period/2;
end process;

stimulus: process
begin
    reset <= '1';
    micro_data <= '0';
    wait for 50 ns;
    reset <= '0';
    micro_data <= '1';
    wait;
end process;


end;
