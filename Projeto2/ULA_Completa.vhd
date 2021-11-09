library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_Completa is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
		inverte_B: in STD_LOGIC;
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flag_0: out std_logic
    );
end entity;

architecture comportamento of ULA_Completa is
	signal not_B : std_logic;
	signal slt_valor : std_logic;
	signal Cout_bit_0 : std_logic;
	signal Cout_bit_1 : std_logic;
	signal Cout_bit_2 : std_logic;
	signal Cout_bit_3 : std_logic;
	signal Cout_bit_4 : std_logic;
	signal Cout_bit_5 : std_logic;
	signal Cout_bit_6 : std_logic;
	signal Cout_bit_7 : std_logic;
	signal Cout_bit_8 : std_logic;
	signal Cout_bit_9 : std_logic;
	signal Cout_bit_10 : std_logic;
	signal Cout_bit_11 : std_logic;
	signal Cout_bit_12 : std_logic;
	signal Cout_bit_13 : std_logic;
	signal Cout_bit_14 : std_logic;
	signal Cout_bit_15 : std_logic;
	signal Cout_bit_16 : std_logic;
	signal Cout_bit_17 : std_logic;
	signal Cout_bit_18 : std_logic;
	signal Cout_bit_19 : std_logic;
	signal Cout_bit_20 : std_logic;
	signal Cout_bit_21 : std_logic;
	signal Cout_bit_22 : std_logic;
	signal Cout_bit_23 : std_logic;
	signal Cout_bit_24 : std_logic;
	signal Cout_bit_25 : std_logic;
	signal Cout_bit_26 : std_logic;
	signal Cout_bit_27 : std_logic;
	signal Cout_bit_28 : std_logic;
	signal Cout_bit_29 : std_logic;
	signal Cout_bit_30 : std_logic;
   
    begin
	 
	
	 
	 
ULA_B0 : entity work.ULA_B0_B30
  port map( entradaA => entradaA(0),
				entradaB => entradaB(0), 
				Cin => inverte_B, 
				inverte_B => inverte_B,
				seletor => seletor,
				entrada_SLT => slt_valor, 
			   resultado => saida(0), 
			   Cout => Cout_bit_0); 	
			  
ULA_B1 : entity work.ULA_B0_B30
port map( entradaA => entradaA(1),
			entradaB => entradaB(1), 
			Cin => Cout_bit_0, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(1), 
			Cout => Cout_bit_1);
		
ULA_B2 : entity work.ULA_B0_B30
port map( entradaA => entradaA(2),
			entradaB => entradaB(2), 
			Cin => Cout_bit_1, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(2), 
			Cout => Cout_bit_2);
			
ULA_B3 : entity work.ULA_B0_B30
port map( entradaA => entradaA(3),
			entradaB => entradaB(3), 
			Cin => Cout_bit_2, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(3), 
			Cout => Cout_bit_3);
		
ULA_B4 : entity work.ULA_B0_B30
port map( entradaA => entradaA(4),
			entradaB => entradaB(4), 
			Cin => Cout_bit_3, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(4), 
			Cout => Cout_bit_4);
		
ULA_B5 : entity work.ULA_B0_B30
port map( entradaA => entradaA(5),
			entradaB => entradaB(5), 
			Cin => Cout_bit_4, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(5), 
			Cout => Cout_bit_5);
		
ULA_B6 : entity work.ULA_B0_B30
port map( entradaA => entradaA(6),
			entradaB => entradaB(6), 
			Cin => Cout_bit_5, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(6), 
			Cout => Cout_bit_6);
		
ULA_B7 : entity work.ULA_B0_B30
port map( entradaA => entradaA(7),
			entradaB => entradaB(7), 
			Cin => Cout_bit_6, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(7), 
			Cout => Cout_bit_7);
		
ULA_B8 : entity work.ULA_B0_B30
port map( entradaA => entradaA(8),
			entradaB => entradaB(8), 
			Cin => Cout_bit_7, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(8), 
			Cout => Cout_bit_8);
		
ULA_B9 : entity work.ULA_B0_B30
port map( entradaA => entradaA(9),
			entradaB => entradaB(9), 
			Cin => Cout_bit_8, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(9), 
			Cout => Cout_bit_9);
			
ULA_B10 : entity work.ULA_B0_B30
port map( entradaA => entradaA(10),
			entradaB => entradaB(10), 
			Cin => Cout_bit_9, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(10), 
			Cout => Cout_bit_10);
		
ULA_B11 : entity work.ULA_B0_B30
port map( entradaA => entradaA(11),
			entradaB => entradaB(11), 
			Cin => Cout_bit_10, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(11), 
			Cout => Cout_bit_11);
		
ULA_B12 : entity work.ULA_B0_B30
port map( entradaA => entradaA(12),
			entradaB => entradaB(12), 
			Cin => Cout_bit_11, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(12), 
			Cout => Cout_bit_12);
		
