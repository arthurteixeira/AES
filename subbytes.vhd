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
		byte : in std_logic_vector(7 downto 0);
		y : out std_logic_vector(7 downto 0)
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
			byte => v1,
			y => r1
		);
sub2: sbox
		port map (
			byte => v2,
			y => r2
		);
sub3: sbox
		port map (
			byte => v3,
			y => r3
		);
sub4: sbox
		port map (
			byte => v4,
			y => r4
		);
sub5: sbox
		port map (
			byte => v5,
			y => r5
		);
sub6: sbox
		port map (
			byte => v6,
			y => r6
		);
sub7: sbox
		port map (
			byte => v7,
			y => r7
		);
sub8: sbox
		port map (
			byte => v8,
			y => r8
		);
sub9: sbox
		port map (
			byte => v9,
			y => r9
		);
sub10: sbox
		port map (
			byte => v10,
			y => r10
		);
sub11: sbox
		port map (
			byte => v11,
			y => r11
		);
sub12: sbox
		port map (
			byte => v12,
			y => r12
		);
sub13: sbox
		port map (
			byte => v13,
			y => r13
		);
sub14: sbox
		port map (
			byte => v14,
			y => r14
		);
sub15: sbox
		port map (
			byte => v15,
			y => r15
		);
sub16: sbox
		port map (
			byte => v16,
			y => r16
		);


end rtl;
