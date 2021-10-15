library ieee;
use ieee.std_logic_1164.all;

entity Aula13 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32; -- AGORA É 8 
		  larguraEnderecoRAM : natural := 8; 
		  larguraInstrucao : natural := 32; 
		  larguraEnderecoROM : natural := 32;
		  memoryAddrWidth:  natural := 6
		  larguraDados_PC : natural := 32;
		  larguraEndRegs : natural := 5;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
   CLOCK_50 : in std_logic;
   
  );
end entity;


architecture arquitetura of Aula13 is


	 signal Saida_Somador : std_logic_vector(31 downto 0);
	 signal Saida_PC : std_logic_vector(31 downto 0);
	 signal Saida_Mem_Instrucao : std_logic_vector(31 downto 0);
	 signal Saida_ULA : std_logic_vector(31 downto 0);
	 signal Escrita_RD : std_logic_vector(31 downto 0);
	 signal Dado_lido_RegA : std_logic_vector(31 downto 0);
	 signal Dado_lido_RegB : std_logic_vector(31 downto 0);
	 signal Sel_ULA : std_logic;
	 
	 
	 
	 

begin

-- Instanciando os componentes:


CLK <= CLOCK_50;


PC : entity work.registradorGenerico_PC   generic map (larguraDados => larguraDados_PC)
          port map (DIN => Saida_Somador, DOUT => Saida_PC, ENABLE => '1', RST => '0', CLK => CLK);
			 
SOMADOR :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => "00000000000000000000000000000100", entradaB =>  Saida_PC, saida => Saida_Somador);
		  
MEMORIA_INTRUCAO : entity work.ROMMIPS   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecoROM, memoryAddrWidth => memoryAddrWidth)
          port map (Endereco => Saida_PC, Dado => Saida_Mem_Instrucao, clk => CLK);
			 


BANCO_REGISTRADORES : entity work.bancoRegistradores generic map (larguraDados => larguraDados, larguraEndBancoRegs=>larguraEndRegs)
				port map 
    (
        clk        => CLK,

        enderecoA       => Saida_Mem_Instrucao(25 downto 21),
        enderecoB       => Saida_Mem_Instrucao(20 downto 16),
        enderecoC       => Saida_Mem_Instrucao(15 downto 11),

        dadoEscritaC    => Saida_ULA,

        escreveC        => Escrita_RD,
        saidaA          => Dado_lido_RegA,
        saidaB          => Dado_lido_RegB,
    );
	 
	 
 ULA : entity work.ULASomaSub  generic map(larguraDados => VALOR_LOCAL)
          port map (entradaA => Dado_lido_RegA, entradaB =>  Dado_lido_RegB, saida => Saida_ULA, seletor => Sel_ULA);
  
  
  
  
  
  end architecture;