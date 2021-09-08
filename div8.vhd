-- ********************************************************
-- File: div8.vhd
-- Description: Divide by N Counter, where N=4
--		Code based in Frequency Division with Counters (Eletronics Tutorials)
--		(https://www.electronics-tutorials.ws/counter/count_1.html)
-- Inputs: input
-- Outputs: div8_out, 
-- Authors: Wellington, Paulo e Ricardo
-- Date: 28/06/2021
-- Status: No tested
-- ********************************************************
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity div8 is
	port(input  : in std_logic;
        
	    div8_out: buffer std_logic
	    );
end div8; 

-- instatantiate 2 toggle flip flop 

architecture div8_arch of div8 is 
	component t_ff is 
		port(	t  : in std_logic;
			q : buffer std_logic
	    );
	end component;
	signal sq2, sq4,sq8 : std_logic;
begin 
	div2:t_ff port map (
			t => input,
        q => sq2
       );
    div4:t_ff port map (
        t => sq2,
        q => sq4
        );
	 div8:t_ff port map (
         t => sq4,
         q => div8_out
        );
end div8_arch; 