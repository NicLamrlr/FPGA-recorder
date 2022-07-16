----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2021 11:17:25
-- Design Name: 
-- Module Name: reproduccion - Behavioral
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

entity reproduccion is
  Port (clk_12megas : in std_logic;
         reset: in std_logic;
         play : in std_logic;
         SW0: in STD_LOGIC;
         SW1: in STD_LOGIC;
         sample_in: in std_logic_vector(sample_size-1 downto 0);
         sample_in_enable: in std_logic;
         sample_out: out std_logic_vector(sample_size-1 downto 0) );
end reproduccion;

architecture Behavioral of reproduccion is

signal sample_in_ca2 : signed (sample_size-1 downto 0);
signal sample_out_ca2 : signed (sample_size-1 downto 0);
signal sample_out_filter : STD_LOGIC_VECTOR (sample_size-1 downto 0);
signal sample_out_ready : STD_LOGIC;
signal filter_select: STD_LOGIC;

component fir_filter is
  Port (clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        sample_in : in signed (sample_size-1 downto 0);
        sample_in_enable : in STD_LOGIC;
        filter_select: in STD_LOGIC; --0 lowpass, 1 highpass
        sample_out : out signed (sample_size-1 downto 0);
        sample_out_ready : out STD_LOGIC);
end component;

component ca2_bin is
    Port ( A : in signed (sample_size - 1 downto 0);
           B : out STD_LOGIC_VECTOR (sample_size - 1 downto 0));
end component;

component bin_ca2 is
    Port ( A : in STD_LOGIC_VECTOR (sample_size - 1 downto 0);
           B : out signed (sample_size - 1 downto 0));
end component;


begin


filter : fir_filter
PORT MAP (
      clk => clk_12megas,
      reset => reset,
      sample_in_enable => sample_in_enable,
      sample_in => sample_in_ca2,
      sample_out => sample_out_ca2,
      sample_out_ready => sample_out_ready,
      filter_select => filter_select
);

ctob : ca2_bin
PORT MAP (
      A => sample_out_ca2,
      B => sample_out_filter
);

btoc : bin_ca2
PORT MAP (
      A => sample_in,
      B => sample_in_ca2
);

process(clk_12megas, reset)
begin
    if(reset = '1') then
        sample_out <= (others => '0');
    elsif(rising_edge(clk_12megas)) then
        if(sample_out_ready = '1' and play = '1') then
            if(SW1 = '0') then
                sample_out <= sample_in;
            else
                sample_out <= sample_out_filter;
            end if;
        end if;
    end if;
end process;

filter_select <= SW0;
end Behavioral;
