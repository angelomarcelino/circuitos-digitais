library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity semaforo is
	port(sw0, sw1, clk : in std_logic;
		  var : in integer;
		  sm1 : out std_logic_vector(2 downto 0);
		  sm2 : out std_logic_vector(2 downto 0));
--		  in_mux1 : out std_logic_vector (2 downto 0);
--		  num_mux1 : out std_logic_vector (4 downto 0);
--		  piscar1, sgn_dtph1 : out std_logic);
end semaforo;

architecture behavior of semaforo is
component mux is
	port (sw1 : in std_logic;
			sw0 : in std_logic;
			s1 : in std_logic;
			s0 : in std_logic;
			b : out std_logic_vector(4 downto 0));
end component;
component controlador1 is
	port (B, A: in std_logic;
			so : out std_logic_vector (2 downto 0);
			sm1 : out std_logic_vector(2 downto 0);
			sm2 : out std_logic_vector(2 downto 0));
end component;
component datapath1 is
	port(B: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		  var : in integer;
		  clk : in std_LOGIC; 
		  Q: out std_LOGIC);
end component;
signal in_mux : std_logic_vector (2 downto 0);
signal num_mux : std_logic_vector (4 downto 0);
signal piscar, sgn_dtph : std_logic;
begin
	piscar <= sw1 and not sw0;
	Mux1 : mux port map (sw1, sw0, in_mux(1), in_mux(0), num_mux);
	Con1 : controlador1 port map (not sgn_dtph, piscar, in_mux, sm1, sm2);
	DtPh : datapath1 port map (num_mux, var, clk, sgn_dtph);
	
--	in_mux1 <= in_mux;
--	num_mux1 <= num_mux;
--	piscar1 <= piscar;
--	sgn_dtph1 <= sgn_dtph;
end behavior;