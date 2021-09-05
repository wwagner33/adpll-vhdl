

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY pll IS 
	PORT
	(
		clock_50mhz :  IN  STD_LOGIC;
		kclock :  IN  STD_LOGIC;
		dco_clock :  IN  STD_LOGIC;
		fout :  OUT  STD_LOGIC;
		fref:	out std_logic
	);
END pll;

ARCHITECTURE bdf_type OF pll IS 

COMPONENT divfreq
	PORT(clk : IN STD_LOGIC;
		 freq_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pfd
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 up : OUT STD_LOGIC;
		 down : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT k_counter
	PORT(up : IN STD_LOGIC;
		 down : IN STD_LOGIC;
		 kclock : IN STD_LOGIC;
		 carry : OUT STD_LOGIC;
		 barrow : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT dco
	PORT(carr : IN STD_LOGIC;
		 borr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 dlipout : OUT STD_LOGIC;
		 fout : out STD_LOGIC;
		 Flag_test : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 
fout <= SYNTHESIZED_WIRE_1;


b2v_inst : divfreq
PORT MAP(clk => clock_50mhz,
		 freq_out => SYNTHESIZED_WIRE_0);
fref <= SYNTHESIZED_WIRE_0;

b2v_inst1 : pfd
PORT MAP(a => SYNTHESIZED_WIRE_0,
		 b => SYNTHESIZED_WIRE_1,
		 up => SYNTHESIZED_WIRE_2,
		 down => SYNTHESIZED_WIRE_3);


b2v_inst2 : k_counter
PORT MAP(up => SYNTHESIZED_WIRE_2,
		 down => SYNTHESIZED_WIRE_3,
		 kclock => kclock,
		 carry => SYNTHESIZED_WIRE_4,
		 barrow => SYNTHESIZED_WIRE_5);


b2v_inst3 : dco
PORT MAP(carr => SYNTHESIZED_WIRE_4,
		 borr => SYNTHESIZED_WIRE_5,
		 clock => dco_clock,
		 fout => SYNTHESIZED_WIRE_1);	  		  
END bdf_type;