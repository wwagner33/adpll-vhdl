-- ****************************************************
-- Program: dff_cont.vhd
-- Description: Carry Edge Counter
--		Code based in Ahramed Allam work
--		(http://www.ece.ualberta.ca/~elliott/ee552/studentAppNotes/1999f/DigitalPhaseLockedLoop/)
-- Input: flag_carr,Flag_borr,clock
-- Output: toggleff,idout,flag
-- Author: Wellington W. F. Sarmento, Paulo de T. C. Pequeno e Rodrigo Ciarlini
-- Date: 24/06/2021
-- State: No known errors 
-- ****************************************************

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 


entity dff_cont is
   port (
      flag_carr,Flag_borr,clock: in std_logic; 
      toggleff : buffer std_logic; 
      idout : out  std_logic;
      flag  : buffer std_logic                           
   ); 
end dff_cont; 


architecture archcon of dff_cont is 

   begin 

   -- Proces that sets the value of the inputs to the 
   -- j and k input of the flip flop.
   dff_control:process (Flag_carr, flag_borr)

   begin 
       if  (Flag_carr= '1' or Flag_borr = '1') then  
	   Flag  <= '0' ;
       else 
           Flag  <= '1';        
       end if ;
   end process  dff_control;


   -- process that changes the frequency of the IDout 

   jk:process (clock)

   begin 
      if clock 'event and clock = '1' then 
         ToggleFF <= (  Flag  and not ToggleFF ) or (not Flag and ToggleFF) ;
       end if ; 
   end process jk;


   IDout <= not clock and not ToggleFF; 

end archcon; 
