library ieee;
use ieee.std_logic_1164.all;

entity Projeto2 is
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
	SW: in std_logic_vector(9 downto 0);
	KEY: in std_logic_vector(3 downto 0);
	--FPGA_RESET_N: in std_logic;
--	RESULTADO : out std_logic_vector(31 downto 0);
--	REG_RS : out std_logic_vector(31 downto 0);
--	REG_RT : out std_logic_vector(31 downto 0);
	LEDR   : out std_logic_vector(9 downto 0)
--	PC_OUT: out std_logic_vector(31 downto 0);
--	TESTE_ULA: out std_logic_vector(31 downto 0)	
   
  );
end entity;


architecture arquitetura of Projeto2 is

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
	 signal Saida_Unid_Cont : std_logic_vector(9 downto 0);
	 signal Saida_Mux_Beq : std_logic_vector(31 downto 0);
	 signal Saida_Mux_Banco : std_logic_vector(4 downto 0);
	 signal Saida_Mux_Entrada_ULA : std_logic_vector(31 downto 0);
	 signal Saida_Mux_RAM_ULA : std_logic_vector(31 downto 0);
	 signal Saida_DecBorda_KEY0 : std_logic;
	 signal Saida_DecBorda_KEY1 : std_logic;
	 signal Saida_Mux_Prox_PC : std_logic_vector(31 downto 0);
	 signal Saida_Unid_Cont_ULA : std_logic_vector(2 downto 0);
	 signal Saida_MUX_DSP : std_logic_vector(31 downto 0);
	  

begin

-- Instanciando os componentes:


gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

----CLK <= CLOCK_50;
--CLK <= Saida_DecBorda_KEY0;
--
---- port map completo edgeDetector
--detectorSub0: work.edgeDetector(bordaSubida) -- clock
--        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => Saida_DecBorda_KEY0);
--
--detectorSub1: work.edgeDetector(bordaSubida) -- reset PC
--        port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => Saida_DecBorda_KEY1);


PC : entity work.registradorGenerico_PC   generic map (larguraDados => larguraDados_PC)
          port map (DIN => Saida_Mux_Prox_PC, DOUT => Saida_PC, ENABLE => '1', RST => '0', CLK => CLK);
			 
SOMADOR :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => "00000000000000000000000000000100", entradaB =>  Saida_PC, saida => Saida_Somador);
		  
MEMORIA_INSTRUCAO : entity work.ROMMIPS   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecoROM, memoryAddrWidth => memoryAddrWidth)
          port map (Endereco => Saida_PC, Dado => Saida_Mem_Instrucao, clk => CLK);
			 

MUX_BR: entity work.muxGenerico2x1  generic map (larguraDados => larguraEndRegs)
        port map( entradaA_MUX => Saida_Mem_Instrucao(20 downto 16),
                 entradaB_MUX =>  Saida_Mem_Instrucao(15 downto 11),
                 seletor_MUX => Saida_Unid_Cont(8),
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
								
MUX_ENTRADA_ULA: entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Dado_lido_RegB,
                 entradaB_MUX =>  Imediato_Estendido,
                 seletor_MUX => Saida_Unid_Cont(6),
                 saida_MUX => Saida_Mux_Entrada_ULA); 								
	

	 
UNIDADE_CONT_ULA: entity work.UnidadeControle_ULA 
		port map (
			ULAop => Saida_Unid_Cont(1 downto 0),
			funct => Saida_Mem_Instrucao(5 downto 0),
			ULActrl => Saida_Unid_Cont_ULA
			); 			 

ULA : entity work.ULA_Completa  generic map(larguraDados => larguraDados)
          port map (
				entradaA => Dado_lido_RegA,
				entradaB => Saida_Mux_Entrada_ULA,  
				seletor => Saida_Unid_Cont_ULA(1 downto 0),
				inverte_B => Saida_Unid_Cont_ULA(2), 
				saida => Saida_ULA,  
				flag_0 => flag
			 );			
  
 
UNIDADE_DE_CONTROLE: entity work.UnidadeControle 
		port map (
			CodigoBinario => Saida_Mem_Instrucao(31 downto 26),
			Saida => Saida_Unid_Cont
			);
 
 MEMORIA_DADOS : entity work.RAMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraEnderecoRAM)
   port map 
			(
			clk => CLK,
			Endereco => Saida_ULA,
			Dado_in => Dado_lido_RegB,
			Dado_out => Saida_Mem_Dados,
			we => Saida_Unid_Cont(2)
--			le => Saida_Unid_Cont(3),
        );
		  
MUX_RAM_ULA :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_ULA,
                 entradaB_MUX =>  Saida_Mem_Dados,
                 seletor_MUX => Saida_Unid_Cont(5),
                 saida_MUX => Saida_Mux_RAM_ULA); 	
		  
		  
MUX_beq :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_Somador,
                 entradaB_MUX =>  Saida_Somador_Beq,
                 seletor_MUX => flag and Saida_Unid_Cont(4),
                 saida_MUX => Saida_Mux_Beq);
					  
MUX_Prox_PC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_Mux_Beq,
                 entradaB_MUX =>  Saida_Somador(31 downto 28) & Saida_Mem_Instrucao(25 downto 0) & "00",
                 seletor_MUX => Saida_Unid_Cont(9),
                 saida_MUX => Saida_Mux_Prox_PC);
					  
SOMADOR_beq :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => Saida_Somador, entradaB => Imediato_Estendido(29 downto 0) & "00" , saida => Saida_Somador_Beq);
		  
		  
		  
		  
MUX_DISP :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_ULA,
                 entradaB_MUX =>  Saida_PC,
                 seletor_MUX => SW(0),
                 saida_MUX => Saida_MUX_DSP);
		  
		  
--------- HEX0-----------
			 
			 
DECOD_HEX0 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_MUX_DSP(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);
					  
--------- HEX1-----------

			 
DECOD_HEX1 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_MUX_DSP(7 downto 4),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);

--------- HEX2-----------

			 
DECOD_HEX2 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_MUX_DSP(11 downto 8),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);

--------- HEX3-----------

			 
DECOD_HEX3 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_MUX_DSP(15 downto 12),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);

--------- HEX4-----------

			 
DECOD_HEX4 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_MUX_DSP(19 downto 16),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);

--------- HEX5-----------

			 
DECOD_HEX5 :  entity work.DecodBinario_7seg
        port map(dadoHex => Saida_MUX_DSP(23 downto 20),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);
					 
 
					 
LEDR(0) <= Saida_MUX_DSP(24);
LEDR(1) <= Saida_MUX_DSP(25);
LEDR(2) <= Saida_MUX_DSP(26);
LEDR(3) <= Saida_MUX_DSP(27);
LEDR(4) <= Saida_MUX_DSP(28);
LEDR(5) <= Saida_MUX_DSP(29);
LEDR(6) <= Saida_MUX_DSP(30);
LEDR(7) <= Saida_MUX_DSP(31);

		  
  
  
 --RESULTADO <= Saida_ULA;
-- REG_RS <= Dado_lido_RegA;
-- REG_RT <= Dado_lido_RegB;
-- Pc_OUT <= Saida_PC;
-- TESTE_ULA <= Saida_ULA;
  
  
  end architecture;