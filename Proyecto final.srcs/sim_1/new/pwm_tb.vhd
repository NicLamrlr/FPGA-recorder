----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2021 13:17:02
-- Design Name: 
-- Module Name: pwm_tb - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
use work.package_dsed.all;
entity pwm_tb is
end;

architecture Behavioral of pwm_tb is

  component pwm
      Port(clk_12megas: in std_logic;
           reset: in std_logic;
           en_2_cycles: in std_logic;
           sample_in: in std_logic_vector(sample_size-1 downto 0);
           sample_request: out std_logic;
           pwm_pulse: out std_logic);
  end component;

  signal clk_12megas: std_logic;
  signal reset: std_logic;
  signal en_2_cycles: std_logic;
  signal clk_3megas: STD_LOGIC;
  signal level : STD_LOGIC_VECTOR (7 downto 0);
  signal enable_4_cycles: STD_LOGIC;
  signal sample_in: std_logic_vector(sample_size-1 downto 0);
  signal sample_request: std_logic;
  signal pwm_pulse: std_logic;
  
  constant clock_period_sample: time := 50 us;

  constant clock_period: time := 83.333333333333333 ns;
  
  component en_4_cycles
      Port ( clk_12megas : in STD_LOGIC;
             reset : in STD_LOGIC;
             clk_3megas: out STD_LOGIC;
             en_2_cycles: out STD_LOGIC;
             en_4_cycles : out STD_LOGIC);
  end component;

begin

  uut: pwm port map ( clk_12megas    => clk_12megas,
                      reset          => reset,
                      en_2_cycles    => en_2_cycles,
                      sample_in      => sample_in,
                      sample_request => sample_request,
                      pwm_pulse      => pwm_pulse );

stimulus: process
begin
reset <= '1';
sample_in <= (others => '1');
wait for 50 ns;
reset <= '0';
wait;
end process;



dut: en_4_cycles
                        port map ( clk_12megas      => clk_12megas,
                                   clk_3megas      => clk_3megas,
                                   en_2_cycles      => en_2_cycles,                                   
                                   reset            => reset,
                                   en_4_cycles  => enable_4_cycles );
                                     
                                     
 clk_process1 : process
         begin
             clk_12megas <= '0';
             wait for clock_period/2;
             clk_12megas <= '1';
             wait for clock_period/2;
end process;

end;
