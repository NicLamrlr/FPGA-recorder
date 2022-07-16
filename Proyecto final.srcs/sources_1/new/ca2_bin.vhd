----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2021 13:08:23
-- Design Name: 
-- Module Name: ca2_bin - Behavioral
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

entity ca2_bin is
    Port ( A : in signed (sample_size - 1 downto 0);
           B : out STD_LOGIC_VECTOR (sample_size - 1 downto 0));
end ca2_bin;

architecture Behavioral of ca2_bin is

begin
B <= std_logic_vector(not A(sample_size -1) & A(sample_size-2 downto 0));
end Behavioral;
