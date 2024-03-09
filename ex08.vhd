-- meio somador atribuição condicional de sinais
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY half_sum_signals IS
	PORT(	a, b		: IN STD_LOGIC;
		sigma, cout	: OUT STD_LOGIC);
END half_sum_signals;

ARCHITECTURE df OF half_sum_signals IS
	SIGNAL 	AB	: STD_LOGIC_VECTOR(1 downto 0);

BEGIN
	
	sigma <= 	'0' when A = B else 
			'1';	

	AB <=	A & B;
	
	cout <= 	'1' when AB = "11" else
			'0';

END df;
