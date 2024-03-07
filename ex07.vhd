-- meio somador
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY half_sum IS
	PORT(	a, b		: IN STD_LOGIC;
		sigma, cout	: OUT STD_LOGIC);
END half_sum;

ARCHITECTURE df OF half_sum IS

BEGIN
	sigma <= a xor b;
	cout  <= a and b;
END df;
