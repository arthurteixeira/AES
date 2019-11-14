-- Quartus II VHDL Template
-- Unsigned Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity keys is

	port 
	(
		clk      : in std_logic;
		rst      : in std_logic;
		enable   : in std_logic;
		selMuxKey : in std_logic;
		key	   : in std_logic_vector(127 downto 0);
		selRcon  : in std_logic_vector(3 downto 0);
		outKey   : out std_logic_vector(127 downto 0)
	);

end entity;

architecture rtl of keys is

signal w0, w1, w2, w3 : std_logic_vector(31 downto 0);
signal r0, r1, r2, r3 : std_logic_vector(31 downto 0);
signal temp           : std_logic_vector(31 downto 0);
signal tempAfterSub   : std_logic_vector(31 downto 0);
signal afterRcon      : std_logic_vector(31 downto 0);
signal rcon : std_logic_vector(7 downto 0);
signal b1, b2, b3, b4, o1, o2, o3, o4 : std_logic_vector(7 downto 0);
signal reg_key : std_logic_vector(127 downto 0);
signal outMuxEntrada : std_logic_vector(127 downto 0);
signal outReg : std_logic_vector(127 downto 0);

component sboxKey is
	port(
		byte1		      : in 	std_logic_vector(7 downto 0);
		byte2		      : in 	std_logic_vector(7 downto 0);
		byte3		      : in 	std_logic_vector(7 downto 0);
		byte4		      : in 	std_logic_vector(7 downto 0);
		out1				: out std_logic_vector(7 downto 0);	
		out2				: out std_logic_vector(7 downto 0);
		out3				: out std_logic_vector(7 downto 0);
		out4				: out std_logic_vector(7 downto 0)	
		);
end component;

begin

	outMuxEntrada <= key when selMuxKey = '0' else
						  outReg when selMuxKey = '1';
						  
	rcon <= x"01" when selRcon = "0001" else
			  x"02" when selRcon = "0010" else
			  x"04" when selRcon = "0011" else
			  x"08" when selRcon = "0100" else
			  x"10" when selRcon = "0101" else
			  x"20" when selRcon = "0110" else
			  x"40" when selRcon = "0111" else
			  x"80" when selRcon = "1000" else
			  x"1b" when selRcon = "1001" else
			  x"36" when selRcon = "1010";
	
	w0 <= outMuxEntrada(127 downto 96);
	w1 <= outMuxEntrada(95  downto 64);
	w2 <= outMuxEntrada(63  downto 32);
	w3 <= outMuxEntrada(31  downto 0);
	
	temp <= w3(23 downto 16) & w3(15 downto 8) & w3(7 downto 0) & w3(31 downto 24); 
	
	b1 <= w3(23 downto 16);
	b2 <= w3(15 downto 8);
	b3 <= w3(7 downto 0);
	b4 <= w3(31 downto 24);
	
	tempAfterSub(31 downto 24) <= o1;
	tempAfterSub(23 downto 16) <= o2;
	tempAfterSub(15 downto 8) <= o3;
	tempAfterSub(7 downto 0) <= o4;

	afterRcon <= (tempAfterSub(31 downto 24) xor rcon) & tempAfterSub(23 downto 16) & tempAfterSub(15 downto 8) & tempAfterSub(7 downto 0);
	
	r0 <= afterRcon xor w0;
	r1 <= r0 xor w1;
	r2 <= r1 xor w2;
	r3 <= r2 xor w3;
	
	reg_key <= r0&r1&r2&r3;

	outKey <= outReg;
	
process(clk)
	begin
		if(rising_edge(clk)) then
			if(rst = '0') then
				outReg <= (others=>'0');
			else
				if(enable = '1') then
					outReg <= reg_key;
				end if;
			end if;
		end if;
	end process;
	
	SBK: sboxKey
		port map (
			byte1 => b1,
			byte2 => b2,
			byte3 => b3,
			byte4 => b4,
			out1 => o1,
			out2 => o2,
			out3 => o3,
			out4 => o4
		);	

end rtl;
