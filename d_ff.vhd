-- ********************************************************
-- File: dff.vhd
-- Description: D Flip Flop, input is assinged to output at the rising clock edge
-- Inputs: clk(extern clock), d(binary value)
-- Outputs: q(Out of D Flip Flop, 
-- Authors: Wellington, Paulo e Ricardo
-- Date: 16/06/2021
-- Status: No tested
-- ********************************************************

library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
	port(
			clk,d,rst:	in std_logic;
			q,nq:			out std_logic);
end d_ff;

architecture dff_arch of d_ff is

begin
	dff_logic: process(clk,rst)
	begin
	if (rst='0') then
		q<='0';
		nq<='1';
	else 
		if (clk'event and clk='1') then
			q<=d;
			nq<=not d;
		end if;
	end if;
	end process dff_logic;
end dff_arch;
