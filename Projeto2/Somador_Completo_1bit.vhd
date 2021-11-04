library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity Somador_Completo_1bit is
    generic ( larguraDados : natural := 1 );
    port (
      entrada_A, entrada_B, C_in:  in STD_LOGIC;
      soma, C_out:    out STD_LOGIC;
    );
end entity;

architecture comportamento of Somador_Completo_1bit is
	signal saida_xor :  STD_LOGIC;

	
	begin
	
	     saida_xor <= entradaA xor entradaB;
		  
		  soma <= C_in xor saida_xor;
		  
		  C_out <= (C_in and saida_xor) or (entradaA and entradaB);
        
				
				
  

end architecture;