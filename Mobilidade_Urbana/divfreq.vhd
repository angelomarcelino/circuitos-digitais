library ieee;
use ieee.std_logic_1164.all;

entity divfreq is
	port ( clk_in : in std_logic;
			 var : in integer;
			 clk_out : out std_logic);
end divfreq;

architecture div of divfreq is
signal contagem : integer range 1 to 50000000;
signal estdclk : std_logic;
signal teste : integer range 1 to 50000000;
begin
	teste <= var;
	process(clk_in)
	begin
		if (clk_in'event and clk_in = '1') then
			if (contagem = teste) then
				estdclk <= '1';
				contagem <= 1;
			else
				estdclk <= '0';
				contagem <= contagem + 1;
			end if;
		end if;
	end process;
	clk_out <= estdclk;
end div;