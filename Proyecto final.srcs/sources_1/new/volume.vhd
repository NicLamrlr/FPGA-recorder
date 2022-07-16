----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2022 17:31:33
-- Design Name: 
-- Module Name: volume - Behavioral
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

entity volume is
  Port ( clk_12megas : in std_logic;
         reset: in std_logic;
         BTND1: in std_logic;
         SW2: in std_logic;
         sample_in : in STD_LOGIC_VECTOR(sample_size - 1 DOWNTO 0);
         sample_out : out STD_LOGIC_VECTOR(sample_size - 1 DOWNTO 0);
         AN :out std_logic_vector(7 DOWNTO 0);
         cathode :out std_logic_vector(6 DOWNTO 0));
end volume;

architecture Behavioral of volume is
signal factor : unsigned(9 downto 0) := "0001000000";
signal nivel, nivel_next : unsigned(4 downto 0) := "01010";
signal aux : unsigned(17 downto 0);
signal count60 : std_logic_vector(17 downto 0);
signal count : std_logic_vector(22 downto 0);

COMPONENT counter_60Hz
  PORT (
    CLK : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

COMPONENT counter_button
  PORT (
    CLK : IN STD_LOGIC;
    CE : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(22 DOWNTO 0)
  );
END COMPONENT;

begin

C1 : counter_60Hz
  PORT MAP (
    CLK => clk_12megas,
    SCLR => reset,
    Q => count60
  );
  
C2 : counter_button
  PORT MAP (
    CLK => clk_12megas,
    CE => BTND1,
    SCLR => reset,
    Q => count
  );

process (clk_12megas, reset)
begin
    if (reset = '1') then
        nivel <= "01010";
    elsif rising_edge(clk_12megas) then
        nivel <= nivel_next;
    end if;
end process;

process(BTND1, SW2, nivel, count)
begin
nivel_next <= nivel;
    if(BTND1 = '1') then
        if(SW2 = '1' and nivel < 20) then
            if(count = (count'range => '1')) then
                nivel_next <= nivel + 1;
            end if;
        elsif (SW2 = '0' and nivel > 0) then
            if(count = (count'range => '1')) then
                nivel_next <= nivel - 1;
            end if;
        end if;
    else
        nivel_next <= nivel;
        
    end if;    
end process;
factor <=
        (others => '0') when nivel = 0 else
        "0000000010" when nivel = 1 else --0.03125 <4.6>
        "0000000101" when nivel = 2 else 
        "0000001001" when nivel = 3 else 
        "0000001101" when nivel = 4 else 
        "0000010001" when nivel = 5 else 
        "0000010111" when nivel = 6 else 
        "0000011110" when nivel = 7 else
        "0000100111" when nivel = 8 else
        "0000110010" when nivel = 9 else
        "0001000000" when nivel = 10 else
        "0001010000" when nivel = 11 else
        "0001100011" when nivel = 12 else
        "0001111011" when nivel = 13 else
        "0010010111" when nivel = 14 else
        "0010111010" when nivel = 15 else
        "0011100101" when nivel = 16 else
        "0100011000" when nivel = 17 else
        "0101010111" when nivel = 18 else
        "0110100011" when nivel = 19 else
        "1000000000" when nivel = 20;
        
        
        
process(count60, nivel)
        begin
            if(count60 <= "011000011010011111") then
                AN <= "11111110";
                if(nivel = 0 or nivel = 10 or nivel = 20) then
                    cathode <= "1000000";
                elsif(nivel = 1 or nivel = 11 or nivel = 21) then
                    cathode <= "1111001";
                elsif(nivel = 2 or nivel = 12 or nivel = 22) then
                    cathode <= "0100100";
                elsif(nivel = 3 or nivel = 13 or nivel = 23) then
                    cathode <= "0110000";
                elsif(nivel = 4 or nivel = 14 or nivel = 24) then
                    cathode <= "0011001";
                elsif(nivel = 5 or nivel = 15 or nivel = 25) then
                    cathode <= "0010010";
                elsif(nivel = 6 or nivel = 16 or nivel = 26) then
                    cathode <= "0000010";
                elsif(nivel = 7 or nivel = 17) then
                    cathode <= "1111000";
                elsif(nivel = 8 or nivel = 18) then
                    cathode <= "0000000";
                elsif(nivel = 9 or nivel = 19) then
                    cathode <= "0011000";
                end if;
            else
                AN <= "11111101";
                if(nivel >= 20 and nivel <= 26) then
                    cathode <= "0100100";
                elsif(nivel >= 10 and nivel <= 19) then
                    cathode <= "1111001";
                else
                    cathode <= "1000000";
                end if;
            end if;   
        end process;        
        
aux <= unsigned(sample_in) * factor;       
sample_out <= std_logic_vector(aux(13 downto 6));
end Behavioral;
