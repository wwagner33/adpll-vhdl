-- ****************************************************
-- Program: k-counter.vhd
-- Description: K-Counter filter is a loop filter to ADPLL proposed by Gayathri MG
--		Paper: Design of All Digital Phase Locked Loop in VHDL,20136 (ijera.com)
-- Input: up,down, kclock
-- Output: carry,barrow.
-- Author: Wellington W. F. Sarmento, Paulo de T. C. Pequeno e Rodrigo Ciarlini
-- Date: 24/06/2021
-- State: not tested
-- ****************************************************

library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;


entity k_counter is 
	port (
		in_up:  		in  std_logic;
		in_down:  	in  std_logic;
		kclock:  in  std_logic;
		carry:  	out  std_logic;
		borrow:  out  std_logic);
end k_counter;

architecture k_counter_arch of k_counter is 
	constant k: natural:=8;--16
	signal sup,sdown: std_logic;
	signal kcountup,kcountdown : natural:=0;
	signal otup,otdown: std_logic:='0';
	
begin
	carry<=otup;
	borrow<=otdown;
	sup<=in_up;
	sdown<=in_down;
	
	count_up: process(kclock)
		variable msb: std_logic_vector(3 downto 0);
	begin
			if (sdown='0' and sup='1') then
				kcountup<=kcountup+1;
				if (kcountup>(k-1)) then
					kcountup<=0;
				end if;
			end if;
			msb:=std_logic_vector(to_unsigned(kcountup, msb'length));
			otup<=msb(3);

	end process count_up;

	count_down: process(kclock)
		variable msb: std_logic_vector(3 downto 0);
	begin
			if (sdown='1' and sup='0') then
				kcountdown<=kcountdown+1;
				if (kcountdown>(k-1)) then
					kcountdown<=0;
				end if;
			end if;
			msb:=std_logic_vector(to_unsigned(kcountdown, msb'length));
			otdown<=msb(3);
	end process count_down;


end k_counter_arch;
