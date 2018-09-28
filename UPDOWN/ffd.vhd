library ieee;
use ieee.std_logic_1164.all;

entity ffd is
	port (d, clock : in std_logic;
			q : out std_logic);
end ffd;

architecture ffd of ffd is
signal estado : std_logic;
begin
	process (clock, d)
	begin
		if (clock = '1' and clock'EVENT) then
			if (d = '0') then estado <= '0';
			else estado <= '1';
			end if;
		end if;
	end process;
	q <= estado;
end ffd;