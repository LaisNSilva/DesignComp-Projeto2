library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadeControle is
	port (
			CodigoBinario : in  STD_LOGIC_VECTOR(5 downto 0);
			Saida: out STD_LOGIC_VECTOR(11 downto 0));
end entity;

architecture arch of UnidadeControle is
begin

	with CodigoBinario (5 downto 0) select
		Saida <= "101100000010" when "000000", 
				"100110101000" when "100011",
			   "100010000100" when "101011",
			   "100000010001" when "000100",
			   "110000000000" when "000010",
				"100101100000" when "001111",
				"000110000011" when "001101",
				"000000000000" when others;
	
end architecture;