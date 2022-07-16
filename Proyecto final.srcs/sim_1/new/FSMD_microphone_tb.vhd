----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.11.2021 18:10:47
-- Design Name: 
-- Module Name: FSMD_microphone_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSMD_microphone_tb is
--  Port ( );
end FSMD_microphone_tb;

architecture Behavioral of FSMD_microphone_tb is

component FSMD_microphone 
  Port (clk_12megas : in STD_LOGIC;
        reset : in STD_LOGIC;
        enable_4_cycles : in STD_LOGIC;
        micro_data : in STD_LOGIC;
        sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
        sample_out_ready : out STD_LOGIC);
end component;

component en_4_cycles
    Port ( clk_12megas : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_3megas: out STD_LOGIC;
           en_2_cycles: out STD_LOGIC;
           en_4_cycles : out STD_LOGIC);
end component;

  signal clk_12megas: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal enable_4_cycles: STD_LOGIC;
  signal micro_data: STD_LOGIC;
  signal sample_out: STD_LOGIC_VECTOR (sample_size - 1 downto 0);
  signal sample_out_ready: STD_LOGIC;
  signal a,b,c :std_logic := '1';
  signal clk_3megas: STD_LOGIC;
  signal en_2_cycles: STD_LOGIC;
  constant clock_period: time := 83.333333 ns;
  

begin

  uut: FSMD_microphone 
                          port map ( clk_12megas      => clk_12megas,  
                                     reset            => reset,
                                     enable_4_cycles  => enable_4_cycles,
                                     micro_data       => micro_data,
                                     sample_out       => sample_out,
                                     sample_out_ready => sample_out_ready );
  dut: en_4_cycles
                        port map ( clk_12megas      => clk_12megas,
                                   clk_3megas      => clk_3megas,
                                   en_2_cycles      => en_2_cycles,                                   
                                   reset            => reset,
                                   en_4_cycles  => enable_4_cycles );
                                     
                                     
 clk_process : process
         begin
             clk_12megas <= '0';
             wait for clock_period/2;
             clk_12megas <= '1';
             wait for clock_period/2;
end process;

     
process
begin
reset <= '1';
micro_data <= '0';
wait for 400ns;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 10 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 30 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 45 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 25 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 25 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 40 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 15 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 25 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 40 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 15 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 25 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 40 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 15 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 25 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 40 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 15 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 25 us;
reset <= '0';
a <= not a after 13 us;
b <= not b after 21 us;
c <= not c after 37 us;
micro_data <= a xor b xor c;
wait for 40 us;

end process;
end Behavioral;
