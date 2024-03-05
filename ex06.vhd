-- relógio digital

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bcd_7seg IS
	PORT( 	w	: IN STD_LOGIC_VECTOR(3 downto 0);
		--msb para lsb
		seg	: OUT STD_LOGIC_VECTOR(0 to 6));	
		--lsb para msb
END bcd_7seg;

ARCHITECTURE df OF bcd_7seg IS

BEGIN
	with w SELECT

	seg <= 	"1111110" when "0000",
		"0110000" when "0001",
		"1101101" when "0010",
		"1111001" when "0011",
		"0110011" when "0100",
		"1011011" when "0101",
		"1011111" when "0110",
		"1110000" when "0111",
		"1111111" when "1000",
		"1111011" when "1001",	
		"000000" when OTHERS;
END df;
		
