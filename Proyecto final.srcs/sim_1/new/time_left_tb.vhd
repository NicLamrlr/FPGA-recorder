----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2022 18:32:15
-- Design Name: 
-- Module Name: time_left_tb - Behavioral
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

entity time_left_tb is
end;

architecture bench of time_left_tb is

  component time_left
    Port (
           clk_12megas : in std_logic;
           reset: in std_logic;
           BTNL: in std_logic;
           AN :out std_logic_vector(7 DOWNTO 0);
           cathode :out std_logic_vector(6 DOWNTO 0) 
           );
  end component;

  signal clk_12megas: std_logic;
  signal reset: std_logic;
  signal BTNL: std_logic;
  signal AN: std_logic_vector(7 DOWNTO 0);
  signal cathode: std_logic_vector(6 DOWNTO 0) ;

  constant clock_period: time := 83.333333 ns;

begin

  uut: time_left port map ( clk_12megas => clk_12megas,
                            reset      => reset,
                            BTNL       => BTNL,
                            AN         => AN,
                            cathode    => cathode );

  stimulus: process
  begin
  reset <= '1';
  wait for 50 ns;
  reset <= '0';
  
   BTNL <= '1';
   


    wait;
  end process;

clk_process :process
    begin
    clk_12megas <= '0';
    wait for clock_period/2;
    clk_12megas <= '1';
    wait for clock_period/2;
end process;

end;