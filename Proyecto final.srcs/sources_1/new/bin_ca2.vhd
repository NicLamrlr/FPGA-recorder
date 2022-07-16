----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2021 13:15:53
-- Design Name: 
-- Module Name: bin_ca2 - Behavioral
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

entity bin_ca2 is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : out signed (7 downto 0));
end bin_ca2;

architecture Behavioral of bin_ca2 is

begin
B <= signed(not A(sample_size -1) & A(sample_size-2 downto 0));

end Behavioral;
