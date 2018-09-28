library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port (d : in std_logic_vector(3 downto 0);
			c : in std_logic_vector(1 downto 0);
			s : out std_logic);
end mux;

architecture multi of mux is
signal aux : std_logic_vector(3 downto 0);
begin
	aux(3) <= d(3) and not (c(1)) and not (c(0));
	aux(2) <= d(2) and not (c(1)) and c(0);
	aux(1) <= d(1) and c(1) and not (c(0));
	aux(0) <= d(0) and c(1) and c(0);
	s <= aux(0) or (aux(1) or (aux(2) or aux(3)));
end multi;
	
	