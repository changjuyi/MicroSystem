library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all ;

use work.seven_package.all;

ENTITY hw07_simpleCPU IS
	PORT 
	(
		data : IN STD_LOGIC_vector(7 downto 0);
		ico : INout STD_LOGIC_vector(3 downto 0);
		icrs, icrt : IN STD_LOGIC_vector(1 downto 0);
		clk : IN STD_LOGIC;
		hex0, hex1, hex2, hex3, hex4, hex5:OUT STD_LOGIC_vector(6 downto 0);
		ledgico : buffer STD_LOGIC_vector(3 downto 0);
		ledgicrs : buffer STD_LOGIC_vector(1 downto 0);
		ledgicrt : buffer STD_LOGIC_vector(1 downto 0)
	);
END hw07_simpleCPU;

ARCHITECTURE LogicFunc OF hw07_simpleCPU IS
	TYPE State_type IS (start, run1, run2, run3, run4, run5, error) ; 
	SIGNAL y : State_type ; 
	signal r0,r1,r2,r3 : STD_LOGIC_vector(7 downto 0);
	signal bus1,bus1Copy : STD_LOGIC_vector(7 downto 0);
	signal rs,rt : STD_LOGIC_vector(7 downto 0);
	signal opcode: STD_LOGIC_vector(3 downto 0);
	--signal nrs,nrt : STD_LOGIC_vector(7 downto 0);
	
	signal ck:STD_LOGIC;
	--signal icrsCopy, icrtCopy: STD_LOGIC_vector(1 downto 0);
BEGIN			
	process(clk, opcode, y)
	begin		
		IF clk'EVENT AND clk = '1' THEN 	
			CASE y IS 
				WHEN run1=>
					--抓取指令
					ledgicrs <= "01";
					ledgicrt <= "00";
					
--					CASE ico IS
--						WHEN "0000" => 
--							
--							CASE icrs IS
--								when "00" =>
--									r0 <= bus1;
--								when "01" =>
--									r1 <= bus1;
--								when "10" =>
--									r2 <= bus1;
--								when "11" =>
--									r3 <= bus1;
--							end case;		
--						WHEN OTHERS =>
--							ledgico <= "1111";			
--					END CASE ;
					ico<=ico;
					
					y <= run2; 
				WHEN run2=>
					ledgicrs <= "10";
					ledgicrt <= "00";
					
--					CASE icrt IS
--						when "00" =>
--							bus1 <= r0;
--						when "01" =>
--							bus1 <= r1;
--						when "10" =>
--							bus1 <= r2;
--						when "11" =>
--							bus1 <= r3;
--					end case;	
--					rt<=bus1;
					opcode <= ico;
					CASE opcode IS
					
						WHEN "0000" =>
							--load
							ledgico <= "0000";
							
							CASE icrs IS
								when "00" =>
									r0 <= bus1;
								when "01" =>
									r1 <= bus1;
								when "10" =>
									r2 <= bus1;
								when "11" =>
									r3 <= bus1;
							end case;
--							bus1<=data;

							y <= run1; 	
						WHEN "0001" =>
							--move
							ledgico <= "0001";
							
							CASE icrt IS
								when "00" =>
--									bus1Copy <= r0;
									CASE icrs IS
										when "00" =>
											r0 <= r0;
										when "01" =>
											r1 <= r0;
										when "10" =>
											r2 <= r0;
										when "11" =>
											r3 <= r0;
									end case;
								when "01" =>
--									bus1Copy <= r1;
									CASE icrs IS
										when "00" =>
											r0 <= r1;
										when "01" =>
											r1 <= r1;
										when "10" =>
											r2 <= r1;
										when "11" =>
											r3 <= r1;
									end case;
								when "10" =>
--									bus1Copy <= r2;
									CASE icrs IS
										when "00" =>
											r0 <= r2;
										when "01" =>
											r1 <= r2;
										when "10" =>
											r2 <= r2;
										when "11" =>
											r3 <= r2;
									end case;
								when "11" =>
--									bus1Copy <= r3;
									CASE icrs IS
										when "00" =>
											r0 <= r3;
										when "01" =>
											r1 <= r3;
										when "10" =>
											r2 <= r3;
										when "11" =>
											r3 <= r3;
									end case;
							end case;
--							CASE icrt IS
--								when "00" =>
--									r0 <= bus1Copy;
--								when "01" =>
--									r1 <= bus1Copy;
--								when "10" =>
--									r2 <= bus1Copy;
--								when "11" =>
--									r3 <= bus1Copy;
--							end case;
							
							y <= run1; 		
						WHEN OTHERS =>
							ledgico <= "1111";
							
							y <= run3; 							
					END CASE ;
