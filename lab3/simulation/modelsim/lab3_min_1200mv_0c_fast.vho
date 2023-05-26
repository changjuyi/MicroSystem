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

-- DATE "11/08/2021 16:13:06"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3 IS
    PORT (
	ALUctrl : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(6 DOWNTO 0);
	B : IN std_logic_vector(6 DOWNTO 0);
	out1 : BUFFER std_logic;
	out2 : BUFFER std_logic;
	out3 : BUFFER std_logic;
	out4 : BUFFER std_logic;
	out5 : BUFFER std_logic;
	out6 : BUFFER std_logic;
	out7 : BUFFER std_logic;
	out8 : BUFFER std_logic;
	out9 : BUFFER std_logic;
	out10 : BUFFER std_logic;
	out11 : BUFFER std_logic;
	out12 : BUFFER std_logic;
	out13 : BUFFER std_logic;
	out14 : BUFFER std_logic
	);
END lab3;

-- Design Ports Information
-- out1	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out3	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out4	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out5	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out6	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out7	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out8	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out9	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out10	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out11	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out12	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out13	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out14	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUctrl[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUctrl[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUctrl[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUctrl[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALUctrl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_out1 : std_logic;
SIGNAL ww_out2 : std_logic;
SIGNAL ww_out3 : std_logic;
SIGNAL ww_out4 : std_logic;
SIGNAL ww_out5 : std_logic;
SIGNAL ww_out6 : std_logic;
SIGNAL ww_out7 : std_logic;
SIGNAL ww_out8 : std_logic;
SIGNAL ww_out9 : std_logic;
SIGNAL ww_out10 : std_logic;
SIGNAL ww_out11 : std_logic;
SIGNAL ww_out12 : std_logic;
SIGNAL ww_out13 : std_logic;
SIGNAL ww_out14 : std_logic;
SIGNAL \out1~output_o\ : std_logic;
SIGNAL \out2~output_o\ : std_logic;
SIGNAL \out3~output_o\ : std_logic;
SIGNAL \out4~output_o\ : std_logic;
SIGNAL \out5~output_o\ : std_logic;
SIGNAL \out6~output_o\ : std_logic;
SIGNAL \out7~output_o\ : std_logic;
SIGNAL \out8~output_o\ : std_logic;
SIGNAL \out9~output_o\ : std_logic;
SIGNAL \out10~output_o\ : std_logic;
SIGNAL \out11~output_o\ : std_logic;
SIGNAL \out12~output_o\ : std_logic;
SIGNAL \out13~output_o\ : std_logic;
SIGNAL \out14~output_o\ : std_logic;
SIGNAL \ALUctrl[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \ALUctrl[3]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \G1:0:G2:stage1|mux2_1|f~0_combout\ : std_logic;
SIGNAL \ALUctrl[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \G1:0:G2:stage1|add1|cout~0_combout\ : std_logic;
SIGNAL \G1:1:G3:stage2|mux4_1|Mux0~0_combout\ : std_logic;
SIGNAL \ALUctrl[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \G1:1:G3:stage2|mux2_2|f~0_combout\ : std_logic;
SIGNAL \G1:1:G3:stage2|mux4_1|Mux0~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \G1:6:G4:stage3|mux2_2|f~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \G1:3:G3:stage2|mux2_2|f~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \G1:1:G3:stage2|add1|cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \G1:2:G3:stage2|mux2_2|f~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \G1:2:G3:stage2|add1|cout~0_combout\ : std_logic;
SIGNAL \G1:3:G3:stage2|add1|cout~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \G1:4:G3:stage2|mux2_2|f~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \G1:4:G3:stage2|add1|cout~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \G1:5:G3:stage2|mux2_2|f~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \G1:5:G3:stage2|add1|cout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \G1:6:G4:stage3|add1|s~combout\ : std_logic;
SIGNAL \G1:0:G2:stage1|orGate~combout\ : std_logic;
SIGNAL \G1:0:G2:stage1|andGate~combout\ : std_logic;
SIGNAL \G1:0:G2:stage1|add1|s~combout\ : std_logic;
SIGNAL \G1:0:G2:stage1|mux4_1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:0:G2:stage1|mux4_1|Mux0~1_combout\ : std_logic;
SIGNAL \G1:3:G3:stage2|mux4_1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:3:G3:stage2|mux4_1|Mux0~1_combout\ : std_logic;
SIGNAL \G1:2:G3:stage2|mux4_1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:2:G3:stage2|mux4_1|Mux0~1_combout\ : std_logic;
SIGNAL \G1:2:G3:stage2|mux4_1|Mux0~2_combout\ : std_logic;
SIGNAL \output|a1~0_combout\ : std_logic;
SIGNAL \output|b1~0_combout\ : std_logic;
SIGNAL \output|c1~0_combout\ : std_logic;
SIGNAL \output|d1~0_combout\ : std_logic;
SIGNAL \output|e1~0_combout\ : std_logic;
SIGNAL \output|f1~0_combout\ : std_logic;
SIGNAL \output|g1~combout\ : std_logic;
SIGNAL \G1:5:G3:stage2|mux4_1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:5:G3:stage2|mux4_1|Mux0~1_combout\ : std_logic;
SIGNAL \G1:6:G4:stage3|mux4_1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:6:G4:stage3|mux4_1|Mux0~1_combout\ : std_logic;
SIGNAL \G1:4:G3:stage2|mux4_1|Mux0~0_combout\ : std_logic;
SIGNAL \G1:4:G3:stage2|mux4_1|Mux0~1_combout\ : std_logic;
SIGNAL \output|a~0_combout\ : std_logic;
SIGNAL \output|b~0_combout\ : std_logic;
SIGNAL \output|c~0_combout\ : std_logic;
SIGNAL \output|d~0_combout\ : std_logic;
SIGNAL \output|e~combout\ : std_logic;
SIGNAL \output|f~0_combout\ : std_logic;
SIGNAL \output|g~combout\ : std_logic;
SIGNAL \output|ALT_INV_b~0_combout\ : std_logic;
SIGNAL \output|ALT_INV_a~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ALUctrl <= ALUctrl;
ww_A <= A;
ww_B <= B;
out1 <= ww_out1;
out2 <= ww_out2;
out3 <= ww_out3;
out4 <= ww_out4;
out5 <= ww_out5;
out6 <= ww_out6;
out7 <= ww_out7;
out8 <= ww_out8;
out9 <= ww_out9;
out10 <= ww_out10;
out11 <= ww_out11;
out12 <= ww_out12;
out13 <= ww_out13;
out14 <= ww_out14;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\output|ALT_INV_b~0_combout\ <= NOT \output|b~0_combout\;
\output|ALT_INV_a~0_combout\ <= NOT \output|a~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\out1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|a1~0_combout\,
	devoe => ww_devoe,
	o => \out1~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\out2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|b1~0_combout\,
	devoe => ww_devoe,
	o => \out2~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\out3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|c1~0_combout\,
	devoe => ww_devoe,
	o => \out3~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\out4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|d1~0_combout\,
	devoe => ww_devoe,
	o => \out4~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\out5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|e1~0_combout\,
	devoe => ww_devoe,
	o => \out5~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\out6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|f1~0_combout\,
	devoe => ww_devoe,
	o => \out6~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\out7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|g1~combout\,
	devoe => ww_devoe,
	o => \out7~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\out8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ALT_INV_a~0_combout\,
	devoe => ww_devoe,
	o => \out8~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\out9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ALT_INV_b~0_combout\,
	devoe => ww_devoe,
	o => \out9~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\out10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|c~0_combout\,
	devoe => ww_devoe,
	o => \out10~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\out11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|d~0_combout\,
	devoe => ww_devoe,
	o => \out11~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\out12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|e~combout\,
	devoe => ww_devoe,
	o => \out12~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\out13~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|f~0_combout\,
	devoe => ww_devoe,
	o => \out13~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\out14~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output|g~combout\,
	devoe => ww_devoe,
	o => \out14~output_o\);

-- Location: IOIBUF_X115_Y6_N15
\ALUctrl[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUctrl(1),
	o => \ALUctrl[1]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\ALUctrl[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUctrl(3),
	o => \ALUctrl[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X114_Y16_N24
\G1:0:G2:stage1|mux2_1|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G2:stage1|mux2_1|f~0_combout\ = \ALUctrl[3]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUctrl[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \G1:0:G2:stage1|mux2_1|f~0_combout\);

-- Location: IOIBUF_X115_Y13_N1
\ALUctrl[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUctrl(2),
	o => \ALUctrl[2]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X114_Y16_N10
\G1:0:G2:stage1|add1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G2:stage1|add1|cout~0_combout\ = (\ALUctrl[1]~input_o\ & ((\B[0]~input_o\ & (\G1:0:G2:stage1|mux2_1|f~0_combout\)) # (!\B[0]~input_o\ & ((\ALUctrl[2]~input_o\))))) # (!\ALUctrl[1]~input_o\ & (\G1:0:G2:stage1|mux2_1|f~0_combout\ & 
-- (\ALUctrl[2]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G2:stage1|mux2_1|f~0_combout\,
	datab => \ALUctrl[2]~input_o\,
	datac => \ALUctrl[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \G1:0:G2:stage1|add1|cout~0_combout\);

-- Location: LCCOMB_X114_Y16_N28
\G1:1:G3:stage2|mux4_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:1:G3:stage2|mux4_1|Mux0~0_combout\ = \A[1]~input_o\ $ (\ALUctrl[3]~input_o\ $ (((\ALUctrl[1]~input_o\ & \G1:0:G2:stage1|add1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ALUctrl[1]~input_o\,
	datac => \ALUctrl[3]~input_o\,
	datad => \G1:0:G2:stage1|add1|cout~0_combout\,
	combout => \G1:1:G3:stage2|mux4_1|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y10_N8
\ALUctrl[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUctrl(0),
	o => \ALUctrl[0]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X114_Y16_N20
\G1:1:G3:stage2|mux2_2|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:1:G3:stage2|mux2_2|f~0_combout\ = \B[1]~input_o\ $ (\ALUctrl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \ALUctrl[2]~input_o\,
	combout => \G1:1:G3:stage2|mux2_2|f~0_combout\);

-- Location: LCCOMB_X114_Y16_N14
\G1:1:G3:stage2|mux4_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:1:G3:stage2|mux4_1|Mux0~1_combout\ = (\G1:1:G3:stage2|mux4_1|Mux0~0_combout\ & (\ALUctrl[1]~input_o\ $ (((\ALUctrl[0]~input_o\) # (\G1:1:G3:stage2|mux2_2|f~0_combout\))))) # (!\G1:1:G3:stage2|mux4_1|Mux0~0_combout\ & 
-- (\G1:1:G3:stage2|mux2_2|f~0_combout\ & (\ALUctrl[1]~input_o\ $ (\ALUctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[1]~input_o\,
	datab => \G1:1:G3:stage2|mux4_1|Mux0~0_combout\,
	datac => \ALUctrl[0]~input_o\,
	datad => \G1:1:G3:stage2|mux2_2|f~0_combout\,
	combout => \G1:1:G3:stage2|mux4_1|Mux0~1_combout\);

-- Location: IOIBUF_X115_Y9_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X114_Y15_N12
\G1:6:G4:stage3|mux2_2|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:6:G4:stage3|mux2_2|f~0_combout\ = \B[6]~input_o\ $ (\ALUctrl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \ALUctrl[2]~input_o\,
	combout => \G1:6:G4:stage3|mux2_2|f~0_combout\);

-- Location: IOIBUF_X115_Y4_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X114_Y15_N24
\G1:3:G3:stage2|mux2_2|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:3:G3:stage2|mux2_2|f~0_combout\ = \ALUctrl[2]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUctrl[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \G1:3:G3:stage2|mux2_2|f~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X114_Y16_N22
\G1:1:G3:stage2|add1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:1:G3:stage2|add1|cout~0_combout\ = (\G1:1:G3:stage2|mux2_2|f~0_combout\ & ((\G1:0:G2:stage1|add1|cout~0_combout\) # (\A[1]~input_o\ $ (\ALUctrl[3]~input_o\)))) # (!\G1:1:G3:stage2|mux2_2|f~0_combout\ & (\G1:0:G2:stage1|add1|cout~0_combout\ & 
-- (\A[1]~input_o\ $ (\ALUctrl[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \G1:1:G3:stage2|mux2_2|f~0_combout\,
	datac => \ALUctrl[3]~input_o\,
	datad => \G1:0:G2:stage1|add1|cout~0_combout\,
	combout => \G1:1:G3:stage2|add1|cout~0_combout\);

-- Location: IOIBUF_X115_Y16_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X114_Y16_N0
\G1:2:G3:stage2|mux2_2|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:2:G3:stage2|mux2_2|f~0_combout\ = \ALUctrl[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUctrl[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \G1:2:G3:stage2|mux2_2|f~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X114_Y16_N26
\G1:2:G3:stage2|add1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:2:G3:stage2|add1|cout~0_combout\ = (\G1:1:G3:stage2|add1|cout~0_combout\ & ((\G1:2:G3:stage2|mux2_2|f~0_combout\) # (\ALUctrl[3]~input_o\ $ (\A[2]~input_o\)))) # (!\G1:1:G3:stage2|add1|cout~0_combout\ & (\G1:2:G3:stage2|mux2_2|f~0_combout\ & 
-- (\ALUctrl[3]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:1:G3:stage2|add1|cout~0_combout\,
	datab => \G1:2:G3:stage2|mux2_2|f~0_combout\,
	datac => \ALUctrl[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \G1:2:G3:stage2|add1|cout~0_combout\);

-- Location: LCCOMB_X114_Y15_N18
\G1:3:G3:stage2|add1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:3:G3:stage2|add1|cout~0_combout\ = (\G1:3:G3:stage2|mux2_2|f~0_combout\ & ((\G1:2:G3:stage2|add1|cout~0_combout\) # (\ALUctrl[3]~input_o\ $ (\A[3]~input_o\)))) # (!\G1:3:G3:stage2|mux2_2|f~0_combout\ & (\G1:2:G3:stage2|add1|cout~0_combout\ & 
-- (\ALUctrl[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[3]~input_o\,
	datab => \G1:3:G3:stage2|mux2_2|f~0_combout\,
	datac => \A[3]~input_o\,
	datad => \G1:2:G3:stage2|add1|cout~0_combout\,
	combout => \G1:3:G3:stage2|add1|cout~0_combout\);

-- Location: IOIBUF_X115_Y5_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X114_Y15_N20
\G1:4:G3:stage2|mux2_2|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:4:G3:stage2|mux2_2|f~0_combout\ = \ALUctrl[2]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUctrl[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \G1:4:G3:stage2|mux2_2|f~0_combout\);

-- Location: IOIBUF_X115_Y18_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X114_Y15_N30
\G1:4:G3:stage2|add1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:4:G3:stage2|add1|cout~0_combout\ = (\G1:3:G3:stage2|add1|cout~0_combout\ & ((\G1:4:G3:stage2|mux2_2|f~0_combout\) # (\ALUctrl[3]~input_o\ $ (\A[4]~input_o\)))) # (!\G1:3:G3:stage2|add1|cout~0_combout\ & (\G1:4:G3:stage2|mux2_2|f~0_combout\ & 
-- (\ALUctrl[3]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[3]~input_o\,
	datab => \G1:3:G3:stage2|add1|cout~0_combout\,
	datac => \G1:4:G3:stage2|mux2_2|f~0_combout\,
	datad => \A[4]~input_o\,
	combout => \G1:4:G3:stage2|add1|cout~0_combout\);

-- Location: IOIBUF_X115_Y7_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X114_Y15_N16
\G1:5:G3:stage2|mux2_2|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:5:G3:stage2|mux2_2|f~0_combout\ = \B[5]~input_o\ $ (\ALUctrl[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \ALUctrl[2]~input_o\,
	combout => \G1:5:G3:stage2|mux2_2|f~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X114_Y15_N2
\G1:5:G3:stage2|add1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:5:G3:stage2|add1|cout~0_combout\ = (\G1:4:G3:stage2|add1|cout~0_combout\ & ((\G1:5:G3:stage2|mux2_2|f~0_combout\) # (\A[5]~input_o\ $ (\ALUctrl[3]~input_o\)))) # (!\G1:4:G3:stage2|add1|cout~0_combout\ & (\G1:5:G3:stage2|mux2_2|f~0_combout\ & 
-- (\A[5]~input_o\ $ (\ALUctrl[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:4:G3:stage2|add1|cout~0_combout\,
	datab => \G1:5:G3:stage2|mux2_2|f~0_combout\,
	datac => \A[5]~input_o\,
	datad => \ALUctrl[3]~input_o\,
	combout => \G1:5:G3:stage2|add1|cout~0_combout\);

-- Location: IOIBUF_X115_Y10_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X114_Y15_N6
\G1:6:G4:stage3|add1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:6:G4:stage3|add1|s~combout\ = \G1:6:G4:stage3|mux2_2|f~0_combout\ $ (\G1:5:G3:stage2|add1|cout~0_combout\ $ (\A[6]~input_o\ $ (\ALUctrl[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:6:G4:stage3|mux2_2|f~0_combout\,
	datab => \G1:5:G3:stage2|add1|cout~0_combout\,
	datac => \A[6]~input_o\,
	datad => \ALUctrl[3]~input_o\,
	combout => \G1:6:G4:stage3|add1|s~combout\);

-- Location: LCCOMB_X114_Y16_N8
\G1:0:G2:stage1|orGate\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G2:stage1|orGate~combout\ = (\A[0]~input_o\ & ((\ALUctrl[2]~input_o\ $ (\B[0]~input_o\)) # (!\ALUctrl[3]~input_o\))) # (!\A[0]~input_o\ & ((\ALUctrl[3]~input_o\) # (\ALUctrl[2]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ALUctrl[2]~input_o\,
	datac => \ALUctrl[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \G1:0:G2:stage1|orGate~combout\);

-- Location: LCCOMB_X114_Y16_N12
\G1:0:G2:stage1|andGate\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G2:stage1|andGate~combout\ = (\A[0]~input_o\ & (!\ALUctrl[3]~input_o\ & (\ALUctrl[2]~input_o\ $ (\B[0]~input_o\)))) # (!\A[0]~input_o\ & (\ALUctrl[3]~input_o\ & (\ALUctrl[2]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ALUctrl[2]~input_o\,
	datac => \ALUctrl[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \G1:0:G2:stage1|andGate~combout\);

-- Location: LCCOMB_X114_Y16_N18
\G1:0:G2:stage1|add1|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G2:stage1|add1|s~combout\ = \B[0]~input_o\ $ (\ALUctrl[3]~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \ALUctrl[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \G1:0:G2:stage1|add1|s~combout\);

-- Location: LCCOMB_X114_Y16_N6
\G1:0:G2:stage1|mux4_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G2:stage1|mux4_1|Mux0~0_combout\ = (\ALUctrl[1]~input_o\ & (((\ALUctrl[0]~input_o\) # (\G1:0:G2:stage1|add1|s~combout\)))) # (!\ALUctrl[1]~input_o\ & (\G1:0:G2:stage1|andGate~combout\ & (!\ALUctrl[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:0:G2:stage1|andGate~combout\,
	datab => \ALUctrl[1]~input_o\,
	datac => \ALUctrl[0]~input_o\,
	datad => \G1:0:G2:stage1|add1|s~combout\,
	combout => \G1:0:G2:stage1|mux4_1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y16_N4
\G1:0:G2:stage1|mux4_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:0:G2:stage1|mux4_1|Mux0~1_combout\ = (\ALUctrl[0]~input_o\ & ((\G1:0:G2:stage1|mux4_1|Mux0~0_combout\ & (\G1:6:G4:stage3|add1|s~combout\)) # (!\G1:0:G2:stage1|mux4_1|Mux0~0_combout\ & ((\G1:0:G2:stage1|orGate~combout\))))) # (!\ALUctrl[0]~input_o\ & 
-- (((\G1:0:G2:stage1|mux4_1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:6:G4:stage3|add1|s~combout\,
	datab => \ALUctrl[0]~input_o\,
	datac => \G1:0:G2:stage1|orGate~combout\,
	datad => \G1:0:G2:stage1|mux4_1|Mux0~0_combout\,
	combout => \G1:0:G2:stage1|mux4_1|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y15_N8
\G1:3:G3:stage2|mux4_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:3:G3:stage2|mux4_1|Mux0~0_combout\ = \A[3]~input_o\ $ (\ALUctrl[3]~input_o\ $ (((\ALUctrl[1]~input_o\ & \G1:2:G3:stage2|add1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[1]~input_o\,
	datab => \G1:2:G3:stage2|add1|cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \ALUctrl[3]~input_o\,
	combout => \G1:3:G3:stage2|mux4_1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y15_N10
\G1:3:G3:stage2|mux4_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:3:G3:stage2|mux4_1|Mux0~1_combout\ = (\G1:3:G3:stage2|mux4_1|Mux0~0_combout\ & (\ALUctrl[1]~input_o\ $ (((\ALUctrl[0]~input_o\) # (\G1:3:G3:stage2|mux2_2|f~0_combout\))))) # (!\G1:3:G3:stage2|mux4_1|Mux0~0_combout\ & 
-- (\G1:3:G3:stage2|mux2_2|f~0_combout\ & (\ALUctrl[1]~input_o\ $ (\ALUctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[1]~input_o\,
	datab => \G1:3:G3:stage2|mux4_1|Mux0~0_combout\,
	datac => \ALUctrl[0]~input_o\,
	datad => \G1:3:G3:stage2|mux2_2|f~0_combout\,
	combout => \G1:3:G3:stage2|mux4_1|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y16_N30
\G1:2:G3:stage2|mux4_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:2:G3:stage2|mux4_1|Mux0~0_combout\ = \ALUctrl[2]~input_o\ $ (\G1:1:G3:stage2|add1|cout~0_combout\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUctrl[2]~input_o\,
	datac => \G1:1:G3:stage2|add1|cout~0_combout\,
	datad => \B[2]~input_o\,
	combout => \G1:2:G3:stage2|mux4_1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y16_N16
\G1:2:G3:stage2|mux4_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:2:G3:stage2|mux4_1|Mux0~1_combout\ = \ALUctrl[3]~input_o\ $ (\A[2]~input_o\ $ (((\G1:2:G3:stage2|mux4_1|Mux0~0_combout\ & \ALUctrl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:2:G3:stage2|mux4_1|Mux0~0_combout\,
	datab => \ALUctrl[1]~input_o\,
	datac => \ALUctrl[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \G1:2:G3:stage2|mux4_1|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y16_N2
\G1:2:G3:stage2|mux4_1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:2:G3:stage2|mux4_1|Mux0~2_combout\ = (\G1:2:G3:stage2|mux2_2|f~0_combout\ & ((\ALUctrl[0]~input_o\ & (\ALUctrl[1]~input_o\)) # (!\ALUctrl[0]~input_o\ & ((!\G1:2:G3:stage2|mux4_1|Mux0~1_combout\))))) # (!\G1:2:G3:stage2|mux2_2|f~0_combout\ & 
-- ((\ALUctrl[1]~input_o\ $ (!\ALUctrl[0]~input_o\)) # (!\G1:2:G3:stage2|mux4_1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[1]~input_o\,
	datab => \G1:2:G3:stage2|mux2_2|f~0_combout\,
	datac => \ALUctrl[0]~input_o\,
	datad => \G1:2:G3:stage2|mux4_1|Mux0~1_combout\,
	combout => \G1:2:G3:stage2|mux4_1|Mux0~2_combout\);

-- Location: LCCOMB_X114_Y54_N16
\output|a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|a1~0_combout\ = (\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & (\G1:0:G2:stage1|mux4_1|Mux0~1_combout\ & (\G1:3:G3:stage2|mux4_1|Mux0~1_combout\ & \G1:2:G3:stage2|mux4_1|Mux0~2_combout\))) # (!\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & 
-- (\G1:2:G3:stage2|mux4_1|Mux0~2_combout\ $ (((\G1:3:G3:stage2|mux4_1|Mux0~1_combout\) # (!\G1:0:G2:stage1|mux4_1|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:1:G3:stage2|mux4_1|Mux0~1_combout\,
	datab => \G1:0:G2:stage1|mux4_1|Mux0~1_combout\,
	datac => \G1:3:G3:stage2|mux4_1|Mux0~1_combout\,
	datad => \G1:2:G3:stage2|mux4_1|Mux0~2_combout\,
	combout => \output|a1~0_combout\);

-- Location: LCCOMB_X114_Y54_N18
\output|b1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|b1~0_combout\ = (\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & ((\G1:0:G2:stage1|mux4_1|Mux0~1_combout\ & (\G1:3:G3:stage2|mux4_1|Mux0~1_combout\)) # (!\G1:0:G2:stage1|mux4_1|Mux0~1_combout\ & ((!\G1:2:G3:stage2|mux4_1|Mux0~2_combout\))))) # 
-- (!\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & (!\G1:2:G3:stage2|mux4_1|Mux0~2_combout\ & (\G1:0:G2:stage1|mux4_1|Mux0~1_combout\ $ (\G1:3:G3:stage2|mux4_1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:1:G3:stage2|mux4_1|Mux0~1_combout\,
	datab => \G1:0:G2:stage1|mux4_1|Mux0~1_combout\,
	datac => \G1:3:G3:stage2|mux4_1|Mux0~1_combout\,
	datad => \G1:2:G3:stage2|mux4_1|Mux0~2_combout\,
	combout => \output|b1~0_combout\);

-- Location: LCCOMB_X114_Y54_N12
\output|c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|c1~0_combout\ = (\G1:3:G3:stage2|mux4_1|Mux0~1_combout\ & (!\G1:2:G3:stage2|mux4_1|Mux0~2_combout\ & ((\G1:1:G3:stage2|mux4_1|Mux0~1_combout\) # (!\G1:0:G2:stage1|mux4_1|Mux0~1_combout\)))) # (!\G1:3:G3:stage2|mux4_1|Mux0~1_combout\ & 
-- (\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & (!\G1:0:G2:stage1|mux4_1|Mux0~1_combout\ & \G1:2:G3:stage2|mux4_1|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:1:G3:stage2|mux4_1|Mux0~1_combout\,
	datab => \G1:0:G2:stage1|mux4_1|Mux0~1_combout\,
	datac => \G1:3:G3:stage2|mux4_1|Mux0~1_combout\,
	datad => \G1:2:G3:stage2|mux4_1|Mux0~2_combout\,
	combout => \output|c1~0_combout\);

-- Location: LCCOMB_X114_Y54_N30
\output|d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|d1~0_combout\ = (\G1:0:G2:stage1|mux4_1|Mux0~1_combout\ & (\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ $ (((\G1:2:G3:stage2|mux4_1|Mux0~2_combout\))))) # (!\G1:0:G2:stage1|mux4_1|Mux0~1_combout\ & ((\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & 
-- (\G1:3:G3:stage2|mux4_1|Mux0~1_combout\ & \G1:2:G3:stage2|mux4_1|Mux0~2_combout\)) # (!\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & (!\G1:3:G3:stage2|mux4_1|Mux0~1_combout\ & !\G1:2:G3:stage2|mux4_1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:1:G3:stage2|mux4_1|Mux0~1_combout\,
	datab => \G1:0:G2:stage1|mux4_1|Mux0~1_combout\,
	datac => \G1:3:G3:stage2|mux4_1|Mux0~1_combout\,
	datad => \G1:2:G3:stage2|mux4_1|Mux0~2_combout\,
	combout => \output|d1~0_combout\);

-- Location: LCCOMB_X114_Y54_N8
\output|e1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|e1~0_combout\ = (\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & (\G1:0:G2:stage1|mux4_1|Mux0~1_combout\ & (!\G1:3:G3:stage2|mux4_1|Mux0~1_combout\))) # (!\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & ((\G1:2:G3:stage2|mux4_1|Mux0~2_combout\ & 
-- (\G1:0:G2:stage1|mux4_1|Mux0~1_combout\)) # (!\G1:2:G3:stage2|mux4_1|Mux0~2_combout\ & ((!\G1:3:G3:stage2|mux4_1|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:1:G3:stage2|mux4_1|Mux0~1_combout\,
	datab => \G1:0:G2:stage1|mux4_1|Mux0~1_combout\,
	datac => \G1:3:G3:stage2|mux4_1|Mux0~1_combout\,
	datad => \G1:2:G3:stage2|mux4_1|Mux0~2_combout\,
	combout => \output|e1~0_combout\);

-- Location: LCCOMB_X114_Y54_N26
\output|f1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|f1~0_combout\ = (\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & (!\G1:3:G3:stage2|mux4_1|Mux0~1_combout\ & ((\G1:0:G2:stage1|mux4_1|Mux0~1_combout\) # (\G1:2:G3:stage2|mux4_1|Mux0~2_combout\)))) # (!\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & 
-- ((\G1:3:G3:stage2|mux4_1|Mux0~1_combout\ & ((!\G1:2:G3:stage2|mux4_1|Mux0~2_combout\))) # (!\G1:3:G3:stage2|mux4_1|Mux0~1_combout\ & (\G1:0:G2:stage1|mux4_1|Mux0~1_combout\ & \G1:2:G3:stage2|mux4_1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:1:G3:stage2|mux4_1|Mux0~1_combout\,
	datab => \G1:0:G2:stage1|mux4_1|Mux0~1_combout\,
	datac => \G1:3:G3:stage2|mux4_1|Mux0~1_combout\,
	datad => \G1:2:G3:stage2|mux4_1|Mux0~2_combout\,
	combout => \output|f1~0_combout\);

-- Location: LCCOMB_X114_Y54_N28
\output|g1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|g1~combout\ = (!\G1:3:G3:stage2|mux4_1|Mux0~1_combout\ & ((\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & (\G1:0:G2:stage1|mux4_1|Mux0~1_combout\ & !\G1:2:G3:stage2|mux4_1|Mux0~2_combout\)) # (!\G1:1:G3:stage2|mux4_1|Mux0~1_combout\ & 
-- ((\G1:2:G3:stage2|mux4_1|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:1:G3:stage2|mux4_1|Mux0~1_combout\,
	datab => \G1:0:G2:stage1|mux4_1|Mux0~1_combout\,
	datac => \G1:3:G3:stage2|mux4_1|Mux0~1_combout\,
	datad => \G1:2:G3:stage2|mux4_1|Mux0~2_combout\,
	combout => \output|g1~combout\);

-- Location: LCCOMB_X114_Y15_N4
\G1:5:G3:stage2|mux4_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:5:G3:stage2|mux4_1|Mux0~0_combout\ = \A[5]~input_o\ $ (\ALUctrl[3]~input_o\ $ (((\ALUctrl[1]~input_o\ & \G1:4:G3:stage2|add1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[1]~input_o\,
	datab => \A[5]~input_o\,
	datac => \G1:4:G3:stage2|add1|cout~0_combout\,
	datad => \ALUctrl[3]~input_o\,
	combout => \G1:5:G3:stage2|mux4_1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y15_N14
\G1:5:G3:stage2|mux4_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:5:G3:stage2|mux4_1|Mux0~1_combout\ = (\G1:5:G3:stage2|mux4_1|Mux0~0_combout\ & (\ALUctrl[1]~input_o\ $ (((\ALUctrl[0]~input_o\) # (\G1:5:G3:stage2|mux2_2|f~0_combout\))))) # (!\G1:5:G3:stage2|mux4_1|Mux0~0_combout\ & 
-- (\G1:5:G3:stage2|mux2_2|f~0_combout\ & (\ALUctrl[1]~input_o\ $ (\ALUctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[1]~input_o\,
	datab => \G1:5:G3:stage2|mux4_1|Mux0~0_combout\,
	datac => \ALUctrl[0]~input_o\,
	datad => \G1:5:G3:stage2|mux2_2|f~0_combout\,
	combout => \G1:5:G3:stage2|mux4_1|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y15_N0
\G1:6:G4:stage3|mux4_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:6:G4:stage3|mux4_1|Mux0~0_combout\ = (\G1:6:G4:stage3|mux2_2|f~0_combout\ & ((\ALUctrl[0]~input_o\) # (\A[6]~input_o\ $ (\ALUctrl[3]~input_o\)))) # (!\G1:6:G4:stage3|mux2_2|f~0_combout\ & (\ALUctrl[0]~input_o\ & (\A[6]~input_o\ $ 
-- (\ALUctrl[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:6:G4:stage3|mux2_2|f~0_combout\,
	datab => \ALUctrl[0]~input_o\,
	datac => \A[6]~input_o\,
	datad => \ALUctrl[3]~input_o\,
	combout => \G1:6:G4:stage3|mux4_1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y15_N26
\G1:6:G4:stage3|mux4_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:6:G4:stage3|mux4_1|Mux0~1_combout\ = (\ALUctrl[1]~input_o\ & (((!\ALUctrl[0]~input_o\ & \G1:6:G4:stage3|add1|s~combout\)))) # (!\ALUctrl[1]~input_o\ & (\G1:6:G4:stage3|mux4_1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[1]~input_o\,
	datab => \G1:6:G4:stage3|mux4_1|Mux0~0_combout\,
	datac => \ALUctrl[0]~input_o\,
	datad => \G1:6:G4:stage3|add1|s~combout\,
	combout => \G1:6:G4:stage3|mux4_1|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y15_N28
\G1:4:G3:stage2|mux4_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:4:G3:stage2|mux4_1|Mux0~0_combout\ = \ALUctrl[3]~input_o\ $ (\A[4]~input_o\ $ (((\G1:3:G3:stage2|add1|cout~0_combout\ & \ALUctrl[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[3]~input_o\,
	datab => \G1:3:G3:stage2|add1|cout~0_combout\,
	datac => \ALUctrl[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \G1:4:G3:stage2|mux4_1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y15_N22
\G1:4:G3:stage2|mux4_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1:4:G3:stage2|mux4_1|Mux0~1_combout\ = (\G1:4:G3:stage2|mux2_2|f~0_combout\ & (\ALUctrl[1]~input_o\ $ (((\ALUctrl[0]~input_o\) # (\G1:4:G3:stage2|mux4_1|Mux0~0_combout\))))) # (!\G1:4:G3:stage2|mux2_2|f~0_combout\ & 
-- (\G1:4:G3:stage2|mux4_1|Mux0~0_combout\ & (\ALUctrl[1]~input_o\ $ (\ALUctrl[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUctrl[1]~input_o\,
	datab => \G1:4:G3:stage2|mux2_2|f~0_combout\,
	datac => \ALUctrl[0]~input_o\,
	datad => \G1:4:G3:stage2|mux4_1|Mux0~0_combout\,
	combout => \G1:4:G3:stage2|mux4_1|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y22_N0
\output|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|a~0_combout\ = (\G1:5:G3:stage2|mux4_1|Mux0~1_combout\) # (\G1:6:G4:stage3|mux4_1|Mux0~1_combout\ $ (!\G1:4:G3:stage2|mux4_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G3:stage2|mux4_1|Mux0~1_combout\,
	datac => \G1:6:G4:stage3|mux4_1|Mux0~1_combout\,
	datad => \G1:4:G3:stage2|mux4_1|Mux0~1_combout\,
	combout => \output|a~0_combout\);

-- Location: LCCOMB_X114_Y22_N10
\output|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|b~0_combout\ = (\G1:5:G3:stage2|mux4_1|Mux0~1_combout\ $ (!\G1:4:G3:stage2|mux4_1|Mux0~1_combout\)) # (!\G1:6:G4:stage3|mux4_1|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G3:stage2|mux4_1|Mux0~1_combout\,
	datac => \G1:6:G4:stage3|mux4_1|Mux0~1_combout\,
	datad => \G1:4:G3:stage2|mux4_1|Mux0~1_combout\,
	combout => \output|b~0_combout\);

-- Location: LCCOMB_X114_Y22_N12
\output|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|c~0_combout\ = (\G1:5:G3:stage2|mux4_1|Mux0~1_combout\ & (!\G1:6:G4:stage3|mux4_1|Mux0~1_combout\ & !\G1:4:G3:stage2|mux4_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G3:stage2|mux4_1|Mux0~1_combout\,
	datac => \G1:6:G4:stage3|mux4_1|Mux0~1_combout\,
	datad => \G1:4:G3:stage2|mux4_1|Mux0~1_combout\,
	combout => \output|c~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\output|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|d~0_combout\ = (\G1:5:G3:stage2|mux4_1|Mux0~1_combout\ & (\G1:6:G4:stage3|mux4_1|Mux0~1_combout\ & \G1:4:G3:stage2|mux4_1|Mux0~1_combout\)) # (!\G1:5:G3:stage2|mux4_1|Mux0~1_combout\ & (\G1:6:G4:stage3|mux4_1|Mux0~1_combout\ $ 
-- (\G1:4:G3:stage2|mux4_1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G3:stage2|mux4_1|Mux0~1_combout\,
	datac => \G1:6:G4:stage3|mux4_1|Mux0~1_combout\,
	datad => \G1:4:G3:stage2|mux4_1|Mux0~1_combout\,
	combout => \output|d~0_combout\);

-- Location: LCCOMB_X114_Y22_N8
\output|e\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|e~combout\ = (\G1:4:G3:stage2|mux4_1|Mux0~1_combout\) # ((!\G1:5:G3:stage2|mux4_1|Mux0~1_combout\ & \G1:6:G4:stage3|mux4_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G3:stage2|mux4_1|Mux0~1_combout\,
	datac => \G1:6:G4:stage3|mux4_1|Mux0~1_combout\,
	datad => \G1:4:G3:stage2|mux4_1|Mux0~1_combout\,
	combout => \output|e~combout\);

-- Location: LCCOMB_X114_Y22_N2
\output|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|f~0_combout\ = (\G1:5:G3:stage2|mux4_1|Mux0~1_combout\ & ((\G1:4:G3:stage2|mux4_1|Mux0~1_combout\) # (!\G1:6:G4:stage3|mux4_1|Mux0~1_combout\))) # (!\G1:5:G3:stage2|mux4_1|Mux0~1_combout\ & (!\G1:6:G4:stage3|mux4_1|Mux0~1_combout\ & 
-- \G1:4:G3:stage2|mux4_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G3:stage2|mux4_1|Mux0~1_combout\,
	datac => \G1:6:G4:stage3|mux4_1|Mux0~1_combout\,
	datad => \G1:4:G3:stage2|mux4_1|Mux0~1_combout\,
	combout => \output|f~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\output|g\ : cycloneive_lcell_comb
-- Equation(s):
-- \output|g~combout\ = (\G1:5:G3:stage2|mux4_1|Mux0~1_combout\ & (\G1:6:G4:stage3|mux4_1|Mux0~1_combout\ & \G1:4:G3:stage2|mux4_1|Mux0~1_combout\)) # (!\G1:5:G3:stage2|mux4_1|Mux0~1_combout\ & (!\G1:6:G4:stage3|mux4_1|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1:5:G3:stage2|mux4_1|Mux0~1_combout\,
	datac => \G1:6:G4:stage3|mux4_1|Mux0~1_combout\,
	datad => \G1:4:G3:stage2|mux4_1|Mux0~1_combout\,
	combout => \output|g~combout\);

ww_out1 <= \out1~output_o\;

ww_out2 <= \out2~output_o\;

ww_out3 <= \out3~output_o\;

ww_out4 <= \out4~output_o\;

ww_out5 <= \out5~output_o\;

ww_out6 <= \out6~output_o\;

ww_out7 <= \out7~output_o\;

ww_out8 <= \out8~output_o\;

ww_out9 <= \out9~output_o\;

ww_out10 <= \out10~output_o\;

ww_out11 <= \out11~output_o\;

ww_out12 <= \out12~output_o\;

ww_out13 <= \out13~output_o\;

ww_out14 <= \out14~output_o\;
END structure;


