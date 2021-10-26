library ieee;
use ieee.std_logic_1164.all;

entity Aula14 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32; -- AGORA É 8 
		  larguraEnderecoRAM : natural := 32; 
		  larguraInstrucao : natural := 32; 
		  larguraEnderecoROM : natural := 32;
		  memoryAddrWidth:  natural := 6;
		  larguraDados_PC : natural := 32;
		  larguraEndRegs : natural := 5;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
   CLOCK_50 : in std_logic;
	HEX0 : out std_logic_vector (6 DOWNTO 0);
	HEX1 : out std_logic_vector (6 DOWNTO 0);
	HEX2 : out std_logic_vector (6 DOWNTO 0);
	HEX3 : out std_logic_vector (6 DOWNTO 0);
	HEX4 : out std_logic_vector (6 DOWNTO 0);
	HEX5 : out std_logic_vector (6 DOWNTO 0);
	KEY: in std_logic_vector(3 downto 0);
	FPGA_RESET_N: in std_logic;
	RESULTADO : out std_logic_vector(31 downto 0);
	REG_RS : out std_logic_vector(31 downto 0);
	REG_RT : out std_logic_vector(31 downto 0);
	LEDR   : out std_logic_vector(9 downto 0)
   
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
	 signal flag : std_logic;
	 signal Saida_Somador_Beq : std_logic_vector(31 downto 0);
	 signal Saida_Unid_Cont : std_logic_vector(4 downto 0);
	 signal Saida_Mux_Beq : std_logic_vector(31 downto 0);
	 
	  

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

        escreveC        => Saida_Unid_Cont(4),
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
          port map (entradaA => Dado_lido_RegA, entradaB =>  Imediato_Estendido, saida => Saida_ULA, seletor => Saida_Unid_Cont(3), flag_0 => flag);
  
 
 UNIDADE_DE_CONTROLE: entity work.UnidadeControle 
		port map (
			CodigoBinario => Saida_Mem_Instrucao(31 downto 26),
			Saida => Saida_Unid_Cont
			);
 
 MEMORIA_DADOS : entity work.RAMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraEnderecoRAM)
   port map 
			(
			clk => CLK,
			addr => Saida_ULA,
			dado_in => Dado_lido_RegB,
			dado_out => Saida_Mem_Dados,
			we => Saida_Unid_Cont(0),
			re => Saida_Unid_Cont(1),
			habilita => '1'
        );
		  
		  
MUX_beq :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_Somador,
                 entradaB_MUX =>  Saida_Somador_Beq,
                 seletor_MUX => flag and Saida_Unid_Cont(2),
                 saida_MUX => Saida_Mux_Beq);
					  
SOMADOR_beq :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => Saida_Somador, entradaB => Imediato_Estendido(29 downto 0) & "00" , saida => Saida_Somador_Beq);
  
  
 RESULTADO <= Saida_ULA;
 REG_RS <= Dado_lido_RegA;
 REG_RT <= Dado_lido_RegB;
  
  
  end architecture;