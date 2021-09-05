-- file: inc_dec.vhd
------------------------------------------ 
--  changes the output frequency  
--  dependening upon the input 
--  carry and borrow  
-- 
-- By Ahmed Allam
-- October 9, 1999
-- University of Alberta, EE552.

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 


entity inc_dec is
              port (
                   carr, borr, clock :in std_logic; 
                 -- add a port for test of the dff out 

                    dlipout : out std_logic;
                 -- 

                   IDout,Flag_test : buffer std_logic        
              ); 
end inc_dec; 


architecture archinc_dec of inc_dec is  
-- detects the edge of the carry signal 
	component  car_edge is
              port (
    	          carr,toggle_ff,clock: in std_logic; 
   	    	      flagc : out std_logic                           
              ); 
	end component; 
-- detects the edge of the borrow signal 
	component bor_edge is
              port (
    	          borr,toggle_ff,clock: in std_logic; 
        	      flagb : out std_logic                           
              ); 
	end component; 
-- output flip flop 
	component dff_cont is
              port (
              Flag_carr,Flag_borr,clock: in std_logic; 
              ToggleFF : buffer std_logic; 
              IDout : out  std_logic;
              Flag  : buffer std_logic                           
              ); 
	end component; 

	signal toggle_ff_int,Flag_carr_int,Flag_borr_int: std_logic;
begin 
	c_edge:	car_edge 
			port map (
				clock => clock,
                carr => carr,
				toggle_ff =>toggle_ff_int,
			    flagc  => Flag_carr_int
                );
	b_edge: bor_edge     
			port map (
                 clock => clock,
    	          borr => borr,
                 toggle_ff =>toggle_ff_int,
                 flagb =>Flag_borr_int
                 );
   dff_con: dff_cont                          
            port map (
                 clock => clock,
                 Flag_carr => Flag_carr_int,
				 Flag_borr => Flag_borr_int,
                 ToggleFF =>toggle_ff_int,
              	 IDout => IDout,
              	 Flag  => Flag_test              -- added for test 
                );
-- this port is added for test 
   dlipout <= toggle_ff_int;
 

end  archinc_dec;
