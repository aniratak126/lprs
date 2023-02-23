library ieee;
use ieee.std_logic_1164.all;

-- entitet sa deklaracijom svih ulaza i izlaza

entity MYFirstDigitalSystem is
port(
	iB3 : in std_logic; --o ili 1
	iB2 : in std_logic; --std_logic_vector(3 downto 0)
	iB1 : in std_logic;
	iB0 : in std_logic;
	oY  : out std_logic
	);
end entity;

-- arhitektura digitalnog sistema

architecture System of MYFirstDigitalSystem is
-- interni signali vidljivi samo u arhitekturi
signal sS1 : std_logic;
signal sS2 : std_logic;
signal sS3 : std_logic;
signal sS4 : std_logic;


begin

sS1 <= not(iB3) and iB1;
sS2 <= iB3 and not(iB2) and not(iB1);
sS3 <= not(iB3) and iB2 and iB0;
sS4 <= not(iB3) and not(iB2) and not(iB0);

oY <= sS1 or sS2 or sS3 or sS4;

end architecture;