-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"
-- CREATED		"Wed Jul 07 10:31:31 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY trabalho-pll_V3 IS 
	PORT
	(
		div :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		up :  OUT  STD_LOGIC;
		down :  OUT  STD_LOGIC
	);
END trabalho-pll_V3;

ARCHITECTURE bdf_type OF trabalho-pll_V3 IS 

COMPONENT divfreq
	PORT(clk : IN STD_LOGIC;
		 ref : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pfd
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 up : OUT STD_LOGIC;
		 down : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



b2v_inst : divfreq
PORT MAP(		 ref => SYNTHESIZED_WIRE_0);


b2v_inst1 : pfd
PORT MAP(a => SYNTHESIZED_WIRE_0,
		 b => div,
		 up => up,
		 down => down);


END bdf_type;