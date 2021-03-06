-- ****************************************************
-- Program: sine_wave_gen.vhd
-- Description: Sine Wave Generator
-- Input: clk - reference clock from DivFreq circuit output 
-- Output: dataout - 
--
-- Author: Wellington W. F. Sarmento, Paulo de T. C. Pequeno e Rodrigo Ciarlini
-- Date: 24/05/2021
-- State: tested
-- ****************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --try to use this library as much as possible.


entity sine_wave_gen is
port (clk 				:in  std_logic;
      dataout 			: out natural range 0 to 255);
end sine_wave_gen;

architecture sine_wave_gen_arch of sine_wave_gen is
signal counter 			: natural range 0 to 255:=0;
type table_type is array (integer range<>) of natural;

--ROM for storing the sine values from Prática TAED 07.pdf.

signal sine 				: table_type(0 to 134):=(127,132,138,144,150,156,162,167,173,178,184,189,194,199,204,208,213,217,221,225, 228,232,235,238,241,243,245,247,249,250,252,252,253,253,253,253,253,252,251,250, 248,246,244,242,239,236,233,230,226,223,219,214,210,206,201,196,191,186,180,175, 170,164,158,152,147,141,135,129,123,117,111,105,100,94,88,83,77,72,66,61,56,51,47, 42,38,34,30,26,23,19,16,13,11,8,6,5,3,2,1,0,0,0,0,0,1,2,3,4,6,8,10,13,15,18,22,25,29,33, 37,41,46,50,55,60,65,70,76,81,87,92,98,104,110,116,122);

begin

dataout<= sine(counter);
counter_logic: process(clk)
begin
--to check the rising edge of the clock signal 

	if(counter = 135) then
		counter<=0;
	elsif (rising_edge(clk)) then
		counter<=counter+ 1;
	end if;
end process counter_logic;

end sine_wave_gen_arch;