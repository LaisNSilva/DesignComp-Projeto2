library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UnidadeControle_ULA is
	port (
			Tipo_R : in  STD_LOGIC;
			funct : in STD_LOGIC_VECTOR(5 downto 0);
			OpCode : in STD_LOGIC_VECTOR(5 downto 0);
			ULActrl: out STD_LOGIC_VECTOR(2 downto 0));
end entity;

architecture arch of UnidadeControle_ULA is
begin

		ULActrl <= "010" when (Tipo_R = '0' and OpCode = "100011") else --LW
					  "010" when (Tipo_R = '0' and OpCode = "101011") else --SW
					  "110" when (Tipo_R = '0' and OpCode = "000100") else --BEQ
					  "001" when (Tipo_R = '0' and OpCode = "001101") else --ORI
					  "000" when (Tipo_R = '0' and OpCode = "001100") else --ANDI
					  "110" when (Tipo_R = '0' and OpCode = "000101") else --BNE
					  "111" when (Tipo_R = '0' and OpCode = "001010") else --STLI
					  "010" when (Tipo_R = '0' and OpCode = "001000") else --ADDI
					  "000" when (Tipo_R = '1' and funct = "001000") else --JR
					  "010" when (Tipo_R = '1' and funct = "100000") else  --ADD
					  "110" when (Tipo_R = '1' and funct = "100010") else  --SUB
					  "000" when (Tipo_R = '1' and funct = "100100") else  --AND
					  "001" when (Tipo_R = '1' and funct = "100101") else  --OR
					  "111" when (Tipo_R = '1' and funct = "101010") else  --SLT
					  "000";
	
end architecture;