ULA_B13 : entity work.ULA_B0_B30
port map( entradaA => entradaA(13),
			entradaB => entradaB(13), 
			Cin => Cout_bit_12, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(13), 
			Cout => Cout_bit_13);
		
ULA_B14 : entity work.ULA_B0_B30
port map( entradaA => entradaA(14),
			entradaB => entradaB(14), 
			Cin => Cout_bit_13, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(14), 
			Cout => Cout_bit_14);
		
ULA_B15 : entity work.ULA_B0_B30
port map( entradaA => entradaA(15),
			entradaB => entradaB(15), 
			Cin => Cout_bit_14, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(15), 
			Cout => Cout_bit_15);
		
ULA_B16 : entity work.ULA_B0_B30
port map( entradaA => entradaA(16),
			entradaB => entradaB(16), 
			Cin => Cout_bit_15, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(16), 
			Cout => Cout_bit_16);
		
ULA_B17 : entity work.ULA_B0_B30
port map( entradaA => entradaA(17),
			entradaB => entradaB(17), 
			Cin => Cout_bit_16, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(17), 
			Cout => Cout_bit_17);
		
ULA_B18 : entity work.ULA_B0_B30
port map( entradaA => entradaA(18),
			entradaB => entradaB(18), 
			Cin => Cout_bit_17, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(18), 
			Cout => Cout_bit_18);
		
ULA_B19 : entity work.ULA_B0_B30
port map( entradaA => entradaA(19),
			entradaB => entradaB(19), 
			Cin => Cout_bit_18, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(19), 
			Cout => Cout_bit_19);
		
ULA_B20 : entity work.ULA_B0_B30
port map( entradaA => entradaA(20),
			entradaB => entradaB(20), 
			Cin => Cout_bit_19, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(20), 
			Cout => Cout_bit_20);
		
ULA_B21 : entity work.ULA_B0_B30
port map( entradaA => entradaA(21),
			entradaB => entradaB(21), 
			Cin => Cout_bit_20, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(21), 
			Cout => Cout_bit_1);
		
ULA_B22 : entity work.ULA_B0_B30
port map( entradaA => entradaA(22),
			entradaB => entradaB(22), 
			Cin => Cout_bit_21, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(22), 
			Cout => Cout_bit_22);
		
ULA_B23 : entity work.ULA_B0_B30
port map( entradaA => entradaA(23),
			entradaB => entradaB(23), 
			Cin => Cout_bit_22, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(23), 
			Cout => Cout_bit_23);
		
ULA_B24 : entity work.ULA_B0_B30
port map( entradaA => entradaA(24),
			entradaB => entradaB(24), 
			Cin => Cout_bit_23, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(24), 
			Cout => Cout_bit_24);
		
ULA_B25 : entity work.ULA_B0_B30
port map( entradaA => entradaA(25),
			entradaB => entradaB(25), 
			Cin => Cout_bit_24, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(25), 
			Cout => Cout_bit_25);
		
ULA_B26 : entity work.ULA_B0_B30
port map( entradaA => entradaA(26),
			entradaB => entradaB(26), 
			Cin => Cout_bit_25, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(26), 
			Cout => Cout_bit_26);
		
ULA_B27 : entity work.ULA_B0_B30
port map( entradaA => entradaA(27),
			entradaB => entradaB(27), 
			Cin => Cout_bit_26, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(27), 
			Cout => Cout_bit_27);
			
ULA_B28 : entity work.ULA_B0_B30
port map( entradaA => entradaA(28),
			entradaB => entradaB(28), 
			Cin => Cout_bit_27, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(28), 
			Cout => Cout_bit_28);
		
ULA_B29 : entity work.ULA_B0_B30
port map( entradaA => entradaA(29),
			entradaB => entradaB(29), 
			Cin => Cout_bit_28, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(29), 
			Cout => Cout_bit_29);
		
ULA_B30 : entity work.ULA_B0_B30
port map( entradaA => entradaA(30),
			entradaB => entradaB(30), 
			Cin => Cout_bit_29, 
			inverte_B => inverte_B,
			seletor => seletor,
			entrada_SLT => '0',
			resultado => saida(30), 
			Cout => Cout_bit_30);	

ULA_B31	: entity work.ULA_B31
  port map( entradaA => entradaA(31),
				entradaB => entradaB(31), 
				Cin => Cout_bit_30, 
				inverte_B => inverte_B,
				seletor => seletor,
				entrada_SLT => '0',
			   resultado => saida(31),
				result_slt => slt_valor);
				
flag_0 <= not(saida(0) or saida(1) or saida(2) or saida(3) or saida(4) or saida(5) or saida(6) or saida(7) or saida(8) or saida(9) or saida(10) or saida(11) or saida(12) or saida(13) or saida(14) or saida(15) or saida(16) or saida(17) or saida(18) or saida(19) or saida(20) or saida(21) or saida(22) or saida(23) or saida(24) or saida(25) or saida(26) or saida(27) or saida(28) or saida(29) or saida(30) or saida(31));

end architecture;