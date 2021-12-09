library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Instruction_Decode is
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
    -- Input ports
    CLK     : in  std_logic;
	 Saida_Mux_Beq: in std_logic_vector(31 downto 0);
	 Saida_Somador: in std_logic_vector(31 downto 0);
	 Saida_Mux_RAM_ULA: in std_logic_vector(31 downto 0);
	 Saida_Mem_Instrucao: in std_logic_vector(31 downto 0);
	 Saida_Prox_PC: out std_logic_vector(31 downto 0);
	 Control: out std_logic_vector(13 downto 0);
	 Dado_lido_RegA: out std_logic_vector(31 downto 0);
	 Dado_lido_RegB: out std_logic_vector(31 downto 0);
	 Imediato_Estendido: out std_logic_vector(31 downto 0);
	 Registrador_Destino: out std_logic_vector(4 downto 0);
	 Saida_LUI : out std_logic_vector(31 downto 0);
	 Saida_Unid_Cont_ULA: out std_logic_vector(2 downto 0)
	 
  );
end entity;


architecture arch_name of Instruction_Decode is
	
	signal Saida_Mux_Banco : std_logic_vector(4 downto 0);
	signal Saida_Unid_Cont : std_logic_vector(13 downto 0);
	
	signal Saida_Mux_EXT_SIG : std_logic;

begin

MUX_BR: entity work.muxGenerico4x1_5b  generic map (larguraDados => larguraEndRegs)
        port map( entradaA_MUX => Saida_Mem_Instrucao(20 downto 16),
                 entradaB_MUX =>  Saida_Mem_Instrucao(15 downto 11),
					  entradaC_MUX => "11111",
					  entradaD_MUX => "00000",
                 seletor_MUX => Saida_Unid_Cont(9 downto 8),
                 saida_MUX => Saida_Mux_Banco); 


					  
BANCO_REGISTRADORES : entity work.bancoRegistradores generic map (larguraDados => larguraDados, larguraEndBancoRegs=>larguraEndRegs)
				port map 
    (
        clk        => CLK,

        enderecoA       => Saida_Mem_Instrucao(25 downto 21),
        enderecoB       => Saida_Mem_Instrucao(20 downto 16),
        enderecoC       => Saida_Mux_Banco,

        dadoEscritaC    => Saida_Mux_RAM_ULA,

        escreveC        => Saida_Unid_Cont(7),
        saidaA          => Dado_lido_RegA,
        saidaB          => Dado_lido_RegB
    );
	 
	
Imediato_Estendido <= Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mux_EXT_SIG &
								Saida_Mem_Instrucao(15 downto 0);

MUX_EXT_SIG: entity work.muxGenerico2x1_1bit  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => '0',
                 entradaB_MUX =>  Saida_Mem_Instrucao(15),
                 seletor_MUX => Saida_Unid_Cont(11),
                 saida_MUX => Saida_Mux_EXT_SIG); 
								
Saida_LUI <= "0000000000000000" & Saida_Mem_Instrucao(15 downto 0);

					 

MUX_Prox_PC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_Mux_Beq,
                 entradaB_MUX =>  Saida_Somador(31 downto 28) & Saida_Mem_Instrucao(25 downto 0) & "00",
                 seletor_MUX => Saida_Unid_Cont(10),
                 saida_MUX => Saida_Prox_PC);

UNIDADE_CONT_ULA: entity work.UnidadeControle_ULA 
		port map (
			Tipo_R => Saida_Unid_Cont(0),
			funct => Saida_Mem_Instrucao(5 downto 0),
			OpCode => Saida_Mem_Instrucao(31 downto 26),
			ULActrl => Saida_Unid_Cont_ULA
			); 			 
					  

UNIDADE_DE_CONTROLE: entity work.UnidadeControle 
		port map (
			CodigoBinario => Saida_Mem_Instrucao(31 downto 26),
			Funct => Saida_Mem_Instrucao(5 downto 0),
			Saida => Saida_Unid_Cont
			);
			
Registrador_Destino <= Saida_Mux_Banco;
			
end architecture;