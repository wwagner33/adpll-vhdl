-- ****************************************************
-- Program: dco.vhd
-- Description: Digital Controlled Oscillator proposed by Gayathri MG
--		Paper: Design of All Digital Phase Locked Loop in VHDL,20136 (ijera.com)
-- 	DCO based in Toggle Flip flop and a NOR port
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
                   carry, borrow, clock 	:in std_logic;
                   dco_out 				: out std_logic

                   -- fout 			: buffer std_logic --flag_test       
              ); 
end dco; 


architecture dco_arch of dco is 
 
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
	
-- output counter (with D Flip-Flop) 
	component dff_cont is
              port (
              flag_carr,flag_borr,clock: in std_logic; 
              toggleff : buffer std_logic; 
              idout : out  std_logic;
              flag  : buffer std_logic                           
              ); 
	end component;
	
-- divide by N=4
--	component div4 is
--					port(
--					input: in std_logic;
--					div4_out: out std_logic
--					);
--	end component;
	
	-- divide by N=8
	component div8 is
					port(
					input: in std_logic;
					div8_out: out std_logic
					);
	end component;
	
	signal stff,scarr,sborr,sidout,sfout: std_logic;
begin 
	car_edge_inst:	car_edge 
			port map (
				clock => clock,
            carr => carry,
				toggle_ff =>stff,
			   flagc  => scarr
         );
			
	bor_edge_inst: bor_edge     
			port map (
                 clock => clock,
    	           borr => borrow,
                 toggle_ff =>stff,
                 flagb =>sborr
          );
   dff_cont_inst: dff_cont                          
            port map (
                 clock => clock,
                 flag_carr => scarr,
					  flag_borr => sborr,
                 toggleff =>stff,
              	  idout => sidout
              	  --flag  => flag_test              -- added for test 
              );
--	divider4: div4
--				port map(
--					input=>sidout,
--					div4_out=>fout
--				);
	div8_inst: div8
				port map(
					input=>sidout,
					div8_out=>sfout
				);
-- this port is added for test 
   dco_out <=sfout;-- stff;
 

end  dco_arch;