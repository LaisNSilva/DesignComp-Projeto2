library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity Somador_Completo_1bit is
    generic ( larguraDados : natural := 1 );
    port (
      entrada_A, entrada_B, C_in:  in STD_LOGIC;
      soma, C_out:    out STD_LOGIC
    );
end entity;

architecture comportamento of Somador_Completo_1bit is
	signal saida_xor :  STD_LOGIC;

	
	begin
	
	     saida_xor <= entrada_A xor entrada_B;
		  
		  soma <= C_in xor saida_xor;
		  
		  C_out <= (C_in and saida_xor) or (entrada_A and entrada_B);
        
				
				
  

end architecture;