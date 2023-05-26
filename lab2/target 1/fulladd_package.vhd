LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
package fulladd_package IS

	component fulladd
		PORT(
				cin, x, y : in std_logic;
				s, cout : out std_logic);
	end component;
	
END fulladd_package;
