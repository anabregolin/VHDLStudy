LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY complete_sum IS
	PORT( a, b, cin		: IN STD_LOGIC;
	      sigma, cout	: OUT STD_LOGIC);
END complete_sum;

ARCHITECTURE df OF complete_sum IS

BEGIN
	sigma <= (a xor b) xor cin;
	cout <= (a and b) or ((a xor b) and cin);
END df;