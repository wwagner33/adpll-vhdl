-- ****************************************************
-- Program: pfd.vhd
-- Description: Phase and frequency Detector proposed by Behzad Razavi
--		Paper: Design of Monolithic Phase-Locked Loops and Clock Recovery Circuits - a tutorial,1996 (IEEExplore)
-- Input: a, b (input signals)
-- Output: up,down. Behavior:
-- 	If freq(b) = freq(a), and Phase(a)=Phase(b), up=0,down=0
-- 	If freq(a) > freq(b), up=1, down=0
-- 	If freq(b) > freq(a), up=0,down=1
--		If freq(a)=freq(b), up=1 or down=1 with width pulse equal to Phase(b)-Phase(a)
-- Author: Wellington W. F. Sarmento, Paulo de T. C. Pequeno e Rodrigo Ciarlini
-- Date: 24/06/2021
-- State: No known errors 
-- ****************************************************

library ieee;
use ieee.std_logic_1164.all; 


entity pfd is 
	port (
		a :  			in  std_logic;
		b :  			in  std_logic;
		out_up : 	out  std_logic;
		out_down :  out  std_logic);
END pfd;

architecture pfd_arch of pfd is 
-- create a component D_FF(d_ff.vhd)
	component d_ff
		port(clk 	: in std_logic;
			 d 		: in std_logic;
			 rst 		: in std_logic;
			 q 		: out std_logic;
			 nq 		: out std_logic);
	end component;

	signal	srst,sup,sdown,sd 		:  std_logic;
	constant set_signal		:	std_logic:='1'; -- The D input must be '1' because is necessery to PFD proposed by Rizavi


begin 
	out_up<=sup;
	out_down<=sdown;
	sd<=set_signal;

-- use component d_ff and a AND port to create the Phase and Frequency Detector

	-- map ports of component to signals
	d_ff_1_map_ports : d_ff
	port map(clk => a,
			 d => sd,
			 rst => srst,
			 q => sup);
			 
	-- both output's D-Flip Flops put in AND port. up and down set to zero, 
	-- but the delay between A and B signal generate a width pulse equal to phases differences.
	srst <= sup nand sdown;

	-- map ports of component to signals
	d_ff_2_map_ports : d_ff
	port map(clk => b,
			 d => sd,
			 rst => srst,
			 q => sdown);


end pfd_arch;