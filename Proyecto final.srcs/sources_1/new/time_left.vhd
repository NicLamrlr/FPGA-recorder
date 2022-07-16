----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2022 13:19:03
-- Design Name: 
-- Module Name: time_left - Behavioral
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

entity time_left is
  Port (clk_12megas : in std_logic;
         reset: in std_logic;
         BTNL: in std_logic;
         AN :out std_logic_vector(7 DOWNTO 0);
         pitido: out std_logic_vector(sample_size-1 DOWNTO 0);
         cathode :out std_logic_vector(6 DOWNTO 0) 
         );
end time_left;

architecture Behavioral of time_left is

signal count : std_logic_vector(17 downto 0);
signal pitido_aux : std_logic_vector(sample_size - 1 downto 0):= "11111111";
signal seconds_reg,seconds_next : unsigned(4 downto 0) := "11010" ;
signal count_sec : std_logic_vector(23 downto 0);
signal lck: std_logic;
signal en: std_logic;


COMPONENT counter_seconds
  PORT (
    CLK : IN STD_LOGIC;
    CE : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;


COMPONENT counter_60Hz
  PORT (
    CLK : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

begin

C1 : counter_60Hz
  PORT MAP (
    CLK => clk_12megas,
    SCLR => reset,
    Q => count
  );
  
  
  C2 : counter_seconds
    PORT MAP (
      CLK => clk_12megas,
      CE => BTNL,
      SCLR => reset,
      Q => count_sec
    );
  

process(clk_12megas,reset)
begin
    if(reset = '1') then
        seconds_reg <= "11010";
    elsif(rising_edge(clk_12megas)) then
        seconds_reg <= seconds_next;
    end if;
end process;
  
process(count, seconds_reg)
begin
    if(count <= "011000011010011111") then
        AN <= "10111111";
        if(seconds_reg = 0 or seconds_reg = 10 or seconds_reg = 20) then
            cathode <= "1000000";
        elsif(seconds_reg = 1 or seconds_reg = 11 or seconds_reg = 21) then
            cathode <= "1111001";
        elsif(seconds_reg = 2 or seconds_reg = 12 or seconds_reg = 22) then
            cathode <= "0100100";
        elsif(seconds_reg = 3 or seconds_reg = 13 or seconds_reg = 23) then
            cathode <= "0110000";
        elsif(seconds_reg = 4 or seconds_reg = 14 or seconds_reg = 24) then
            cathode <= "0011001";
        elsif(seconds_reg = 5 or seconds_reg = 15 or seconds_reg = 25) then
            cathode <= "0010010";
        elsif(seconds_reg = 6 or seconds_reg = 16 or seconds_reg = 26) then
            cathode <= "0000010";
        elsif(seconds_reg = 7 or seconds_reg = 17) then
            cathode <= "1111000";
        elsif(seconds_reg = 8 or seconds_reg = 18) then
            cathode <= "0000000";
        elsif(seconds_reg = 9 or seconds_reg = 19) then
            cathode <= "0011000";
        end if;
    else
        AN <= "01111111";
        if(seconds_reg >= 20 and seconds_reg <= 26) then
            cathode <= "0100100";
        elsif(seconds_reg >= 10 and seconds_reg <= 19) then
            cathode <= "1111001";
        else
            cathode <= "1000000";
        end if;
    end if;   
end process;

process(BTNL, seconds_reg, count_sec)
begin
seconds_next <= seconds_reg;
    if(BTNL = '1') then
        if(count_sec = "101101110001101011111111" and seconds_reg > 0) then
            seconds_next <= seconds_reg - 1;
        end if;
        if(seconds_reg <= 3 and seconds_reg /= 0) then
            if(count_sec < "000000000000101110110111") then --2999
                pitido_aux <= not pitido_aux;
            end if;
        if(seconds_reg = 0) then
                pitido_aux <= not pitido_aux;
        end if;
        end if;
    else
        seconds_next <= "11010";  
        pitido_aux <= "00000000";
    end if;    
end process;

pitido <= pitido_aux;


end Behavioral;
