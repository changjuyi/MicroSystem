LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
package fulladder2_package IS

	component fulladder2
		PORT(
				cin, x, y : in std_logic;
				s, cout : out std_logic);
	end component;
	
END fulladder2_package;
