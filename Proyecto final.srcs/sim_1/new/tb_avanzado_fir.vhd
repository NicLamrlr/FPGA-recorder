----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.12.2021 11:01:09
-- Design Name: 
-- Module Name: tb_avanzado_fir - Behavioral
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

entity tb_avanzado_fir is
--  Port ( );
end tb_avanzado_fir;

architecture Behavioral of tb_avanzado_fir is
component fir_filter
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          sample_in : in signed (sample_size-1 downto 0);
          sample_in_enable : in STD_LOGIC;
          filter_select: in STD_LOGIC;
          sample_out : out signed (sample_size-1 downto 0);
          sample_out_ready : out STD_LOGIC);
  end component;

  signal clk: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal sample_in: signed (sample_size-1 downto 0) := (others => '0');
  signal sample_in_enable: STD_LOGIC;
  signal filter_select: STD_LOGIC := '1';
  signal sample_out: signed (sample_size-1 downto 0);
  signal sample_out_ready: STD_LOGIC;
  constant clock_period: time := 10 ns;


begin

start : process
begin
reset <= '1';
wait for 10 ns;
reset <= '0';
WAIT;
end process;


uut: fir_filter port map ( clk              => clk,
                             reset            => reset,
                             sample_in        => sample_in,
                             sample_in_enable => sample_in_enable,
                             filter_select    => filter_select,
                             sample_out       => sample_out,
                             sample_out_ready => sample_out_ready );


clk_process : process
              begin
                    clk <= '0';
                    wait for clock_period/2;
                    clk <= '1';
                    wait for clock_period/2;
              end process;


read_process : PROCESS (clk)
    FILE in_file : text OPEN read_mode IS "C:\Users\Nicolas\Desktop\Proyecto final\sample_in.dat";
    VARIABLE in_line : line;
    VARIABLE in_int : integer;
    VARIABLE in_read_ok : BOOLEAN;
    BEGIN
        if (clk'event and clk = '1') then
            if(sample_in_enable = '1') then
                if NOT endfile(in_file) then
                    ReadLine(in_file,in_line);
                    Read(in_line, in_int, in_read_ok);
                    sample_in <= to_signed(in_int, 8); 

                else
                   assert false report "Simulation Finished" severity failure;
                end if;
             end if;
        end if;
    end process;
   
    
write_process : PROCESS (clk)
        FILE out_file : text OPEN write_mode IS "C:\Users\Nicolas\Desktop\Proyecto final\sample_out.dat";
        VARIABLE out_line : line;
        BEGIN
            if (clk'event and clk = '1') then
                if(sample_out_ready = '1') then
                        Write(out_line, to_integer(sample_out));
                        WriteLine(out_file,out_line);
                end if;
            end if;
        end process;
      

process
  begin
     wait for clock_period;
     sample_in_enable <= '1';
     wait for clock_period;
     sample_in_enable <= '0';
     wait for 8 * clock_period;
  end process;
  
end Behavioral;
