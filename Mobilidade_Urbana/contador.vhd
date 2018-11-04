library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador is
   port( Clock: in std_logic;
 	 Reset: in std_logic;
 	 Output: out std_logic_vector(4 downto 0));
end contador;
 
architecture Behavioral of contador is
   signal temp: std_logic_vector(4 downto 0);
begin   
	process(Clock,Reset)
   begin
      if Reset='1' then
         temp <= "00000";
      elsif(rising_edge(Clock)) then
			temp <= temp + 1;
      end if;
   end process;
   Output <= temp;
end Behavioral;