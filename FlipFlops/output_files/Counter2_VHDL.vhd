library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter2_VHDL is
   port( Clock_enable_B: in std_logic;
 	 Clock: in std_logic;
 	 Reset: in std_logic;
 	 Output: out std_logic_vector(0 to 6));
end Counter2_VHDL;
 
architecture Behavioral of Counter2_VHDL is
   signal temp: std_logic_vector(0 to 3);
begin   
	process(Clock,Reset)
   begin
      if Reset='1' then
         temp <= "0000";
      elsif(Clock = '1' and Clock'EVENT) then
         if Clock_enable_B='0' then
            if temp="1000" then
               temp<="0000";
            else
               temp <= temp + 1;
            end if;
         end if;
      end if;
   end process;
   Output(0) <= (not(temp(1)) and not(temp(2)) and temp(3)) or (temp(1) and not(temp(2)) and not(temp(3)));
	Output(1) <= temp(1) and not(temp(2)) and temp(3);
	Output(2) <= not(temp(1)) and temp(2) and not(temp(3));
	Output(3) <= (temp(1) and not(temp(3))) or (not(temp(1)) and not(temp(2)) and temp(3));
	Output(4) <= (not(temp(1)) and temp(3)) or (not(temp(2)) and temp(3)) or (temp(1) and not(temp(3)));
	Output(5) <= (not(temp(1)) and temp(3)) or (temp(2) and not(temp(3)));
	Output(6) <= (not(temp(1)) and not(temp(2))) or (temp(1) and not(temp(3)) and temp(2));
end Behavioral;