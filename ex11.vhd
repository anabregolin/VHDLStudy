--somador  com carry propagado
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sum_carry IS
	PORT( 	a, b	: IN STD_LOGIC_VECTOR(3 downto 0);
		cin	: IN STD_LOGIC;
		sigma	: OUT STD_LOGIC_VECTOR(3 downto 0);
	      	cout	: OUT STD_LOGIC);
END sum_carry;

ARCHITECTURE df OF sum_carry IS

	COMPONENT complete_sum IS
	PORT( 	a, b, cin	: IN STD_LOGIC;
		sigma, cout	: OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL cin_out		: STD_LOGIC_VECTOR(2 downto 0);

BEGIN
	SC1: complete_sum port map( a=>a(0), b=>b(0), cin=> cin, sigma=>sigma(0), cout=>cin_out(0));
	SC2: complete_sum port map( a=>a(1), b=>b(1), cin=> cin_out(0), sigma=>sigma(1), cout=>cin_out(1));
	SC3: complete_sum port map( a=>a(2), b=>b(2), cin=> cin_out(1), sigma=>sigma(2), cout=>cin_out(2));
	SC4: complete_sum port map( a=>a(3), b=>b(3), cin=> cin_out(2), sigma=>sigma(3), cout=>cout);

END df;
