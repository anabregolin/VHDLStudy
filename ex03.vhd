-- multiplexador 2-1 de 1 bit, segunda forma

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2to1_1bit IS
	PORT( 	w0,w1,s	: IN STD_LOGIC;
		f	: OUT STD_LOGIC);
END mux2to1_1bit;

ARCHITECTURE df OF mux2to1_1bit IS
--sem sinal intermediário
BEGIN
	f <= w0 when s = '0' 
		else w1;
END df;
