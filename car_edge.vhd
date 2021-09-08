-- ****************************************************
-- Program: car_edge.vhd
-- Description: Carry Edge Counter
--		Code based in Ahramed Allam work
--		(http://www.ece.ualberta.ca/~elliott/ee552/studentAppNotes/1999f/DigitalPhaseLockedLoop/)
-- Input: carr,toggle_ff,clock
-- Output: flagc
-- Author: Wellington W. F. Sarmento, Paulo de T. C. Pequeno e Rodrigo Ciarlini
-- Date: 24/06/2021
-- State: No known errors 
-- ****************************************************

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 


entity car_edge is
              port (
              carr,toggle_ff,clock: in std_logic; 
              flagc : out std_logic                           
              ); 
end car_edge; 

architecture archedge of car_edge is 

	Type statetype is (idle,final,final2);
	signal present_state, next_state: statetype;
begin 

	-- This process detects the carry signal 
	-- rising edge

	state_edge:process(carr,present_state)
	begin 
		case present_state is
		when idle =>
			if carr = '1'and toggle_ff = '1' then 
				flagc <= '0';
				next_state <= final;
    			else
				flagc <= '0';
	    			next_state <= idle;
       			end if ; 

    		when final =>
            		flagc <= '1';
    		 	next_state <= final2;

    		when final2 =>
			if carr = '1'  then  
            			flagc <= '0';
    		 		next_state <= final2;
        		else
	    			flagc <= '0';
				next_state <= idle;            
       			end if; 

    		end case;

	end process state_edge;

	state_clocked:process(clock)
	begin
		if (clock'event and clock = '1') then 
			present_state <= next_state; 
    		end if ; 
	end process state_clocked;
			 
end  archedge;

