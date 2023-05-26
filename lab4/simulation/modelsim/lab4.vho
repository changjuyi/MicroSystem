-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/17/2021 13:41:33"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4 IS
    PORT (
	clk : IN std_logic;
	clear : IN std_logic;
	load : IN std_logic;
	lr_sel : IN std_logic;
	di : IN std_logic_vector(15 DOWNTO 0);
	sdi : IN std_logic;
	qo : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END lab4;

-- Design Ports Information
-- qo[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[3]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[8]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[9]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[10]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[11]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[12]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[13]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[14]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qo[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdi	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lr_sel	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[1]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[5]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[6]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[8]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[9]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[10]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[11]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[12]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[13]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[14]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di[15]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_lr_sel : std_logic;
SIGNAL ww_di : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sdi : std_logic;
SIGNAL ww_qo : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \qo[0]~output_o\ : std_logic;
SIGNAL \qo[1]~output_o\ : std_logic;
SIGNAL \qo[2]~output_o\ : std_logic;
SIGNAL \qo[3]~output_o\ : std_logic;
SIGNAL \qo[4]~output_o\ : std_logic;
SIGNAL \qo[5]~output_o\ : std_logic;
SIGNAL \qo[6]~output_o\ : std_logic;
SIGNAL \qo[7]~output_o\ : std_logic;
SIGNAL \qo[8]~output_o\ : std_logic;
SIGNAL \qo[9]~output_o\ : std_logic;
SIGNAL \qo[10]~output_o\ : std_logic;
SIGNAL \qo[11]~output_o\ : std_logic;
SIGNAL \qo[12]~output_o\ : std_logic;
SIGNAL \qo[13]~output_o\ : std_logic;
SIGNAL \qo[14]~output_o\ : std_logic;
SIGNAL \qo[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sdi~input_o\ : std_logic;
SIGNAL \lr_sel~input_o\ : std_logic;
SIGNAL \qo~15_combout\ : std_logic;
SIGNAL \di[15]~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \qo[15]~reg0_q\ : std_logic;
SIGNAL \qo~14_combout\ : std_logic;
SIGNAL \di[14]~input_o\ : std_logic;
SIGNAL \qo[14]~reg0_q\ : std_logic;
SIGNAL \qo~13_combout\ : std_logic;
SIGNAL \di[13]~input_o\ : std_logic;
SIGNAL \qo[13]~reg0_q\ : std_logic;
SIGNAL \qo~12_combout\ : std_logic;
SIGNAL \di[12]~input_o\ : std_logic;
SIGNAL \qo[12]~reg0_q\ : std_logic;
SIGNAL \qo~11_combout\ : std_logic;
SIGNAL \di[11]~input_o\ : std_logic;
SIGNAL \qo[11]~reg0_q\ : std_logic;
SIGNAL \qo~10_combout\ : std_logic;
SIGNAL \di[10]~input_o\ : std_logic;
SIGNAL \qo[10]~reg0_q\ : std_logic;
SIGNAL \qo~9_combout\ : std_logic;
SIGNAL \di[9]~input_o\ : std_logic;
SIGNAL \qo[9]~reg0_q\ : std_logic;
SIGNAL \qo~8_combout\ : std_logic;
SIGNAL \di[8]~input_o\ : std_logic;
SIGNAL \qo[8]~reg0_q\ : std_logic;
SIGNAL \qo~7_combout\ : std_logic;
SIGNAL \di[7]~input_o\ : std_logic;
SIGNAL \qo[7]~reg0_q\ : std_logic;
SIGNAL \qo~6_combout\ : std_logic;
SIGNAL \di[6]~input_o\ : std_logic;
SIGNAL \qo[6]~reg0_q\ : std_logic;
SIGNAL \qo~5_combout\ : std_logic;
SIGNAL \di[5]~input_o\ : std_logic;
SIGNAL \qo[5]~reg0_q\ : std_logic;
SIGNAL \qo~4_combout\ : std_logic;
SIGNAL \di[4]~input_o\ : std_logic;
SIGNAL \qo[4]~reg0_q\ : std_logic;
SIGNAL \qo~3_combout\ : std_logic;
SIGNAL \di[3]~input_o\ : std_logic;
SIGNAL \qo[3]~reg0_q\ : std_logic;
SIGNAL \qo~2_combout\ : std_logic;
SIGNAL \di[2]~input_o\ : std_logic;
SIGNAL \qo[2]~reg0_q\ : std_logic;
SIGNAL \qo~1_combout\ : std_logic;
SIGNAL \di[1]~input_o\ : std_logic;
SIGNAL \qo[1]~reg0_q\ : std_logic;
SIGNAL \qo~0_combout\ : std_logic;
SIGNAL \di[0]~input_o\ : std_logic;
SIGNAL \qo[0]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_clear <= clear;
ww_load <= load;
ww_lr_sel <= lr_sel;
ww_di <= di;
ww_sdi <= sdi;
qo <= ww_qo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N23
\qo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[0]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\qo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[1]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\qo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[2]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[2]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\qo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[3]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\qo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[4]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[4]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\qo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[5]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\qo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[6]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[6]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\qo[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[7]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\qo[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[8]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\qo[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[9]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[9]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\qo[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[10]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[10]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\qo[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[11]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[11]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\qo[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[12]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[12]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\qo[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[13]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[13]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\qo[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[14]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[14]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\qo[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \qo[15]~reg0_q\,
	devoe => ww_devoe,
	o => \qo[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X89_Y73_N8
\sdi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sdi,
	o => \sdi~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\lr_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lr_sel,
	o => \lr_sel~input_o\);

-- Location: LCCOMB_X82_Y72_N30
\qo~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~15_combout\ = (\lr_sel~input_o\ & ((\sdi~input_o\))) # (!\lr_sel~input_o\ & (\qo[15]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr_sel~input_o\,
	datac => \qo[15]~reg0_q\,
	datad => \sdi~input_o\,
	combout => \qo~15_combout\);

-- Location: IOIBUF_X83_Y73_N8
\di[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(15),
	o => \di[15]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X82_Y72_N31
\qo[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~15_combout\,
	asdata => \di[15]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[15]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N4
\qo~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~14_combout\ = (\lr_sel~input_o\ & (\qo[15]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[13]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qo[15]~reg0_q\,
	datab => \lr_sel~input_o\,
	datad => \qo[13]~reg0_q\,
	combout => \qo~14_combout\);

-- Location: IOIBUF_X85_Y73_N22
\di[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(14),
	o => \di[14]~input_o\);

-- Location: FF_X82_Y72_N5
\qo[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~14_combout\,
	asdata => \di[14]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[14]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N6
\qo~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~13_combout\ = (\lr_sel~input_o\ & (\qo[14]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[12]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[14]~reg0_q\,
	datad => \qo[12]~reg0_q\,
	combout => \qo~13_combout\);

-- Location: IOIBUF_X87_Y73_N8
\di[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(13),
	o => \di[13]~input_o\);

-- Location: FF_X82_Y72_N7
\qo[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~13_combout\,
	asdata => \di[13]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[13]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N16
\qo~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~12_combout\ = (\lr_sel~input_o\ & (\qo[13]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[11]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qo[13]~reg0_q\,
	datab => \lr_sel~input_o\,
	datad => \qo[11]~reg0_q\,
	combout => \qo~12_combout\);

-- Location: IOIBUF_X85_Y73_N1
\di[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(12),
	o => \di[12]~input_o\);

-- Location: FF_X82_Y72_N17
\qo[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~12_combout\,
	asdata => \di[12]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[12]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N14
\qo~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~11_combout\ = (\lr_sel~input_o\ & (\qo[12]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[10]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[12]~reg0_q\,
	datad => \qo[10]~reg0_q\,
	combout => \qo~11_combout\);

-- Location: IOIBUF_X85_Y73_N8
\di[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(11),
	o => \di[11]~input_o\);

-- Location: FF_X82_Y72_N15
\qo[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~11_combout\,
	asdata => \di[11]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[11]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N20
\qo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~10_combout\ = (\lr_sel~input_o\ & (\qo[11]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[9]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[11]~reg0_q\,
	datad => \qo[9]~reg0_q\,
	combout => \qo~10_combout\);

-- Location: IOIBUF_X83_Y73_N1
\di[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(10),
	o => \di[10]~input_o\);

-- Location: FF_X82_Y72_N21
\qo[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~10_combout\,
	asdata => \di[10]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[10]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N10
\qo~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~9_combout\ = (\lr_sel~input_o\ & (\qo[10]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[8]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[10]~reg0_q\,
	datad => \qo[8]~reg0_q\,
	combout => \qo~9_combout\);

-- Location: IOIBUF_X87_Y73_N15
\di[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(9),
	o => \di[9]~input_o\);

-- Location: FF_X82_Y72_N11
\qo[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~9_combout\,
	asdata => \di[9]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[9]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N12
\qo~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~8_combout\ = (\lr_sel~input_o\ & (\qo[9]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qo[9]~reg0_q\,
	datab => \lr_sel~input_o\,
	datad => \qo[7]~reg0_q\,
	combout => \qo~8_combout\);

-- Location: IOIBUF_X94_Y73_N8
\di[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(8),
	o => \di[8]~input_o\);

-- Location: FF_X82_Y72_N13
\qo[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~8_combout\,
	asdata => \di[8]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[8]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N22
\qo~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~7_combout\ = (\lr_sel~input_o\ & (\qo[8]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[6]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qo[8]~reg0_q\,
	datab => \lr_sel~input_o\,
	datad => \qo[6]~reg0_q\,
	combout => \qo~7_combout\);

-- Location: IOIBUF_X91_Y73_N15
\di[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(7),
	o => \di[7]~input_o\);

-- Location: FF_X82_Y72_N23
\qo[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~7_combout\,
	asdata => \di[7]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[7]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N8
\qo~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~6_combout\ = (\lr_sel~input_o\ & (\qo[7]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \qo[7]~reg0_q\,
	datab => \lr_sel~input_o\,
	datad => \qo[5]~reg0_q\,
	combout => \qo~6_combout\);

-- Location: IOIBUF_X85_Y73_N15
\di[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(6),
	o => \di[6]~input_o\);

-- Location: FF_X82_Y72_N9
\qo[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~6_combout\,
	asdata => \di[6]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[6]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N2
\qo~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~5_combout\ = (\lr_sel~input_o\ & (\qo[6]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[6]~reg0_q\,
	datad => \qo[4]~reg0_q\,
	combout => \qo~5_combout\);

-- Location: IOIBUF_X96_Y73_N22
\di[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(5),
	o => \di[5]~input_o\);

-- Location: FF_X82_Y72_N3
\qo[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~5_combout\,
	asdata => \di[5]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[5]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N0
\qo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~4_combout\ = (\lr_sel~input_o\ & (\qo[5]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[5]~reg0_q\,
	datad => \qo[3]~reg0_q\,
	combout => \qo~4_combout\);

-- Location: IOIBUF_X87_Y73_N22
\di[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(4),
	o => \di[4]~input_o\);

-- Location: FF_X82_Y72_N1
\qo[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~4_combout\,
	asdata => \di[4]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[4]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N18
\qo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~3_combout\ = (\lr_sel~input_o\ & (\qo[4]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[4]~reg0_q\,
	datad => \qo[2]~reg0_q\,
	combout => \qo~3_combout\);

-- Location: IOIBUF_X81_Y73_N15
\di[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(3),
	o => \di[3]~input_o\);

-- Location: FF_X82_Y72_N19
\qo[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~3_combout\,
	asdata => \di[3]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[3]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N28
\qo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~2_combout\ = (\lr_sel~input_o\ & (\qo[3]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[3]~reg0_q\,
	datad => \qo[1]~reg0_q\,
	combout => \qo~2_combout\);

-- Location: IOIBUF_X89_Y73_N15
\di[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(2),
	o => \di[2]~input_o\);

-- Location: FF_X82_Y72_N29
\qo[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~2_combout\,
	asdata => \di[2]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[2]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N26
\qo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~1_combout\ = (\lr_sel~input_o\ & (\qo[2]~reg0_q\)) # (!\lr_sel~input_o\ & ((\qo[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_sel~input_o\,
	datab => \qo[2]~reg0_q\,
	datad => \qo[0]~reg0_q\,
	combout => \qo~1_combout\);

-- Location: IOIBUF_X89_Y73_N22
\di[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(1),
	o => \di[1]~input_o\);

-- Location: FF_X82_Y72_N27
\qo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~1_combout\,
	asdata => \di[1]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[1]~reg0_q\);

-- Location: LCCOMB_X82_Y72_N24
\qo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \qo~0_combout\ = (\lr_sel~input_o\ & ((\qo[1]~reg0_q\))) # (!\lr_sel~input_o\ & (\sdi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdi~input_o\,
	datab => \lr_sel~input_o\,
	datad => \qo[1]~reg0_q\,
	combout => \qo~0_combout\);

-- Location: IOIBUF_X94_Y73_N1
\di[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di(0),
	o => \di[0]~input_o\);

-- Location: FF_X82_Y72_N25
\qo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qo~0_combout\,
	asdata => \di[0]~input_o\,
	sclr => \clear~input_o\,
	sload => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \qo[0]~reg0_q\);

ww_qo(0) <= \qo[0]~output_o\;

ww_qo(1) <= \qo[1]~output_o\;

ww_qo(2) <= \qo[2]~output_o\;

ww_qo(3) <= \qo[3]~output_o\;

ww_qo(4) <= \qo[4]~output_o\;

ww_qo(5) <= \qo[5]~output_o\;

ww_qo(6) <= \qo[6]~output_o\;

ww_qo(7) <= \qo[7]~output_o\;

ww_qo(8) <= \qo[8]~output_o\;

ww_qo(9) <= \qo[9]~output_o\;

ww_qo(10) <= \qo[10]~output_o\;

ww_qo(11) <= \qo[11]~output_o\;

ww_qo(12) <= \qo[12]~output_o\;

ww_qo(13) <= \qo[13]~output_o\;

ww_qo(14) <= \qo[14]~output_o\;

ww_qo(15) <= \qo[15]~output_o\;
END structure;


