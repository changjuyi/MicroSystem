library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;  
use IEEE.STD_LOGIC_ARITH.all; 
entity lab6 is 
GENERIC ( length : INTEGER := 8 ) ;
PORT (w,reset,clock :in std_logic;
		divisor,dividend: in std_logic_vector(length-1 downto 0);
		remainder: buffer std_logic_vector(length-1 downto 0);
		quotient: buffer std_logic_vector(length-1 downto 0);
		--s: out std_logic_vector(2 downto 0));
      --s: out std_logic_vector(2 downto 0));
end lab6;

ARCHITECTURE Behavior OF lab6 IS 
    TYPE State_type IS (Start, S1, S2a,S2b,S3,S4) ; 
    SIGNAL y_present, y_next : State_type ; 
	 signal div: std_logic_vector(length-1 downto 0);
	 --SIGNAL temp :std_logic_vector(2 downto 0);
	 --SIGNAL temp :std_logic_vector(2 downto 0);
BEGIN 
	 process(clock,reset)
		begin
		if(reset='1') then
			y_present<=start;
			temp<="000";
		elsif(clock' event and clock='1') then
			y_present<=y_next;
		end if;
	 end process;
	 
    PROCESS(y_present)
    BEGIN 
	 --wait until clock'event and clock='1';
	 
        CASE y_present IS 
            WHEN Start=> 
					 remainder <= dividend;
					 div<=divisor;
					 quotient<="00000000";
					 --if w = '1' Then
						y_next <= S1;
						--temp<="001";
						--remainder <= remainder-divisor;
					 --end if;
            WHEN S1 => 
					 remainder<=remainder-div;
                if remainder(0) = '0' then
						y_next<=S2a;
						--temp<="010";
					 else
						y_next<=S2b;
						--temp<="011";
					 end if;
            WHEN S2a=> 
					 y_next<=S3;
					 --temp<="100";
					 for i in 1 to length-1  loop
						quotient(i) <= quotient(i-1);
						quotient(0) <= '1';
					 end loop;
            WHEN S2b => 
                y_next<=S3;
					 --temp<="100";
					 remainder<=remainder+div;
					 for i in 1 to length-1  loop
						quotient(i) <= quotient(i-1);
						quotient(0) <= '0';
					 end loop;
            WHEN S3=> 
                --y_next<= S4;
					 for i in 0 to length-2  loop
						div(i) <= div(i+1);
						div(7) <= '0';
					 end loop;
					 if div(0) = '1' then
						y_next<=S4;
						--temp<="101";
					 else
						y_next<=S1;
						--temp<="001";
					 end if;
				WHEN S4=> 
                 y_next<=S4;
					  --temp<="101";
		 END CASE ;
	end process;
	s<=temp;
	remainder <= remainder;
	quotient <= quotient;
end Behavior;
    
