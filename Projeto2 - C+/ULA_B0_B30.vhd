library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_B0_B30 is
    generic ( larguraDados : natural := 1 );
    port (
      entradaA, entradaB, Cin, inverte_B, entrada_SLT:  in STD_LOGIC;
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
      resultado, Cout:  out STD_LOGIC
    );
end entity;

architecture comportamento of ULA_B0_B30 is
	signal mux_and :  STD_LOGIC;
	signal mux_or : STD_LOGIC;
	signal mux_soma_sub : STD_LOGIC;
	signal vai_um : STD_LOGIC;
	signal B_sinal : STD_LOGIC;
	
	signal saida_mux : STD_LOGIC;
	
	begin
        mux_and    <= entradaA and B_sinal;
		  mux_or <= entradaA or B_sinal;
		  
		  MUX_INVERTE_B :  entity work.muxGenerico2x1_1bit  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => entradaB,
                 entradaB_MUX =>  not(entradaB),
                 seletor_MUX => inverte_B,
                 saida_MUX => B_sinal); 	
		  
		  
		  SOMA_SUB :  entity work.Somador_Completo_1bit  
        port map(entrada_A => entradaA,
                 entrada_B => B_sinal,
					  C_in => Cin,
					  soma=> mux_soma_sub,
                 C_out=> vai_um);
					  
		  
		  MUX :  entity work.muxGenerico4x1  
        port map( entradaA_MUX => mux_and,
                 entradaB_MUX =>  mux_or,
					  entradaC_MUX => mux_soma_sub,
					  entradaD_MUX => entrada_SLT,
                 seletor_MUX => seletor,
                 saida_MUX => saida_mux);
					  
		 resultado <= saida_mux;
		 Cout <= vai_um;
				
				
  

end architecture;