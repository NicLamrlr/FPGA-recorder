----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.11.2021 12:21:56
-- Design Name: 
-- Module Name: en_4_cycles - Behavioral
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

entity en_4_cycles is
  Port ( clk_12megas : in STD_LOGIC;
         reset : in STD_LOGIC;
         clk_3megas: out STD_LOGIC;
         en_2_cycles: out STD_LOGIC;
         en_4_cycles : out STD_LOGIC);
end en_4_cycles;

architecture Behavioral of en_4_cycles is
signal count : std_logic_vector(1 downto 0);

COMPONENT counter3M
  PORT (
    CLK : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

signal clk_3megas_aux, en_2_cycles_aux, en_4_cycles_aux : std_logic := '0';

begin
M_inst : counter3M
  PORT MAP (
    CLK => clk_12megas,
    SCLR => reset,
    Q => count
  );
process(clk_12megas)
begin
if(rising_edge(clk_12megas)) then
if(count = "00") then
   en_2_cycles_aux <= '0';
   en_4_cycles_aux <= '0';
   clk_3megas_aux <= '0';
elsif (count = "01") then
    en_2_cycles_aux <= '1';
    en_4_cycles_aux <= '0';
elsif (count = "10") then
        en_2_cycles_aux <= '0';
        en_4_cycles_aux <= '1';
        clk_3megas_aux <= '1';
 elsif (count = "11") then
        en_2_cycles_aux <= '1';
        en_4_cycles_aux <= '0';
        end if;
end if;
end process;

clk_3megas <= clk_3megas_aux;
en_2_cycles <= en_2_cycles_aux;
en_4_cycles <= en_4_cycles_aux;

end Behavioral;
