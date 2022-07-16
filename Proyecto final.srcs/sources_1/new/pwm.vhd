----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2021 12:36:01
-- Design Name: 
-- Module Name: pwm - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm is
    Port(clk_12megas: in std_logic;
         reset: in std_logic;
         en_2_cycles: in std_logic;
         sample_in: in std_logic_vector(sample_size-1 downto 0);
         sample_request: out std_logic;
         pwm_pulse: out std_logic);
end pwm;

architecture Behavioral of pwm is

signal r_reg : unsigned (8 downto 0);
signal r_next : unsigned (8 downto 0);
signal buf_next : std_logic;
signal buf_reg : std_logic;

begin
-- register & output buffer
process (clk_12megas, reset)
begin
    if (reset = '1') then
        r_reg <= (others=>'0');
        buf_reg <= '0';
    elsif rising_edge(clk_12megas) then
        if en_2_cycles = '1' then
            r_reg <= r_next;
            buf_reg <= buf_next;
        end if;
    end if;
end process;


-- next-state logic

r_next <= (others => '0') when (r_reg = unsigned(c299)) else (r_reg + 1);

-- output logic
buf_next <= '1' when (r_reg < unsigned(sample_in)) else '0';
pwm_pulse <= buf_reg; 
sample_request <= en_2_cycles when r_reg = unsigned(c299) else '0';

end Behavioral;
