library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port (sw1 : in std_logic;
			sw0 : in std_logic;
			s1 : in std_logic;
			s0 : in std_logic;
			b : out std_logic_vector(4 downto 0));
end mux;

architecture multi of mux is
type table is array (0 to 4) of std_logic_vector(4 downto 0);
-- an array "array of array" type
signal table1 : table;
signal a : std_logic_vector(2 downto 0);
signal aux : std_logic_vector(4 downto 0);
begin
	-- (30, 3, 10, 20, 1)
	table1 <= ("11110", "00011", "01010", "10100", "00001");
	a(2) <= sw1;
	a(1) <= (sw0 and not s0)or(not sw1 and s1 and not s0);  
	a(0) <= sw0 or (not sw1 and s0);
	process (aux, table1, a)
	begin
		if(a = "000") then
			aux <= table1(0);
		elsif(a = "001") then
			aux <= table1(1);
		elsif (a = "010") then
			aux <= table1(2);
		elsif (a = "011") then
			aux <= table1(3);
		elsif (a = "100") then
			aux <= table1(4);
		end if;
	end process;
	b <= aux;
end multi;