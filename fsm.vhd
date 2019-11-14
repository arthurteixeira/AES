-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fsm is

	port(
		clk		   : in	std_logic;
		reset	      : in	std_logic;
		selInicio   : out std_logic;
		selRound    : out std_logic;
		selKey      : out std_logic_vector(3 downto 0);
		enRegInicio : out std_logic;
		enRegADR    : out std_logic;
		enRegSub    : out std_logic;
		enRegSR     : out std_logic;
		enRegMix    : out std_logic;
		enRegADR2   : out std_logic;
		enKeys      : out std_logic;
		selMuxKeys  : out std_logic
	);

end entity;

architecture rtl of fsm is

	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2, s3, s4, s5);

	-- Register to hold the current state
	signal state   : state_type;
	signal c : std_logic_vector(3 downto 0);

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '0' then
			state <= s0;
		elsif (rising_edge(clk)) then
			case state is
				when s0=>
						state <= s1;
				when s1=>
						state <= s2;
				when s2=>
						state <= s3;
				when s3=>
					if c < "1010" then
						state <= s4;
					elsif c = "1010" then 
						state <= s5;
					end if;
				when s4=>
					state <= s5;
				when s5=>
					if c < "1010" then
						state <= s2;
					elsif c = "1010" then 
						state <= s0;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when s0 =>
				selInicio   <= '0'; 
				selRound    <= '0';
				selKey      <= "0000";
				enRegInicio <= '1';
				enRegADR    <= '0';
				enRegSub    <= '0';
				enRegSR     <= '0';
				enRegMix    <= '0';
				enRegADR2   <= '0';
				enKeys      <= '0';
				selMuxKeys  <= '0';
				c           <= "0000";
			when s1 =>
				enRegADR <= '1';
				selInicio <= '0';
				enRegInicio <= '0';
			when s2 =>
				enRegADR <= '0';
				enRegSub <= '1';
				c <= c + '1';
				enRegADR2 <= '0';
			when s3 =>
				if c < "1010" then
					selRound <= '0';
				elsif c = "1010" then 
					selRound <= '1';
				end if;
				if c = "0001" then					
					selMuxKeys <= '0';
				elsif c > "0001" then 					
					selMuxKeys <= '1';
				end if;
				enRegSub <= '0';
				enRegSR <= '1';
				enKeys <= '1';
				selKey <= c;
			when s4 =>
				selMuxKeys <= '0';
				enKeys <= '0';
				enRegSR <= '0';
				enRegMix <= '1';
				selInicio <= '1';
			when s5 =>
				enKeys <= '0';
				enRegMix <= '0';
				enRegADR2 <= '1';
		end case;
	end process;

end rtl;
