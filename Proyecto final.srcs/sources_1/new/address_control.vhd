----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2021 11:31:45
-- Design Name: 
-- Module Name: address_control - Behavioral
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

entity address_control is
  Port (clk_12megas : in std_logic;
         reset: in std_logic;
         --Control ports
         sample_in_enable: in STD_LOGIC;
         BTNL: in STD_LOGIC;
         BTNC: in STD_LOGIC;
         BTNR: in STD_LOGIC;
         SW0: in STD_LOGIC;
         SW1: in STD_LOGIC;
         address : out STD_LOGIC_VECTOR(18 DOWNTO 0);
         play :out std_logic;
         max_addra : out STD_LOGIC_VECTOR(18 DOWNTO 0)
          );
end address_control;

architecture Behavioral of address_control is

type state_type is (S0, S1, S2, S3, S4, idle);
signal current_state, next_state : state_type := idle;
signal dir_final, revert_reg, revert_next : std_logic;
signal address_reg, address_next, max_address_reg, max_address_next : STD_LOGIC_VECTOR(18 DOWNTO 0) := (others => '0');

begin
process(clk_12megas, reset)
begin
    if(reset = '1') then
        current_state <= idle;
    elsif(rising_edge(clk_12megas)) then
        if(sample_in_enable = '1') then
            current_state <= next_state;
            address_reg <= address_next;
            max_address_reg <= max_address_next;
            revert_reg <= revert_next;
        end if;
    end if;
end process;

process(current_state, BTNL, BTNC, BTNR, SW0, SW1, dir_final)
begin
next_state <= current_state;
    if(BTNC = '1') then
        next_state <= idle;
    elsif(current_state = idle) then
        next_state <= S0;
    elsif(current_state <= S0) then
        if(BTNL ='1') then
            next_state <= S1;
         else 
            next_state <= S0;
         end if;
    elsif(current_state <= S1) then
        if(BTNL ='1') then
            next_state <= S1;
         else 
            next_state <= S2;
         end if;
    elsif(current_state <= S2) then
        if(BTNL = '1') then
            next_state <= S1;
        elsif(BTNR = '1') then
            if(SW0 = '1' and SW1 = '0') then
                next_state <= S4;
            else 
                next_state <= S3;
            end if;
        else 
            next_state <= S2;
        end if;
    elsif(current_state <= S3) then
        if(dir_final = '1') then
            next_state <= S2;
        else 
            next_state <= S3;
        end if;
    elsif(current_state <= S4) then
        if(dir_final = '1') then
            next_state <= S2;
        else 
            next_state <= S4;
        end if;
    end if;
end process;

process(current_state, BTNL, BTNC, BTNR, SW0, SW1, address_reg, revert_reg, max_address_reg)
begin
address_next <= address_reg;
dir_final <= '0';
play <= '0';
revert_next <= revert_reg;
max_address_next <= max_address_reg;
 case(current_state) is
       when idle =>  
           address_next <= (others => '0');   
           max_address_next <= (others => '0');   
           revert_next <= '0';             
       when S0 =>    
       when S1 =>  
           if address_reg /= (address_reg'range => '1') then
               address_next <= std_logic_vector(unsigned(address_reg) + 1); 
           end if;
           revert_next <= '1';
       when S2 =>    
           if(BTNL = '1') then
               address_next <= (others => '0');
           else
           if(revert_reg = '1') then
            max_address_next <= address_reg;
           end if;
               if(BTNR = '1') then
                   revert_next <= '0';
                   if(SW0 = '1' and SW1 = '0') then
                       address_next <= max_address_reg;
                   else 
                       address_next <= (others => '0');
                   end if;
                end if;
           end if;
       when S3 =>
          play <= '1';
          if(address_reg  = max_address_reg) then
              dir_final <= '1';
          else
              address_next <= std_logic_vector(unsigned(address_reg) + 1); 
          end if;

       when S4 =>
           play <= '1';
           if(address_reg  = (address_reg'range => '0')) then
               dir_final <= '1';
           else
               address_next <= std_logic_vector(unsigned(address_reg) - 1); 
           end if;
          
   end case;
end process;

address <= address_reg;
max_addra <= max_address_reg;
end Behavioral;
