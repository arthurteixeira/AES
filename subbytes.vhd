-- Quartus II VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subBytes is

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

end entity;

architecture rtl of subBytes is

signal v1, V2, V3, V4, V5, V6, V7, V8, V9, v10, v11, V12, V13, V14, V15, V16 : std_logic_vector(7 downto 0);
signal r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16 : std_logic_vector(7 downto 0);
signal outSubBytes_reg : std_logic_vector(DATA_WIDTH-1 downto 0);

component sbox is

	port(
		byte1		      : in 	std_logic_vector(7 downto 0);
		byte2		      : in 	std_logic_vector(7 downto 0);
		byte3		      : in 	std_logic_vector(7 downto 0);
		byte4		      : in 	std_logic_vector(7 downto 0);
		byte5		      : in 	std_logic_vector(7 downto 0);
		byte6		      : in 	std_logic_vector(7 downto 0);
		byte7		      : in 	std_logic_vector(7 downto 0);
		byte8		      : in 	std_logic_vector(7 downto 0);
		byte9		      : in 	std_logic_vector(7 downto 0);
		byte10		   : in 	std_logic_vector(7 downto 0);
		byte11		   : in 	std_logic_vector(7 downto 0);
		byte12		   : in 	std_logic_vector(7 downto 0);
		byte13		   : in 	std_logic_vector(7 downto 0);
		byte14		   : in 	std_logic_vector(7 downto 0);
		byte15		   : in 	std_logic_vector(7 downto 0);
		byte16		   : in 	std_logic_vector(7 downto 0);
		out1				: out 	std_logic_vector(7 downto 0);	
		out2				: out 	std_logic_vector(7 downto 0);
		out3				: out 	std_logic_vector(7 downto 0);
		out4				: out 	std_logic_vector(7 downto 0);
		out5				: out 	std_logic_vector(7 downto 0);
		out6				: out 	std_logic_vector(7 downto 0);
		out7				: out 	std_logic_vector(7 downto 0);
		out8				: out 	std_logic_vector(7 downto 0);
		out9				: out 	std_logic_vector(7 downto 0);
		out10				: out 	std_logic_vector(7 downto 0);
		out11				: out 	std_logic_vector(7 downto 0);
		out12				: out 	std_logic_vector(7 downto 0);
		out13				: out 	std_logic_vector(7 downto 0);
		out14				: out 	std_logic_vector(7 downto 0);
		out15				: out 	std_logic_vector(7 downto 0);
		out16				: out 	std_logic_vector(7 downto 0)		
	);
	
end component;
	
begin
	
	v1  <= theText(127 downto 120);
	v2  <= theText(119 downto 112);
	v3  <= theText(111 downto 104);
	v4  <= theText(103 downto 96);
	v5  <= theText(95 downto 88);
	v6  <= theText(87 downto 80);
	v7  <= theText(79 downto 72);
	v8  <= theText(71 downto 64);
	v9  <= theText(63 downto 56);
	v10 <= theText(55 downto 48);
	v11 <= theText(47 downto 40);
	v12 <= theText(39 downto 32);
	v13 <= theText(31 downto 24);
	v14 <= theText(23 downto 16);
	v15 <= theText(15 downto 8);
	v16 <= theText(7 downto 0);

	outSubBytes_reg(127 downto 120) <= r1;
	outSubBytes_reg(119 downto 112) <= r2;
	outSubBytes_reg(111 downto 104) <= r3;
	outSubBytes_reg(103 downto 96) <= r4;
	outSubBytes_reg(95 downto 88) <= r5;
	outSubBytes_reg(87 downto 80) <= r6;
	outSubBytes_reg(79 downto 72) <= r7;
	outSubBytes_reg(71 downto 64) <= r8;
	outSubBytes_reg(63 downto 56) <= r9;
	outSubBytes_reg(55 downto 48) <= r10;
	outSubBytes_reg(47 downto 40) <= r11;
	outSubBytes_reg(39 downto 32) <= r12;
	outSubBytes_reg(31 downto 24) <= r13;
	outSubBytes_reg(23 downto 16) <= r14;
	outSubBytes_reg(15 downto 8) <= r15;
	outSubBytes_reg(7 downto 0) <= r16;
	
process(clk)
begin
	if(rising_edge(clk)) then
		outSubBytes <= outSubBytes_reg;
	end if;
end process;

sub1: sbox
		port map (
			byte1 => v1,
			byte2 => v2,
			byte3 => v3,
			byte4 => v4,
			byte5 => v5,
			byte6 => v6,
			byte7 => v7,
			byte8 => v8,
			byte9 => v9,
			byte10 => v10,
			byte11 => v11,
			byte12 => v12,
			byte13 => v13,
			byte14 => v14,
			byte15 => v15,
			byte16 => v16,
			out1 => r1,
			out2 => r2,
			out3 => r3,
			out4 => r4,
			out5 => r5,
			out6 => r6,
			out7 => r7,
			out8 => r8,
			out9 => r9,
			out10 => r10,
			out11 => r11,
			out12 => r12,
			out13 => r13,
			out14 => r14,
			out15 => r15,
			out16 => r16
		);


end rtl;
