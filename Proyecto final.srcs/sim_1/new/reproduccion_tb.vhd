----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.12.2021 13:08:39
-- Design Name: 
-- Module Name: reproduccion_tb - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reproduccion_tb is
end;

architecture bench of reproduccion_tb is

  component reproduccion
    Port (clk_12megas : in std_logic;
           reset: in std_logic;
           play : in std_logic;
           SW0: in STD_LOGIC;
           SW1: in STD_LOGIC;
           sample_in: in std_logic_vector(sample_size-1 downto 0);
           sample_in_enable: in std_logic;
           sample_out: out std_logic_vector(sample_size-1 downto 0) );
  end component;

  signal clk_12megas: std_logic;
  signal reset: std_logic;
  signal play: std_logic;
  signal BTNR: STD_LOGIC;
  signal SW0: STD_LOGIC;
  signal SW1: STD_LOGIC;
  signal sample_in: std_logic_vector(sample_size-1 downto 0);
  signal sample_in_enable: std_logic;
  signal sample_out: std_logic_vector(sample_size-1 downto 0) ;

  constant clock_period: time := 83.3333333333 ns;
  constant clock_period_sample: time := 50 us;

begin

  uut: reproduccion port map ( clk_12megas      => clk_12megas,
                               reset            => reset,
                               play             => play,
                               SW0              => SW0,
                               SW1              => SW1,
                               sample_in        => sample_in,
                               sample_in_enable => sample_in_enable,
                               sample_out       => sample_out );

  stimulus: process
  begin
  reset <= '1';
  wait for 50 ns;
  reset <= '0';
  play <= '1';
  SW1 <= '1';
  SW0 <= '0';
  sample_in <= "11111111";


    wait;
  end process;

 clk_process1 : process
         begin
             clk_12megas <= '0';
             wait for clock_period/2;
             clk_12megas <= '1';
             wait for clock_period/2;
end process;

clk_process_sample : process
         begin
             sample_in_enable <= '0';
             wait for clock_period_sample - clock_period;
             sample_in_enable <= '1';
             wait for clock_period;
end process;


end;