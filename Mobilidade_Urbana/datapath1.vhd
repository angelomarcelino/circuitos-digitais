library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity datapath1 is
	port(B: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		  var : in integer;
		  clk : in std_LOGIC; 
		  Q: out std_LOGIC);
--		  A1 : out std_logic_vector(4 downto 0)
end datapath1;

architecture datapath of datapath1 is
component divfreq is
	port ( clk_in : in std_logic;
			 var : in integer;
			 clk_out : out std_logic);
end component;
component contador is
   port( Clock: in std_logic;
 	 Reset: in std_logic;
 	 Output: out std_logic_vector(4 downto 0));
end component;
component comparador is
	PORT (A, B: IN STD_LOGIC_VECTOR(4 downto 0);
		AeqB, AgtB, AltB : OUT STD_LOGIC );
END component;
	signal ctr, qf: std_logic;
	signal o : std_logic_vector (1 downto 0);
   signal A0 : std_logic_vector(4 downto 0);
begin
	divF : divfreq port map (clk, var, ctr);
	Counter : contador port map (ctr, qf and clk, A0);
	Comp : comparador port map (A0, B, qf, o(1), o(0));
--	A1 <= A0;
	Q <= qf;
end datapath;