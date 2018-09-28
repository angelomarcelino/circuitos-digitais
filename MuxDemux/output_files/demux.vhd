library ieee;
use ieee.std_logic_1164.all;

entity demux is
	port (d : in std_logic;
			c : in std_logic_vector(1 downto 0);
			s : out std_logic_vector(3 downto 0));
end demux;

architecture demulti of demux is
signal aux : std_logic_vector(3 downto 0);
begin
	s(3) <= not(d and not(c(1)) and not(c(0)));
	s(2) <= not(d and not(c(1)) and c(0));
	s(1) <= not(d and c(1) and not(c(0)));
	s(0) <= not(d and c(1) and c(0));
end demulti;
	