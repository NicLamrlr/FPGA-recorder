----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2021 11:00:27
-- Design Name: 
-- Module Name: grabacion - Behavioral
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
use work.package_dsed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity grabacion is
 Port (clk_12megas : in std_logic;
         reset: in std_logic;
         BTNL: in STD_LOGIC;
         sample_in: in std_logic_vector(sample_size-1 downto 0);
         sample_in_enable: in std_logic;
         sample_out: out std_logic_vector(sample_size-1 downto 0)
          );
end grabacion;

architecture Behavioral of grabacion is

begin
process(clk_12megas, reset)
begin
    if(reset = '1') then
        sample_out <= (others => '0');
    elsif(rising_edge(clk_12megas)) then
        if(sample_in_enable = '1' and BTNL = '1') then
            sample_out <= sample_in;
        end if;
    end if;
end process;

end Behavioral;
