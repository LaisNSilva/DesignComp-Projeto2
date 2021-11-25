library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadeControle is
	port (
			CodigoBinario : in  STD_LOGIC_VECTOR(5 downto 0);
			Funct : in  STD_LOGIC_VECTOR(5 downto 0);
			Saida: out STD_LOGIC_VECTOR(13 downto 0));
end entity;

architecture arch of UnidadeControle is
begin

	
		Saida <= "10100100000001" when (CodigoBinario = "000000" and Funct = "001000")else -- JR
		      "00100110000001" when CodigoBinario ="000000" else 
				"00100011010100" when CodigoBinario ="100011" else
			   "00100001000010" when CodigoBinario ="101011" else
			   "00100000001000" when CodigoBinario ="000100" else
			   "00110000000000" when CodigoBinario ="000010" else
				"00100010110000" when CodigoBinario ="001111" else
				"00000011000000" when CodigoBinario ="001101" else
				"00100110000000" when CodigoBinario ="001000" else
				"00000011000000" when CodigoBinario ="001100" else
				"01100000000000" when CodigoBinario ="000101" else
				"00100011000000" when CodigoBinario ="001010" else
				"00100011000000" when CodigoBinario ="001010" else
				"00101000100000" when CodigoBinario ="000011" else --JAL
				"00000000000000";
	
end architecture;