Library ieee;
use ieee.std_logic_1164.all;
use work.fulladd_package.all;
use work.lab1_1_package.all;
Entity lab2_2 is
port(
		x   : in std_logic_vector(3 downto 0);
		y   : in std_logic_vector(3 downto 0);
		seg : out std_logic_vector(13 downto 0);
		cy	 : out std_logic);	
end lab2_2;

Architecture func of lab2_2 is
	signal c:std_logic_vector(3 downto 0);
	signal c1:std_logic_vector(3 downto 0);
	signal s:std_logic_vector(3 downto 0);
	signal sum:std_logic_vector(7 downto 0);
	signal six:std_logic_vector(3 downto 0);
	signal cy1,temp:std_logic;
Begin
stage0: fulladd port map('0',x(0),y(0),s(0),c(1));
stage1: fulladd port map(c(1),x(1),y(1),S(1),c(2));
stage2: fulladd port map(c(2),x(2),y(2),S(2),c(3));
stage3: fulladd port map(c(3),x(3),y(3),S(3),cy1);

temp<=cy1 or (s(3) and s(2)) or (s(3) and s(1));
six<=('0' & temp & temp & '0');

stage4: fulladd port map('0',s(0),six(0),sum(0),c1(1));
stage5: fulladd port map(c1(1),s(1),six(1),sum(1),c1(2));
stage6: fulladd port map(c1(2),s(2),six(2),sum(2),c1(3));
stage7: fulladd port map(c1(3),s(3),six(3),sum(3),sum(4));

stage8: lab1_1 port map(sum(3),sum(2),sum(1),sum(0),seg(0),seg(1),seg(2),seg(3),seg(4),seg(5),seg(6));
stage9: lab1_1 port map(sum(7),sum(6),sum(5),temp,seg(7),seg(8),seg(9),seg(10),seg(11),seg(12),seg(13));
END Func;
	