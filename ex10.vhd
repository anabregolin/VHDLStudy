--somador completo com dois meio somadores
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY complete_sum IS
	PORT( 	a, b, cin	: IN STD_LOGIC;
	      	sigma, cout	: OUT STD_LOGIC);
END complete_sum;

ARCHITECTURE df OF complete_sum IS

	COMPONENT half_sum IS
	PORT( 	a, b		: IN STD_LOGIC;
		sigma, cout	: OUT STD_LOGIC);
	END COMPONENT;

	SIGNAL c0, c1, s0	: STD_LOGIC;

BEGIN
	MS1: half_sum port map(a => a, b => b,
				sigma => s0, cout => c0);
	MS2: half_sum port map(a => s0, b => cin,
				sigma => sigma, cout => c1);

	cout <= c0 or c1;

END df;