-- ****************************************************
-- Program: phd.vhd
-- Description: Phase Detector based on XOR port. 
-- 	The ouput is a pulse with width equal to phase diference of 
-- 	two input signals
-- Input: a,b
-- Output: phd_out
-- Author: Wellington, Paulo e Rodrigo
-- Date: 27/06/2021
-- State: not tested
-- ****************************************************


library ieee;
use ieee.std_logic_1164.all;

entity phd is

	port(
			a,b: 		in std_logic;
			phd_out:	out std_logic);
end phd;


architecture phd_arch of phd is

begin

	phd_out<= a xor b;
	
end phd_arch;