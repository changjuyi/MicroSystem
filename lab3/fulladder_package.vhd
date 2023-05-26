LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
package fulladder_package IS

	component fulladder
		PORT(
				cin, x, y : in std_logic;
				s, cout : out std_logic);
	end component;
	
END fulladder_package;
