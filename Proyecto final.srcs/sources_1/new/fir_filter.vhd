----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2021 11:13:28
-- Design Name: 
-- Module Name: fir_filter - Behavioral
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

entity fir_filter is
  Port (clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        sample_in : in signed (sample_size-1 downto 0);
        sample_in_enable : in STD_LOGIC;
        filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
        sample_out : out signed (sample_size-1 downto 0);
        sample_out_ready : out STD_LOGIC);
end fir_filter;

architecture Behavioral of fir_filter is

signal s_out_ready : std_logic;

component datapath is
  Port (clk : in std_logic;
        reset : in std_logic;
        sample_in : in signed (7 downto 0);
        sample_in_enable : in STD_LOGIC;
        sample_out_ready : in STD_LOGIC;
        control : in STD_LOGIC_VECTOR (2 downto 0);
        filter_select : in STD_LOGIC;
        y : out signed (7 downto 0)
   );
end component;

component control_fir is
 Port (clk : in std_logic;
        reset : in std_logic;
        sample_in_enable : in STD_LOGIC;
        control : out STD_LOGIC_VECTOR (2 downto 0);
        sample_out_ready : out STD_LOGIC
   );
end component;

signal control : STD_LOGIC_VECTOR (2 downto 0);

begin

dpath : datapath port map(
            clk => clk,
            reset => reset,
            sample_in => sample_in,
            sample_in_enable => sample_in_enable,
            sample_out_ready => s_out_ready,
            control => control,
            filter_select => filter_select,
            y => sample_out
); 

controlfir : control_fir port map(
            clk => clk,
            reset => reset,
            sample_in_enable => sample_in_enable,
            control => control,
            sample_out_ready => s_out_ready 
); 

sample_out_ready <= s_out_ready;

end Behavioral;