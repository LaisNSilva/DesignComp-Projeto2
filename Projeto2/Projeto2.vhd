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
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
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
	 
	 signal Saida_PC : std_logic_vector(31 downto 0);
	 
	 
	 
	 
	 
	 signal Saida_Somador_Beq : std_logic_vector(31 downto 0);
	 
	 
	 
	 signal Saida_DecBorda_KEY0 : std_logic;
	 signal Saida_DecBorda_KEY1 : std_logic;
	 signal Saida_MUX_DSP : std_logic_vector(31 downto 0);
	 
	 signal Saida_Mux_EXT_SIG : std_logic;
	 
	 
	 
	 
	 signal Saida_MUX_Prox_PC: std_logic_vector(31 downto 0);
	 signal Saida_Somador_PC : std_logic_vector(31 downto 0);
	 signal Saida_Mem_Instrucao : std_logic_vector(31 downto 0);
	 signal Saida_Unid_Cont : std_logic_vector(13 downto 0);
	 signal Imediato_Estendido : std_logic_vector(31 downto 0);
	 signal Reg_Selecionado : std_logic_vector(4 downto 0);
	 signal Dado_lido_RegA : std_logic_vector(31 downto 0);
	 signal Dado_lido_RegB : std_logic_vector(31 downto 0);
	 
	 signal Saida_LUI : std_logic_vector(31 downto 0);
	 signal Saida_Mux_Beq : std_logic_vector(31 downto 0);
	 signal Saida_ULA : std_logic_vector(31 downto 0);
	 
	 signal Saida_IF_ID: std_logic_vector(63 downto 0);
	 signal Saida_ID_EX: std_logic_vector(213 downto 0);
	 signal Saida_EX_MEM: std_logic_vector(178 downto 0);
	 signal Saida_MEM_WB: std_logic_vector(146 downto 0);
	 
	 signal Saida_Mem_Dados : std_logic_vector(31 downto 0);
	 signal Saida_Mux_RAM_ULA : std_logic_vector(31 downto 0);
	 signal Saida_Unid_Cont_ULA: std_logic_vector(2 downto 0);

begin

gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

INST_FETCH: entity work.Instruction_Fetch 
		generic map(larguraDados => larguraDados,
				  larguraEnderecoRAM => larguraEnderecoRAM,
				  larguraInstrucao => larguraInstrucao,
				  larguraEnderecoROM => larguraEnderecoROM,
				  memoryAddrWidth  => memoryAddrWidth,
				  larguraDados_PC => larguraDados_PC,
				  larguraEndRegs => larguraEndRegs)
		  port map(CLK => CLK,
					 prox_PC=> Saida_MUX_Prox_PC,
					 Saida_Somador=> Saida_Somador_PC,
					 Saida_Memoria_Instrucao=> Saida_Mem_Instrucao
					);

IF_ID : entity work.register_IF_ID   generic map (larguraDados => 64)
          port map (
			 DIN => Saida_Mem_Instrucao &
			 Saida_Somador_PC,
			 DOUT => Saida_IF_ID, ENABLE => '1', RST => '0', CLK => CLK);
			 
INST_DECODE: entity work.Instruction_Decode 
			generic map(larguraDados => larguraDados,
							  larguraEnderecoRAM => larguraEnderecoRAM,
							  larguraInstrucao => larguraInstrucao,
							  larguraEnderecoROM => larguraEnderecoROM,
							  memoryAddrWidth  => memoryAddrWidth,
							  larguraDados_PC => larguraDados_PC,
							  larguraEndRegs => larguraEndRegs)
			port map(
				 CLK  => CLK,
				 Saida_Mux_Beq => Saida_EX_MEM(95 downto 64),
				 Saida_Somador => Saida_IF_ID(31 downto 0),
				 Saida_Mux_RAM_ULA => Saida_Mux_RAM_ULA,
				 Saida_Mem_Instrucao => Saida_IF_ID(63 downto 32),
				 
				 Saida_Prox_PC => Saida_MUX_Prox_PC,
				 Control => Saida_Unid_Cont,
				 Dado_lido_RegA => Dado_lido_RegA,
				 Dado_lido_RegB => Dado_lido_RegB,
				 Imediato_Estendido => Imediato_Estendido,
				 Registrador_Destino => Reg_Selecionado,
				 Saida_LUI => Saida_LUI,
				 Saida_Unid_Cont_ULA => Saida_Unid_Cont_ULA
				 );
						 

