-- Quartus II VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addRoundKey is

	generic
	(
		DATA_WIDTH : natural := 128
	);

	port 
	(
		clk                    : std_logic;
		rst                    : std_logic;
		enable                 : std_logic;
		plainText	           : in std_logic_vector((DATA_WIDTH-1) downto 0);
		keyIni            	  : in std_logic_vector((DATA_WIDTH-1) downto 0);
		outAddRoundKey         : out std_logic_vector((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of addRoundKey is

signal reg_f : std_logic_vector((DATA_WIDTH-1) downto 0);

begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(rst = '0') then
				outAddRoundKey <= (others=>'0');
			else
				if(enable = '1') then
					outAddRoundKey <= reg_f;
				end if;
			end if;
		end if;
	end process;
	reg_f <= plainText xor keyIni;
end rtl;
