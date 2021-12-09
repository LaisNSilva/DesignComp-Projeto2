library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Execute is
  generic   (
    larguraDados : natural := 32; -- AGORA É 8 
	  larguraEnderecoRAM : natural := 32; 
	  larguraInstrucao : natural := 32; 
	  larguraEnderecoROM : natural := 32;
	  memoryAddrWidth:  natural := 6;
	  larguraDados_PC : natural := 32;
	  larguraEndRegs : natural := 5
  );

  port   (
    clk     : in  std_logic;
	 Saida_Unid_Cont_ULA: in std_logic_vector(2 downto 0);
	 Saida_Unid_Cont: in std_logic_vector(13 downto 0);
	 Dado_lido_RegA: in std_logic_vector(31 downto 0);
	 Dado_lido_RegB: in std_logic_vector(31 downto 0);
	 Saida_Prox_PC: in std_logic_vector(31 downto 0);
	 Imediato_Estendido: in std_logic_vector(31 downto 0);
	 Saida_Somador: in std_logic_vector(31 downto 0); 
	 Saida_Mux_Beq: out std_logic_vector(31 downto 0);
	 Saida_ULA: out std_logic_vector(31 downto 0)
	 
	 
  );
end entity;


architecture arch_name of Execute is

	signal Saida_Mux_Entrada_ULA : std_logic_vector(31 downto 0);
	signal Saida_MUX_Flag : std_logic;
	signal flag : std_logic;
	signal Saida_Somador_Beq: std_logic_vector(31 downto 0);
	signal Saida_Mux_JR : std_logic_vector(31 downto 0);


begin

MUX_ENTRADA_ULA: entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Dado_lido_RegB,
                 entradaB_MUX =>  Imediato_Estendido,
                 seletor_MUX => Saida_Unid_Cont(6),
                 saida_MUX => Saida_Mux_Entrada_ULA); 	

ULA : entity work.ULA_Completa  generic map(larguraDados => larguraDados)
          port map (
				entradaA => Dado_lido_RegA,
				entradaB => Saida_Mux_Entrada_ULA,  
				seletor => Saida_Unid_Cont_ULA(1 downto 0),
				inverte_B => Saida_Unid_Cont_ULA(2), 
				saida => Saida_ULA,  
				flag_0 => flag
			 );
			 
			
			 
MUX_FLAG :  entity work.muxGenerico2x1_1bit  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => NOT(flag),
                 entradaB_MUX =>  flag,
                 seletor_MUX => Saida_Unid_Cont(3),
                 saida_MUX => Saida_MUX_Flag);	
					  
MUX_JR: entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_Prox_PC,
                 entradaB_MUX =>  Dado_lido_RegA,
                 seletor_MUX => Saida_Unid_Cont(13),
                 saida_MUX => Saida_Mux_JR);
					  
MUX_beq :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_Somador,
                 entradaB_MUX =>  Saida_Somador_Beq,
                 seletor_MUX => Saida_MUX_Flag and (Saida_Unid_Cont(3) or Saida_Unid_Cont(12)),
                 saida_MUX => Saida_Mux_Beq);
					  
SOMADOR_beq :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => Saida_Somador, entradaB => Imediato_Estendido(29 downto 0) & "00" , saida => Saida_Somador_Beq);

end architecture;