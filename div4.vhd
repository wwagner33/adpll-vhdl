-- ********************************************************
-- File: div4.vhd
-- Description: Divide by N Counter, where N=4
--		Code based in Frequency Division with Counters (Eletronics Tutorials)
--		(https://www.electronics-tutorials.ws/counter/count_1.html)
-- Inputs: input
-- Outputs: div4_out, 
-- Authors: Wellington, Paulo e Ricardo
-- Date: 28/06/2021
-- Status: No tested
-- ********************************************************
library ieee;
use ieee.std_logic_1164.all;


entity div4 is
	port(input  : in std_logic;
        
	    div4_out: buffer std_logic
	    );
end div4; 

-- instatantiate 2 toggle flip flop 

architecture div4_arch of div4 is 
	component tff is 
		port(t  : in std_logic;
			 q : buffer std_logic
	    );
	end component;
	signal sq2, sq4 : std_logic;
begin 
	div2:tff port map (
			t => input,
        q => sq2
       );
    div4:tff port map (
        t => sq2,
        q => div4_out
        );
end div4_arch;      
     
