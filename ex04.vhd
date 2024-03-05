-- multiplexador 2-1 de 4 bit

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2to1_4bits IS
	PORT( 	w0,w1	: IN STD_LOGIC_VECTOR(3 downto 0);
		s	: IN STD_LOGIC;
		f	: OUT STD_LOGIC_VECTOR(3 downto 0));
END mux2to1_4bits;

ARCHITECTURE df OF mux2to1_4bits IS

BEGIN
	f <= w0 when s = '0'
		else w1;
END df;