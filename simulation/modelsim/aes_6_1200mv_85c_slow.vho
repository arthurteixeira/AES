-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "10/08/2019 15:32:15"

-- 
-- Device: Altera EP3C25F324C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	aes IS
    PORT (
	clock : IN std_logic;
	plainText : IN std_logic_vector(31 DOWNTO 0);
	keyIni : IN std_logic_vector(31 DOWNTO 0);
	outSubBytes : OUT std_logic_vector(31 DOWNTO 0)
	);
END aes;

-- Design Ports Information
-- clock	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[0]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[4]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[6]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[9]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[10]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[11]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[12]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[13]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[14]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[15]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[16]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[17]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[18]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[19]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[20]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[21]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[22]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[23]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[24]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[25]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[26]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[27]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[28]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[29]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[30]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[31]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[4]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[5]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[8]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[9]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[11]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[12]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[13]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[14]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[15]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[16]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[17]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[18]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[19]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[20]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[21]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[22]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[23]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[24]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[25]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[26]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[27]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[28]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[29]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[30]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[31]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[6]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[8]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[9]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[11]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[12]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[13]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[14]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[15]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[16]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[17]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[18]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[19]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[20]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[21]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[22]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[23]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[24]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[25]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[26]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[27]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[28]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[29]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[30]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outSubBytes[31]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aes IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_plainText : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_keyIni : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outSubBytes : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \plainText[0]~input_o\ : std_logic;
SIGNAL \plainText[1]~input_o\ : std_logic;
SIGNAL \plainText[2]~input_o\ : std_logic;
SIGNAL \plainText[3]~input_o\ : std_logic;
SIGNAL \plainText[4]~input_o\ : std_logic;
SIGNAL \plainText[5]~input_o\ : std_logic;
SIGNAL \plainText[6]~input_o\ : std_logic;
SIGNAL \plainText[7]~input_o\ : std_logic;
SIGNAL \plainText[8]~input_o\ : std_logic;
SIGNAL \plainText[9]~input_o\ : std_logic;
SIGNAL \plainText[10]~input_o\ : std_logic;
SIGNAL \plainText[11]~input_o\ : std_logic;
SIGNAL \plainText[12]~input_o\ : std_logic;
SIGNAL \plainText[13]~input_o\ : std_logic;
SIGNAL \plainText[14]~input_o\ : std_logic;
SIGNAL \plainText[15]~input_o\ : std_logic;
SIGNAL \plainText[16]~input_o\ : std_logic;
SIGNAL \plainText[17]~input_o\ : std_logic;
SIGNAL \plainText[18]~input_o\ : std_logic;
SIGNAL \plainText[19]~input_o\ : std_logic;
SIGNAL \plainText[20]~input_o\ : std_logic;
SIGNAL \plainText[21]~input_o\ : std_logic;
SIGNAL \plainText[22]~input_o\ : std_logic;
SIGNAL \plainText[23]~input_o\ : std_logic;
SIGNAL \plainText[24]~input_o\ : std_logic;
SIGNAL \plainText[25]~input_o\ : std_logic;
SIGNAL \plainText[26]~input_o\ : std_logic;
SIGNAL \plainText[27]~input_o\ : std_logic;
SIGNAL \plainText[28]~input_o\ : std_logic;
SIGNAL \plainText[29]~input_o\ : std_logic;
SIGNAL \plainText[30]~input_o\ : std_logic;
SIGNAL \plainText[31]~input_o\ : std_logic;
SIGNAL \keyIni[0]~input_o\ : std_logic;
SIGNAL \keyIni[1]~input_o\ : std_logic;
SIGNAL \keyIni[2]~input_o\ : std_logic;
SIGNAL \keyIni[3]~input_o\ : std_logic;
SIGNAL \keyIni[4]~input_o\ : std_logic;
SIGNAL \keyIni[5]~input_o\ : std_logic;
SIGNAL \keyIni[6]~input_o\ : std_logic;
SIGNAL \keyIni[7]~input_o\ : std_logic;
SIGNAL \keyIni[8]~input_o\ : std_logic;
SIGNAL \keyIni[9]~input_o\ : std_logic;
SIGNAL \keyIni[10]~input_o\ : std_logic;
SIGNAL \keyIni[11]~input_o\ : std_logic;
SIGNAL \keyIni[12]~input_o\ : std_logic;
SIGNAL \keyIni[13]~input_o\ : std_logic;
SIGNAL \keyIni[14]~input_o\ : std_logic;
SIGNAL \keyIni[15]~input_o\ : std_logic;
SIGNAL \keyIni[16]~input_o\ : std_logic;
SIGNAL \keyIni[17]~input_o\ : std_logic;
SIGNAL \keyIni[18]~input_o\ : std_logic;
SIGNAL \keyIni[19]~input_o\ : std_logic;
SIGNAL \keyIni[20]~input_o\ : std_logic;
SIGNAL \keyIni[21]~input_o\ : std_logic;
SIGNAL \keyIni[22]~input_o\ : std_logic;
SIGNAL \keyIni[23]~input_o\ : std_logic;
SIGNAL \keyIni[24]~input_o\ : std_logic;
SIGNAL \keyIni[25]~input_o\ : std_logic;
SIGNAL \keyIni[26]~input_o\ : std_logic;
SIGNAL \keyIni[27]~input_o\ : std_logic;
SIGNAL \keyIni[28]~input_o\ : std_logic;
SIGNAL \keyIni[29]~input_o\ : std_logic;
SIGNAL \keyIni[30]~input_o\ : std_logic;
SIGNAL \keyIni[31]~input_o\ : std_logic;
SIGNAL \outSubBytes[0]~output_o\ : std_logic;
SIGNAL \outSubBytes[1]~output_o\ : std_logic;
SIGNAL \outSubBytes[2]~output_o\ : std_logic;
SIGNAL \outSubBytes[3]~output_o\ : std_logic;
SIGNAL \outSubBytes[4]~output_o\ : std_logic;
SIGNAL \outSubBytes[5]~output_o\ : std_logic;
SIGNAL \outSubBytes[6]~output_o\ : std_logic;
SIGNAL \outSubBytes[7]~output_o\ : std_logic;
SIGNAL \outSubBytes[8]~output_o\ : std_logic;
SIGNAL \outSubBytes[9]~output_o\ : std_logic;
SIGNAL \outSubBytes[10]~output_o\ : std_logic;
SIGNAL \outSubBytes[11]~output_o\ : std_logic;
SIGNAL \outSubBytes[12]~output_o\ : std_logic;
SIGNAL \outSubBytes[13]~output_o\ : std_logic;
SIGNAL \outSubBytes[14]~output_o\ : std_logic;
SIGNAL \outSubBytes[15]~output_o\ : std_logic;
SIGNAL \outSubBytes[16]~output_o\ : std_logic;
SIGNAL \outSubBytes[17]~output_o\ : std_logic;
SIGNAL \outSubBytes[18]~output_o\ : std_logic;
SIGNAL \outSubBytes[19]~output_o\ : std_logic;
SIGNAL \outSubBytes[20]~output_o\ : std_logic;
SIGNAL \outSubBytes[21]~output_o\ : std_logic;
SIGNAL \outSubBytes[22]~output_o\ : std_logic;
SIGNAL \outSubBytes[23]~output_o\ : std_logic;
SIGNAL \outSubBytes[24]~output_o\ : std_logic;
SIGNAL \outSubBytes[25]~output_o\ : std_logic;
SIGNAL \outSubBytes[26]~output_o\ : std_logic;
SIGNAL \outSubBytes[27]~output_o\ : std_logic;
SIGNAL \outSubBytes[28]~output_o\ : std_logic;
SIGNAL \outSubBytes[29]~output_o\ : std_logic;
SIGNAL \outSubBytes[30]~output_o\ : std_logic;
SIGNAL \outSubBytes[31]~output_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_plainText <= plainText;
ww_keyIni <= keyIni;
outSubBytes <= ww_outSubBytes;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X53_Y22_N2
\outSubBytes[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[0]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\outSubBytes[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\outSubBytes[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\outSubBytes[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\outSubBytes[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\outSubBytes[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\outSubBytes[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\outSubBytes[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[7]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\outSubBytes[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[8]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\outSubBytes[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[9]~output_o\);

-- Location: IOOBUF_X36_Y34_N9
\outSubBytes[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[10]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\outSubBytes[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[11]~output_o\);

-- Location: IOOBUF_X23_Y34_N2
\outSubBytes[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[12]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\outSubBytes[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[13]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\outSubBytes[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[14]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\outSubBytes[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[15]~output_o\);

-- Location: IOOBUF_X36_Y34_N16
\outSubBytes[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[16]~output_o\);

-- Location: IOOBUF_X36_Y34_N23
\outSubBytes[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[17]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\outSubBytes[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[18]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\outSubBytes[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[19]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\outSubBytes[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[20]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\outSubBytes[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[21]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\outSubBytes[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[22]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\outSubBytes[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[23]~output_o\);

-- Location: IOOBUF_X29_Y34_N2
\outSubBytes[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[24]~output_o\);

-- Location: IOOBUF_X29_Y34_N9
\outSubBytes[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[25]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\outSubBytes[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[26]~output_o\);

-- Location: IOOBUF_X29_Y34_N23
\outSubBytes[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[27]~output_o\);

-- Location: IOOBUF_X27_Y34_N2
\outSubBytes[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[28]~output_o\);

-- Location: IOOBUF_X27_Y34_N9
\outSubBytes[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[29]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\outSubBytes[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[30]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\outSubBytes[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \outSubBytes[31]~output_o\);

-- Location: IOIBUF_X1_Y34_N8
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\plainText[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(0),
	o => \plainText[0]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\plainText[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(1),
	o => \plainText[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\plainText[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(2),
	o => \plainText[2]~input_o\);

-- Location: IOIBUF_X0_Y15_N8
\plainText[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(3),
	o => \plainText[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\plainText[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(4),
	o => \plainText[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\plainText[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(5),
	o => \plainText[5]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\plainText[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(6),
	o => \plainText[6]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\plainText[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(7),
	o => \plainText[7]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\plainText[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(8),
	o => \plainText[8]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\plainText[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(9),
	o => \plainText[9]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\plainText[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(10),
	o => \plainText[10]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\plainText[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(11),
	o => \plainText[11]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\plainText[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(12),
	o => \plainText[12]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\plainText[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(13),
	o => \plainText[13]~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\plainText[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(14),
	o => \plainText[14]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\plainText[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(15),
	o => \plainText[15]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\plainText[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(16),
	o => \plainText[16]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\plainText[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(17),
	o => \plainText[17]~input_o\);

-- Location: IOIBUF_X53_Y10_N15
\plainText[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(18),
	o => \plainText[18]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\plainText[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(19),
	o => \plainText[19]~input_o\);

-- Location: IOIBUF_X18_Y34_N8
\plainText[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(20),
	o => \plainText[20]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\plainText[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(21),
	o => \plainText[21]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\plainText[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(22),
	o => \plainText[22]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\plainText[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(23),
	o => \plainText[23]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\plainText[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(24),
	o => \plainText[24]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\plainText[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(25),
	o => \plainText[25]~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\plainText[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(26),
	o => \plainText[26]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\plainText[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(27),
	o => \plainText[27]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\plainText[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(28),
	o => \plainText[28]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\plainText[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(29),
	o => \plainText[29]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\plainText[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(30),
	o => \plainText[30]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\plainText[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(31),
	o => \plainText[31]~input_o\);

-- Location: IOIBUF_X9_Y34_N15
\keyIni[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(0),
	o => \keyIni[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\keyIni[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(1),
	o => \keyIni[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\keyIni[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(2),
	o => \keyIni[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\keyIni[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(3),
	o => \keyIni[3]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\keyIni[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(4),
	o => \keyIni[4]~input_o\);

-- Location: IOIBUF_X53_Y15_N1
\keyIni[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(5),
	o => \keyIni[5]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\keyIni[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(6),
	o => \keyIni[6]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\keyIni[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(7),
	o => \keyIni[7]~input_o\);

-- Location: IOIBUF_X53_Y23_N22
\keyIni[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(8),
	o => \keyIni[8]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\keyIni[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(9),
	o => \keyIni[9]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\keyIni[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(10),
	o => \keyIni[10]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\keyIni[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(11),
	o => \keyIni[11]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\keyIni[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(12),
	o => \keyIni[12]~input_o\);

-- Location: IOIBUF_X53_Y25_N8
\keyIni[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(13),
	o => \keyIni[13]~input_o\);

-- Location: IOIBUF_X0_Y29_N8
\keyIni[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(14),
	o => \keyIni[14]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\keyIni[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(15),
	o => \keyIni[15]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\keyIni[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(16),
	o => \keyIni[16]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\keyIni[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(17),
	o => \keyIni[17]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\keyIni[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(18),
	o => \keyIni[18]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\keyIni[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(19),
	o => \keyIni[19]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\keyIni[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(20),
	o => \keyIni[20]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\keyIni[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(21),
	o => \keyIni[21]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\keyIni[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(22),
	o => \keyIni[22]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\keyIni[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(23),
	o => \keyIni[23]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\keyIni[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(24),
	o => \keyIni[24]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\keyIni[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(25),
	o => \keyIni[25]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\keyIni[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(26),
	o => \keyIni[26]~input_o\);

-- Location: IOIBUF_X0_Y28_N1
\keyIni[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(27),
	o => \keyIni[27]~input_o\);

-- Location: IOIBUF_X0_Y28_N8
\keyIni[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(28),
	o => \keyIni[28]~input_o\);

-- Location: IOIBUF_X23_Y34_N8
\keyIni[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(29),
	o => \keyIni[29]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\keyIni[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(30),
	o => \keyIni[30]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\keyIni[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(31),
	o => \keyIni[31]~input_o\);

ww_outSubBytes(0) <= \outSubBytes[0]~output_o\;

ww_outSubBytes(1) <= \outSubBytes[1]~output_o\;

ww_outSubBytes(2) <= \outSubBytes[2]~output_o\;

ww_outSubBytes(3) <= \outSubBytes[3]~output_o\;

ww_outSubBytes(4) <= \outSubBytes[4]~output_o\;

ww_outSubBytes(5) <= \outSubBytes[5]~output_o\;

ww_outSubBytes(6) <= \outSubBytes[6]~output_o\;

ww_outSubBytes(7) <= \outSubBytes[7]~output_o\;

ww_outSubBytes(8) <= \outSubBytes[8]~output_o\;

ww_outSubBytes(9) <= \outSubBytes[9]~output_o\;

ww_outSubBytes(10) <= \outSubBytes[10]~output_o\;

ww_outSubBytes(11) <= \outSubBytes[11]~output_o\;

ww_outSubBytes(12) <= \outSubBytes[12]~output_o\;

ww_outSubBytes(13) <= \outSubBytes[13]~output_o\;

ww_outSubBytes(14) <= \outSubBytes[14]~output_o\;

ww_outSubBytes(15) <= \outSubBytes[15]~output_o\;

ww_outSubBytes(16) <= \outSubBytes[16]~output_o\;

ww_outSubBytes(17) <= \outSubBytes[17]~output_o\;

ww_outSubBytes(18) <= \outSubBytes[18]~output_o\;

ww_outSubBytes(19) <= \outSubBytes[19]~output_o\;

ww_outSubBytes(20) <= \outSubBytes[20]~output_o\;

ww_outSubBytes(21) <= \outSubBytes[21]~output_o\;

ww_outSubBytes(22) <= \outSubBytes[22]~output_o\;

ww_outSubBytes(23) <= \outSubBytes[23]~output_o\;

ww_outSubBytes(24) <= \outSubBytes[24]~output_o\;

ww_outSubBytes(25) <= \outSubBytes[25]~output_o\;

ww_outSubBytes(26) <= \outSubBytes[26]~output_o\;

ww_outSubBytes(27) <= \outSubBytes[27]~output_o\;

ww_outSubBytes(28) <= \outSubBytes[28]~output_o\;

ww_outSubBytes(29) <= \outSubBytes[29]~output_o\;

ww_outSubBytes(30) <= \outSubBytes[30]~output_o\;

ww_outSubBytes(31) <= \outSubBytes[31]~output_o\;
END structure;


