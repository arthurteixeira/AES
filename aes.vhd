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
		reset                  : std_logic;
		selInicio 		 		  : std_logic;
		selRound               : std_logic;
		selKey                 : std_logic_vector(3 downto 0);
		enRegInicio            : std_logic;
		enRegADR               : std_logic;
		enRegSub               : std_logic;
		enRegSR                : std_logic;
		enRegMix               : std_logic;
		enRegADR2              : std_logic;
		outAes  : out std_logic_vector(127 downto 0)
	);
end entity;

architecture rtl of aes is

signal outAddRoundKey_sg, outAddRoundKey_sg2, outSubBytes_sg, outShiftRows_sg : std_logic_vector((DATA_WIDTH_TOP-1) downto 0);
signal outMuxInicio, outMuxRound, outKey_sg, outMixColumns_sg : std_logic_vector((DATA_WIDTH_TOP-1) downto 0);
signal reg_plainText, reg_keyIni : std_logic_vector((DATA_WIDTH_TOP-1) downto 0);
		
component addRoundKey is
	generic(
		DATA_WIDTH : natural := 128
	);
	
	port(
		clk                    : std_logic;
		rst                    : std_logic;
		enable                 : std_logic;
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
		rst          : std_logic;
		enable       : std_logic;
		theText	    : in std_logic_vector((DATA_WIDTH-1) downto 0);
		outSubBytes  : out std_logic_vector((DATA_WIDTH-1) downto 0)
	);
end component;

component shiftrows is
	port 
	(
		clk      : std_logic;
		rst      : std_logic;
		enable   : std_logic;
		ptext	   : in std_logic_vector(127 downto 0);
		outShiftRows : out std_logic_vector(127 downto 0)
	);
end component;

component mixcolumns is
	port 
	(
		clk             : std_logic;
		rst             : std_logic;
		enable          : std_logic;
		plainText	    : in std_logic_vector(127 downto 0);
		outMixColumns   : out std_logic_vector(127 downto 0)
	);
end component;

component key is
	port 
	(
		inKey 		      : in 	std_logic_vector(3 downto 0);
		outKey				: out 	std_logic_vector(127 downto 0)	
	);
end component;

component textKey is
	port 
	(
		outText				: out 	std_logic_vector(127 downto 0);
		outKey1				: out 	std_logic_vector(127 downto 0)			
	);
end component;

begin

-- conecta porta final
outAes <= outAddRoundKey_sg2;

-- Mux Inicio
outMuxInicio <= outAddRoundKey_sg when selInicio = '0' else
			       outAddRoundKey_sg2;

-- Mux round
outMuxRound <= outMixColumns_sg when selRound = '0' else
					outShiftRows_sg;

-- Regs iniciais
process(clock)
	begin
		if(rising_edge(clock)) then
			if(reset = '0') then
				reg_plainText <= (others=>'0');
				reg_keyIni <= (others=>'0');
			else 
				if(enRegInicio = '1') then
					reg_plainText <= x"328831E0435A3137F6309807A88DA234";
					reg_keyIni <= x"2B28AB097EAEF7CF15D2154F16A6883C";
				end if;
			end if;
		end if;
end process;			
					 
ARK: addRoundKey
		generic map (DATA_WIDTH => DATA_WIDTH_TOP)
		port map (
			clk => clock,
			rst => reset,
			enable => enRegADR,
			plainText => reg_plainText,
			keyIni => reg_keyIni,
			outAddRoundKey => outAddRoundKey_sg
		);

SB: subbytes
		generic map (DATA_WIDTH => DATA_WIDTH_TOP)
		port map (
			clk => clock,
			rst => reset,
			enable => enRegSub,
			theText => outMuxInicio,
			outSubBytes => outSubBytes_sg
		);

SR: shiftrows
	  port map(
			clk => clock,
			rst => reset,
			enable => enRegSR,
			ptext => outSubBytes_sg,
			outShiftRows => outShiftRows_sg
	  );
	  
MC: mixcolumns
	  port map(
			clk => clock,
			rst => reset,
			enable => enRegMix,
			plainText => outShiftRows_sg,
			outMixColumns => outMixColumns_sg
	  );	  

KEYS: key
	port map(
		inKey => selKey,
		outKey => outKey_sg		
		);
		
ARK2: addRoundKey
		generic map (DATA_WIDTH => DATA_WIDTH_TOP)
		port map (
			clk => clock,
			rst => reset,
			enable => enRegADR2,
			plainText => outMuxRound,
			keyIni => outKey_sg,
			outAddRoundKey => outAddRoundKey_sg2
);

end rtl;
