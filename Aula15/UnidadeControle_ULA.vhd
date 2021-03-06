library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadeControle_ULA is
	port (
			CodigoBinario : in  STD_LOGIC_VECTOR(1 downto 0);
			funct : in STD_LOGIC_VECTOR(5 downto 0);
			Saida: out STD_LOGIC);
end entity;

architecture arch of UnidadeControle_ULA is
begin

	with CodigoBinario (1 downto 0) select
		Saida <= '1' when "01", 
				'0' when "00",
			   not(funct(1)) when "10",
				'0' when others;
	
end architecture;