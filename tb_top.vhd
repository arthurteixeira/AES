library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_top is
end entity;

architecture behavior of tb_top is

signal plainText_sg : std_logic_vector(127 downto 0) := x"6BC1BEE22E409F96E93D7E117393172A";
signal keyIni_sg : std_logic_vector(127 downto 0) := x"2B7E151628AED2A6ABF7158809CF4F3C";
signal clock_sg     : std_logic := '0';
signal reset_sg     : std_logic := '0';
signal outAes_sg    : std_logic_vector(127 downto 0);

component aes is
	port(
		plainText              : in std_logic_vector(127 downto 0);
		keyIni                 : in std_logic_vector(127 downto 0);
		clock                  : in std_logic;
		reset                  : in std_logic;
		outAes                 : out std_logic_vector(127 downto 0)
	);
end component aes;

begin

inst_aes : aes
	port map(
		plainText => plainText_sg,
		keyIni => keyIni_sg,
		clock => clock_sg,
		reset => reset_sg,
		outAes => outAes_sg
	);
--lll
clock_sg <= not clock_sg after 20 ns;

process is
	begin
		wait for 6.2 ns;
			reset_sg       <= '1';
		wait for 1720 ns;
		  reset_sg       <= '0';
		wait;	
end process;
	
end behavior;

