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

-- DATE "09/12/2019 02:57:54"

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
	clk : IN std_logic;
	plainText : IN std_logic_vector(7 DOWNTO 0);
	keyIni : IN std_logic_vector(7 DOWNTO 0);
	textoCifrado : OUT std_logic_vector(7 DOWNTO 0)
	);
END aes;

-- Design Ports Information
-- clk	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[4]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plainText[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[6]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyIni[7]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- textoCifrado[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- textoCifrado[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- textoCifrado[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- textoCifrado[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- textoCifrado[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- textoCifrado[5]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- textoCifrado[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- textoCifrado[7]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_plainText : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_keyIni : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_textoCifrado : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \plainText[0]~input_o\ : std_logic;
SIGNAL \plainText[1]~input_o\ : std_logic;
SIGNAL \plainText[2]~input_o\ : std_logic;
SIGNAL \plainText[3]~input_o\ : std_logic;
SIGNAL \plainText[4]~input_o\ : std_logic;
SIGNAL \plainText[5]~input_o\ : std_logic;
SIGNAL \plainText[6]~input_o\ : std_logic;
SIGNAL \plainText[7]~input_o\ : std_logic;
SIGNAL \keyIni[0]~input_o\ : std_logic;
SIGNAL \keyIni[1]~input_o\ : std_logic;
SIGNAL \keyIni[2]~input_o\ : std_logic;
SIGNAL \keyIni[3]~input_o\ : std_logic;
SIGNAL \keyIni[4]~input_o\ : std_logic;
SIGNAL \keyIni[5]~input_o\ : std_logic;
SIGNAL \keyIni[6]~input_o\ : std_logic;
SIGNAL \keyIni[7]~input_o\ : std_logic;
SIGNAL \textoCifrado[0]~output_o\ : std_logic;
SIGNAL \textoCifrado[1]~output_o\ : std_logic;
SIGNAL \textoCifrado[2]~output_o\ : std_logic;
SIGNAL \textoCifrado[3]~output_o\ : std_logic;
SIGNAL \textoCifrado[4]~output_o\ : std_logic;
SIGNAL \textoCifrado[5]~output_o\ : std_logic;
SIGNAL \textoCifrado[6]~output_o\ : std_logic;
SIGNAL \textoCifrado[7]~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_plainText <= plainText;
ww_keyIni <= keyIni;
textoCifrado <= ww_textoCifrado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X53_Y20_N23
\textoCifrado[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \textoCifrado[0]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\textoCifrado[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \textoCifrado[1]~output_o\);

-- Location: IOOBUF_X36_Y34_N16
\textoCifrado[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \textoCifrado[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\textoCifrado[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \textoCifrado[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\textoCifrado[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \textoCifrado[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\textoCifrado[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \textoCifrado[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\textoCifrado[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \textoCifrado[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\textoCifrado[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \textoCifrado[7]~output_o\);

-- Location: IOIBUF_X53_Y17_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\plainText[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(0),
	o => \plainText[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\plainText[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(1),
	o => \plainText[1]~input_o\);

-- Location: IOIBUF_X53_Y19_N1
\plainText[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(2),
	o => \plainText[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\plainText[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(3),
	o => \plainText[3]~input_o\);

-- Location: IOIBUF_X53_Y11_N8
\plainText[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(4),
	o => \plainText[4]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\plainText[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(5),
	o => \plainText[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\plainText[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(6),
	o => \plainText[6]~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\plainText[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_plainText(7),
	o => \plainText[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\keyIni[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(0),
	o => \keyIni[0]~input_o\);

-- Location: IOIBUF_X16_Y34_N22
\keyIni[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(1),
	o => \keyIni[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\keyIni[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(2),
	o => \keyIni[2]~input_o\);

-- Location: IOIBUF_X0_Y29_N1
\keyIni[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(3),
	o => \keyIni[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\keyIni[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(4),
	o => \keyIni[4]~input_o\);

-- Location: IOIBUF_X53_Y26_N15
\keyIni[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(5),
	o => \keyIni[5]~input_o\);

-- Location: IOIBUF_X0_Y15_N8
\keyIni[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(6),
	o => \keyIni[6]~input_o\);

-- Location: IOIBUF_X47_Y0_N22
\keyIni[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyIni(7),
	o => \keyIni[7]~input_o\);

ww_textoCifrado(0) <= \textoCifrado[0]~output_o\;

ww_textoCifrado(1) <= \textoCifrado[1]~output_o\;

ww_textoCifrado(2) <= \textoCifrado[2]~output_o\;

ww_textoCifrado(3) <= \textoCifrado[3]~output_o\;

ww_textoCifrado(4) <= \textoCifrado[4]~output_o\;

ww_textoCifrado(5) <= \textoCifrado[5]~output_o\;

ww_textoCifrado(6) <= \textoCifrado[6]~output_o\;

ww_textoCifrado(7) <= \textoCifrado[7]~output_o\;
END structure;


