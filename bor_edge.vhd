-- ****************************************************
-- Program: bor_edge.vhd
-- Description: Borrow Edge Counter
--		Code based in Ahramed Allam work
--		(http://www.ece.ualberta.ca/~elliott/ee552/studentAppNotes/1999f/DigitalPhaseLockedLoop/)
-- Input: borr,toggle_ff,clock
-- Output: flagb
-- Author: Wellington W. F. Sarmento, Paulo de T. C. Pequeno e Rodrigo Ciarlini
-- Date: 24/06/2021
-- State: No known errors 
-- ****************************************************

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 


entity bor_edge is
              port (
              borr,toggle_ff,clock: in std_logic; 
              flagb : out std_logic                           
              ); 
end bor_edge; 

architecture archedge of bor_edge is 

	Type statetype is (idle, decision,final,final2);
	signal present_state, next_state: statetype;
begin 

	-- this process detects the rising edege of the 
	-- borrow signal

	state_edge:process(borr,present_state)
	begin 
		case present_state is 
		when idle =>
			if borr = '1'and toggle_ff = '1' then 
				flagb <= '0';
				next_state <= decision;
			else
				flagb <= '0';
				next_state <= idle;
        		end if ; 

		when decision => 
            		flagb <= '0';
      	    		next_state <= final;

		when final =>
  	        	flagb <= '1';
            		next_state <= final2;

    		when final2 =>
			if borr = '1'  then  
            			flagb <= '0';
        	 		next_state <= final2;
        		else
				flagb <= '0';
				next_state <= idle;            
      		 	end if; 
    		end case;

	end process state_edge;

	state_clcocked:process(clock)
	begin
		if (clock 'event and clock = '1') then 
			present_state <= next_state; 
    		end if ; 
	end process state_clcocked; 

end  archedge;

