Library ieee;
USE ieee.std_logic_1164.all;
ENTITY lab1_2 IS
PORT (w, x, y, z, w1, x1, y1, z1 : IN STD_LOGIC;
		 a, b, c, d, e, f, g, a1, b1, c1, d1, e1, f1, g1 : OUT STD_LOGIC);
END lab1_2;

ARCHITECTURE LogicFunc OF lab1_2 IS
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
a1 <= (NOT w1 and NOT x1 and NOT y1 and z1) or (x1 and NOT y1 and not z1) or (w1 and NOT x1 and y1 and z1) or 
		(w1 and x1 and NOT y1);
b1 <= (NOT w1 and x1 and NOT y1 and z1) or (x1 and y1 and NOT z1) or (w1 and y1 and z1) or 
		(w1 and x1 and NOT z1);
c1 <= (NOT w1 and NOT x1 and y1 and NOT z1) or (w1 and x1 and NOT z1) or (w1 and x1 and y1);
d1 <= (NOT x1 and NOT y1 and z1) or (NOT w1 and x1 and NOT y1 and NOT z1) or (x1 and y1 and z1) or 
		(w1 and NOT x1 and y1 and NOT z1);
e1 <= (NOT w1 and z1) or (NOT w1 and x1 and NOT y1) or (z1 and NOT x1 and NOT y1);
f1 <= (NOT w1 and NOT x1 and z1) or (NOT w1 and NOT x1 and y1) or (NOT w1 and y1 and z1) or 
		(w1 AND x1 and NOT y1);
g1 <= (NOT w1 and NOT x1 and NOT y1) or (NOT w1 and x1 and y1 and z1);
END LogicFunc;