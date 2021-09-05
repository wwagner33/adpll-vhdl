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

-- DATE "06/29/2021 21:50:24"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pll IS
    PORT (
	clock_50mhz : IN std_logic;
	kclock : IN std_logic;
	dco_clock : IN std_logic;
	fout : BUFFER std_logic;
	fref : BUFFER std_logic
	);
END pll;

-- Design Ports Information
-- kclock	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fout	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fref	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dco_clock	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50mhz	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pll IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50mhz : std_logic;
SIGNAL ww_kclock : std_logic;
SIGNAL ww_dco_clock : std_logic;
SIGNAL ww_fout : std_logic;
SIGNAL ww_fref : std_logic;
SIGNAL \kclock~input_o\ : std_logic;
SIGNAL \dco_clock~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50mhz~input_o\ : std_logic;
SIGNAL \clock_50mhz~inputCLKENA0_outclk\ : std_logic;
SIGNAL \b2v_inst|Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~18\ : std_logic;
SIGNAL \b2v_inst|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~22\ : std_logic;
SIGNAL \b2v_inst|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~26\ : std_logic;
SIGNAL \b2v_inst|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst|count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|Add0~82\ : std_logic;
SIGNAL \b2v_inst|Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst|count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|Add0~78\ : std_logic;
SIGNAL \b2v_inst|Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~74\ : std_logic;
SIGNAL \b2v_inst|Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~70\ : std_logic;
SIGNAL \b2v_inst|Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~66\ : std_logic;
SIGNAL \b2v_inst|Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~62\ : std_logic;
SIGNAL \b2v_inst|Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~58\ : std_logic;
SIGNAL \b2v_inst|Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~54\ : std_logic;
SIGNAL \b2v_inst|Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~86\ : std_logic;
SIGNAL \b2v_inst|Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~90\ : std_logic;
SIGNAL \b2v_inst|Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst|count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|Add0~94\ : std_logic;
SIGNAL \b2v_inst|Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~98\ : std_logic;
SIGNAL \b2v_inst|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~30\ : std_logic;
SIGNAL \b2v_inst|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~34\ : std_logic;
SIGNAL \b2v_inst|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~38\ : std_logic;
SIGNAL \b2v_inst|Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~42\ : std_logic;
SIGNAL \b2v_inst|Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~46\ : std_logic;
SIGNAL \b2v_inst|Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~50\ : std_logic;
SIGNAL \b2v_inst|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~6\ : std_logic;
SIGNAL \b2v_inst|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~10\ : std_logic;
SIGNAL \b2v_inst|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst|Add0~14\ : std_logic;
SIGNAL \b2v_inst|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst|ot~0_combout\ : std_logic;
SIGNAL \b2v_inst|ot~q\ : std_logic;
SIGNAL \b2v_inst|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \b2v_inst|ALT_INV_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_ot~q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_count\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clock_50mhz <= clock_50mhz;
ww_kclock <= kclock;
ww_dco_clock <= dco_clock;
fout <= ww_fout;
fref <= ww_fref;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\b2v_inst|ALT_INV_count[10]~DUPLICATE_q\ <= NOT \b2v_inst|count[10]~DUPLICATE_q\;
\b2v_inst|ALT_INV_count[0]~DUPLICATE_q\ <= NOT \b2v_inst|count[0]~DUPLICATE_q\;
\b2v_inst|ALT_INV_count[1]~DUPLICATE_q\ <= NOT \b2v_inst|count[1]~DUPLICATE_q\;
\b2v_inst|ALT_INV_Equal0~3_combout\ <= NOT \b2v_inst|Equal0~3_combout\;
\b2v_inst|ALT_INV_Equal0~2_combout\ <= NOT \b2v_inst|Equal0~2_combout\;
\b2v_inst|ALT_INV_Equal0~1_combout\ <= NOT \b2v_inst|Equal0~1_combout\;
\b2v_inst|ALT_INV_Equal0~0_combout\ <= NOT \b2v_inst|Equal0~0_combout\;
\b2v_inst|ALT_INV_ot~q\ <= NOT \b2v_inst|ot~q\;
\b2v_inst|ALT_INV_count\(11) <= NOT \b2v_inst|count\(11);
\b2v_inst|ALT_INV_count\(10) <= NOT \b2v_inst|count\(10);
\b2v_inst|ALT_INV_count\(9) <= NOT \b2v_inst|count\(9);
\b2v_inst|ALT_INV_count\(8) <= NOT \b2v_inst|count\(8);
\b2v_inst|ALT_INV_count\(0) <= NOT \b2v_inst|count\(0);
\b2v_inst|ALT_INV_count\(1) <= NOT \b2v_inst|count\(1);
\b2v_inst|ALT_INV_count\(2) <= NOT \b2v_inst|count\(2);
\b2v_inst|ALT_INV_count\(3) <= NOT \b2v_inst|count\(3);
\b2v_inst|ALT_INV_count\(4) <= NOT \b2v_inst|count\(4);
\b2v_inst|ALT_INV_count\(5) <= NOT \b2v_inst|count\(5);
\b2v_inst|ALT_INV_count\(6) <= NOT \b2v_inst|count\(6);
\b2v_inst|ALT_INV_count\(7) <= NOT \b2v_inst|count\(7);
\b2v_inst|ALT_INV_count\(17) <= NOT \b2v_inst|count\(17);
\b2v_inst|ALT_INV_count\(16) <= NOT \b2v_inst|count\(16);
\b2v_inst|ALT_INV_count\(15) <= NOT \b2v_inst|count\(15);
\b2v_inst|ALT_INV_count\(14) <= NOT \b2v_inst|count\(14);
\b2v_inst|ALT_INV_count\(13) <= NOT \b2v_inst|count\(13);
\b2v_inst|ALT_INV_count\(12) <= NOT \b2v_inst|count\(12);
\b2v_inst|ALT_INV_count\(23) <= NOT \b2v_inst|count\(23);
\b2v_inst|ALT_INV_count\(22) <= NOT \b2v_inst|count\(22);
\b2v_inst|ALT_INV_count\(21) <= NOT \b2v_inst|count\(21);
\b2v_inst|ALT_INV_count\(20) <= NOT \b2v_inst|count\(20);
\b2v_inst|ALT_INV_count\(19) <= NOT \b2v_inst|count\(19);
\b2v_inst|ALT_INV_count\(18) <= NOT \b2v_inst|count\(18);
\b2v_inst|ALT_INV_count\(24) <= NOT \b2v_inst|count\(24);

