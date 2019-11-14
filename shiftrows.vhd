library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shiftrows is

	port 
	(
		clk      : std_logic;
		rst      : std_logic;
		enable   : std_logic;
		ptext	   : in std_logic_vector(127 downto 0);
		outShiftRows : out std_logic_vector(127 downto 0)
	);

end entity;

architecture rtl of shiftrows is

signal outShiftRows_reg : std_logic_vector(127 downto 0);

begin

-- 6BC1BEE2 2E409F96 E93D7E11 7393172A 

outShiftRows_reg(127 downto 120) <= ptext(127 downto 120);
outShiftRows_reg(119 downto 112) <= ptext(87 downto 80); 
outShiftRows_reg(111 downto 104) <= ptext(47 downto 40); 
outShiftRows_reg(103 downto 96) <= ptext(7 downto 0); 
outShiftRows_reg(95 downto 88) <= ptext(95 downto 88); 
outShiftRows_reg(87 downto 80) <= ptext(55 downto 48);
outShiftRows_reg(79 downto 72) <= ptext(15 downto 8); 
outShiftRows_reg(71 downto 64) <= ptext(103 downto 96); 
outShiftRows_reg(63 downto 56) <= ptext(63 downto 56); 
outShiftRows_reg(55 downto 48) <= ptext(23 downto 16); 
outShiftRows_reg(47 downto 40) <= ptext(111 downto 104); 
outShiftRows_reg(39 downto 32) <= ptext(71 downto 64); 
outShiftRows_reg(31 downto 24) <= ptext(31 downto 24); 	
outShiftRows_reg(23 downto 16) <= ptext(119 downto 112); 
outShiftRows_reg(15 downto 8) <= ptext(79 downto 72); 
outShiftRows_reg(7 downto 0) <= ptext(39 downto 32);

process(clk)
begin
	if(rising_edge(clk)) then
		if(rst = '0') then 
			outShiftRows <= (others=>'0');
		else 
			if(enable = '1') then
				outShiftRows <= outShiftRows_reg;
			end if;
		end if;
	end if;
end process;

end rtl;
