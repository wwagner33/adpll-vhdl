-- ****************************************************
-- Program: dco.vhd
-- Description: Digital Controlled Oscillator
--		Paper reference used: P. E. Allen. Lecture 080 - All Digital Phase Lock Loops (ADPLL). Material da disciplina Frequency Sythesizers, The School of Electrical and Computer Engineering of Georgia Institute of Technology,2003. Acessado em: 02/07/2021.
-- Input:carry,dec,idclock
-- Output: idout.
-- Author: Wellington W. F. Sarmento, Paulo de T. C. Pequeno e Rodrigo Ciarlini
-- Date: 28/06/2021
-- State: not tested
-- ****************************************************
library ieee;
use ieee.std_logic_1164.all; 

entity dco is
              port (
                   carry, borrow, clock 	:	in std_logic;
                   dco_out 					:	out std_logic    
              ); 
end dco; 


architecture dco_arch of dco is 
 
	constant n: natural:=8;
	signal soutincr,soutdecr,sidoutincr, sidoutdecr,sidout,sfcout: std_logic:='0';
	signal sborrow,scarry: std_logic:='0';
	
	signal countincr,countfc : natural:=0;
	signal countdecr : natural:=8;

begin 

sborrow<=borrow;
scarry<=carry;

incr: process(sborrow)
begin
	
		if (sborrow='1') then
			soutincr<= '1';
		else
			soutincr<= '0';			
		end if;


		
end process incr;

	
decr: process(scarry)
begin
	
		if (scarry='1') then
			soutdecr<='1';
		else
			soutdecr<='0';
		end if;
		
end process decr;



counterincr: process(clock)

begin
	if (clock'event AND clock='1') then
	
		if (soutincr='1') then
			countincr<=countincr+1;
			if (countincr>(n-1)) then
				countincr<=0;
				sidoutincr<='0';
			else 
				sidoutincr<=not sidoutincr;			
			end if;	
		end if;			
	
	end if;
end process counterincr;


counterdecr: process(clock)

begin
	if (clock'event AND clock='1') then
		if (soutdecr='1') then
			countdecr<=countdecr-1;
			if (countdecr=0) then
				countdecr<=8;
				sidoutdecr<='0';
			else 
				sidoutdecr<=not sidoutdecr;			
			end if;				
		end if;
	
	
	end if;
end process counterdecr;

sidout<=sidoutincr XOR sidoutdecr;


freqcenter: process(clock)
	begin
		if (clock'event and clock='1') then
			countfc<=countfc+1;
			
			if (countfc=8000) then
				countfc<=0;
				sfcout<=not sfcout;
			end if;
		end if;
	end process freqcenter;


dco_out<=sfcout;

end  dco_arch;