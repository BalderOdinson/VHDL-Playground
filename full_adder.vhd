library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port 
	( 
		a	: in std_logic;
		b	: in std_logic;
		c_in	: in std_logic;
		c_out	: out std_logic;
		s	: out std_logic
	);
end full_adder;

architecture rtl of full_adder is
begin
	s <= a xor b xor c_in;
	c_out <= ((a xor b) and c_in) or (a and b);
end rtl;	