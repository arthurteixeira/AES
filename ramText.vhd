-- Quartus II VHDL Template
-- Single port RAM with single read/write address 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity ramText is

	port 
	(
		RAM_ADDR               : in std_logic_vector(3 downto 0);  
		RAM_DATA_OUT           : out std_logic_vector(127 downto 0)
	);

end entity;

architecture rtl of ramText is

type ramPlainText is array (0 to 15) of std_logic_vector (7 downto 0);
signal RAM: ramPlainText :=(
	x"32",x"88",x"31",x"e0",
	x"43",x"5a",x"31",x"37",
	x"f6",x"30",x"98",x"07",
	x"a8",x"8d",x"a2",x"34"
   );

begin

RAM_DATA_OUT(127 downto 120) <= RAM(to_integer("0000"));
RAM_DATA_OUT(119 downto 112) <= RAM(to_integer("0001"));
RAM_DATA_OUT(111 downto 104) <= RAM(to_integer("0010"));
RAM_DATA_OUT(103 downto 96)  <= RAM(to_integer("0011"));
RAM_DATA_OUT(95 downto 88)   <= RAM(to_integer("0100"));
RAM_DATA_OUT(87 downto 80)   <= RAM(to_integer("0101"));
RAM_DATA_OUT(79 downto 72)   <= RAM(to_integer("0110"));
RAM_DATA_OUT(71 downto 64)   <= RAM(to_integer("0111"));
RAM_DATA_OUT(63 downto 56)   <= RAM(to_integer("1000"));
RAM_DATA_OUT(55 downto 48)   <= RAM(to_integer("1001"));
RAM_DATA_OUT(47 downto 40)   <= RAM(to_integer("1010"));
RAM_DATA_OUT(39 downto 32)   <= RAM(to_integer("1011"));
RAM_DATA_OUT(31 downto 24)   <= RAM(to_integer("1100"));
RAM_DATA_OUT(23 downto 16)   <= RAM(to_integer("1101"));
RAM_DATA_OUT(15 downto 8)    <= RAM(to_integer("1110"));
RAM_DATA_OUT(7 downto 0)     <= RAM(to_integer("1111"));

end rtl;
