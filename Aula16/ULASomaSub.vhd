library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flag_0: out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal Saida_Mux_And_Or : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
	
	MUX_AND_OR: entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => entradaA AND entradaB,
                 entradaB_MUX =>  entradaA OR entradaB,
                 seletor_MUX => seletor(0),
                 saida_MUX => Saida_Mux_And_Or); 
					  
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
      saida <= soma when (seletor = '1') else subtracao;
		
		
		flag_0 <= '1' when (subtracao = "0000" and seletor = '0') else
					 '0';

end architecture;