-- Location: IOOBUF_X64_Y0_N36
\fout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_fout);

-- Location: IOOBUF_X2_Y0_N59
\fref~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|ot~q\,
	devoe => ww_devoe,
	o => ww_fref);

-- Location: IOIBUF_X89_Y35_N61
\clock_50mhz~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50mhz,
	o => \clock_50mhz~input_o\);

-- Location: CLKCTRL_G10
\clock_50mhz~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50mhz~input_o\,
	outclk => \clock_50mhz~inputCLKENA0_outclk\);

-- Location: LABCELL_X1_Y2_N30
\b2v_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~81_sumout\ = SUM(( \b2v_inst|count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \b2v_inst|Add0~82\ = CARRY(( \b2v_inst|count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_count[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \b2v_inst|Add0~81_sumout\,
	cout => \b2v_inst|Add0~82\);

-- Location: LABCELL_X1_Y1_N33
\b2v_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~17_sumout\ = SUM(( \b2v_inst|count\(21) ) + ( GND ) + ( \b2v_inst|Add0~14\ ))
-- \b2v_inst|Add0~18\ = CARRY(( \b2v_inst|count\(21) ) + ( GND ) + ( \b2v_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_count\(21),
	cin => \b2v_inst|Add0~14\,
	sumout => \b2v_inst|Add0~17_sumout\,
	cout => \b2v_inst|Add0~18\);

-- Location: LABCELL_X1_Y1_N36
\b2v_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~21_sumout\ = SUM(( \b2v_inst|count\(22) ) + ( GND ) + ( \b2v_inst|Add0~18\ ))
-- \b2v_inst|Add0~22\ = CARRY(( \b2v_inst|count\(22) ) + ( GND ) + ( \b2v_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_count\(22),
	cin => \b2v_inst|Add0~18\,
	sumout => \b2v_inst|Add0~21_sumout\,
	cout => \b2v_inst|Add0~22\);

-- Location: FF_X1_Y1_N38
\b2v_inst|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~21_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(22));

-- Location: LABCELL_X1_Y1_N39
\b2v_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~25_sumout\ = SUM(( \b2v_inst|count\(23) ) + ( GND ) + ( \b2v_inst|Add0~22\ ))
-- \b2v_inst|Add0~26\ = CARRY(( \b2v_inst|count\(23) ) + ( GND ) + ( \b2v_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_count\(23),
	cin => \b2v_inst|Add0~22\,
	sumout => \b2v_inst|Add0~25_sumout\,
	cout => \b2v_inst|Add0~26\);

-- Location: FF_X1_Y1_N41
\b2v_inst|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~25_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(23));

-- Location: LABCELL_X1_Y1_N42
\b2v_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~1_sumout\ = SUM(( \b2v_inst|count\(24) ) + ( GND ) + ( \b2v_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ALT_INV_count\(24),
	cin => \b2v_inst|Add0~26\,
	sumout => \b2v_inst|Add0~1_sumout\);

-- Location: FF_X1_Y1_N44
\b2v_inst|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~1_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(24));

-- Location: LABCELL_X1_Y2_N24
\b2v_inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~2_combout\ = ( \b2v_inst|count\(5) & ( !\b2v_inst|count\(3) & ( (\b2v_inst|count\(6) & (\b2v_inst|count\(4) & (\b2v_inst|count\(2) & \b2v_inst|count\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_count\(6),
	datab => \b2v_inst|ALT_INV_count\(4),
	datac => \b2v_inst|ALT_INV_count\(2),
	datad => \b2v_inst|ALT_INV_count\(7),
	datae => \b2v_inst|ALT_INV_count\(5),
	dataf => \b2v_inst|ALT_INV_count\(3),
	combout => \b2v_inst|Equal0~2_combout\);

-- Location: LABCELL_X1_Y1_N54
\b2v_inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~1_combout\ = ( !\b2v_inst|count\(12) & ( !\b2v_inst|count\(15) & ( (\b2v_inst|count\(17) & (!\b2v_inst|count\(14) & (\b2v_inst|count\(16) & \b2v_inst|count\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_count\(17),
	datab => \b2v_inst|ALT_INV_count\(14),
	datac => \b2v_inst|ALT_INV_count\(16),
	datad => \b2v_inst|ALT_INV_count\(13),
	datae => \b2v_inst|ALT_INV_count\(12),
	dataf => \b2v_inst|ALT_INV_count\(15),
	combout => \b2v_inst|Equal0~1_combout\);

-- Location: FF_X1_Y2_N5
\b2v_inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst|Add0~93_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(10));

-- Location: FF_X1_Y2_N32
\b2v_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~81_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(0));

-- Location: FF_X1_Y2_N35
\b2v_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~77_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(1));

-- Location: LABCELL_X1_Y2_N21
\b2v_inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~3_combout\ = ( \b2v_inst|count\(8) & ( \b2v_inst|count\(11) & ( (\b2v_inst|count\(10) & (\b2v_inst|count\(0) & (!\b2v_inst|count\(9) & !\b2v_inst|count\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_count\(10),
	datab => \b2v_inst|ALT_INV_count\(0),
	datac => \b2v_inst|ALT_INV_count\(9),
	datad => \b2v_inst|ALT_INV_count\(1),
	datae => \b2v_inst|ALT_INV_count\(8),
	dataf => \b2v_inst|ALT_INV_count\(11),
	combout => \b2v_inst|Equal0~3_combout\);

-- Location: LABCELL_X1_Y2_N12
\b2v_inst|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~4_combout\ = ( \b2v_inst|Equal0~3_combout\ & ( \b2v_inst|Equal0~0_combout\ & ( (!\b2v_inst|count\(24) & (\b2v_inst|Equal0~2_combout\ & \b2v_inst|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_count\(24),
	datac => \b2v_inst|ALT_INV_Equal0~2_combout\,
	datad => \b2v_inst|ALT_INV_Equal0~1_combout\,
	datae => \b2v_inst|ALT_INV_Equal0~3_combout\,
	dataf => \b2v_inst|ALT_INV_Equal0~0_combout\,
	combout => \b2v_inst|Equal0~4_combout\);

-- Location: FF_X1_Y2_N31
\b2v_inst|count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~81_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count[0]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N33
\b2v_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~77_sumout\ = SUM(( \b2v_inst|count[1]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|Add0~82\ ))
-- \b2v_inst|Add0~78\ = CARRY(( \b2v_inst|count[1]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count[1]~DUPLICATE_q\,
	cin => \b2v_inst|Add0~82\,
	sumout => \b2v_inst|Add0~77_sumout\,
	cout => \b2v_inst|Add0~78\);

-- Location: FF_X1_Y2_N34
\b2v_inst|count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~77_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count[1]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N36
\b2v_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~73_sumout\ = SUM(( \b2v_inst|count\(2) ) + ( GND ) + ( \b2v_inst|Add0~78\ ))
-- \b2v_inst|Add0~74\ = CARRY(( \b2v_inst|count\(2) ) + ( GND ) + ( \b2v_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count\(2),
	cin => \b2v_inst|Add0~78\,
	sumout => \b2v_inst|Add0~73_sumout\,
	cout => \b2v_inst|Add0~74\);

-- Location: FF_X1_Y2_N38
\b2v_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~73_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(2));

-- Location: LABCELL_X1_Y2_N39
\b2v_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~69_sumout\ = SUM(( \b2v_inst|count\(3) ) + ( GND ) + ( \b2v_inst|Add0~74\ ))
-- \b2v_inst|Add0~70\ = CARRY(( \b2v_inst|count\(3) ) + ( GND ) + ( \b2v_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_count\(3),
	cin => \b2v_inst|Add0~74\,
	sumout => \b2v_inst|Add0~69_sumout\,
	cout => \b2v_inst|Add0~70\);

-- Location: FF_X1_Y2_N41
\b2v_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~69_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(3));

-- Location: LABCELL_X1_Y2_N42
\b2v_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~65_sumout\ = SUM(( \b2v_inst|count\(4) ) + ( GND ) + ( \b2v_inst|Add0~70\ ))
-- \b2v_inst|Add0~66\ = CARRY(( \b2v_inst|count\(4) ) + ( GND ) + ( \b2v_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count\(4),
	cin => \b2v_inst|Add0~70\,
	sumout => \b2v_inst|Add0~65_sumout\,
	cout => \b2v_inst|Add0~66\);

-- Location: FF_X1_Y2_N43
\b2v_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~65_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(4));

-- Location: LABCELL_X1_Y2_N45
\b2v_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~61_sumout\ = SUM(( \b2v_inst|count\(5) ) + ( GND ) + ( \b2v_inst|Add0~66\ ))
-- \b2v_inst|Add0~62\ = CARRY(( \b2v_inst|count\(5) ) + ( GND ) + ( \b2v_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count\(5),
	cin => \b2v_inst|Add0~66\,
	sumout => \b2v_inst|Add0~61_sumout\,
	cout => \b2v_inst|Add0~62\);

-- Location: FF_X1_Y2_N47
\b2v_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~61_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(5));

-- Location: LABCELL_X1_Y2_N48
\b2v_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~57_sumout\ = SUM(( \b2v_inst|count\(6) ) + ( GND ) + ( \b2v_inst|Add0~62\ ))
-- \b2v_inst|Add0~58\ = CARRY(( \b2v_inst|count\(6) ) + ( GND ) + ( \b2v_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_count\(6),
	cin => \b2v_inst|Add0~62\,
	sumout => \b2v_inst|Add0~57_sumout\,
	cout => \b2v_inst|Add0~58\);

-- Location: FF_X1_Y2_N50
\b2v_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~57_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(6));

-- Location: LABCELL_X1_Y2_N51
\b2v_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~53_sumout\ = SUM(( \b2v_inst|count\(7) ) + ( GND ) + ( \b2v_inst|Add0~58\ ))
-- \b2v_inst|Add0~54\ = CARRY(( \b2v_inst|count\(7) ) + ( GND ) + ( \b2v_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count\(7),
	cin => \b2v_inst|Add0~58\,
	sumout => \b2v_inst|Add0~53_sumout\,
	cout => \b2v_inst|Add0~54\);

-- Location: FF_X1_Y2_N52
\b2v_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~53_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(7));

-- Location: LABCELL_X1_Y2_N54
\b2v_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~85_sumout\ = SUM(( \b2v_inst|count\(8) ) + ( GND ) + ( \b2v_inst|Add0~54\ ))
-- \b2v_inst|Add0~86\ = CARRY(( \b2v_inst|count\(8) ) + ( GND ) + ( \b2v_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count\(8),
	cin => \b2v_inst|Add0~54\,
	sumout => \b2v_inst|Add0~85_sumout\,
	cout => \b2v_inst|Add0~86\);

-- Location: FF_X1_Y2_N56
\b2v_inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~85_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(8));

-- Location: LABCELL_X1_Y2_N57
\b2v_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~89_sumout\ = SUM(( \b2v_inst|count\(9) ) + ( GND ) + ( \b2v_inst|Add0~86\ ))
-- \b2v_inst|Add0~90\ = CARRY(( \b2v_inst|count\(9) ) + ( GND ) + ( \b2v_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count\(9),
	cin => \b2v_inst|Add0~86\,
	sumout => \b2v_inst|Add0~89_sumout\,
	cout => \b2v_inst|Add0~90\);

-- Location: FF_X1_Y2_N59
\b2v_inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~89_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(9));

-- Location: LABCELL_X1_Y1_N0
\b2v_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~93_sumout\ = SUM(( \b2v_inst|count[10]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|Add0~90\ ))
-- \b2v_inst|Add0~94\ = CARRY(( \b2v_inst|count[10]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count[10]~DUPLICATE_q\,
	cin => \b2v_inst|Add0~90\,
	sumout => \b2v_inst|Add0~93_sumout\,
	cout => \b2v_inst|Add0~94\);

-- Location: FF_X1_Y2_N4
\b2v_inst|count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst|Add0~93_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count[10]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y1_N3
\b2v_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~97_sumout\ = SUM(( \b2v_inst|count\(11) ) + ( GND ) + ( \b2v_inst|Add0~94\ ))
-- \b2v_inst|Add0~98\ = CARRY(( \b2v_inst|count\(11) ) + ( GND ) + ( \b2v_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count\(11),
	cin => \b2v_inst|Add0~94\,
	sumout => \b2v_inst|Add0~97_sumout\,
	cout => \b2v_inst|Add0~98\);

-- Location: FF_X1_Y2_N11
\b2v_inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst|Add0~97_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(11));

-- Location: LABCELL_X1_Y1_N6
\b2v_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~29_sumout\ = SUM(( \b2v_inst|count\(12) ) + ( GND ) + ( \b2v_inst|Add0~98\ ))
-- \b2v_inst|Add0~30\ = CARRY(( \b2v_inst|count\(12) ) + ( GND ) + ( \b2v_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count\(12),
	cin => \b2v_inst|Add0~98\,
	sumout => \b2v_inst|Add0~29_sumout\,
	cout => \b2v_inst|Add0~30\);

-- Location: FF_X1_Y1_N7
\b2v_inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~29_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(12));

-- Location: LABCELL_X1_Y1_N9
\b2v_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~33_sumout\ = SUM(( \b2v_inst|count\(13) ) + ( GND ) + ( \b2v_inst|Add0~30\ ))
-- \b2v_inst|Add0~34\ = CARRY(( \b2v_inst|count\(13) ) + ( GND ) + ( \b2v_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_count\(13),
	cin => \b2v_inst|Add0~30\,
	sumout => \b2v_inst|Add0~33_sumout\,
	cout => \b2v_inst|Add0~34\);

-- Location: FF_X1_Y1_N11
\b2v_inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~33_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(13));

-- Location: LABCELL_X1_Y1_N12
\b2v_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~37_sumout\ = SUM(( \b2v_inst|count\(14) ) + ( GND ) + ( \b2v_inst|Add0~34\ ))
-- \b2v_inst|Add0~38\ = CARRY(( \b2v_inst|count\(14) ) + ( GND ) + ( \b2v_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ALT_INV_count\(14),
	cin => \b2v_inst|Add0~34\,
	sumout => \b2v_inst|Add0~37_sumout\,
	cout => \b2v_inst|Add0~38\);

-- Location: FF_X1_Y1_N14
\b2v_inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~37_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(14));

-- Location: LABCELL_X1_Y1_N15
\b2v_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~41_sumout\ = SUM(( \b2v_inst|count\(15) ) + ( GND ) + ( \b2v_inst|Add0~38\ ))
-- \b2v_inst|Add0~42\ = CARRY(( \b2v_inst|count\(15) ) + ( GND ) + ( \b2v_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_count\(15),
	cin => \b2v_inst|Add0~38\,
	sumout => \b2v_inst|Add0~41_sumout\,
	cout => \b2v_inst|Add0~42\);

-- Location: FF_X1_Y1_N17
\b2v_inst|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~41_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(15));

-- Location: LABCELL_X1_Y1_N18
\b2v_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~45_sumout\ = SUM(( \b2v_inst|count\(16) ) + ( GND ) + ( \b2v_inst|Add0~42\ ))
-- \b2v_inst|Add0~46\ = CARRY(( \b2v_inst|count\(16) ) + ( GND ) + ( \b2v_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_count\(16),
	cin => \b2v_inst|Add0~42\,
	sumout => \b2v_inst|Add0~45_sumout\,
	cout => \b2v_inst|Add0~46\);

-- Location: FF_X1_Y1_N20
\b2v_inst|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~45_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(16));

-- Location: LABCELL_X1_Y1_N21
\b2v_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~49_sumout\ = SUM(( \b2v_inst|count\(17) ) + ( GND ) + ( \b2v_inst|Add0~46\ ))
-- \b2v_inst|Add0~50\ = CARRY(( \b2v_inst|count\(17) ) + ( GND ) + ( \b2v_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|ALT_INV_count\(17),
	cin => \b2v_inst|Add0~46\,
	sumout => \b2v_inst|Add0~49_sumout\,
	cout => \b2v_inst|Add0~50\);

-- Location: FF_X1_Y1_N23
\b2v_inst|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~49_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(17));

-- Location: LABCELL_X1_Y1_N24
\b2v_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~5_sumout\ = SUM(( \b2v_inst|count\(18) ) + ( GND ) + ( \b2v_inst|Add0~50\ ))
-- \b2v_inst|Add0~6\ = CARRY(( \b2v_inst|count\(18) ) + ( GND ) + ( \b2v_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_count\(18),
	cin => \b2v_inst|Add0~50\,
	sumout => \b2v_inst|Add0~5_sumout\,
	cout => \b2v_inst|Add0~6\);

-- Location: FF_X1_Y1_N26
\b2v_inst|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~5_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(18));

-- Location: LABCELL_X1_Y1_N27
\b2v_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~9_sumout\ = SUM(( \b2v_inst|count\(19) ) + ( GND ) + ( \b2v_inst|Add0~6\ ))
-- \b2v_inst|Add0~10\ = CARRY(( \b2v_inst|count\(19) ) + ( GND ) + ( \b2v_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|ALT_INV_count\(19),
	cin => \b2v_inst|Add0~6\,
	sumout => \b2v_inst|Add0~9_sumout\,
	cout => \b2v_inst|Add0~10\);

-- Location: FF_X1_Y1_N28
\b2v_inst|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~9_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(19));

-- Location: LABCELL_X1_Y1_N30
\b2v_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~13_sumout\ = SUM(( \b2v_inst|count\(20) ) + ( GND ) + ( \b2v_inst|Add0~10\ ))
-- \b2v_inst|Add0~14\ = CARRY(( \b2v_inst|count\(20) ) + ( GND ) + ( \b2v_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ALT_INV_count\(20),
	cin => \b2v_inst|Add0~10\,
	sumout => \b2v_inst|Add0~13_sumout\,
	cout => \b2v_inst|Add0~14\);

-- Location: FF_X1_Y1_N32
\b2v_inst|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~13_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(20));

-- Location: FF_X1_Y1_N35
\b2v_inst|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|Add0~17_sumout\,
	sclr => \b2v_inst|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count\(21));

-- Location: LABCELL_X1_Y1_N48
\b2v_inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~0_combout\ = ( !\b2v_inst|count\(22) & ( !\b2v_inst|count\(19) & ( (!\b2v_inst|count\(21) & (!\b2v_inst|count\(20) & (!\b2v_inst|count\(18) & !\b2v_inst|count\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_count\(21),
	datab => \b2v_inst|ALT_INV_count\(20),
	datac => \b2v_inst|ALT_INV_count\(18),
	datad => \b2v_inst|ALT_INV_count\(23),
	datae => \b2v_inst|ALT_INV_count\(22),
	dataf => \b2v_inst|ALT_INV_count\(19),
	combout => \b2v_inst|Equal0~0_combout\);

-- Location: LABCELL_X1_Y2_N6
\b2v_inst|ot~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|ot~0_combout\ = ( \b2v_inst|ot~q\ & ( \b2v_inst|Equal0~2_combout\ & ( (!\b2v_inst|Equal0~0_combout\) # ((!\b2v_inst|Equal0~1_combout\) # ((!\b2v_inst|Equal0~3_combout\) # (\b2v_inst|count\(24)))) ) ) ) # ( !\b2v_inst|ot~q\ & ( 
-- \b2v_inst|Equal0~2_combout\ & ( (\b2v_inst|Equal0~0_combout\ & (\b2v_inst|Equal0~1_combout\ & (!\b2v_inst|count\(24) & \b2v_inst|Equal0~3_combout\))) ) ) ) # ( \b2v_inst|ot~q\ & ( !\b2v_inst|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|ALT_INV_Equal0~0_combout\,
	datab => \b2v_inst|ALT_INV_Equal0~1_combout\,
	datac => \b2v_inst|ALT_INV_count\(24),
	datad => \b2v_inst|ALT_INV_Equal0~3_combout\,
	datae => \b2v_inst|ALT_INV_ot~q\,
	dataf => \b2v_inst|ALT_INV_Equal0~2_combout\,
	combout => \b2v_inst|ot~0_combout\);

-- Location: FF_X1_Y2_N7
\b2v_inst|ot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50mhz~inputCLKENA0_outclk\,
	d => \b2v_inst|ot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|ot~q\);

-- Location: IOIBUF_X84_Y81_N1
\kclock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kclock,
	o => \kclock~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\dco_clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dco_clock,
	o => \dco_clock~input_o\);

-- Location: LABCELL_X19_Y69_N0
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


