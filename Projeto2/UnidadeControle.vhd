library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadeControle is
	port (
			CodigoBinario : in  STD_LOGIC_VECTOR(5 downto 0);
			Saida: out STD_LOGIC_VECTOR(12 downto 0));
end entity;

architecture arch of UnidadeControle is
begin

	with CodigoBinario (5 downto 0) select
		Saida <= "0010110000001" when "000000", 
				"0010011010100" when "100011",
			   "0010001000010" when "101011",
			   "0010000001000" when "000100",
			   "0011000000000" when "000010",
				"0010010110000" when "001111",
				"0000011000000" when "001101",
				"0010110000000" when "001000",
				"0000011000000" when "001100",
				"0110000000000" when "000101",
				"0010011000000" when "001010",
				"0010011000000" when "001010",
				"0000000000000" when others;
	
end architecture;