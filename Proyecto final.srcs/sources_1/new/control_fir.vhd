----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.12.2021 17:08:26
-- Design Name: 
-- Module Name: control_fir - Behavioral
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

entity control_fir is
 Port (clk : in std_logic;
        reset : in std_logic;
        sample_in_enable : in STD_LOGIC;
        control : out STD_LOGIC_VECTOR (2 downto 0);
        sample_out_ready : out STD_LOGIC
   );
end control_fir;

architecture Behavioral of control_fir is

type state_type is (S0, S1, S2, S3, S4, S5, S6, S7, idle);
signal current_state, next_state : state_type := idle;
signal control_reg,control_next : STD_LOGIC_VECTOR (2 downto 0);
signal sample_out_ready_reg, sample_out_ready_next : STD_LOGIC;

begin
process(clk,reset)
begin
    if(reset ='1') then
        current_state <= idle;
    elsif(rising_edge(clk)) then
        current_state <= next_state;
        control_reg <= control_next;
        sample_out_ready_reg <= sample_out_ready_next;
    end if;
end process;

process(current_state)
begin
control_next <= "110";
sample_out_ready_next <= '0';
    case current_state is
        when idle => 
            control_next <= "101";
        when S0 =>
            control_next <= "000";
        when S1 =>
            control_next <= "001";
        when S2 =>
            control_next <= "010";
        when S3 =>
            control_next <= "011";
        when S4 =>
            control_next <= "100";
        when S5 =>

        when S6 =>

        when S7 =>
            control_next <= "111";
            sample_out_ready_next <= '1';
    end case;
end process;

process(current_state, sample_in_enable)
begin
    case current_state is
        when idle => 
            if (sample_in_enable = '1') then
                next_state <= S0;
            else
                next_state <= idle;
            end if;
        when S0 =>
            next_state <= S1;
        when S1 =>
            next_state <= S2;
        when S2 =>
            next_state <= S3;
        when S3 =>
            next_state <= S4;
        when S4 =>
            next_state <= S5;
        when S5 =>
            next_state <= S6;
        when S6 =>
            next_state <= S7;
        when S7 =>
            next_state <= idle;
    end case;
end process;

control <= control_reg;
sample_out_ready <= sample_out_ready_reg;

end Behavioral;
