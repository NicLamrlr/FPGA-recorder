----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2021 12:07:43
-- Design Name: 
-- Module Name: controlador - Behavioral
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

entity controlador is
    Port (
        clk_100Mhz : in std_logic;
        reset: in std_logic;
        --To/From the microphone
        micro_clk : out STD_LOGIC;
        micro_data : in STD_LOGIC;
        micro_LR : out STD_LOGIC;
        --To/From the mini-jack
        level : out std_logic_vector (7 downto 0);
        jack_sd : out STD_LOGIC;
        jack_pwm : out STD_LOGIC
    );
end controlador;

architecture Behavioral of controlador is

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


signal clk_12megas1, lck : std_logic;
signal s : std_logic_vector(sample_size-1 downto 0);
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

dut2: interfaz_audio port map (
    clk_12megas      =>  clk_12megas1,
                         reset            => reset,
                         record_enable    => '1',
                         play_enable      => '1',
                         micro_clk        => micro_clk,
                         micro_data       => micro_data,
                         micro_LR         => micro_LR,
                         sample_in        => s,
                         sample_request   => s_req,
                         sample_out       => s,
                         sample_out_ready => s_ready,
                         jack_sd          => jack_sd,
                         jack_pwm         => jack_pwm         
);

end Behavioral;
