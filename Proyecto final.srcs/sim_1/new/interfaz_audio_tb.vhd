----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2021 11:55:14
-- Design Name: 
-- Module Name: interfaz_audio_tb - Behavioral
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

entity interfaz_audio_tb is
end;

architecture bench of interfaz_audio_tb is

  component interfaz_audio
    Port (clk_12megas : in std_logic;
          reset: in std_logic;
          record_enable : in std_logic;
          play_enable : in std_logic;
          micro_clk : out STD_LOGIC;
          micro_data : in STD_LOGIC;
          micro_LR : out STD_LOGIC;
          sample_in: in std_logic_vector(sample_size-1 downto 0);
          sample_request: out std_logic;
          sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
          sample_out_ready : out STD_LOGIC;
          jack_sd : out STD_LOGIC;
          jack_pwm : out STD_LOGIC);
  end component;

  signal clk_12megas: std_logic;
  signal reset: std_logic;
  signal record_enable: std_logic;
  signal play_enable: std_logic;
  signal micro_clk: STD_LOGIC;
  signal micro_data: STD_LOGIC;
  signal micro_LR: STD_LOGIC;
  signal sample_in: std_logic_vector(sample_size-1 downto 0);
  signal sample_request: std_logic;
  signal sample_out: STD_LOGIC_VECTOR (sample_size-1 downto 0);
  signal sample_out_ready: STD_LOGIC;
  signal jack_sd: STD_LOGIC;
  signal jack_pwm: STD_LOGIC;
  constant clock_period: time := 83.333333 ns;

begin

uut: interfaz_audio port map ( clk_12megas      => clk_12megas,
                             reset            => reset,
                             record_enable    => record_enable,
                             play_enable      => play_enable,
                             micro_clk        => micro_clk,
                             micro_data       => micro_data,
                             micro_LR         => micro_LR,
                             sample_in        => sample_in,
                             sample_request   => sample_request,
                             sample_out       => sample_out,
                             sample_out_ready => sample_out_ready,
                             jack_sd          => jack_sd,
                             jack_pwm         => jack_pwm );

clk_process : process
     begin
         clk_12megas <= '0';
         wait for clock_period/2;
         clk_12megas <= '1';
         wait for clock_period/2;
end process;

stimulus: process
begin

reset <= '1';
record_enable <= '0';
play_enable <= '0';
micro_data <= '0';
sample_in <= (others => '0');
wait for 50 ns;
reset <= '0';
record_enable <= '1';
play_enable <= '1';
micro_data <= '1';
sample_in <= (others => '1');
wait;
end process;


end;