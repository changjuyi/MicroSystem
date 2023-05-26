library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.seg_package.all;

entity LAB07 is
port(
    clock  :  in std_logic;
    data   :  in std_logic_Vector(7 downto 0);
    opcode :  in std_logic_vector(3 downto 0);
    rscode :  in std_logic_Vector(1 downto 0);
    rtcode :  in std_logic_vector(1 downto 0);
    busten : out std_logic_vector(0 to 6);
    busdgi : out std_logic_vector(0 to 6);
    rsten  : out std_logic_vector(0 to 6);
    rsdgi  : out std_logic_vector(0 to 6);
    rtten  : out std_logic_vector(0 to 6);
    rtdgi  : out std_logic_vector(0 to 6);
    r0,r1,r2,r3,rs,rt,databus,result:buffer std_logic_vector(7 downto 0)
    );
end LAB07;

architecture program of LAB07 is
begin
    process(clock,rscode,rtcode,opcode,rs,rt)
    begin
    if rscode="00" then
        rs<=r0;
    elsif rscode="01" then
        rs<=r1;
    elsif rscode="10" then
        rs<=r2;
    elsif rscode="11" then
        rs<=r3;
    end if;
    if rtcode="00" then
        rt<=r0;
    elsif rtcode="01" then
        rt<=r1;
    elsif rtcode="10" then
        rt<=r2;
    elsif rtcode="11" then
        rt<=r3;
    end if;
    if clock'event and clock='1' then
        if opcode="0000" then --Load
            databus<=data;
            result<=data;
        elsif opcode="0001" then --Move
            databus<=rt;
            result<=rt;
            databus<=result;
        elsif opcode="0010" then --Add
            databus<=rt;
            result<=rs+rt;
            databus<=result;
        elsif opcode="0011" then --Sub
            databus<=rt;
            result<=rs-rt;
            databus<=result;
        elsif opcode="0100" then --And
            databus<=rt;
            result<=rs and rt;
            databus<=result;
        elsif opcode="0101" then --Or
            databus<=rt;
            result<=rs or rt;
            databus<=result;
        elsif opcode="0110" then --Nor
            databus<=rt;
            result<=rs nor rt;
            databus<=result;
        elsif opcode="0111" then --Slt
            databus<=rt;
            if rs<rt then
                result<=x"01";
            else
                result<=x"00";
            end if;
            databus<=result;
        elsif opcode="1000" then --Div
            databus<=rt;
            result<=std_logic_vector(to_unsigned(to_integer(unsigned(rs)) / to_integer(unsigned(rt)),8));
            databus<=result;
        end if;
    if rscode="00" then
        r0<=result;
    elsif rscode="01" then
        r1<=result;
    elsif rscode="10" then
        r2<=result;
    elsif rscode="11" then
        r3<=result;
    end if;
    end if;
if rscode="00" then
    rs<=r0;
elsif rscode="01" then
    rs<=r1;
elsif rscode="10" then
    rs<=r2;
elsif rscode="11" then
    rs<=r3;
end if;
if rtcode="00" then
    rt<=r0;
elsif rtcode="01" then
    rt<=r1;
elsif rtcode="10" then
    rt<=r2;
elsif rtcode="11" then
    rt<=r3;
end if; 
end process;
    stg0:seg port map(databus(7 downto 4),busten(0 to 6));
    stg1:seg port map(databus(3 downto 0),busdgi(0 to 6));
    stg2:seg port map(rs(7 downto 4),rsten(0 to 6));
    stg3:seg port map(rs(3 downto 0),rsdgi(0 to 6));
    stg4:seg port map(rt(7 downto 4),rtten(0 to 6));
    stg5:seg port map(rt(3 downto 0),rtdgi(0 to 6));
end program;
