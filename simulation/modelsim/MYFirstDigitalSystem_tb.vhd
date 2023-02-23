library ieee;
use ieee.std_logic_1164.all;

entity MYFirstDigitalSystem_tb is
end entity;

architecture Test of MYFirstDigitalSystem_tb is
	
	signal sB3 : std_logic;
	signal sB2 : std_logic;
	signal sB1 : std_logic; -- mora imati signala koliko i prolaza koje testiramo
	signal sB0 : std_logic;
	signal sY  : std_logic;
	
	component MYFirstDigitalSystem is
port(
	iB3 : in std_logic; --o ili 1
	iB2 : in std_logic; --std_logic_vector(3 downto 0)
	iB1 : in std_logic;
	iB0 : in std_logic;
	oY  : out std_logic
	);
end component;

begin

	uut: MyFirstDigitalSystem port map (
		iB3 => sB3,
		iB2 => sB2,
		iB1 => sB1,
		iB0 => sB0,
		oY => sY
	);
	
	stimulus: process 
	begin 	
		sB3 <= '0';
		sB2 <= '0';
		sB1 <= '0';
		sB0 <= '0';
		wait for 100 ns;
		sB3 <= '1';
		sB2 <= '1';
		sB1 <= '1';
		sB0 <= '1';
		wait for 100 ns;
		sB3 <= '1';
		sB2 <= '1';
		sB1 <= '0';
		sB0 <= '0';
		wait for 100 ns;
		sB3 <= '0';
		sB2 <= '0';
		sB1 <= '1';
		sB0 <= '1';
		wait for 100 ns;
		sB3 <= '1';
		sB2 <= '0';
		sB1 <= '0';
		sB0 <= '1';
		wait for 100 ns;
		sB3 <= '1';
		sB2 <= '1';
		sB1 <= '0';
		sB0 <= '1';
		wait for 100 ns;
		sB3 <= '1';
		sB2 <= '0';
		sB1 <= '0';
		sB0 <= '0';
		wait for 100 ns;
		sB3 <= '1';
		sB2 <= '0';
		sB1 <= '1';
		sB0 <= '1';
		wait;
	end process;

end architecture;