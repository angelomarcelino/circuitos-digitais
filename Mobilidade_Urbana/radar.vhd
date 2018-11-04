library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity radar is
	port (clock_in, sensor_1, sensor_2 : in std_logic;
			var : in integer;
			led1, led2 : out std_logic);
end radar;

--led1 = vel ok; led2 = vel not ok
architecture radar1 of radar is
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
component comparador IS
	PORT (A, B: IN STD_LOGIC_VECTOR(4 downto 0);
		AeqB, AgtB, AltB : OUT STD_LOGIC );
END component;
	signal clock_out, led1a, led1b, led1c, led1d, led2a, led2b, led2c : std_logic;
	signal A : std_logic_vector(4 downto 0);
begin
	Div : divfreq port map (clock_in, var, clock_out);
	Cnt : contador port map (clock_out, sensor_1 or sensor_2, A);
	Comp : comparador port map (A, "00011", led1a, led2a, led1b);
	
	process(led1c, led2b, sensor_1, sensor_2)
	begin
		if sensor_2'event and sensor_2 = '1' then
			led1c <= led1a or led1b;
			led2b <= led2a;
		end if;
	end process;
	
	process(led1d, led2c, sensor_1, sensor_2)
	begin
		if sensor_1 = '1' then
			led1d <= '0';
			led2c <= '0';
		elsif sensor_2 = '1' then
			led1d <= '1';
			led2c <= '1';
		end if;
	end process;
	
	led1 <= led1c and led1d;
	led2 <= led2b and led2c;
end radar1;