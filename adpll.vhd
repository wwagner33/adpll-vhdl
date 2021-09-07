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
		idclock		:	in		std_logic;
		kclock		:	in		std_logic;
		
		b_in 			: in std_logic;--pino para proposito de teste
		divfreq_in	:	in	std_logic;--pino para proposito de teste
--		kcounter_carr_out:	out	std_logic;  --pino para proposito de teste
--		kcounter_borr_out:	out	std_logic;  --pino para proposito de teste
		
		pll_out 		:  out  	std_logic
	);
end adpll;

architecture adpll_arch of adpll is 

	-- Frequency divider to create 60Hz to Ref Frequency
	
	component divfreq
		port(
			clk : in std_logic;
			ref : out std_logic
		);
	end component;
	
	-- Sine Generator
	
	component sine_wave_gen
		port(
		clk 				:	in  std_logic;
      dataout 			: 	out natural range 0 to 255
		);
	end component;
	
	-- Phase Detector

	component pfd
		port(
			a 		: in std_logic;
			b 		: in std_logic;
			out_up 	: out std_logic;
			out_down 	: out std_logic
		);
	end component;
	
	-- Loop Filter
	
	component k_counter 
	port (
--		in_up:  		in  std_logic;
--		in_down:  	in  std_logic;
		downup:		in	 std_logic;
		kclock:  in  std_logic; -- M multiple of Fo
		carry:  	out  std_logic;
		borrow:  out  std_logic);
	end component;

	-- Controlled Oscillator
	
	component dco
		port( 
			carry, borrow, clock	:	in 	std_logic;
			dco_out				:	out	std_logic
		
		);
	end component;

	signal	link_divfreq_sine,link_up_kcounter,link_down_kcounter,link_carr_dco,link_borr_dco,link_dco_out,sdownup :  std_logic; -- link_swg_pfd,
	signal test_in_divfreq,test_in_dco,test_pfd_up_out,test_pfd_down_out,test_kcounter_carr_out,test_kcounter_borr_out: std_logic; -- sinais para proposito de teste
	signal test_dataout 			: 	natural range 0 to 255;  -- sinais para proposito de teste


begin 

	-- Frequency divider to create smallest frequency from 50MHz frequency signal(ex.; 200KHz,60Hz,120Hz)

	divfreq_inst : divfreq
	port map(
			clk 				=> 	clk_sys,
			ref 				=> 	link_divfreq_sine
			);

			
	test_in_divfreq<=	divfreq_in or link_divfreq_sine;	-- pin to test divfreq
   test_in_dco<=b_in or link_dco_out;						-- pin to test divfreq
	
	
	-- Sine Wave Generator
	
	sine_wave_gen_inst: sine_wave_gen
	port map(
		clk 				=> link_divfreq_sine,
      dataout 			=>	test_dataout --link_swg_pfd,
			
	);
	
	
	-- Phase Detector
			
	pfd_inst : pfd
	port map(
			a 					=> 	test_in_divfreq, -- link_swg_pfd,
			b 					=> 	test_in_dco,-- link_dco_out,
			out_up			=> 	link_up_kcounter,
			out_down 		=> 	link_down_kcounter
			);
	
	
	test_pfd_up_out<=link_up_kcounter;
	test_pfd_down_out<=link_down_kcounter;
	
	sdownup<= link_down_kcounter OR link_up_kcounter;
	
--	-- Loop Filter		
	
	k_counter_inst : k_counter
	port map(
--			in_up 			=> 	test_pfd_up_out, -- link_up_kcounter,
--			in_down 			=> 	test_pfd_down_out,-- link_down_kcounter,
			downup			=>    sdownup,
			kclock			=> 	kclock,
			carry 			=> 	link_carr_dco,
			borrow			=>		link_borr_dco
			);

	test_kcounter_carr_out<=link_carr_dco;
	test_kcounter_borr_out<=link_borr_dco;
	
--	-- Controlled Oscillator
		
	dco_inst	:dco
	port map(
			carry 		=> 	test_kcounter_carr_out,-- link_carr_dco,
			borrow		=>		test_kcounter_borr_out, --link_borr_dco,
			clock 	=>		idclock,
			dco_out	=>		link_dco_out
		);

	pll_out <= link_dco_out;

end adpll_arch;