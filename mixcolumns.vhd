library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mixcolumns is

    Port 
	 ( 
			clk : std_logic;
			plainText : in std_logic_vector(127 downto 0);
			outMixColumns : out std_logic_vector(127 downto 0)	
	 );
	 
end entity;

architecture rtl of mixcolumns is   
    
subtype HALF_B is STD_LOGIC_VECTOR (8 downto 0);
type SHIFT is array (15 downto 0) of HALF_B;
signal shifted_2, shifted_3, xored : SHIFT; --auxiliares de processos
	-- shifted_2: auxiliar da multiplicação por 2 em GF(2^8)
	-- shifted_3: auxiliar da multiplicação por 3 em GF(2^8)
	-- xored: auxiliar 2 da multiplicação por 3
subtype MIN_B is STD_LOGIC_VECTOR (7 downto 0);
type MATRIX is array (15 downto 0) of MIN_B;
signal  c_in, c_out, mult_2, mult_3 : MATRIX; --resultados de processos
	-- c_in: matriz obtida da entrada
	-- c_out: matriz após operações, a ser vetorizada para a saída
	-- mult_2: matriz obtida da multiplicação por 2
	-- mult_3: matriz obtida da multiplicação por 3

signal outMixColumns_reg : std_logic_vector(127 downto 0);
	
begin

c_in(15) <= plainText(127 downto 120);
c_in(14) <= plainText(119 downto 112);
c_in(13) <= plainText(111 downto 104);
c_in(12) <= plainText(103 downto 96);
c_in(11) <= plainText(95 downto 88);
c_in(10) <= plainText(87 downto 80);
c_in(9)  <= plainText(79 downto 72);
c_in(8)  <= plainText(71 downto 64);
c_in(7)  <= plainText(63 downto 56);
c_in(6)  <= plainText(55 downto 48);
c_in(5)  <= plainText(47 downto 40);
c_in(4)  <= plainText(39 downto 32);
c_in(3)  <= plainText(31 downto 24);
c_in(2)  <= plainText(23 downto 16);
c_in(1)  <= plainText(15 downto 8);
c_in(0)  <= plainText(7 downto 0);
	
	--multiplicação por 2 (shift_left(X))
	mul_2: 
		PROCESS(c_in, shifted_2)
		BEGIN
			FOR i IN  15 DOWNTO 0 LOOP
				shifted_2(i) <= c_in(i) & '0';	
				IF (shifted_2(i)(8)='1') THEN -- overflow
					 mult_2(i) <= shifted_2(i)(7 downto 0) XOR "00011011"; 
				ELSE
					 mult_2(i) <= shifted_2(i)(7 downto 0);
				END IF;
			END LOOP;
		END PROCESS mul_2;
	
	--multiplicação por 3 (shift_left(X) xor X)
	mul_3: 
		PROCESS(c_in, shifted_3, xored)
		BEGIN
			FOR i IN  15 DOWNTO 0 LOOP
				shifted_3(i) <= c_in(i) & '0';	
				xored(i) <= shifted_3(i) XOR '0' & c_in(i);  
				IF (xored(i)(8)='1') THEN	-- overflow
					 mult_3(i) <= xored(i)(7 downto 0) XOR "00011011";
				ELSE
					 mult_3(i) <= xored(i)(7 downto 0);
				END IF;
			END LOOP;
		END PROCESS mul_3;
	
--coluna 1--
c_out(15)  <= mult_2(15) XOR mult_3(11) XOR c_in(7) XOR c_in(3);
c_out(11)  <= c_in(15) XOR mult_2(11) XOR mult_3(7) XOR c_in(3);
c_out(7)  <= c_in(15) XOR c_in(11) XOR mult_2(7) XOR mult_3(3);
c_out(3) <= mult_3(15) XOR c_in(11) XOR c_in(7) XOR mult_2(3);
--coluna 2--
c_out(14)  <= mult_2(14) XOR mult_3(10) XOR c_in(6) XOR c_in(2);
c_out(10)  <= c_in(14) XOR mult_2(10) XOR mult_3(6) XOR c_in(2);
c_out(6)  <= c_in(14) XOR c_in(10) XOR mult_2(6) XOR mult_3(2);
c_out(2) <= mult_3(14) XOR c_in(10) XOR c_in(6) XOR mult_2(2);
--coluna 3--
c_out(13)  <= mult_2(13) XOR mult_3(9) XOR c_in(5) XOR c_in(1);
c_out(9)  <= c_in(13) XOR mult_2(9) XOR mult_3(5) XOR c_in(1);
c_out(5)  <= c_in(13) XOR c_in(9) XOR mult_2(5) XOR mult_3(1);
c_out(1) <= mult_3(13) XOR c_in(9) XOR c_in(5) XOR mult_2(1);
--coluna 4--
c_out(12)  <= mult_2(12) XOR mult_3(8) XOR c_in(4) XOR c_in(0);
c_out(8)  <= c_in(12) XOR mult_2(8) XOR mult_3(4) XOR c_in(0);
c_out(4)  <= c_in(12) XOR c_in(8) XOR mult_2(4) XOR mult_3(0);
c_out(0) <= mult_3(12) XOR c_in(8) XOR c_in(4) XOR mult_2(0);
	
outMixColumns_reg(127 downto 120) <= c_out(15);
outMixColumns_reg(119 downto 112) <= c_out(14);
outMixColumns_reg(111 downto 104) <= c_out(13);
outMixColumns_reg(103 downto 96) <= c_out(12);
outMixColumns_reg(95 downto 88) <= c_out(11);
outMixColumns_reg(87 downto 80) <= c_out(10);
outMixColumns_reg(79 downto 72) <= c_out(9);
outMixColumns_reg(71 downto 64) <= c_out(8);
outMixColumns_reg(63 downto 56) <= c_out(7);
outMixColumns_reg(55 downto 48) <= c_out(6);
outMixColumns_reg(47 downto 40) <= c_out(5);
outMixColumns_reg(39 downto 32) <= c_out(4);
outMixColumns_reg(31 downto 24) <= c_out(3);
outMixColumns_reg(23 downto 16) <= c_out(2);
outMixColumns_reg(15 downto 8) <= c_out(1);
outMixColumns_reg(7 downto 0) <= c_out(0);

process(clk)
begin
	if(rising_edge(clk)) then
		outMixColumns <= outMixColumns_reg;
	end if;
end process;

end rtl;
