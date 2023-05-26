library ieee;
use ieee.std_logic_1164.all;

entity lab5 is 
PORT (w,reset,clock :in std_logic;
        s: out std_logic_vector(2 downto 0));
end lab5;

ARCHITECTURE Behavior OF lab5 IS 
    TYPE State_type IS (Start, S1, S2a,S2b,S3,S4) ; 
    SIGNAL y_present, y_next : State_type ; 
	 SIGNAL temp :std_logic_vector(2 downto 0);
BEGIN 
    PROCESS
    BEGIN 
	 wait until clock'event and clock='1';
	 
        CASE y_present IS 
            WHEN Start=> 
                IF w = '0' THEN 
                    y_present <= Start;
						  temp<="000";
                ELSIF w = '1' THEN
                    y_present <= S1 ;
						  temp<="001";
					 ELSIF reset = '1' THEN
							y_present <= Start;
							temp<="000";
					 END IF ; 
            WHEN S1 => 
                IF w = '0' THEN 
                    y_present <= S2a; 
						  temp<="010";
                ELSE 
                    y_present <= S2b ; 
						  temp<="011";
                END IF ;
            WHEN S2a=> 
                IF w = '0' THEN 
                    y_present <= S3;
						  temp<="100";
                ELSE 
                    y_present <= S3 ;
						  temp<="100";
                END IF ; 
            WHEN S2b => 
                IF w = '0' THEN 
                    y_present <= S3; 
						  temp<="100";
                ELSE 
                    y_present <= S3 ; 
						  temp<="100";
                END IF ;
            WHEN S3=> 
                IF w = '0' THEN 
                    y_present <= S1;
						  temp<="001";
                ELSE 
                    y_present <= S4 ;
						  temp<="101";
                END IF ;  
				WHEN S4=> 
                IF w = '0' THEN 
                    y_present <= S4;
						  temp<="101";
                ELSE 
                    y_present <= S4 ;
						  temp<="101";
                END IF ;  
		 END CASE ;
    end process;
    s<=temp;
end Behavior;
    
