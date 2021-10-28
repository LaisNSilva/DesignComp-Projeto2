library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadeControle is
	port (
			CodigoBinario : in  STD_LOGIC_VECTOR(5 downto 0);
			Saida: out STD_LOGIC_VECTOR(8 downto 0));
end entity;

architecture arch of UnidadeControle is
begin

	with CodigoBinario (5 downto 0) select
		Saida <= "000000000" when "000000", 
				"001011010" when "100011",
			   "000110001" when "101011",
			   "000000100" when "000100",
			   "100000000"	when "000010",
				"000000000" when others;
	
end architecture;