--					rs<=bus1;
				WHEN run3=>
					--ALU 1
					ck <= '1';
					ledgicrs <= "11";
					ledgicrt <= "00";
					
					CASE icrs IS
						when "00" =>
							rs <= r0;
						when "01" =>
							rs <= r1;
						when "10" =>
							rs <= r2;
						when "11" =>
							rs <= r3;
					end case;
--					rs<=bus1;
					CASE icrt IS
						when "00" =>
							rt <= r0;
						when "01" =>
							rt <= r1;
						when "10" =>
							rt <= r2;
						when "11" =>
							rt <= r3;
					end case;
--					rt<=bus1;
					
					CASE ico IS
						WHEN "0010" =>
							ledgico <= "0010";
							bus1<=rs+rt;
							CASE icrs IS
								when "00" =>
									r0 <= rs+rt;
									bus1<=rs+rt;
								when "01" =>
									r1 <= rs+rt;
									bus1<=rs+rt;
								when "10" =>
									r2 <= rs+rt;
									bus1<=rs+rt;
								when "11" =>
									r3 <= rs+rt;
									bus1<=rs+rt;
							end case;
  						WHEN "0011" =>
  							ledgico <= "0011";
  							bus1<=rs-rt;
							CASE icrs IS
								when "00" =>
									r0 <= rs-rt;
									bus1<=rs-rt;
								when "01" =>
									r1 <= rs-rt;
									bus1<=rs-rt;
								when "10" =>
									r2 <= rs-rt;
									bus1<=rs-rt;
								when "11" =>
									r3 <= rs-rt;
									bus1<=rs-rt;
							end case;
						WHEN "1001" =>
  							ledgico <= "1001";
  							bus1<=rt-rs;
							CASE icrs IS
								when "00" =>
									r0 <= rt-rs;
									bus1<=rt-rs;
								when "01" =>
									r1 <= rt-rs;
									bus1<=rt-rs;
								when "10" =>
									r2 <= rt-rs;
									bus1<=rt-rs;
								when "11" =>
									r3 <= rt-rs;
									bus1<=rt-rs;
							end case;
  						WHEN "0100" =>
  							ledgico <= "0100";
  							bus1 <= rs and rt;
							CASE icrs IS
								when "00" =>
									r0 <= rs and rt;
									bus1 <= rs and rt;
								when "01" =>
									r1 <= rs and rt;
									bus1 <= rs and rt;
								when "10" =>
									r2 <= rs and rt;
									bus1 <= rs and rt;
								when "11" =>
									r3 <= rs and rt;
									bus1 <= rs and rt;
							end case;
  						WHEN "0101" =>
  							ledgico <= "0101";
  							bus1 <= rs or rt;
							CASE icrs IS
								when "00" =>
									r0 <= rs or rt;
									bus1 <= rs or rt;
								when "01" =>
									r1 <= rs or rt;
									bus1 <= rs or rt;
								when "10" =>
									r2 <= rs or rt;
									bus1 <= rs or rt;
								when "11" =>
									r3 <= rs or rt;
									bus1 <= rs or rt;
							end case;
  						WHEN "0110" =>
  							ledgico <= "0110";
  							bus1 <= rs nor rt;
							CASE icrs IS
								when "00" =>
									r0 <= rs nor rt;
									bus1 <= rs nor rt;
								when "01" =>
									r1 <= rs nor rt;
									bus1 <= rs nor rt;
								when "10" =>
									r2 <= rs nor rt;
									bus1 <= rs nor rt;
								when "11" =>
									r3 <= rs nor rt;
									bus1 <= rs nor rt;
							end case;
  						WHEN "0111" =>
  							ledgico <= "0111";
  							if rs < rt then
  								bus1<=(OTHERS => '0');
  								bus1(0)<='1';
  							else
  								bus1<=(OTHERS => '0');
  							end if;
							CASE icrs IS
								when "00" =>
									if rs < rt then
										r0<=(OTHERS => '0');
										r0(0)<='1';
									else
										r0<=(OTHERS => '0');
									end if;
									if rs < rt then
										bus1<=(OTHERS => '0');
										bus1(0)<='1';
									else
										bus1<=(OTHERS => '0');
									end if;
