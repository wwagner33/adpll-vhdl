-- ****************************************************
-- Program: divfreq.vhd
-- Description: Frequency divider from clock of 50 MHz to 1Hz, 60/135, 1 KHz
-- Input: clk (extern clock)
-- Output: freq_1Hz
-- Author: Wellington, Paulo e Rodrigo
-- Date: 16/06/2021
-- State: No errors known
-- ****************************************************
-- Counter is 25000000 to 1 Hz (1 sample)
-- Counter is 416667 to +/- 60Hz (to 135 samples) = 3087
-- Counter is 208373 to +/- 120 Hz
-- counter is 25000 to 1 kHz
-- Counter is 1000 to 25KHz
-- Counter is 125	to 200KHz
-- Counter is 50  to 500KHz
-- Counter is 25  to 1MHz
-- Remove Counter to 25 MHz



library ieee;
use ieee.std_logic_1164.all;

entity divfreq is
	port(
		clk: in std_logic;
		ref: out std_logic);
end divfreq;

architecture divfreq_arch of divfreq is

signal count: 	natural range 0 to 416667:=0;
signal ot: 		std_logic:='0';

begin
	ref<=ot;
	
	divfreq_logic: process(clk)
	begin
		if (clk'event and clk='1') then
			count<=count+1;
			if (count=125) then
				count<=0;
				ot<=not ot;
			end if;
		end if;
	end process;	
	
	
end divfreq_arch;