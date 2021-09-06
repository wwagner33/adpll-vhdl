-- ****************************************************
-- Program: pfd.vhd
-- Description: DivFreq and PFD circuits to test
-- Input: clk_sys,dco_out - reference clock (50 MHz) and DCO output
-- Output: up,down - Phase Frequency Detector outputs
--
-- Author: Wellington W. F. Sarmento, Paulo de T. C. Pequeno e Rodrigo Ciarlini
-- Date: 24/08/2021
-- State: not tested
-- ****************************************************


library ieee;
use ieee.std_logic_1164.all; 

library work;

entity adpll IS 
	port
	(
		clk_sys 		:  in  	std_logic;
		clk_dco		:	in		std_logic;
		s_out 		:  out  	std_logic;
	);
end adpll;

architecture adpll_arch of adpll is 

	component divfreq
		port(
			clk : in std_logic;
			ref : out std_logic
		);
	end component;

	component pfd
		port(
			a 		: in std_logic;
			b 		: in std_logic;
			up 	: out std_logic;
			down 	: out std_logic
		);
	end component;
	
	component dco
		port( 
			carr, borr, clock	:	in 	std_logic;
			dco_out				:	out	std_logic
		
		);

	signal	link_divfreq_pfd,link_up_dco,link_down_dco,link_dco_out :  std_logic;


begin 



	b2v_inst : divfreq
	port map(
			clk => clk_sys,
			ref => link_divfreq_pfd
			);


	b2v_inst1 : pfd
	port map(
			a => link_divfreq_pfd,
			b => dco_out,
			up => up,
			down => down
			);
		 
	b2v_inst2	:dco
	port map(
			carr 		=> 	link_up_dco,
			barr		=>		link_down_dco,
			clock 	=>		clk_dco,
			dco_out	=>		link_dco_out
		);

	s_out <= link_dco_out;

end adpll_arch;