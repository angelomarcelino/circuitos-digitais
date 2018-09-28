library ieee;
use ieee.std_logic_1164.all;

entity display is
	port (i : in std_logic_vector (3 downto 0);
			q : out std_logic_vector (6 downto 0));
end display;

architecture display of display is
signal l : std_logic_vector (6 downto 0);
begin
	l(0) <= i(3) or i(1) or (i(2) and i(0)) or (not i(2) and not i(0));  
	l(1) <= not i(2) or (not i(1) and not i(0)) or (i(1) and i(0));
	l(2) <= i(2) or not i(1) or i(0);
	l(3) <= (not i(2) and not i(0)) or (i(1) and not i(0)) or (i(2) and not i(1) and i(0)) or (not i(2) and i(1))
			  or i(3);
	l(4) <= (not i(2) and not i(0)) or (i(1) and not i(0));
	l(5) <= i(3) or (not i(1) and not i(0)) or (i(2) and not i(1)) or (i(2) and not i(0));
	l(6) <= i(3) or (i(2) and not i(1)) or (not i(2) and i(1)) or (i(1) and not i(0));
	q <= l;
end display;