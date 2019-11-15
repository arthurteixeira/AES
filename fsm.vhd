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
		count       : in 	std_logic_vector(3 downto 0);
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
		enRegCount  : out std_logic;
		selMuxKeys  : out std_logic
	);

end entity;

architecture rtl of fsm is

	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9);

	-- Register to hold the current state
	signal state   : state_type;
	--signal c : std_logic_vector(3 downto 0);

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
					state <= s4;
				when s4=>
					state <= s5;
				when s5=>
					state <= s6;
				when s6=>
					state <= s7;
				when s7=>
					if count < "1010" then
						state <= s4;
					elsif count = "1010" then
						state <= s8;
					end if;
				when s8=>
					state <= s9;
				when s9=>
					state <= s0;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state, count)
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
				enRegCount  <= '0';
			when s1 =>
				selInicio   <= '0'; 
				selRound    <= '0';
				selKey      <= "0000";
				enRegInicio <= '0';
				enRegADR    <= '1';
				enRegSub    <= '0';
				enRegSR     <= '0';
				enRegMix    <= '0';
				enRegADR2   <= '0';
				enKeys      <= '0';
				selMuxKeys  <= '0';
				enRegCount  <= '0';
			when s2 =>
				selInicio   <= '0'; 
				selRound    <= '0';
				selKey      <= count;
				enRegInicio <= '0';
				enRegADR    <= '0';
				enRegSub    <= '1';
				enRegSR     <= '0';
				enRegMix    <= '0';
				enRegADR2   <= '0';
				enKeys      <= '0';
				selMuxKeys  <= '0';
				enRegCount  <= '1';
			when s3 =>
				selInicio   <= '0'; 
				selRound    <= '0';
				selKey      <= count;
				enRegInicio <= '0';
				enRegADR    <= '0';
				enRegSub    <= '0';
				enRegSR     <= '1';
				enRegMix    <= '0';
				enRegADR2   <= '0';
				enKeys      <= '1';
				selMuxKeys  <= '0';
				enRegCount  <= '0';
			when s4 =>
				selInicio   <= '1'; 
				selRound    <= '0';
				selKey      <= count;
				enRegInicio <= '0';
				enRegADR    <= '0';
				enRegSub    <= '0';
				enRegSR     <= '0';
				enRegMix    <= '1';
				enRegADR2   <= '0';
				enKeys      <= '0';
				selMuxKeys  <= '0';
				enRegCount  <= '0';
			when s5 =>
				selInicio   <= '1'; 
				selRound    <= '0';
				selKey      <= count;
				enRegInicio <= '0';
				enRegADR    <= '0';
				enRegSub    <= '0';
				enRegSR     <= '0';
				enRegMix    <= '0';
				enRegADR2   <= '1';
				enKeys      <= '0';
				selMuxKeys  <= '0';
				enRegCount  <= '0';
			when s6 =>
				selInicio   <= '1'; 
				selRound    <= '0';
				selKey      <= count;
				enRegInicio <= '0';
				enRegADR    <= '0';
				enRegSub    <= '1';
				enRegSR     <= '0';
				enRegMix    <= '0';
				enRegADR2   <= '0';
				enKeys      <= '0';
				selMuxKeys  <= '0';
				enRegCount  <= '1';
			when s7 =>
				selInicio   <= '1'; 
				selRound    <= '0';
				selKey      <= count;
				enRegInicio <= '0';
				enRegADR    <= '0';
				enRegSub    <= '0';
				enRegSR     <= '1';
				enRegMix    <= '0';
				enRegADR2   <= '0';
				enKeys      <= '1';
				selMuxKeys  <= '1';
				enRegCount  <= '0';
			when s8 =>
				selInicio   <= '1'; 
				selRound    <= '1';
				selKey      <= count;
				enRegInicio <= '0';
				enRegADR    <= '0';
				enRegSub    <= '0';
				enRegSR     <= '0';
				enRegMix    <= '0';
				enRegADR2   <= '0';
				enKeys      <= '0';
				selMuxKeys  <= '1';
				enRegCount  <= '0';
			when s9 =>
				selInicio   <= '1'; 
				selRound    <= '1';
				selKey      <= count;
				enRegInicio <= '0';
				enRegADR    <= '0';
				enRegSub    <= '0';
				enRegSR     <= '0';
				enRegMix    <= '0';
				enRegADR2   <= '1';
				enKeys      <= '0';
				selMuxKeys  <= '1';
				enRegCount  <= '0';
		end case;
	end process;

end rtl;
