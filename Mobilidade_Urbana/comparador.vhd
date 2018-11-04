LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
ENTITY comparador IS
PORT (A, B: IN STD_LOGIC_VECTOR(4 downto 0);
		AeqB, AgtB, AltB : OUT STD_LOGIC );
END comparador;
ARCHITECTURE Behavior OF comparador IS
BEGIN
	AeqB <= '1' WHEN A = B ELSE '0';
	AgtB <= '1' WHEN A > B ELSE '0';
	AltB <= '1' WHEN A < B ELSE '0';
END Behavior;