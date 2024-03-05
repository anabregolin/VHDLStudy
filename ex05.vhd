-- multiplexador 4-1 de 4 bit, primeira forma 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4to1_4bits IS
	PORT(	w0,w1,w2,w3	: IN STD_LOGIC_VECTOR(3 downto 0);
		s		: IN STD_LOGIC_VECTOR(1 downto 0);
		f		: OUT STD_LOGIC_VECTOR(3 downto 0));
END mux4to1_4bits;

ARCHITECTURE df OF mux4to1_4bits IS

BEGIN
	f <= 	w0 when s = "00" else
		w1 when s = "01" else
		w2 when s = "10" else
		w3;
END df;