library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_top is
end entity;

architecture behavior of tb_top is


signal clock_sg : std_logic := '0';
signal plainText_sg : std_logic_vector(127 downto 0) := x"328831E0435A3137F6309807A88DA234";--(0 => '0', others=>'0');
signal keyIni_sg : std_logic_vector(127 downto 0) :=  x"2B28AB097EAEF7CF15D2154F16A6883C";--(0 => '0', others=>'0');
signal outAes_sg : std_logic_vector(127 downto 0);

component aes is
	port(
		clock                  : std_logic;
		plainText	           : in std_logic_vector(127 downto 0);
		keyIni     	           : in std_logic_vector(127 downto 0);
		outAes  			  : out std_logic_vector(127 downto 0)
	);
end component aes;

begin

inst_aes : aes
	port map(
		clock => clock_sg,
		plainText => plainText_sg,
		keyIni => keyIni_sg,
		outAes => outAes_sg
	);
--lll
clock_sg <= not clock_sg after 20 ns;

process is
	begin			
		wait for 10 ns;
		 wait;
end process;
	
end behavior;
