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
		selInicio 		 		  : std_logic;
		--RAM_ADDR               : in std_logic_vector(3 downto 0);
		--RAM_DATA_OUT           : out std_logic_vector(7 downto 0);
		plainText	           : in std_logic_vector(127 downto 0);
		keyIni     	           : in std_logic_vector(127 downto 0);
		keyIni2     	           : in std_logic_vector(127 downto 0);
		outAes  : out std_logic_vector(127 downto 0)
	);
end entity;

architecture rtl of aes is

signal outAddRoundKey_sg, outAddRoundKey_sg2, outSubBytes_sg, outShiftRows_sg : std_logic_vector((DATA_WIDTH_TOP-1) downto 0);
signal outMuxInicio, outMixColumns_sg : std_logic_vector((DATA_WIDTH_TOP-1) downto 0);
signal reg_plainText, reg_keyIni : std_logic_vector((DATA_WIDTH_TOP-1) downto 0);

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

component shiftrows is
	port 
	(
		clk      : std_logic;
		ptext	   : in std_logic_vector(127 downto 0);
		outShiftRows : out std_logic_vector(127 downto 0)
	);
end component;

component mixcolumns is
	port 
	(
		clk             : std_logic;
		plainText	    : in std_logic_vector(127 downto 0);
		outMixColumns   : out std_logic_vector(127 downto 0)
	);
end component;

begin

--type ramPlainText is array (0 to 15) of std_logic_vector (7 downto 0);
--signal ram_pt: ramPlainText :=(
  -- x"32",x"88",x"31",x"e0",
	--x"43",x"5a",x"31",x"37",
	--x"f6",x"30",x"98",x"07",
	--x"a8",x"8d",x"a2",x"34"
   --); 
--RAM_DATA_OUT <= RAM(to_integer(unsigned(RAM_ADDR)));

-- conecta porta final
outAes <= outAddRoundKey_sg2;

-- Mux Inicio
outMuxInicio <= outAddRoundKey_sg when selInicio = '0' else
			       outAddRoundKey_sg2;

-- Regs iniciais

process(clock)
	begin
		if(rising_edge(clock)) then
			reg_plainText <= plainText;
			reg_keyIni <= keyIni;
		end if;
end process;			
					 
ARK: addRoundKey
		generic map (DATA_WIDTH => DATA_WIDTH_TOP)
		port map (
			clk => clock,
			plainText => reg_plainText,
			keyIni => reg_keyIni,
			outAddRoundKey => outAddRoundKey_sg
		);

SB: subbytes
		generic map (DATA_WIDTH => DATA_WIDTH_TOP)
		port map (
			clk => clock,
			theText => outMuxInicio,
			outSubBytes => outSubBytes_sg
		);

SR: shiftrows
	  port map(
			clk => clock,
			ptext => outSubBytes_sg,
			outShiftRows => outShiftRows_sg
	  );
	  
MC: mixcolumns
	  port map(
			clk => clock,
			plainText => outShiftRows_sg,
			outMixColumns => outMixColumns_sg
	  );	  
	  
ARK2: addRoundKey
		generic map (DATA_WIDTH => DATA_WIDTH_TOP)
		port map (
			clk => clock,
			plainText => outMixColumns_sg,
			keyIni => keyIni2,
			outAddRoundKey => outAddRoundKey_sg2
);

end rtl;
