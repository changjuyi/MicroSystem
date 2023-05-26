LIBRARY ieee;

USE ieee.STD_LOGIC_1164.all;
USE work.fulladd_package.all;
USE work.lab1_1_package.all;

ENTITY lab2_1 IS
PORT(
		x: IN STD_LOGIC_VECTOR(7 downto 0);
		y: IN STD_LOGIC_VECTOR(7 downto 0);
		seg: OUT STD_LOGIC_VECTOR(13 downto 0);
		cout: OUT STD_LOGIC);
END lab2_1;

ARCHITECTURE Func OF lab2_1 IS
SIGNAL c : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL s : STD_LOGIC_VECTOR(7 downto 0);
BEGIN
stage0: fulladd port map('0',x(0),y(0),s(0),c(1));
stage1: fulladd port map(c(1),x(1),y(1),S(1),C(2));
stage2: fulladd port map(c(2),x(2),y(2),S(2),C(3));
stage3: fulladd port map(c(3),x(3),y(3),S(3),C(4));
stage4: fulladd port map(c(4),x(4),y(4),S(4),C(5));
stage5: fulladd port map(c(5),x(5),y(5),S(5),C(6));
stage6: fulladd port map(c(6),x(6),y(6),S(6),C(7));
stage7: fulladd port map(c(7),x(7),y(7),S(7),COUT);

stage8: lab1_1 port map(S(3),S(2),S(1),S(0),seg(0),seg(1),seg(2),seg(3),seg(4),seg(5),seg(6));
stage9: lab1_1 port map(s(7),s(6),s(5),s(4),seg(7),seg(8),seg(9),seg(10),seg(11),seg(12),seg(13));
END Func;