--									r0 <= bus1;
								when "01" =>
									if rs < rt then
										r1<=(OTHERS => '0');
										r1(0)<='1';
									else
										r1<=(OTHERS => '0');
									end if;
									if rs < rt then
										bus1<=(OTHERS => '0');
										bus1(0)<='1';
									else
										bus1<=(OTHERS => '0');
									end if;
--									r1 <= bus1;
								when "10" =>
									if rs < rt then
										r2<=(OTHERS => '0');
										r2(0)<='1';
									else
										r2<=(OTHERS => '0');
									end if;
									if rs < rt then
										bus1<=(OTHERS => '0');
										bus1(0)<='1';
									else
										bus1<=(OTHERS => '0');
									end if;
--									r2 <= bus1;
								when "11" =>
									if rs < rt then
										r3<=(OTHERS => '0');
										r3(0)<='1';
									else
										r3<=(OTHERS => '0');
									end if;
									if rs < rt then
										bus1<=(OTHERS => '0');
										bus1(0)<='1';
									else
										bus1<=(OTHERS => '0');
									end if;
--									r3 <= bus1;
							end case;
--						WHEN "1000" =>
--							ledgico <= "1000";	
--							--bus1<=rs;			
						WHEN OTHERS =>
							ledgico <= "1111";
							y <= error;
					END CASE ;
					CASE icrs IS
						when "00" =>
							bus1 <= r0;
						when "01" =>
							bus1 <= r1;
						when "10" =>
							bus1 <= r2;
						when "11" =>
							bus1 <= r3;
					end case;					
					
--					rs<=bus1;
--					
					y <= run4;  
				WHEN run4=>
					--ALU 2
					ledgicrs <= "00";
					ledgicrt <= "01";
					
					CASE icrs IS
						when "00" =>
							bus1 <= r0;
						when "01" =>
							bus1 <= r1;
						when "10" =>
							bus1 <= r2;
						when "11" =>
							bus1 <= r3;
					end case;
					
					y <= run5; 	
				WHEN run5=>
					--save rs
					ledgicrs <= "01";
					ledgicrt <= "01";
					
					CASE icrs IS
						when "00" =>
							r0 <= bus1;
						when "01" =>
							r1 <= bus1;
						when "10" =>
							r2 <= bus1;
						when "11" =>
							r3 <= bus1;
					end case;
					ck <= '0';
--					
--					CASE icrs IS
--						when "00" =>
--							r0<=rs;
--						when "01" =>
--							r1<=rs;
--						when "10" =>
--							r2<=rs;
--						when "11" =>
--							r3<=rs;
--					end case;
--					
					y <= run1; 		
				WHEN OTHERS =>
					--error
					ledgicrs <= "11";
					ledgicrt <= "11";
					
					ck <= '0';
					r0 <= (others => '0');
					r1 <= (others => '0');
					r2 <= (others => '0');
					r3 <= (others => '0');
					rs <= (others => '0');
					rt <= (others => '0');
					bus1 <= (others => '0');
					
					y <= run1;
			END CASE ; 			
		END IF ;
		
		if ck='0' THEN 
			bus1 <= data; 			
		END IF ;
		
		
		CASE icrs IS
			when "00" =>
				rs <= r0;
			when "01" =>
				rs <= r1;
			when "10" =>
				rs <= r2;
			when "11" =>
				rs <= r3;
		end case;	
		CASE icrt IS
			when "00" =>
				rt <= r0;
			when "01" =>
				rt <= r1;
			when "10" =>
				rt <= r2;
			when "11" =>
				rt <= r3;
		end case;	
	end process;
	
	sevbus: seven PORT MAP (bus1(7),bus1(6),bus1(5),bus1(4),bus1(3),bus1(2),bus1(1),bus1(0),hex1(0),hex1(1),hex1(2),hex1(3),hex1(4),hex1(5),hex1(6),hex0(0),hex0(1),hex0(2),hex0(3),hex0(4),hex0(5),hex0(6)); 
	sevrs: seven PORT MAP (rs(7),rs(6),rs(5),rs(4),rs(3),rs(2),rs(1),rs(0),hex3(0),hex3(1),hex3(2),hex3(3),hex3(4),hex3(5),hex3(6),hex2(0),hex2(1),hex2(2),hex2(3),hex2(4),hex2(5),hex2(6)); 
	sevrt: seven PORT MAP (rt(7),rt(6),rt(5),rt(4),rt(3),rt(2),rt(1),rt(0),hex5(0),hex5(1),hex5(2),hex5(3),hex5(4),hex5(5),hex5(6),hex4(0),hex4(1),hex4(2),hex4(3),hex4(4),hex4(5),hex4(6)); 
END LogicFunc;