----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2021 12:54:54
-- Design Name: 
-- Module Name: address_control_tb - Behavioral
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

entity address_control_tb is
end;

architecture bench of address_control_tb is

  component address_control
    Port (clk_12megas : in std_logic;
           reset: in std_logic;
           BTNL: in STD_LOGIC;
           sample_in_enable: in STD_LOGIC;
           BTNC: in STD_LOGIC;
           BTNR: in STD_LOGIC;
           SW0: in STD_LOGIC;
           SW1: in STD_LOGIC;
           address : out STD_LOGIC_VECTOR(18 DOWNTO 0)
            );
  end component;

  signal clk_12megas: std_logic;
  signal sample_in_enable: std_logic;
  signal reset: std_logic;
  signal BTNL: STD_LOGIC;
  signal BTNC: STD_LOGIC;
  signal BTNR: STD_LOGIC;
  signal SW0: STD_LOGIC;
  signal SW1: STD_LOGIC;
  signal address: STD_LOGIC_VECTOR(18 DOWNTO 0) ;

  constant clock_period: time := 83.3333333 ns;
  constant clock_period_sample: time := 50 us;

begin

  uut: address_control port map ( clk_12megas => clk_12megas,
                                  reset       => reset,
                                  sample_in_enable => sample_in_enable,
                                  BTNL        => BTNL,
                                  BTNC        => BTNC,
                                  BTNR        => BTNR,
                                  SW0         => SW0,
                                  SW1         => SW1,
                                  address     => address );

  stimulus: process
  begin
  reset <= '1';
  BTNC <= '0';
  wait for 50 ns;
  reset <= '0';
  SW0 <= '0';
    SW1 <= '0';
    BTNR <= '0';
    BTNL <= '1';
  wait for 500 us;
  SW0 <= '1';
    SW1 <= '0';
    BTNR <= '0';
    BTNL <= '0';
  wait for 500 us;
  SW0 <= '0';
  SW1 <= '0';
  BTNR <= '1';
  BTNL <= '0';
    wait for 55000 ns;
    BTNR <= '0';
  wait for 500 us;
   SW0 <= '1';
    SW1 <= '0';
    BTNR <= '1';
    BTNL <= '0';
    wait for 55000 ns;
        BTNR <= '0';
    wait for 500 us;
      SW0 <= '0';
      SW1 <= '0';
      BTNR <= '1';
      BTNL <= '0';
      wait for 55000 ns;
          BTNR <= '0';
    wait;
  end process;

 clk_process : process
         begin
             clk_12megas <= '0';
             wait for clock_period/2;
             clk_12megas <= '1';
             wait for clock_period/2;
end process;

clk_process_sample : process
         begin
             sample_in_enable <= '0';
             wait for clock_period_sample - clock_period;
             sample_in_enable <= '1';
             wait for clock_period;
end process;
end;
