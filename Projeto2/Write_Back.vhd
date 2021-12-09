library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Write_Back is
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
	 Saida_ULA: in std_logic_vector(31 downto 0);
	 Saida_Mem_Dados: in std_logic_vector(31 downto 0);
	 Saida_Somador: in std_logic_vector(31 downto 0);
	 Saida_LUI: in std_logic_vector(31 downto 0);
	 Saida_Unid_Cont: in std_logic_vector(13 downto 0);
	 Saida_Mux_RAM_ULA: out std_logic_vector(31 downto 0)
	 
  );
end entity;


architecture arch_name of Write_Back is

	

begin

MUX_RAM_ULA :  entity work.muxGenerico4x1_32b  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_ULA,
                 entradaB_MUX =>  Saida_Mem_Dados,
					  entradaC_MUX => Saida_Somador, 
					  entradaD_MUX => Saida_LUI,
                 seletor_MUX => Saida_Unid_Cont(5 downto 4),
                 saida_MUX => Saida_Mux_RAM_ULA); 	


end architecture;