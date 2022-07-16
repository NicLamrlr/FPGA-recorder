----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2021 14:19:49
-- Design Name: 
-- Module Name: interfaz_RAM - Behavioral
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

entity interfaz_RAM is
 Port (clk_12megas : in std_logic;
         reset: in std_logic;
         --Control ports
         BTNL: in STD_LOGIC;
         BTNC: in STD_LOGIC;
         BTNR: in STD_LOGIC;
         SW0: in STD_LOGIC;
         SW1: in STD_LOGIC;
         sample_in_enable: in STD_LOGIC;
         sample_in_enable_filter: in STD_LOGIC;
         sample_in: in std_logic_vector(sample_size-1 downto 0);
         sample_out: out std_logic_vector(sample_size-1 downto 0);
         max_addra : out STD_LOGIC_VECTOR(18 DOWNTO 0) 
      );
end interfaz_RAM;

architecture Behavioral of interfaz_RAM is

COMPONENT system_RAM
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    rsta : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

COMPONENT address_control is
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
         play : out std_logic;
         max_addra : out STD_LOGIC_VECTOR(18 DOWNTO 0) 
          );
end COMPONENT;

COMPONENT grabacion is
 Port (clk_12megas : in std_logic;
         reset: in std_logic;
         BTNL: in STD_LOGIC;
         sample_in: in std_logic_vector(sample_size-1 downto 0);
         sample_in_enable: in std_logic;
         sample_out: out std_logic_vector(sample_size-1 downto 0)
          );
end COMPONENT;



COMPONENT reproduccion is
  Port (clk_12megas : in std_logic;
         reset: in std_logic;
         play : in std_logic;
         SW0: in STD_LOGIC;
         SW1: in STD_LOGIC;
         sample_in: in std_logic_vector(sample_size-1 downto 0);
         sample_in_enable: in std_logic;
         sample_out: out std_logic_vector(sample_size-1 downto 0) );
end COMPONENT;

signal rec_or_play : STD_LOGIC;
signal system_reset : STD_LOGIC;
signal control_enable_RAM : STD_LOGIC;
signal addra : STD_LOGIC_VECTOR(18 DOWNTO 0);
signal entrada_RAM : STD_LOGIC_VECTOR(sample_size - 1 DOWNTO 0);
signal salida_RAM : STD_LOGIC_VECTOR(sample_size - 1 DOWNTO 0);
signal play : std_logic;

begin

RAM : system_RAM
PORT MAP (
    clka => clk_12megas,
    ena => rec_or_play,
    rsta => system_reset,
    wea(0) => BTNL,
    addra => addra,
    dina => entrada_RAM,
    douta => salida_RAM
);
  
address : address_control
PORT MAP (
      clk_12megas => clk_12megas,
      reset => reset,
      sample_in_enable => sample_in_enable_filter,
      BTNL => BTNL,
      BTNR => BTNR,
      BTNC => BTNC,
      SW0 => SW0,
      SW1 => SW1,
      address => addra,
      play => play,
      max_addra => max_addra
);
  
  
record_inst : grabacion
PORT MAP (
        clk_12megas => clk_12megas,
        reset => reset,
        sample_in_enable => sample_in_enable,
        sample_in => sample_in,
        sample_out => entrada_RAM,
        BTNL => BTNL
  );
  
play_inst : reproduccion
PORT MAP (
      clk_12megas => clk_12megas,
      reset => reset,
      play => play,
      sample_in_enable => sample_in_enable_filter,
      sample_in => salida_RAM,
      sample_out => sample_out,
      SW0 => SW0,
      SW1 => SW1
);
    
  
rec_or_play <= BTNL or play;

control_enable_RAM <= sample_in_enable when play  = '0' else sample_in_enable_filter;

system_reset <= BTNC or reset;

end Behavioral;
