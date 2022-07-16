----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2021 18:32:09
-- Design Name: 
-- Module Name: package_dsed - Behavioral
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

package package_dsed is

constant sample_size : integer := 8;


constant c104 : std_logic_vector(8 downto 0) := "001101000";
constant c105 : std_logic_vector(8 downto 0) := "001101001";
constant c148r : std_logic_vector(8 downto 0) := "010010100";
constant c149r : std_logic_vector(8 downto 0) := "010010101";
constant c254 : std_logic_vector(8 downto 0) := "011111110";
constant c255 : std_logic_vector(8 downto 0) := "011111111";
constant c299 : std_logic_vector(8 downto 0) := "100101011";

constant c04L : signed(7 downto 0) := "00000101"; -- 0.039 (0.03906)
constant c13L : signed(7 downto 0) := "00011111";-- 0.2422 (0.2421875)
constant c2L : signed(7 downto 0) :=  "00111001";-- 0.4453 (0.4453125)

constant c04H : signed(7 downto 0) := "11111111";-- -0.0078 (-0.0078125)
constant c13H : signed(7 downto 0) := "11100110";-- -0.2031 (-0.203125)
constant c2H : signed(7 downto 0) :=  "01001101";-- 0.6015 (0.6015625)


end package_dsed;

