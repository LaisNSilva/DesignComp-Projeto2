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
		Saida <= "000000000000" when "0000", 
				"000000110010" when "0001", 
				"000000101010" when "0010",
				"000000100010" when "0011", 
				"000001110000" when "0100",
				"000000000001" when "0101",
				"010000000000" when "0110",
				"000010000000" when "0111",
				"000000100110" when "1000",
				"100100000000" when "1001",
				"001000000000" when "1010",
				"000000000000" when others;
	
end architecture;