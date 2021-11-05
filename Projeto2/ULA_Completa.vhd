library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_Completa is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
		inverte_B: in STD_LOGIC;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flag_0: out std_logic
    );
end entity;

architecture comportamento of ULA_Completa is
	signal not_B : std_logic;
	signal bit_0 : std_logic;
	signal Cout_bit_0 : std_logic;
   
    begin
	 
	
	 
	 
	 ULA_B0 : entity work.ULA_B0_B30
        port map( entradaA => entradaA(0),
						entradaB => entradaB(0), 
						Cin => inverte_B, 
						inverte_B => inverte_B,
                  seletor => seletor,
						entrada_SLT => 
                 resultado => bit_0, 
					  Cout => Cout_bit_0); 	
					  
		ULA_B1 : entity work.ULA_B0_B30
		port map( entradaA => entradaA(1),
		entradaB => entradaB(1), 
		Cin => '0', 
		inverte_B => inverte_B,
		seletor => seletor,
		entrada_SLT => '0',
		resultado => bit_0, 
		Cout => Cout_bit_0); 	

     
end architecture;