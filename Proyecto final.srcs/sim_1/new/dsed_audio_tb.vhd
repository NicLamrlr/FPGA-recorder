----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2021 12:31:30
-- Design Name: 
-- Module Name: dsed_audio_tb - Behavioral
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
use std.textio.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dsed_audio_tb is
end;

architecture bench of dsed_audio_tb is

  component dsed_audio
   Port ( clk_100Mhz : in std_logic;
          reset: in std_logic;
          BTNL: in STD_LOGIC;
          BTNC: in STD_LOGIC;
          BTNR: in STD_LOGIC;
          SW0: in STD_LOGIC;
          SW1: in STD_LOGIC;
          micro_clk : out STD_LOGIC;
          micro_data : in STD_LOGIC;
          micro_LR : out STD_LOGIC;
          jack_sd : out STD_LOGIC;
          jack_pwm : out STD_LOGIC
  );
  end component;

  signal clk_100Mhz: std_logic;
  signal reset: std_logic;
  signal BTNL: STD_LOGIC;
  signal BTNC: STD_LOGIC;
  signal BTNR: STD_LOGIC;
  signal SW0: STD_LOGIC;
  signal SW1: STD_LOGIC;
  signal micro_clk: STD_LOGIC;
  signal micro_data: STD_LOGIC;
  signal micro_LR: STD_LOGIC;
  signal jack_sd: STD_LOGIC;
  signal jack_pwm: STD_LOGIC ;
  constant clock_period: time := 10 ns;
  
  function to_std_logic(i : in integer) return std_logic is
        begin
            if i = 0 then
                return '0';
            end if;
            return '1';
        end function;

begin


clk_process : process
         begin
             clk_100Mhz <= '0';
             wait for clock_period/2;
             clk_100Mhz <= '1';
             wait for clock_period/2;
end process;

  uut: dsed_audio port map ( clk_100Mhz => clk_100Mhz,
                             reset      => reset,
                             BTNL       => BTNL,
                             BTNC       => BTNC,
                             BTNR       => BTNR,
                             SW0        => SW0,
                             SW1        => SW1,
                             micro_clk  => micro_clk,
                             micro_data => micro_data,
                             micro_LR   => micro_LR,
                             jack_sd    => jack_sd,
                             jack_pwm   => jack_pwm );

  stimulus: process
  begin
  reset <= '1';
  wait for 50 ns;
    reset <= '0';
    BTNL <= '1';
    SW0 <= '0';
    SW1 <= '0';
    wait for 1 ms;
    BTNL <= '0';
    BTNR <= '1';
    SW0 <= '1';
    SW1 <= '1';
    wait for 100 ns;
    BTNR <= '0';
    wait for 1 ms;
     BTNL <= '0';
        BTNR <= '1';
        SW0 <= '0';
        SW1 <= '0';
        wait for 100 ns;
        BTNR <= '0';
       wait;
  end process;
  
  
  
  
  read_process : PROCESS (micro_clk)
      FILE in_file : text OPEN read_mode IS "C:\Users\Nicolas\Desktop\Proyecto final\test_audio.dat";
      VARIABLE in_line : line;
      VARIABLE in_int : integer;
      VARIABLE in_read_ok : BOOLEAN;
      BEGIN
          if (micro_clk'event and micro_clk = '1') then
                  if NOT endfile(in_file) then
                      ReadLine(in_file,in_line);
                      Read(in_line, in_int, in_read_ok);
                      micro_data <= to_std_logic(in_int);
                  end if;
          end if;
      end process;


end;
