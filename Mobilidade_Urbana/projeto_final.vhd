library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity projeto_final is
	port(sw0, sw1, clk, sensor_1, sensor_2 : in std_logic;
		  led1, led2 : out std_logic;
		  sm1 : out std_logic_vector(2 downto 0);
		  sm2 : out std_logic_vector(2 downto 0));
end projeto_final;

architecture Behavior of projeto_final is
component semaforo is
	port(sw0, sw1, clk : in std_logic;
		  var : in integer;
		  sm1 : out std_logic_vector(2 downto 0);
		  sm2 : out std_logic_vector(2 downto 0));
end component;
component radar is
	port (clock_in, sensor_1, sensor_2 : in std_logic;
			var : in integer;
			led1, led2 : out std_logic);
end component;
begin
	sinaleras : semaforo port map (sw0, sw1, clk, 2, sm1, sm2);
	pardal : radar port map (clk, sensor_1, sensor_2, 2, led1, led2);
end Behavior;