LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY circuito01 IS
	PORT( 	a,b,c	: IN STD_LOGIC;
		y	: OUT STD_LOGIC);
END circuito01;

ARCHITECTURE df OF circuito01 IS
	SIGNAL m	: STD_LOGIC;
BEGIN
	m <= a and b;
	y <= m or c;
END df;