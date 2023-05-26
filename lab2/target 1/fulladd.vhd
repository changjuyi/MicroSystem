LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY fulladd IS
PORT(
		cin, x, y : in std_logic;
		s, cout : out std_logic);
END fulladd;
ARCHITECTURE Func OF fulladd IS
BEGIN
s <= x xor y xor cin;
cout <= (x and y) or (cin and x) or (cin and y);
END Func;