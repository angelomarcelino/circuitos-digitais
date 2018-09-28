library 	ieee;
use ieee.std_logic_1164.all;

entity updown is
	port(enable, reset, switch, clk : in std_logic;
			coiso : out std_logic_vector(3 downto 0);
			q : out std_logic_vector(6 downto 0));
end updown;

architecture contador of updown is
component ffd is 
	port (d, clock : in std_logic;
			q : out std_logic);
end component;
component display is
	port (i : in std_logic_vector (3 downto 0);
			q : out std_logic_vector (6 downto 0));
end component;
signal n, s : std_logic_vector (3 downto 0);
signal disp : std_logic_vector (6 downto 0);
signal zr : std_logic;
begin
	n(3) <= '0';
	s(3) <= '0';

	zr <= not enable and not reset;
	
	s(2) <= (n(2) and enable and (n(1) xor n(0))) or (not n(1) and not n(0) and enable and (n(2) xor switch)) or 
			  (n(1) and n(0) and enable and (n(2) xnor switch));
	s(1) <= (enable and switch and (n(1) xnor n(0))) or (enable and not switch and (n(1) xor n(0)));
	s(0) <= not n(0) and enable;
	
	ff2 : ffd port map (s(2), clk and (enable or zr), n(2));
	ff1 : ffd port map (s(1), clk and (enable or zr), n(1));
	ff0 : ffd port map (s(0), clk and (enable or zr), n(0));
	
	dsp : display port map (n, disp);
	coiso <= n;
	q <= not disp;
end contador;