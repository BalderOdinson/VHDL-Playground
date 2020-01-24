library ieee;
use ieee.std_logic_1164.all;

entity eight_bit_adder_tb is
end eight_bit_adder_tb;

architecture behave of eight_bit_adder_tb is

	signal first	: std_logic_vector (7 downto 0);
	signal second	: std_logic_vector (7 downto 0);
	signal c_in	: std_logic;
	signal sum	: std_logic_vector (7 downto 0);
	signal c_out	: std_logic;

	component eight_bit_adder is
		port
		(
			a	: in std_logic_vector (7 downto 0);
			b	: in std_logic_vector (7 downto 0);
			cin	: in std_logic;
			cout	: out std_logic;
			s	: out std_logic_vector (7 downto 0)
		);	
	end component eight_bit_adder;

begin
	eight_bit_adder_INST : eight_bit_adder
		port map
		(
			a => first,
			b => second,
			cin => c_in,
			cout => c_out,
			s => sum
		);
	
	process is
	begin
		first <= "00001000";
		second <= "00000100";
		c_in <= '0';
		wait for 10 ns;
		first <= "00001111";
		second <= "00000001";
		c_in <= '0';
		wait for 10 ns;
		first <= "11111111";
		second <= "00000001";
		c_in <= '0';
		wait for 10 ns;
		first <= "00001000";
		second <= "00000100";
		c_in <= '1';
		wait for 10 ns;
	end process;
end behave;