--***************************************************************************
-- Based on the paper " Ultra High Throughput VLSI Architecture of H.265/HEVC
-- CABAC Encoder for UHDTV Applcations" by Dajiang Zhou et al, IEEE TCSVT 2015
--***************************************************************************
-- Libraries definitions for LUT rLPS
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity key is
	port(
		--reset				: in 	std_logic;
		--clock				: in 	std_logic;
		inKey 		      : in 	std_logic_vector(3 downto 0);
		outKey				: out 	std_logic_vector(127 downto 0)		
		);
end entity;
			
architecture behaviour of key is

type lut_rlps is array (integer range 0 to 10) of std_logic_vector(127 downto 0); --definition of the type for the four LUTS to be used.
signal lut_rlps_0		: lut_rlps; -- Lut for Range[7:6] = 00
begin

			lut_rlps_0(1)  <= x"a088232afa54a36cfe2c397617b13905";
			lut_rlps_0(2)  <= x"f27a5973c296355995b980f6f2437a7f";
			lut_rlps_0(3)  <= x"3d471e6d8016237a47fe7e887d3e443b";
			lut_rlps_0(4)  <= x"efa8b6db4452710ba55b25ad417f3b00";
			lut_rlps_0(5)  <= x"d47cca11d183f2f9c69db815f887bcbc";
			lut_rlps_0(6)  <= x"6d11dbca880bf900a33e86937afd41fd";
			lut_rlps_0(7)  <= x"4e5f844e545fa6a6f7c94fdc0ef3b24f";
			lut_rlps_0(8)  <= x"eab5317fd28d2b8d73baf52921d2602f";
			lut_rlps_0(9)  <= x"ac19285777fad15c66dc2900f321416e";
			lut_rlps_0(10) <= x"d0c9e1b614ee3f63f9250c0ca889c8a6";

outKey <= lut_rlps_0 (conv_integer(inKey));

end behaviour;