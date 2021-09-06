library ieee;
use ieee.std_logic_1164.all;

entity t_ff is
  port (clk,t,en,rst : in std_logic;
        q: out std_logic;
        qnot : out std_logic);
 end t_ff;
architecture tff_arch of t_ff is  
 signal op: std_logic;                           
  begin                                              
   process(clk, rst) is
    begin
      if(en='0') then op<='Z';
      elsif (en='1' and rst='1') then
          op <= '0';
      elsif (clk'event and clk='1') then
          if((t='1') and (en='1')) then op <= not op;
          else op <= op;
          end if;
     end if;
   end process;
   q <= op;
   qnot <= not op;                               
 end tff_arch;