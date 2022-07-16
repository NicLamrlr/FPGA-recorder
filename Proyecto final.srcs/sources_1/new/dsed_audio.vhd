----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2021 13:37:42
-- Design Name: 
-- Module Name: dsed_audio - Behavioral
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

entity dsed_audio is
 Port ( clk_100Mhz : in std_logic;
        reset: in std_logic;
        --Control ports
        BTNL: in STD_LOGIC;
        BTNC: in STD_LOGIC;
        BTNR: in STD_LOGIC;
        BTND1: in STD_LOGIC;
        SW0: in STD_LOGIC;
        SW1: in STD_LOGIC;
        SW2: in STD_LOGIC;
        --To/From the microphone
        micro_clk : out STD_LOGIC;
        micro_data : in STD_LOGIC;
        micro_LR : out STD_LOGIC;
        --To/From the mini-jack
        jack_sd : out STD_LOGIC;
        jack_pwm : out STD_LOGIC;
        --Volume control
        AN :out std_logic_vector(7 DOWNTO 0);
        cathode :out std_logic_vector(6 DOWNTO 0)
);
end dsed_audio;

architecture Behavioral of dsed_audio is

signal AN1 : std_logic_vector(7 DOWNTO 0);
signal cathode1 : std_logic_vector(6 DOWNTO 0);


signal AN2 : std_logic_vector(7 DOWNTO 0);
signal cathode2 : std_logic_vector(6 DOWNTO 0);


component clk_12MHz
port
 (-- Clock in ports
  -- Clock out ports
  clk_out1          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;

component time_left is
  Port (clk_12megas : in std_logic;
         reset: in std_logic;
         BTNL: in std_logic;
         AN :out std_logic_vector(7 DOWNTO 0);
         pitido: out std_logic_vector(sample_size-1 DOWNTO 0);
         cathode :out std_logic_vector(6 DOWNTO 0) 
         );
end component;

component interfaz_audio
Port (clk_12megas : in std_logic;
      reset: in std_logic;
      record_enable : in std_logic;
      play_enable : in std_logic;
      micro_clk : out STD_LOGIC;
      micro_data : in STD_LOGIC;
      micro_LR : out STD_LOGIC;
      sample_in: in std_logic_vector(sample_size-1 downto 0);
      sample_request: out std_logic;
      sample_out : out STD_LOGIC_VECTOR (sample_size-1 downto 0);
      sample_out_ready : out STD_LOGIC;
      jack_sd : out STD_LOGIC;
      jack_pwm : out STD_LOGIC);
end component;

component volume is
  Port ( clk_12megas : in std_logic;
         reset: in std_logic;
         BTND1: in std_logic;
         SW2: in std_logic;
         sample_in : in STD_LOGIC_VECTOR(sample_size - 1 DOWNTO 0);
         sample_out : out STD_LOGIC_VECTOR(sample_size - 1 DOWNTO 0);
         AN :out std_logic_vector(7 DOWNTO 0);
         cathode :out std_logic_vector(6 DOWNTO 0));
end component;


component interfaz_RAM is
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
end component;




signal clk_12megas1, lck : std_logic;
signal s : std_logic_vector(sample_size-1 downto 0);
signal sout_volume : std_logic_vector(sample_size-1 downto 0);
signal pitido : std_logic_vector(sample_size-1 downto 0);
signal sout_volume_pitido : std_logic_vector(sample_size-1 downto 0);
signal salida_RAM_entrainterfaz : std_logic_vector(sample_size-1 downto 0);
signal max_addra1 : std_logic_vector(18 downto 0);
signal s_req, s_ready : std_logic;



begin
dut1 : clk_12MHz
   port map ( 
  -- Clock out ports  
   clk_out1 => clk_12megas1,
  -- Status and control signals                
   reset => reset,
   locked => lck,
   -- Clock in ports
   clk_in1 => clk_100Mhz
 );
 
 dut4 : volume
    port map ( 
    clk_12megas => clk_12megas1,          
    reset => reset,
    BTND1 => BTND1,
    SW2 => SW2,
    AN => AN1,
    cathode => cathode1,
    sample_in => salida_RAM_entrainterfaz,
    sample_out => sout_volume
  );
  
   dut5 : time_left
     port map ( 
     clk_12megas => clk_12megas1,          
     reset => reset,
     pitido => pitido,
     BTNL => BTNL,
     AN => AN2,
     cathode => cathode2
   );


dut2: interfaz_audio port map (
                         clk_12megas      =>  clk_12megas1,
                         reset            => reset,
                         record_enable    => '1',
                         play_enable      => '1',
                         micro_clk        => micro_clk,
                         micro_data       => micro_data,
                         micro_LR         => micro_LR,
                         sample_in        => sout_volume_pitido,
                         sample_request   => s_req,
                         sample_out       => s,
                         sample_out_ready => s_ready,
                         jack_sd          => jack_sd,
                         jack_pwm         => jack_pwm         
);

dut3: interfaz_RAM port map (
                         clk_12megas      =>  clk_12megas1,
                         reset            => reset,
                         BTNL => BTNL,
                         BTNR => BTNR,
                         BTNC => BTNC,
                         SW0 => SW0,
                         SW1 => SW1,
                         sample_in_enable => s_ready,
                         sample_in_enable_filter => s_req,
                         sample_in => s,
                         sample_out => salida_RAM_entrainterfaz,
                         max_addra => max_addra1                              
);

AN <= AN1 when BTNL = '0' else AN2;
cathode <= cathode1 when BTNL = '0' else cathode2;
sout_volume_pitido <= pitido when BTNL = '1' else sout_volume;

end Behavioral;
