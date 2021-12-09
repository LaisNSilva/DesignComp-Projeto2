library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Instruction_Fetch is
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
    CLK     : in  std_logic;
	 prox_PC: in std_logic_vector(31 downto 0);
	
    Saida_Somador: out std_logic_vector(31 downto 0);
	 Saida_Memoria_Instrucao: out std_logic_vector(31 downto 0)
  );
end entity;


architecture arch_name of Instruction_Fetch is

  signal Saida_PC: std_logic_vector(31 downto 0);

begin

PC : entity work.registradorGenerico_PC   generic map (larguraDados => larguraDados_PC)
          port map (DIN => prox_PC, DOUT => Saida_PC, ENABLE => '1', RST => '0', CLK => CLK);
			 
					  
SOMADOR :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => "00000000000000000000000000000100", entradaB =>  Saida_PC, saida => Saida_Somador);
		  
		  
MEMORIA_INSTRUCAO : entity work.ROMMIPS   generic map (dataWidth => larguraInstrucao, addrWidth => larguraEnderecoROM, memoryAddrWidth => memoryAddrWidth)
          port map (Endereco => Saida_PC, Dado => Saida_Memoria_Instrucao, clk => CLK);
			 
end architecture;