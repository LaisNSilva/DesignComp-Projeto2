library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Memory_Access is
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
	 Saida_ULA: in std_logic_vector(31 downto 0);
	 Dado_lido_RegB: in std_logic_vector(31 downto 0);
	 Saida_Unid_Cont: in std_logic_vector(13 downto 0);
	 Saida_Mem_Dados: out std_logic_vector(31 downto 0)
  );
end entity;


architecture arch_name of Memory_Access is


begin

 MEMORIA_DADOS : entity work.RAMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraEnderecoRAM)
   port map 
			(
			clk => CLK,
			Endereco => Saida_ULA,
			Dado_in => Dado_lido_RegB,
			Dado_out => Saida_Mem_Dados,
			we => Saida_Unid_Cont(1)
--			le => Saida_Unid_Cont(2),
        );


end architecture;