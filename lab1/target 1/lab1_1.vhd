Library ieee;
USE ieee.std_logic_1164.all;
ENTITY lab1_1 IS
PORT (w, x, y, z : IN STD_LOGIC;
		 a, b, c, d, e, f, g : OUT STD_LOGIC);
END lab1_1;

ARCHITECTURE LogicFunc OF lab1_1 IS
BEGIN
a <= (NOT w and NOT x and NOT y and z) or (x and NOT y and not z) or (w and NOT x and y and z) or 
		(w and x and NOT y);
b <= (NOT w and x and NOT y and z) or (x and y and NOT z) or (w and y and z) or (w and x and NOT z);
c <= (NOT w and NOT x and y and NOT z) or (w and x and NOT z) or (w and x and y);
d <= (NOT x and NOT y and z) or (NOT w and x and NOT y and NOT z) or (x and y and z) or 
		(w and NOT x and y and NOT z);
e <= (NOT w and z) or (NOT w and x and NOT y) or (z and NOT x and NOT y);
f <= (NOT w and NOT x and z) or (NOT w and NOT x and y) or (NOT w and y and z) or (w AND x and NOT y);
g <= (NOT w and NOT x and NOT y) or (NOT w and x and y and z);
END LogicFunc;