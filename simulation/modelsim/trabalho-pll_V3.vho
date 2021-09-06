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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "09/05/2021 20:44:45"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adpll IS
    PORT (
	clk_sys : IN std_logic;
	idclock : IN std_logic;
	kclock : IN std_logic;
	b_in : IN std_logic;
	divfreq_in : IN std_logic;
	pll_out : BUFFER std_logic
	);
END adpll;

-- Design Ports Information
-- kclock	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pll_out	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- idclock	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_in	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- divfreq_in	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_sys	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adpll IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_sys : std_logic;
SIGNAL ww_idclock : std_logic;
SIGNAL ww_kclock : std_logic;
SIGNAL ww_b_in : std_logic;
SIGNAL ww_divfreq_in : std_logic;
SIGNAL ww_pll_out : std_logic;
SIGNAL \kclock~input_o\ : std_logic;
SIGNAL \idclock~input_o\ : std_logic;
SIGNAL \b_in~input_o\ : std_logic;
SIGNAL \divfreq_in~input_o\ : std_logic;
SIGNAL \clk_sys~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clk_sys <= clk_sys;
ww_idclock <= idclock;
ww_kclock <= kclock;
ww_b_in <= b_in;
ww_divfreq_in <= divfreq_in;
pll_out <= ww_pll_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y81_N36
\pll_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pll_out);

-- Location: IOIBUF_X8_Y0_N52
\kclock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kclock,
	o => \kclock~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\idclock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_idclock,
	o => \idclock~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\b_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_in,
	o => \b_in~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\divfreq_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_divfreq_in,
	o => \divfreq_in~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\clk_sys~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_sys,
	o => \clk_sys~input_o\);

-- Location: LABCELL_X36_Y28_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


