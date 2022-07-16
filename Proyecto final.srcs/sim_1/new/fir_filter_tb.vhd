----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.12.2021 17:56:57
-- Design Name: 
-- Module Name: fir_filter_tb - Behavioral
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
use work.package_dsed.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fir_filter_tb is
end;

architecture bench of fir_filter_tb is

  component fir_filter
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          sample_in : in signed (sample_size-1 downto 0);
          sample_in_enable : in STD_LOGIC;
          filter_select: in STD_LOGIC;
          sample_out : out signed (sample_size-1 downto 0);
          sample_out_ready : out STD_LOGIC);
  end component;

  signal clk: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal sample_in: signed (sample_size-1 downto 0);
  signal sample_in_enable: STD_LOGIC;
  signal filter_select: STD_LOGIC := '0';
  signal sample_out: signed (sample_size-1 downto 0);
  signal sample_out_ready: STD_LOGIC;
  constant clock_period: time := 10 ns;

begin

  uut: fir_filter port map ( clk              => clk,
                             reset            => reset,
                             sample_in        => sample_in,
                             sample_in_enable => sample_in_enable,
                             filter_select    => filter_select,
                             sample_out       => sample_out,
                             sample_out_ready => sample_out_ready );
                             
  clk_process : process
                begin
                      clk <= '0';
                      wait for clock_period/2;
                      clk <= '1';
                      wait for clock_period/2;
                end process;

  stimulus: process
  begin
  reset <= '1';
  wait for 10 ns;
  reset <= '0';
  
-- Ciclo 0
  

  sample_in <= "00000000";
  
  
  -- Ciclo 1
  
  wait for 90 ns;
  sample_in <= "01000000";
  --sample_in <= "00000000";
  
  
    -- Ciclo 2
  
  wait for 90 ns;
  sample_in <= "00000000";
  
    -- Ciclo 3
  
  wait for 90 ns;
  sample_in <= "00010000";
  --sample_in <= "00000000";
  
    -- Ciclo 4
  
  wait for 90 ns;
   sample_in <= "00000000";
  --sample_in <= "01111111"; -- Max nº positivo
 -- sample_in <= "00000001"; -- Min nº positivo
  --sample_in <= "11111111"; -- Max nº negativo
  -- sample_in <= "10000000"; -- Min nº negativo
  
    -- Ciclo 5
  
  wait for 90 ns;
  sample_in <= "00000000";

    -- Ciclo 6
  
  wait for 90 ns;
  sample_in <= "00000000";

  
    -- Ciclo 7
  
  wait for 90 ns;
  sample_in <= "00000000";

  
    -- Ciclo 8
  
  wait for 90 ns;
  sample_in <= "00000000";



   wait;
  end process;
  
  
process
  begin
     wait for clock_period;
     sample_in_enable <= '1';
     wait for clock_period;
     sample_in_enable <= '0';
     wait for 8 * clock_period;
  end process;

end;