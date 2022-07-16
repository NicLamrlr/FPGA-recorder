----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2021 12:17:59
-- Design Name: 
-- Module Name: RAM_tb - Behavioral
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

entity RAM_tb is
end;

architecture Behavioral of RAM_tb is

COMPONENT RAM2
  PORT (
    clk : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

  signal clk: STD_LOGIC;
  signal ena: STD_LOGIC;
  signal wea: STD_LOGIC_VECTOR(0 DOWNTO 0) := "0";
  signal addra: STD_LOGIC_VECTOR(18 DOWNTO 0) := (others => '0');
  signal dina: STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
  signal douta: STD_LOGIC_VECTOR(7 DOWNTO 0) ;
  constant clock_period: time := 83.333333 ns;

begin

your_instance_name : RAM2
  PORT MAP (
    clk => clk,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );

  stimulus: process
  begin
  ena <= '1';
  wait for clock_period;
  ena <= '0';
  wea(0) <= '1';
  dina <= "11000011";
  addra <= (others => '0');
  wait for clock_period;
  ena <= '1';
  dina <= "11111111";
  addra <= "0000000000000000001";
  wait for clock_period;       
  dina <= "00000011";
  addra <= "0000000000000000010";
  wait for clock_period;
  dina <= "11111110";
  addra <= "0000000000000000011";        
  wait for 2*clock_period;
  wea(0) <= '0';
  addra <= (others => '0');
  wait for clock_period;        
  addra <= "0000000000000000001";
  wait for clock_period;
  ena <= '0';        
  addra <= "0000000000000000010";
  wait for clock_period;
  ena <= '1';        
  addra <= "0000000000000000011"; 
  wait for clock_period; 
  addra <= "0000000000000000010";

    wait;
  end process;

 clk_process : process
         begin
             clk <= '0';
             wait for clock_period/2;
             clk <= '1';
             wait for clock_period/2;
end process;

end Behavioral;
