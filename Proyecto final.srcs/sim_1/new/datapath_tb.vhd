----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.12.2021 18:18:54
-- Design Name: 
-- Module Name: datapath_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath_tb is
end;

architecture bench of datapath_tb is

  component datapath
    Port (clk : in std_logic;
          reset : in std_logic;
          sample_in : in signed (7 downto 0);
          sample_in_enable : in STD_LOGIC;
          control : in STD_LOGIC_VECTOR (2 downto 0);
          filter_select : in STD_LOGIC;
          y : out signed (7 downto 0)
     );
  end component;

  signal clk: std_logic;
  signal reset: std_logic;
  signal sample_in: signed (7 downto 0);
  signal sample_in_enable: STD_LOGIC;
  signal control: STD_LOGIC_VECTOR (2 downto 0);
  signal filter_select: STD_LOGIC;
  signal y: signed (7 downto 0) ;

  constant clock_period: time := 10 ns;

begin

  uut: datapath port map ( clk              => clk,
                           reset            => reset,
                           sample_in        => sample_in,
                           sample_in_enable => sample_in_enable,
                           control          => control,
                           filter_select    => filter_select,
                           y                => y );

  stimulus: process
  begin
  
  reset <= '1';
  wait for 10 ns;
  filter_select <= '1';
  reset <= '0';
  sample_in_enable <= '1';
  sample_in <= "11010010";
  wait for 10 ns;
  control <= "000";
  sample_in_enable <= '0';
  wait for 10 ns;
  control <= "001";
  wait for 10 ns;
  control <= "010";
  wait for 10 ns;
  control <= "011";
  wait for 10 ns;
  control <= "100";

    wait;
  end process;

  clk_process : process
                begin
                      clk <= '0';
                      wait for clock_period/2;
                      clk <= '1';
                      wait for clock_period/2;
                end process;

end;