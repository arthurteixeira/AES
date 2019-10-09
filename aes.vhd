-- Quartus II VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aes is

	generic
	(
		DATA_WIDTH_TOP : natural := 128
	);

	port(
		clock                  : std_logic;
		keyIni     	           : in std_logic_vector(31 downto 0);
		outSubBytes  : out std_logic_vector(31 downto 0)
	);
end entity;

architecture rtl of aes is

signal plaintText_sg, keyIni_sg, outAddRoundKey_sg, outSubBytes_sg : std_logic_vector((DATA_WIDTH_TOP-1) downto 0);
signal plainText_reg, plainText : std_logic_vector((DATA_WIDTH_TOP-1) downto 0);

component addRoundKey is
	generic(
		DATA_WIDTH : natural := 128
	);
	
	port(
		clk                    : std_logic;
		plainText	           : in std_logic_vector((DATA_WIDTH-1) downto 0);
		keyIni     	           : in std_logic_vector((DATA_WIDTH-1) downto 0);
		outAddRoundKey         : out std_logic_vector((DATA_WIDTH-1) downto 0)
	);
end component;

component subbytes is
	generic
	(
		DATA_WIDTH : natural := 128
	);

	port 
	(
		clk          : std_logic;
		theText	    : in std_logic_vector((DATA_WIDTH-1) downto 0);
		outSubBytes  : out std_logic_vector((DATA_WIDTH-1) downto 0)
	);
end component;

component ramText is
	port 
	(
		RAM_DATA_OUT           : out std_logic_vector(127 downto 0)
	);
end component;

begin


ARK: addRoundKey
		generic map (DATA_WIDTH => DATA_WIDTH_TOP)
		port map (
			clk => clock,
			plainText => plaintText_sg,
			keyIni => keyIni_sg,
			outAddRoundKey => outAddRoundKey_sg
		);

SB: subbytes
		generic map (DATA_WIDTH => DATA_WIDTH_TOP)
		port map (
			clk => clock,
			theText => outAddRoundKey_sg,
			outSubBytes => outSubBytes_sg
		);
		
RT: ramText
		port map (
			RAM_DATA_OUT => plainText
		);
		
process(clock)
	begin
		if(rising_edge(clock)) then
			plainText_reg <= plainText;
		end if;
end process;

plaintText_sg <= plainText_reg;
	
end rtl;
