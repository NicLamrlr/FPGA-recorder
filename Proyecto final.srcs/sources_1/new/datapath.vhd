----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2021 11:26:02
-- Design Name: 
-- Module Name: datapath - Behavioral
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

entity datapath is
  Port (clk : in std_logic;
        reset : in std_logic;
        sample_in : in signed (7 downto 0);
        sample_in_enable : in STD_LOGIC;
        sample_out_ready : in STD_LOGIC;
        control : in STD_LOGIC_VECTOR (2 downto 0);
        filter_select : in STD_LOGIC;
        y : out signed (7 downto 0)
   );
end datapath;

architecture Behavioral of datapath is

component mux_5x1 is
 Port ( in0 : in signed(7 downto 0);
        in1 : in signed(7 downto 0);
        in2 : in signed(7 downto 0);
        in3 : in signed(7 downto 0);
        in4 : in signed(7 downto 0);
        ctrl : in std_logic_vector(2 downto 0);
        output : out signed(7 downto 0)
 );
end component;

signal c0,c1,c2,c3,c4,x0,x1,x2,x3,x4,c,x : signed(7 downto 0);
signal R1,R2,R3, R1_next,R2_next,R3_next : signed (15 downto 0) := (others => '0');

begin

M1 : mux_5x1 port map(
    in0 => c0,
    in1 => c1,
    in2 => c2,
    in3 => c3,
    in4 => c4,
    ctrl => control,
    output => c
);

M2 : mux_5x1 port map(
    in0 => x0,
    in1 => x1,
    in2 => x2,
    in3 => x3,
    in4 => x4,
    ctrl => control,
    output => x
);

process(filter_select)
begin
    case filter_select is
        when '1' => 
            c0 <= c04H;
            c1 <= c13H;
            c2 <= c2H;
            c3 <= c13H;
            c4 <= c04H;
        when '0' =>
            c0 <= c04L;
            c1 <= c13L;
            c2 <= c2L;
            c3 <= c13L;
            c4 <= c04L;
        when others =>
            c0 <= (others => '0');
            c1 <= (others => '0');
            c2 <= (others => '0');
            c3 <= (others => '0');
            c4 <= (others => '0');
    end case;         
end process;

R1_next <= c*x;
R2_next <= R1;
R3_next <= R2 + R3;

y <= resize(shift_right(R3, 7),8) when sample_out_ready  = '1';

process(clk,reset)
begin
    if(reset = '1') then
        x0 <= (others => '0');
        x1 <= (others => '0');
        x2 <= (others => '0');
        x3 <= (others => '0');
        x4 <= (others => '0');
        R1 <= (others => '0');
        R2 <= (others => '0');
        R3 <= (others => '0');
    elsif(rising_edge(clk)) then
        if(sample_in_enable = '1') then
            x0 <= sample_in;
            x1 <= x0;
            x2 <= x1;
            x3 <= x2;
            x4 <= x3;
        end if;
        if control = "111" then
            R1 <= (others => '0');
            R2 <= (others => '0');
            R3 <= (others => '0');
        else
            R1 <= R1_next;
            R2 <= R2_next;
            R3 <= R3_next;
        end if;
        
    end if;
end process;
end Behavioral;
