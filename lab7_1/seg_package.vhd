LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
package seg_package IS

	component seg
		PORT (w, x, y, z : IN STD_LOGIC;
		 a, b, c, d, e, f, g : OUT STD_LOGIC);
	end component;
	
END seg_package;