ID_EX : entity work.register_ID_EX   generic map (larguraDados => 214)
          port map (
			 DIN => 
			 Saida_MUX_Prox_PC &
			 Saida_Unid_Cont_ULA &
			 Saida_IF_ID(31 downto 0) & -- saida_somador
			 Saida_Unid_Cont & 
			 Dado_lido_RegA &
			 Dado_lido_RegB &
			 Imediato_Estendido &
			 Reg_Selecionado &
			 Saida_LUI, 
			 DOUT => Saida_ID_EX, ENABLE => '1', RST => '0', CLK => CLK);
			
		
EXECUTE: entity work.Execute 
			generic map(larguraDados => larguraDados,
							  larguraEnderecoRAM => larguraEnderecoRAM,
							  larguraInstrucao => larguraInstrucao,
							  larguraEnderecoROM => larguraEnderecoROM,
							  memoryAddrWidth  => memoryAddrWidth,
							  larguraDados_PC => larguraDados_PC,
							  larguraEndRegs => larguraEndRegs)
			port map(
				 clk  => CLK,
				 Saida_Unid_Cont_ULA => Saida_ID_EX(181 downto 179),
				 Saida_Unid_Cont => Saida_ID_EX(146 downto 133),
				 Dado_lido_RegA=> Saida_ID_EX(132 downto 101),
				 Dado_lido_RegB=> Saida_ID_EX(100 downto 69),
				 Saida_Prox_PC => Saida_ID_EX(213 downto 182),
				 Imediato_Estendido=> Saida_ID_EX(68 downto 37),
				 Saida_Somador=> Saida_ID_EX(178 downto 147),	 
				 Saida_Mux_Beq=> Saida_Mux_Beq,
				 Saida_ULA=> Saida_ULA
			);

	
EX_MEM : entity work.register_EX_MEM   generic map (larguraDados => 179)
          port map (DIN => 
			 Saida_ID_EX(208 downto 177) & -- Saida_Somador
			 Saida_ID_EX(31 downto 0) & --Saida_LUI
			 Saida_ID_EX(36 downto 32) & -- Reg_Selecionado
			 Saida_ID_EX(146 downto 133) & -- SaidaUnidadeControle
			 Saida_Mux_Beq &
			 Saida_ULA & 
			 Saida_ID_EX(100 downto 69), -- DadoLidoRegB
			 DOUT => Saida_EX_MEM, ENABLE => '1', RST => '0', CLK => CLK);
		

MEMORY_ACCESS: entity work.Memory_Access 
			generic map(larguraDados => larguraDados,
							  larguraEnderecoRAM => larguraEnderecoRAM,
							  larguraInstrucao => larguraInstrucao,
							  larguraEnderecoROM => larguraEnderecoROM,
							  memoryAddrWidth  => memoryAddrWidth,
							  larguraDados_PC => larguraDados_PC,
							  larguraEndRegs => larguraEndRegs)
			port map(
			 CLK     => CLK,
			 Saida_ULA => Saida_EX_MEM(63 downto 32),
			 Dado_lido_RegB => Saida_EX_MEM(31 downto 0),
			 Saida_Unid_Cont => Saida_EX_MEM(109 downto 96),
			 Saida_Mem_Dados => Saida_Mem_Dados
			);
		
MEM_WB : entity work.register_MEM_WB   generic map (larguraDados => 147)
          port map (
			 DIN => 
			 Saida_EX_MEM(63 downto 32) & -- Saida_ULA
			 Saida_EX_MEM(178 downto 147) & --Saida Somador
			 Saida_EX_MEM(146 downto 115) & -- Saida_Lui
			 Saida_EX_MEM(114 downto 110) & -- Reg_Selecionado
			 Saida_Mem_Dados &
			 Saida_EX_MEM(109 downto 96), -- SaidaUnidadeControle
			 DOUT => Saida_MEM_WB, ENABLE => '1', RST => '0', CLK => CLK);
	
WRITE_BACK: entity work.Write_Back 
			generic map(larguraDados => larguraDados,
							  larguraEnderecoRAM => larguraEnderecoRAM,
							  larguraInstrucao => larguraInstrucao,
							  larguraEnderecoROM => larguraEnderecoROM,
							  memoryAddrWidth  => memoryAddrWidth,
							  larguraDados_PC => larguraDados_PC,
							  larguraEndRegs => larguraEndRegs)
			port map(
				 clk   => CLK,
				 Saida_ULA => Saida_MEM_WB(146 downto 115),
				 Saida_Mem_Dados => Saida_MEM_WB(45 downto 14),
				 Saida_Somador => Saida_MEM_WB(114 downto 83),
				 Saida_LUI => Saida_MEM_WB(82 downto 51),
				 Saida_Unid_Cont => Saida_MEM_WB(13 downto 0),
				 Saida_Mux_RAM_ULA => Saida_Mux_RAM_ULA
			);

	
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