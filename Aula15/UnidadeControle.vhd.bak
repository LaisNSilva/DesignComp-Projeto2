library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadeControle is
	port (
			CodigoBinario : in  STD_LOGIC_VECTOR(5 downto 0);
			Saida: out STD_LOGIC_VECTOR(7 downto 0));
end entity;

architecture arch of UnidadeControle is
begin

	with CodigoBinario (5 downto 0) select
		Saida <= "00000000" when "000000", 
				"01011010" when "100011",
			   "00110001" when "101011",
			   "00000100" when "000100",	
				"00000000" when others;
	
end architecture;