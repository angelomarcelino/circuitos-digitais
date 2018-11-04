library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity controlador1 is
	port (B, A: in std_logic;
			so : out std_logic_vector (2 downto 0);
			sm1 : out std_logic_vector(2 downto 0);
			sm2 : out std_logic_vector(2 downto 0));
end controlador1;

architecture controller of controlador1 is
component ffd is 
	port (d, clock : in std_logic;
			q : out std_logic);
end component;
	signal n, s : std_logic_vector(2 downto 0);
begin
	n(2) <= (s(2) and s(0)) or (s(2) and s(1)) or (not s(1) and not s(0) and A);
	n(1) <= s(1) xor s(0);
	n(0) <= (s(1) and not s(0)) or (not s(0) and (s(2) xnor A));
	
	ff2 : ffd port map (n(2), B, s(2));
	ff1 : ffd port map (n(1), B, s(1));
	ff0 : ffd port map (n(0), B, s(0));
	
	so(2) <= s(2);
	so(1) <= s(1);
	so(0) <= s(0);
	
	-- ordem dos semaforos smx(2) = R; smx(1) = A; smx(0) = G;
	sm1(2) <= not s(2) and not s(1);
	sm1(1) <= (s(2) and not s(0)) or (not s(2) and s(1) and s(0)); 
	sm1(0) <= not s(2) and s(1) and not s(0);
	sm2(2) <= not s(2) and s(1);
	sm2(1) <= (s(2) and not s(0)) or (not s(2) and not s(1) and s(0));
	sm2(0) <= not s(2) and not s(1) and not s(0);
end controller;