library ieee;
use ieee.std_logic_1164.all;

entity Aula14 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32; -- AGORA É 8 
		  larguraEnderecoRAM : natural := 8; 
		  larguraInstrucao : natural := 32; 
		  larguraEnderecoROM : natural := 32;
		  memoryAddrWidth:  natural := 6;
		  larguraDados_PC : natural := 32;
		  larguraEndRegs : natural := 5;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
   CLOCK_50 : in std_logic;
	ESCRITA_REG_RD : in std_logic;
	OPERACAO_ULA : in std_logic;
	RESULTADO : out std_logic_vector(31 downto 0);
	REG_RS : out std_logic_vector(31 downto 0);
	REG_RT : out std_logic_vector(31 downto 0)
	
	
   
  );
end entity;


architecture arquitetura of Aula14 is

	 signal CLK : std_logic;
	 signal Saida_Somador : std_logic_vector(31 downto 0);
	 signal Saida_PC : std_logic_vector(31 downto 0);
	 signal Saida_Mem_Instrucao : std_logic_vector(31 downto 0);
	 signal Saida_ULA : std_logic_vector(31 downto 0);
	 signal Dado_lido_RegA : std_logic_vector(31 downto 0);
	 signal Dado_lido_RegB : std_logic_vector(31 downto 0);
	 signal Imediato_Estendido : std_logic_vector(31 downto 0);
	 signal Saida_Mem_Dados : std_logic_vector(31 downto 0);
	 
	  

begin

-- Instanciando os componentes:


CLK <= CLOCK_50;


PC : entity work.registradorGenerico_PC   generic map (larguraDados => larguraDados_PC)
          port map (DIN => Saida_Somador, DOUT => Saida_PC, ENABLE => '1', RST => '0', CLK => CLK);
			 
SOMADOR :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => "00000000000000000000000000000100", entradaB =>  Saida_PC, saida => Saida_Somador);
		  
MEMORIA_INSTRUCAO : entity work.ROMMIPS   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecoROM, memoryAddrWidth => memoryAddrWidth)
          port map (Endereco => Saida_PC, Dado => Saida_Mem_Instrucao, clk => CLK);
			 


BANCO_REGISTRADORES : entity work.bancoRegistradores generic map (larguraDados => larguraDados, larguraEndBancoRegs=>larguraEndRegs)
				port map 
    (
        clk        => CLK,

        enderecoA       => Saida_Mem_Instrucao(25 downto 21),
        enderecoB       => Saida_Mem_Instrucao(20 downto 16),
        enderecoC       => Saida_Mem_Instrucao(20 downto 16),

        dadoEscritaC    => Saida_Mem_Dados,

        escreveC        => ESCRITA_REG_RD,
        saidaA          => Dado_lido_RegA,
        saidaB          => Dado_lido_RegB
    );
	 
	
Imediato_Estendido <= Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15) &
								Saida_Mem_Instrucao(15 downto 0);
	
 ULA : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => Dado_lido_RegA, entradaB =>  Imediato_Estendido, saida => Saida_ULA, seletor => OPERACAO_ULA);
  
 
 UNIDADE_DE_CONTROLE: entity work.UnidadeControle 
		port map (
			CodigoBinario => ,
			Saida =>
			);
 
 MEMORIA_DADOS : entity work.RAMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraEnderecoRAM, memoryAddrWidth => memoryAddrWidth)
   port map 
			(
			clk => CLK,
			Endereco => Saida_ULA,
			Dado_in => Dado_lido_RegB,
			Dado_out => Saida_Mem_Dados,
			we =>
        );
  
  
 RESULTADO <= Saida_ULA;
 REG_RS <= Dado_lido_RegA;
 REG_RT <= Dado_lido_RegB;
  
  
  end architecture;