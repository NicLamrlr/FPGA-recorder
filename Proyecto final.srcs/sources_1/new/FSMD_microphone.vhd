----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.11.2021 16:46:20
-- Design Name: 
-- Module Name: FSMD_microphone - Behavioral
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
entity FSMD_microphone is
  Port (clk_12megas : in STD_LOGIC;
        reset : in STD_LOGIC;
        enable_4_cycles : in STD_LOGIC;
        micro_data : in STD_LOGIC;
        sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
        sample_out_ready : out STD_LOGIC);
end FSMD_microphone;

architecture Behavioral of FSMD_microphone is




signal dato1, dato2, dato1_next, dato2_next, sample_out_aux, sample_out_aux_next : std_logic_vector(sample_size-1 downto 0);
signal primer_ciclo, primer_ciclo_next, sample_out_ready_aux,sample_out_ready_aux_next : std_logic;
type state_type is (S0, S1, S2, idle);
signal current_state, next_state : state_type := idle;
signal r_reg : unsigned (8 downto 0) := (others => '0');
signal r_next : unsigned (8 downto 0);


begin
process(clk_12megas, reset)
begin
    if (reset = '1') then
        current_state <= idle;
        r_reg <= (others=>'0');
        sample_out_ready_aux <= '0';
        sample_out_aux <= (others => '0');
    elsif (rising_edge(clk_12megas)) then
        if enable_4_cycles = '1' then  
            r_reg <= r_next;
            current_state <= next_state;
            dato1 <= dato1_next;
            dato2 <= dato2_next;
            primer_ciclo <= primer_ciclo_next; 
            sample_out_aux <= sample_out_aux_next;    
            sample_out_ready_aux <= sample_out_ready_aux_next; 
        end if;
    end if;
end process;

process(r_next, current_state)
begin
next_state <= current_state;
    if current_state = idle then
        next_state <= S0;
    else
        if r_next <= unsigned(c105) then
            next_state <= S0;
        elsif r_next <= unsigned(c149r) then
            next_state <= S1;
        elsif r_next <= unsigned(c255)then
            next_state <= S0;
        else 
            next_state <= S2;
        end if;
    end if;
end process;

process(current_state, micro_data, enable_4_cycles, dato1, dato2, r_reg, primer_ciclo, sample_out_aux, sample_out_ready_aux)
begin

dato1_next <= dato1;
dato2_next <= dato2;
primer_ciclo_next <= primer_ciclo;
sample_out_aux_next <= sample_out_aux;
sample_out_ready_aux_next <= sample_out_ready_aux;

    case(current_state) is
        when idle =>
            dato1_next <= (others => '0');
            dato2_next <= (others => '0');
            primer_ciclo_next <= '0';
            
           
        when S0 =>
            if micro_data = '1' then
                if dato1 /= (dato1'range => '1') then
                    dato1_next <= std_logic_vector(unsigned(dato1) + 1);
                end if;
                if dato2 /= (dato2'range => '1') then
                    dato2_next <= std_logic_vector(unsigned(dato2) + 1);
                end if;
            end if;
            sample_out_ready_aux_next <= '0';
        when S1 =>
            if micro_data = '1' then
                dato1_next <= std_logic_vector(unsigned(dato1) + 1);
            end if;
            if primer_ciclo = '1' and r_reg = "001101010" then --106
                    sample_out_aux_next <= dato2;
                    sample_out_ready_aux_next <= enable_4_cycles;
                    dato2_next <= (others => '0');
            else
                sample_out_ready_aux_next <= '0';
                dato2_next <= (others => '0');
            end if;
        when S2 =>    
            if r_reg = unsigned(c299) then
                primer_ciclo_next <= '1';
            else    
                if micro_data = '1' then
                    dato2_next <= std_logic_vector(unsigned(dato2) + 1);
                end if;
                if r_reg = "100000000" then -- 256
                        sample_out_aux_next <= dato1;
                        sample_out_ready_aux_next <= enable_4_cycles;
                        dato1_next <= (others => '0');
                else
                    sample_out_ready_aux_next <= '0';
                end if;
            end if;
    end case;
end process;

r_next <= (others => '0') when (r_reg = unsigned(c299)) else (r_reg + 1);


sample_out <= sample_out_aux;     
sample_out_ready <= sample_out_ready_aux;   

end Behavioral;