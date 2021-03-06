library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadeControle is
	port (
			CodigoBinario : in  STD_LOGIC_VECTOR(5 downto 0);
			Saida: out STD_LOGIC_VECTOR(9 downto 0));
end entity;

architecture arch of UnidadeControle is
begin

	with CodigoBinario (5 downto 0) select
		Saida <= "0110000010" when "000000", 
				"0011101000" when "100011",
			   "0001000100" when "101011",
			   "0000010001" when "000100",
			   "1000000000" when "000010",
				"0000000000" when others;
	
end architecture;