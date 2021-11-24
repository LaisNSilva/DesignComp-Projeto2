library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadeControle_ULA is
	port (
			ULAop : in  STD_LOGIC_VECTOR(1 downto 0);
			funct : in STD_LOGIC_VECTOR(5 downto 0);
			ULActrl: out STD_LOGIC_VECTOR(2 downto 0));
end entity;

architecture arch of UnidadeControle_ULA is
begin

		ULActrl <= "010" when (ULAop = "00") else 
					  "110" when (ULAop = "01") else
					  "001" when (ULAop = "11") else
					  "010" when (ULAop = "10" and funct = "100000") else
					  "110" when (ULAop = "10" and funct = "100010") else
					  "000" when (ULAop = "10" and funct = "100100") else
					  "001" when (ULAop = "10" and funct = "100101") else
					  "111" when (ULAop = "10" and funct = "101010") else
					  "000";
	
end architecture;