LIBRARY ieee ;

USE ieee.std_logic_1164.all ;

ENTITY fulladder2 IS
	PORT(
				cin, x, y : in std_logic;
				s, cout : out std_logic);
	END fulladder2 ;
ARCHITECTURE LogicFunc OF fulladder2 IS
	BEGIN
		s <= x XOR y XOR cin ;
		cout <= (x AND y) OR (cin AND x) OR (cin AND y) ;
END LogicFunc ;