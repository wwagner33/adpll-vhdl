-- ********************************************************
-- File: tff.vhd
-- Description: Toogle Flip Flop
--		Code based in JK Flip Flop Toggle 
-- 	(https://www.electronics-tutorials.ws/counter/count_1.html)
-- Inputs: t,clock
-- Outputs: q(Out of D Flip Flop, 
-- Authors: Wellington, Paulo e Ricardo
-- Date: 16/06/2021
-- Status: No tested
-- ********************************************************


library ieee;
use ieee.std_logic_1164.all;

entity tff is
	port(t  : in std_logic;
	    q : buffer std_logic
	    );
end tff; 

architecture tff_arch of tff is
	signal j,k :std_logic:='1';
	begin 

	toggle:process (t)
		begin
			if (rising_edge(t)) then 
				q <= (j  and not q ) or (not k and q) ;
			end if ;
		end process toggle;
end tff_arch;
