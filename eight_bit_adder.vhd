library ieee;
use ieee.std_logic_1164.all;

entity eight_bit_adder is
	port
	(
		a	: in std_logic_vector (7 downto 0);
		b	: in std_logic_vector (7 downto 0);
		cin	: in std_logic;
		cout	: out std_logic;
		s	: out std_logic_vector (7 downto 0)
	);	
end eight_bit_adder;

architecture rtl of eight_bit_adder is
	
	signal c	: std_logic_vector (8 downto 0);
	
	component full_adder is
	port 
		(
			a	: in std_logic;
			b	: in std_logic;
			c_in	: in std_logic;
			c_out	: out std_logic;
			s	: out std_logic
		);
	end component full_adder;

begin
	gen: for i in 0 to 7 generate
		uut: full_adder port map (a => a(i), b => b(i), c_in => c(i), s => s(i), c_out => c(i+1));
	end generate;
	c(0) <= cin;
	cout <= c(8);
end rtl;

	