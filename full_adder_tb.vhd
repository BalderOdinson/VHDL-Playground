library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture behave of full_adder_tb is
	
	signal r_SIG1   : std_logic := '0';
	signal r_SIG2   : std_logic := '0';
	signal r_SIG3	: std_logic := '0';
	signal s_RESULT : std_logic;
	signal c_RESULT : std_logic;
   
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
	full_adder_INST : full_adder
		port map 
		(
			a => r_SIG1,
			b => r_SIG2,
			c_in => r_SIG3,
			c_out => c_RESULT,
			s => s_RESULT
		);
	process is
	begin
		r_SIG1 <= '0';
		r_SIG2 <= '0';
		r_SIG3 <= '0';
		wait for 10 ns;
		r_SIG1 <= '0';
		r_SIG2 <= '1';
		r_SIG3 <= '0';
		wait for 10 ns;
		r_SIG1 <= '1';
		r_SIG2 <= '0';
		r_SIG3 <= '0';
		wait for 10 ns;
		r_SIG1 <= '1';
		r_SIG2 <= '1';
		r_SIG3 <= '0';
		wait for 10 ns;
		r_SIG1 <= '0';
		r_SIG2 <= '0';
		r_SIG3 <= '1';
		wait for 10 ns;
		r_SIG1 <= '0';
		r_SIG2 <= '1';
		r_SIG3 <= '1';
		wait for 10 ns;
		r_SIG1 <= '1';
		r_SIG2 <= '0';
		r_SIG3 <= '1';
		wait for 10 ns;
		r_SIG1 <= '1';
		r_SIG2 <= '1';
		r_SIG3 <= '1';
		wait for 10 ns;
	end process;
end behave;