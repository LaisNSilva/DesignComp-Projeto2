-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/10/2021 18:02:27"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Projeto2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	RESULTADO : OUT std_logic_vector(31 DOWNTO 0);
	REG_RS : OUT std_logic_vector(31 DOWNTO 0);
	REG_RT : OUT std_logic_vector(31 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0);
	TESTE_ULA : OUT std_logic_vector(31 DOWNTO 0)
	);
END Projeto2;

ARCHITECTURE structure OF Projeto2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_RESULTADO : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_REG_RS : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_REG_RT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_TESTE_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \RESULTADO[0]~output_o\ : std_logic;
SIGNAL \RESULTADO[1]~output_o\ : std_logic;
SIGNAL \RESULTADO[2]~output_o\ : std_logic;
SIGNAL \RESULTADO[3]~output_o\ : std_logic;
SIGNAL \RESULTADO[4]~output_o\ : std_logic;
SIGNAL \RESULTADO[5]~output_o\ : std_logic;
SIGNAL \RESULTADO[6]~output_o\ : std_logic;
SIGNAL \RESULTADO[7]~output_o\ : std_logic;
SIGNAL \RESULTADO[8]~output_o\ : std_logic;
SIGNAL \RESULTADO[9]~output_o\ : std_logic;
SIGNAL \RESULTADO[10]~output_o\ : std_logic;
SIGNAL \RESULTADO[11]~output_o\ : std_logic;
SIGNAL \RESULTADO[12]~output_o\ : std_logic;
SIGNAL \RESULTADO[13]~output_o\ : std_logic;
SIGNAL \RESULTADO[14]~output_o\ : std_logic;
SIGNAL \RESULTADO[15]~output_o\ : std_logic;
SIGNAL \RESULTADO[16]~output_o\ : std_logic;
SIGNAL \RESULTADO[17]~output_o\ : std_logic;
SIGNAL \RESULTADO[18]~output_o\ : std_logic;
SIGNAL \RESULTADO[19]~output_o\ : std_logic;
SIGNAL \RESULTADO[20]~output_o\ : std_logic;
SIGNAL \RESULTADO[21]~output_o\ : std_logic;
SIGNAL \RESULTADO[22]~output_o\ : std_logic;
SIGNAL \RESULTADO[23]~output_o\ : std_logic;
SIGNAL \RESULTADO[24]~output_o\ : std_logic;
SIGNAL \RESULTADO[25]~output_o\ : std_logic;
SIGNAL \RESULTADO[26]~output_o\ : std_logic;
SIGNAL \RESULTADO[27]~output_o\ : std_logic;
SIGNAL \RESULTADO[28]~output_o\ : std_logic;
SIGNAL \RESULTADO[29]~output_o\ : std_logic;
SIGNAL \RESULTADO[30]~output_o\ : std_logic;
SIGNAL \RESULTADO[31]~output_o\ : std_logic;
SIGNAL \REG_RS[0]~output_o\ : std_logic;
SIGNAL \REG_RS[1]~output_o\ : std_logic;
SIGNAL \REG_RS[2]~output_o\ : std_logic;
SIGNAL \REG_RS[3]~output_o\ : std_logic;
SIGNAL \REG_RS[4]~output_o\ : std_logic;
SIGNAL \REG_RS[5]~output_o\ : std_logic;
SIGNAL \REG_RS[6]~output_o\ : std_logic;
SIGNAL \REG_RS[7]~output_o\ : std_logic;
SIGNAL \REG_RS[8]~output_o\ : std_logic;
SIGNAL \REG_RS[9]~output_o\ : std_logic;
SIGNAL \REG_RS[10]~output_o\ : std_logic;
SIGNAL \REG_RS[11]~output_o\ : std_logic;
SIGNAL \REG_RS[12]~output_o\ : std_logic;
SIGNAL \REG_RS[13]~output_o\ : std_logic;
SIGNAL \REG_RS[14]~output_o\ : std_logic;
SIGNAL \REG_RS[15]~output_o\ : std_logic;
SIGNAL \REG_RS[16]~output_o\ : std_logic;
SIGNAL \REG_RS[17]~output_o\ : std_logic;
SIGNAL \REG_RS[18]~output_o\ : std_logic;
SIGNAL \REG_RS[19]~output_o\ : std_logic;
SIGNAL \REG_RS[20]~output_o\ : std_logic;
SIGNAL \REG_RS[21]~output_o\ : std_logic;
SIGNAL \REG_RS[22]~output_o\ : std_logic;
SIGNAL \REG_RS[23]~output_o\ : std_logic;
SIGNAL \REG_RS[24]~output_o\ : std_logic;
SIGNAL \REG_RS[25]~output_o\ : std_logic;
SIGNAL \REG_RS[26]~output_o\ : std_logic;
SIGNAL \REG_RS[27]~output_o\ : std_logic;
SIGNAL \REG_RS[28]~output_o\ : std_logic;
SIGNAL \REG_RS[29]~output_o\ : std_logic;
SIGNAL \REG_RS[30]~output_o\ : std_logic;
SIGNAL \REG_RS[31]~output_o\ : std_logic;
SIGNAL \REG_RT[0]~output_o\ : std_logic;
SIGNAL \REG_RT[1]~output_o\ : std_logic;
SIGNAL \REG_RT[2]~output_o\ : std_logic;
SIGNAL \REG_RT[3]~output_o\ : std_logic;
SIGNAL \REG_RT[4]~output_o\ : std_logic;
SIGNAL \REG_RT[5]~output_o\ : std_logic;
SIGNAL \REG_RT[6]~output_o\ : std_logic;
SIGNAL \REG_RT[7]~output_o\ : std_logic;
SIGNAL \REG_RT[8]~output_o\ : std_logic;
SIGNAL \REG_RT[9]~output_o\ : std_logic;
SIGNAL \REG_RT[10]~output_o\ : std_logic;
SIGNAL \REG_RT[11]~output_o\ : std_logic;
SIGNAL \REG_RT[12]~output_o\ : std_logic;
SIGNAL \REG_RT[13]~output_o\ : std_logic;
SIGNAL \REG_RT[14]~output_o\ : std_logic;
SIGNAL \REG_RT[15]~output_o\ : std_logic;
SIGNAL \REG_RT[16]~output_o\ : std_logic;
SIGNAL \REG_RT[17]~output_o\ : std_logic;
SIGNAL \REG_RT[18]~output_o\ : std_logic;
SIGNAL \REG_RT[19]~output_o\ : std_logic;
SIGNAL \REG_RT[20]~output_o\ : std_logic;
SIGNAL \REG_RT[21]~output_o\ : std_logic;
SIGNAL \REG_RT[22]~output_o\ : std_logic;
SIGNAL \REG_RT[23]~output_o\ : std_logic;
SIGNAL \REG_RT[24]~output_o\ : std_logic;
SIGNAL \REG_RT[25]~output_o\ : std_logic;
SIGNAL \REG_RT[26]~output_o\ : std_logic;
SIGNAL \REG_RT[27]~output_o\ : std_logic;
SIGNAL \REG_RT[28]~output_o\ : std_logic;
SIGNAL \REG_RT[29]~output_o\ : std_logic;
SIGNAL \REG_RT[30]~output_o\ : std_logic;
SIGNAL \REG_RT[31]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \PC_OUT[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[10]~output_o\ : std_logic;
SIGNAL \PC_OUT[11]~output_o\ : std_logic;
SIGNAL \PC_OUT[12]~output_o\ : std_logic;
SIGNAL \PC_OUT[13]~output_o\ : std_logic;
SIGNAL \PC_OUT[14]~output_o\ : std_logic;
SIGNAL \PC_OUT[15]~output_o\ : std_logic;
SIGNAL \PC_OUT[16]~output_o\ : std_logic;
SIGNAL \PC_OUT[17]~output_o\ : std_logic;
SIGNAL \PC_OUT[18]~output_o\ : std_logic;
SIGNAL \PC_OUT[19]~output_o\ : std_logic;
SIGNAL \PC_OUT[20]~output_o\ : std_logic;
SIGNAL \PC_OUT[21]~output_o\ : std_logic;
SIGNAL \PC_OUT[22]~output_o\ : std_logic;
SIGNAL \PC_OUT[23]~output_o\ : std_logic;
SIGNAL \PC_OUT[24]~output_o\ : std_logic;
SIGNAL \PC_OUT[25]~output_o\ : std_logic;
SIGNAL \PC_OUT[26]~output_o\ : std_logic;
SIGNAL \PC_OUT[27]~output_o\ : std_logic;
SIGNAL \PC_OUT[28]~output_o\ : std_logic;
SIGNAL \PC_OUT[29]~output_o\ : std_logic;
SIGNAL \PC_OUT[30]~output_o\ : std_logic;
SIGNAL \PC_OUT[31]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[0]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[1]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[2]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[3]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[4]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[5]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[6]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[7]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[8]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[9]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[10]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[11]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[12]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[13]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[14]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[15]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[16]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[17]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[18]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[19]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[20]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[21]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[22]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[23]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[24]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[25]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[26]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[27]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[28]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[29]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[30]~output_o\ : std_logic;
SIGNAL \TESTE_ULA[31]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~2\ : std_logic;
SIGNAL \SOMADOR|Add0~6\ : std_logic;
SIGNAL \SOMADOR|Add0~10\ : std_logic;
SIGNAL \SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ULA_B2|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA|ULA_B2|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B3|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|Mux3~0_combout\ : std_logic;
SIGNAL \UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~12_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~15_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~16_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|Mux4~0_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|Mux0~0_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|Mux8~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~18_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~17_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|Mux2~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1223_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~325_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1348_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1218_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[31]~17_combout\ : std_logic;
SIGNAL \ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B31|SOMA_SUB|soma~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B31|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B31|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~294_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1224_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1063_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[0]~18_combout\ : std_logic;
SIGNAL \ULA|ULA_B0|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B0|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~322_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1336_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1203_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[28]~14_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~94_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~323_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1340_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1208_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[29]~15_combout\ : std_logic;
SIGNAL \ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B29|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~63_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[29]~29_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1222_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~67_q\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1207_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[29]~29_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~324_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1344_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1213_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[30]~16_combout\ : std_logic;
SIGNAL \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B30|SOMA_SUB|soma~combout\ : std_logic;
SIGNAL \ULA|ULA_B30|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B30|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~64_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[30]~30_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~68_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1212_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[30]~30_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~114_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~115_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~111_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~62_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[28]~28_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~66_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1202_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[28]~28_combout\ : std_logic;
SIGNAL \ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B28|SOMA_SUB|C_out~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~112_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~113_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~110_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~65_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[31]~31_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~69_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1217_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[31]~31_combout\ : std_logic;
SIGNAL \ULA|ULA_B0|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B0|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~320_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1328_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1193_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[26]~12_combout\ : std_logic;
SIGNAL \ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B26|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~60_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[26]~26_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~64_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1192_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[26]~26_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~321_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1332_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1198_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[27]~13_combout\ : std_logic;
SIGNAL \ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B27|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B27|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B27|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~61_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[27]~27_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~65_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1197_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[27]~27_combout\ : std_logic;
SIGNAL \ULA|ULA_B28|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B30|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~34_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~38_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1062_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B0|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~295_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1228_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1068_combout\ : std_logic;
SIGNAL \ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B1|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[1]~19_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~35_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~39_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1067_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[1]~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B1|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~296_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1232_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1073_combout\ : std_logic;
SIGNAL \ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B2|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[2]~20_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~36_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~40_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1072_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[2]~2_combout\ : std_logic;
SIGNAL \ULA|ULA_B2|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~297_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1236_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1078_combout\ : std_logic;
SIGNAL \ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B3|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~41_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1077_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ULA|ULA_B3|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B3|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B3|SOMA_SUB|C_out~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~298_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1240_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1083_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[4]~22_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~100_combout\ : std_logic;
SIGNAL \ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B4|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~42_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1082_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[4]~4_combout\ : std_logic;
SIGNAL \ULA|ULA_B4|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~299_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1244_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1088_combout\ : std_logic;
SIGNAL \ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B5|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[5]~23_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~39_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~43_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1087_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[5]~5_combout\ : std_logic;
SIGNAL \ULA|ULA_B5|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~300_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1248_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1093_combout\ : std_logic;
SIGNAL \ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B6|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[6]~24_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~40_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~44_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~301_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1252_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1098_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[7]~25_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~101_combout\ : std_logic;
SIGNAL \ULA|ULA_B6|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B7|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~45_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1097_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~302_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1256_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1103_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[8]~26_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~102_combout\ : std_logic;
SIGNAL \ULA|ULA_B7|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B8|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[8]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~46_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1102_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[8]~8_combout\ : std_logic;
SIGNAL \ULA|ULA_B8|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B8|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B8|SOMA_SUB|C_out~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~303_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1260_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1108_combout\ : std_logic;
SIGNAL \ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B9|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[9]~27_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~43_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[9]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~47_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1107_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[9]~9_combout\ : std_logic;
SIGNAL \ULA|ULA_B9|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~304_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1264_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1113_combout\ : std_logic;
SIGNAL \ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B10|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[10]~28_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~44_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[10]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~48_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1112_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[10]~10_combout\ : std_logic;
SIGNAL \ULA|ULA_B10|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~305_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1268_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1118_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[11]~29_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~103_combout\ : std_logic;
SIGNAL \ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B11|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[11]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~49_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1117_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~306_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1272_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1123_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[12]~30_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~104_combout\ : std_logic;
SIGNAL \ULA|ULA_B11|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B12|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[12]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~50_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1122_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[12]~12_combout\ : std_logic;
SIGNAL \ULA|ULA_B12|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~307_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1276_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1128_combout\ : std_logic;
SIGNAL \ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B13|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[13]~31_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~79_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~47_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[13]~14_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~51_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1127_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[13]~13_combout\ : std_logic;
SIGNAL \ULA|ULA_B13|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B13|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B13|SOMA_SUB|C_out~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~308_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1280_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1133_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[14]~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B14|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~80_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~48_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[14]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~52_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1132_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~309_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1284_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1138_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[15]~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~81_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~105_combout\ : std_logic;
SIGNAL \ULA|ULA_B14|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B15|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[15]~12_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~53_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1137_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[15]~15_combout\ : std_logic;
SIGNAL \ULA|ULA_B15|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~310_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1288_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1143_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[16]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~82_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~106_combout\ : std_logic;
SIGNAL \ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B16|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[16]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~54_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1142_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~311_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1292_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1148_combout\ : std_logic;
SIGNAL \ULA|ULA_B17|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[17]~3_combout\ : std_logic;
SIGNAL \ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B17|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B17|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~83_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~51_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[17]~18_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~55_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1147_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[17]~17_combout\ : std_logic;
SIGNAL \ULA|ULA_B17|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~312_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1296_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1153_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[18]~4_combout\ : std_logic;
SIGNAL \ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B18|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~84_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~52_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[18]~17_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~56_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1152_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[18]~18_combout\ : std_logic;
SIGNAL \ULA|ULA_B18|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B18|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B18|SOMA_SUB|C_out~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~313_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1300_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1158_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[19]~5_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~85_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~107_combout\ : std_logic;
SIGNAL \ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B19|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[19]~16_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~57_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1157_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[19]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~314_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1304_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1163_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[20]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~86_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~108_combout\ : std_logic;
SIGNAL \ULA|ULA_B19|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B20|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[20]~23_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~58_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1162_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[20]~20_combout\ : std_logic;
SIGNAL \ULA|ULA_B20|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~315_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1308_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1168_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[21]~7_combout\ : std_logic;
SIGNAL \ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B21|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~87_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~55_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[21]~22_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~59_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1167_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[21]~21_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~316_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1312_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1173_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[22]~8_combout\ : std_logic;
SIGNAL \ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B22|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B22|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B22|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~88_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~56_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[22]~21_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~60_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1172_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[22]~22_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~317_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1316_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1178_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[23]~9_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~89_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~109_combout\ : std_logic;
SIGNAL \ULA|ULA_B22|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B23|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[23]~20_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~61_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1177_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[23]~23_combout\ : std_logic;
SIGNAL \ULA|ULA_B23|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B23|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B23|SOMA_SUB|C_out~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~318_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1320_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1183_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[24]~10_combout\ : std_logic;
SIGNAL \ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B24|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~90_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~58_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[24]~24_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~62_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1182_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[24]~24_combout\ : std_logic;
SIGNAL \ULA|ULA_B24|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~319_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1324_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1188_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[25]~11_combout\ : std_logic;
SIGNAL \ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B25|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~59_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[25]~25_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~63_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1187_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaA[25]~25_combout\ : std_logic;
SIGNAL \ULA|ULA_B25|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B27|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B28|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~9_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~7_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~118_cout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~2\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~6\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~9_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~10_combout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~5_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~8_combout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~1_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~14\ : std_logic;
SIGNAL \SOMADOR|Add0~22\ : std_logic;
SIGNAL \SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~10\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~18\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~13_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~11_combout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~14_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|Mux0~1_combout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~17_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|Equal0~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[3]~21_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~98_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~99_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~18\ : std_logic;
SIGNAL \SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~14\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[8]~6_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~26\ : std_logic;
SIGNAL \SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~22\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[9]~7_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~30\ : std_logic;
SIGNAL \SOMADOR|Add0~33_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~26\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[10]~8_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~34\ : std_logic;
SIGNAL \SOMADOR|Add0~37_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~30\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~33_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[11]~9_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~38\ : std_logic;
SIGNAL \SOMADOR|Add0~41_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~34\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~37_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[12]~10_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~42\ : std_logic;
SIGNAL \SOMADOR|Add0~45_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~38\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~41_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[13]~11_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~46\ : std_logic;
SIGNAL \SOMADOR|Add0~49_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~42\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~45_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[14]~12_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~50\ : std_logic;
SIGNAL \SOMADOR|Add0~53_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~46\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~49_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[15]~13_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~54\ : std_logic;
SIGNAL \SOMADOR|Add0~57_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~50\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~53_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[16]~14_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~58\ : std_logic;
SIGNAL \SOMADOR|Add0~61_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~54\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~57_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[17]~15_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~62\ : std_logic;
SIGNAL \SOMADOR|Add0~65_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~58\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~61_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[18]~16_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~66\ : std_logic;
SIGNAL \SOMADOR|Add0~69_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~62\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~65_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[19]~17_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~70\ : std_logic;
SIGNAL \SOMADOR|Add0~73_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~66\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~69_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[20]~18_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~74\ : std_logic;
SIGNAL \SOMADOR|Add0~77_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~70\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~73_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[21]~19_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~78\ : std_logic;
SIGNAL \SOMADOR|Add0~81_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~74\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~77_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[22]~20_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~82\ : std_logic;
SIGNAL \SOMADOR|Add0~85_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~78\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~81_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[23]~21_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~86\ : std_logic;
SIGNAL \SOMADOR|Add0~89_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~82\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~85_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[24]~22_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~90\ : std_logic;
SIGNAL \SOMADOR|Add0~93_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~86\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~89_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[25]~23_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~94\ : std_logic;
SIGNAL \SOMADOR|Add0~97_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~90\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~93_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[26]~24_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~98\ : std_logic;
SIGNAL \SOMADOR|Add0~101_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~94\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~97_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[27]~25_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~102\ : std_logic;
SIGNAL \SOMADOR|Add0~105_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~98\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~101_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[28]~26_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~106\ : std_logic;
SIGNAL \SOMADOR|Add0~109_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~102\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~105_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[29]~27_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~110\ : std_logic;
SIGNAL \SOMADOR|Add0~113_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~106\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~109_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[30]~28_combout\ : std_logic;
SIGNAL \SOMADOR|Add0~114\ : std_logic;
SIGNAL \SOMADOR|Add0~117_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~110\ : std_logic;
SIGNAL \SOMADOR_beq|Add0~113_sumout\ : std_logic;
SIGNAL \MUX_Prox_PC|saida_MUX[31]~29_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SOMADOR_beq|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1348_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1344_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1340_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1336_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1332_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1328_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1324_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1320_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1316_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1312_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1308_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1304_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1300_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1296_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1292_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1288_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1284_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1280_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1276_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1272_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1268_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1264_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1260_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1256_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1252_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1248_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1244_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1240_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1236_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1232_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1228_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1224_combout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1218_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1213_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1208_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1203_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1198_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1193_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1188_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1183_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1173_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1168_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1163_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1153_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1148_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1143_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1138_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1133_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1123_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1113_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \ULA|ULA_B5|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[5]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \ULA|ULA_B4|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[4]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \ULA|ULA_B3|SOMA_SUB|ALT_INV_C_out~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B3|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B3|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[3]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \ULA|ULA_B2|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[2]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \ULA|ULA_B1|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \SOMADOR_beq|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \SOMADOR|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \ULA|ULA_B25|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[25]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[25]~25_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1187_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \ULA|ULA_B24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[24]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[24]~24_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B23|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[23]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[23]~23_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1177_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[22]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[22]~22_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1172_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[21]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[21]~21_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1167_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \ULA|ULA_B20|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[20]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[20]~20_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \ULA|ULA_B19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[19]~5_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[19]~19_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1157_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \ULA|ULA_B18|SOMA_SUB|ALT_INV_C_out~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B18|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B18|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[18]~4_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[18]~18_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1152_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[17]~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~17_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1147_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[16]~2_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~16_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \ULA|ULA_B15|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[15]~1_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[15]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1137_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \ULA|ULA_B14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[14]~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[14]~14_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1132_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B13|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[13]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1127_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[12]~12_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~11_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1117_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \ULA|ULA_B10|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B10|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[10]~10_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1112_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \ULA|ULA_B9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[9]~9_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1107_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \ULA|ULA_B8|SOMA_SUB|ALT_INV_C_out~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B8|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B8|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[8]~8_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[7]~7_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1097_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \ULA|ULA_B6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~11_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \ULA|ULA_B9|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B9|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[11]~8_combout\ : std_logic;
SIGNAL \ULA|ULA_B11|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~103_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B7|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~102_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \ULA|ULA_B5|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \ULA|ULA_B7|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B6|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~101_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~100_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~99_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B1|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B2|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~98_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \ULA|ULA_B0|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~18_combout\ : std_logic;
SIGNAL \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[31]~17_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[31]~31_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1217_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[30]~16_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1212_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[29]~15_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1207_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B28|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[28]~14_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[28]~28_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1202_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[27]~13_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1197_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \ULA|ULA_B26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaB[26]~12_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_saidaA[26]~26_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1192_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \ULA|ULA_B31|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B31|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B31|SOMA_SUB|ALT_INV_soma~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B30|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B30|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B30|SOMA_SUB|ALT_INV_soma~combout\ : std_logic;
SIGNAL \ULA|ULA_B29|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B28|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B27|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B27|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B27|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B27|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \ULA|ULA_B26|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B25|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \ULA|ULA_B24|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~23_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \ULA|ULA_B21|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \ULA|ULA_B22|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B22|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[23]~20_combout\ : std_logic;
SIGNAL \ULA|ULA_B23|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B22|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~109_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B19|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~108_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~19_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \ULA|ULA_B17|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B17|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA_B17|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B17|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[19]~16_combout\ : std_logic;
SIGNAL \ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~107_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~106_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~15_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \ULA|ULA_B13|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B12|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[15]~12_combout\ : std_logic;
SIGNAL \ULA|ULA_B15|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~105_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B11|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~104_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~115_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~114_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~113_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~112_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
RESULTADO <= ww_RESULTADO;
REG_RS <= ww_REG_RS;
REG_RT <= ww_REG_RT;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
TESTE_ULA <= ww_TESTE_ULA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\SOMADOR_beq|ALT_INV_Add0~45_sumout\ <= NOT \SOMADOR_beq|Add0~45_sumout\;
\SOMADOR|ALT_INV_Add0~49_sumout\ <= NOT \SOMADOR|Add0~49_sumout\;
\SOMADOR_beq|ALT_INV_Add0~41_sumout\ <= NOT \SOMADOR_beq|Add0~41_sumout\;
\SOMADOR|ALT_INV_Add0~45_sumout\ <= NOT \SOMADOR|Add0~45_sumout\;
\SOMADOR_beq|ALT_INV_Add0~37_sumout\ <= NOT \SOMADOR_beq|Add0~37_sumout\;
\SOMADOR|ALT_INV_Add0~41_sumout\ <= NOT \SOMADOR|Add0~41_sumout\;
\SOMADOR_beq|ALT_INV_Add0~33_sumout\ <= NOT \SOMADOR_beq|Add0~33_sumout\;
\SOMADOR|ALT_INV_Add0~37_sumout\ <= NOT \SOMADOR|Add0~37_sumout\;
\SOMADOR_beq|ALT_INV_Add0~29_sumout\ <= NOT \SOMADOR_beq|Add0~29_sumout\;
\SOMADOR|ALT_INV_Add0~33_sumout\ <= NOT \SOMADOR|Add0~33_sumout\;
\SOMADOR_beq|ALT_INV_Add0~25_sumout\ <= NOT \SOMADOR_beq|Add0~25_sumout\;
\SOMADOR|ALT_INV_Add0~29_sumout\ <= NOT \SOMADOR|Add0~29_sumout\;
\SOMADOR_beq|ALT_INV_Add0~21_sumout\ <= NOT \SOMADOR_beq|Add0~21_sumout\;
\SOMADOR|ALT_INV_Add0~25_sumout\ <= NOT \SOMADOR|Add0~25_sumout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1348_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1348_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1344_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1344_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1340_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1340_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1336_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1336_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1332_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1332_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1328_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1328_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1324_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1324_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1320_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1320_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1316_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1316_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1312_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1312_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1308_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1308_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1304_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1304_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1300_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1300_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1296_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1296_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1292_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1292_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1288_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1288_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1284_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1284_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1280_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1280_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1276_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1276_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1272_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1272_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1268_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1268_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1264_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1264_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1260_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1260_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1256_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1256_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1252_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1252_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1248_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1248_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1244_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1244_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1240_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1240_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1236_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1236_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1232_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1232_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1228_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1228_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1224_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1224_combout\;
\SOMADOR_beq|ALT_INV_Add0~17_sumout\ <= NOT \SOMADOR_beq|Add0~17_sumout\;
\SOMADOR|ALT_INV_Add0~21_sumout\ <= NOT \SOMADOR|Add0~21_sumout\;
\SOMADOR_beq|ALT_INV_Add0~13_sumout\ <= NOT \SOMADOR_beq|Add0~13_sumout\;
\SOMADOR|ALT_INV_Add0~17_sumout\ <= NOT \SOMADOR|Add0~17_sumout\;
\SOMADOR_beq|ALT_INV_Add0~9_sumout\ <= NOT \SOMADOR_beq|Add0~9_sumout\;
\SOMADOR|ALT_INV_Add0~13_sumout\ <= NOT \SOMADOR|Add0~13_sumout\;
\SOMADOR_beq|ALT_INV_Add0~5_sumout\ <= NOT \SOMADOR_beq|Add0~5_sumout\;
\SOMADOR|ALT_INV_Add0~9_sumout\ <= NOT \SOMADOR|Add0~9_sumout\;
\SOMADOR_beq|ALT_INV_Add0~1_sumout\ <= NOT \SOMADOR_beq|Add0~1_sumout\;
\SOMADOR|ALT_INV_Add0~5_sumout\ <= NOT \SOMADOR|Add0~5_sumout\;
\SOMADOR|ALT_INV_Add0~1_sumout\ <= NOT \SOMADOR|Add0~1_sumout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1218_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1218_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1213_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1213_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1208_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1208_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1203_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1203_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1198_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1198_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1193_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1193_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1188_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1188_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1183_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1183_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1178_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1173_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1173_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1168_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1168_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1163_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1163_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1158_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1153_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1153_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1148_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1148_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1143_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1143_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1138_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1138_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1133_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1133_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1128_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1123_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1123_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1118_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1113_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1113_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1108_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1103_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1098_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1093_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1088_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1083_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1078_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1073_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1068_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1063_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~44_q\ <= NOT \BANCO_REGISTRADORES|registrador~44_q\;
\ULA|ULA_B5|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B5|SOMA_SUB|C_out~combout\;
\ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[5]~5_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[5]~5_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1087_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1087_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~299_q\ <= NOT \BANCO_REGISTRADORES|registrador~299_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~43_q\ <= NOT \BANCO_REGISTRADORES|registrador~43_q\;
\ULA|ULA_B4|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[4]~4_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[4]~4_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1082_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~298_q\ <= NOT \BANCO_REGISTRADORES|registrador~298_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~42_q\ <= NOT \BANCO_REGISTRADORES|registrador~42_q\;
\ULA|ULA_B3|SOMA_SUB|ALT_INV_C_out~1_combout\ <= NOT \ULA|ULA_B3|SOMA_SUB|C_out~1_combout\;
\ULA|ULA_B3|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \ULA|ULA_B3|SOMA_SUB|C_out~0_combout\;
\ULA|ULA_B3|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \ULA|ULA_B3|SOMA_SUB|saida_xor~combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[3]~3_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[3]~3_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1077_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1077_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~297_q\ <= NOT \BANCO_REGISTRADORES|registrador~297_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~41_q\ <= NOT \BANCO_REGISTRADORES|registrador~41_q\;
\ULA|ULA_B2|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[2]~2_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[2]~2_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1072_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~296_q\ <= NOT \BANCO_REGISTRADORES|registrador~296_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~40_q\ <= NOT \BANCO_REGISTRADORES|registrador~40_q\;
\ULA|ULA_B1|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[1]~1_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[1]~1_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1067_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1067_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~295_q\ <= NOT \BANCO_REGISTRADORES|registrador~295_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~39_q\ <= NOT \BANCO_REGISTRADORES|registrador~39_q\;
\ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B0|SOMA_SUB|C_out~combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[0]~0_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[0]~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1062_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1062_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~13_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~294_q\ <= NOT \BANCO_REGISTRADORES|registrador~294_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~38_q\ <= NOT \BANCO_REGISTRADORES|registrador~38_q\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~12_combout\;
\UNIDADE_DE_CONTROLE|ALT_INV_Mux0~0_combout\ <= NOT \UNIDADE_DE_CONTROLE|Mux0~0_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~11_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~11_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~10_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~10_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~9_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~9_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~8_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~8_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~7_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~7_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~6_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~6_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~5_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~5_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~4_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~3_combout\;
\UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\ <= NOT \UNIDADE_DE_CONTROLE|Mux3~0_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~2_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~1_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~0_combout\;
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\MEMORIA_DADOS|ALT_INV_ram~69_q\ <= NOT \MEMORIA_DADOS|ram~69_q\;
\ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA|ULA_B0|MUX|saida_MUX~2_combout\;
\SOMADOR_beq|ALT_INV_Add0~113_sumout\ <= NOT \SOMADOR_beq|Add0~113_sumout\;
\SOMADOR|ALT_INV_Add0~117_sumout\ <= NOT \SOMADOR|Add0~117_sumout\;
\SOMADOR_beq|ALT_INV_Add0~109_sumout\ <= NOT \SOMADOR_beq|Add0~109_sumout\;
\SOMADOR|ALT_INV_Add0~113_sumout\ <= NOT \SOMADOR|Add0~113_sumout\;
\SOMADOR_beq|ALT_INV_Add0~105_sumout\ <= NOT \SOMADOR_beq|Add0~105_sumout\;
\SOMADOR|ALT_INV_Add0~109_sumout\ <= NOT \SOMADOR|Add0~109_sumout\;
\SOMADOR_beq|ALT_INV_Add0~101_sumout\ <= NOT \SOMADOR_beq|Add0~101_sumout\;
\SOMADOR|ALT_INV_Add0~105_sumout\ <= NOT \SOMADOR|Add0~105_sumout\;
\SOMADOR_beq|ALT_INV_Add0~97_sumout\ <= NOT \SOMADOR_beq|Add0~97_sumout\;
\SOMADOR|ALT_INV_Add0~101_sumout\ <= NOT \SOMADOR|Add0~101_sumout\;
\SOMADOR_beq|ALT_INV_Add0~93_sumout\ <= NOT \SOMADOR_beq|Add0~93_sumout\;
\SOMADOR|ALT_INV_Add0~97_sumout\ <= NOT \SOMADOR|Add0~97_sumout\;
\SOMADOR_beq|ALT_INV_Add0~89_sumout\ <= NOT \SOMADOR_beq|Add0~89_sumout\;
\SOMADOR|ALT_INV_Add0~93_sumout\ <= NOT \SOMADOR|Add0~93_sumout\;
\SOMADOR_beq|ALT_INV_Add0~85_sumout\ <= NOT \SOMADOR_beq|Add0~85_sumout\;
\SOMADOR|ALT_INV_Add0~89_sumout\ <= NOT \SOMADOR|Add0~89_sumout\;
\SOMADOR_beq|ALT_INV_Add0~81_sumout\ <= NOT \SOMADOR_beq|Add0~81_sumout\;
\SOMADOR|ALT_INV_Add0~85_sumout\ <= NOT \SOMADOR|Add0~85_sumout\;
\SOMADOR_beq|ALT_INV_Add0~77_sumout\ <= NOT \SOMADOR_beq|Add0~77_sumout\;
\SOMADOR|ALT_INV_Add0~81_sumout\ <= NOT \SOMADOR|Add0~81_sumout\;
\SOMADOR_beq|ALT_INV_Add0~73_sumout\ <= NOT \SOMADOR_beq|Add0~73_sumout\;
\SOMADOR|ALT_INV_Add0~77_sumout\ <= NOT \SOMADOR|Add0~77_sumout\;
\SOMADOR_beq|ALT_INV_Add0~69_sumout\ <= NOT \SOMADOR_beq|Add0~69_sumout\;
\SOMADOR|ALT_INV_Add0~73_sumout\ <= NOT \SOMADOR|Add0~73_sumout\;
\SOMADOR_beq|ALT_INV_Add0~65_sumout\ <= NOT \SOMADOR_beq|Add0~65_sumout\;
\SOMADOR|ALT_INV_Add0~69_sumout\ <= NOT \SOMADOR|Add0~69_sumout\;
\SOMADOR_beq|ALT_INV_Add0~61_sumout\ <= NOT \SOMADOR_beq|Add0~61_sumout\;
\SOMADOR|ALT_INV_Add0~65_sumout\ <= NOT \SOMADOR|Add0~65_sumout\;
\SOMADOR_beq|ALT_INV_Add0~57_sumout\ <= NOT \SOMADOR_beq|Add0~57_sumout\;
\SOMADOR|ALT_INV_Add0~61_sumout\ <= NOT \SOMADOR|Add0~61_sumout\;
\SOMADOR_beq|ALT_INV_Add0~53_sumout\ <= NOT \SOMADOR_beq|Add0~53_sumout\;
\SOMADOR|ALT_INV_Add0~57_sumout\ <= NOT \SOMADOR|Add0~57_sumout\;
\SOMADOR_beq|ALT_INV_Add0~49_sumout\ <= NOT \SOMADOR_beq|Add0~49_sumout\;
\SOMADOR|ALT_INV_Add0~53_sumout\ <= NOT \SOMADOR|Add0~53_sumout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~64_q\ <= NOT \BANCO_REGISTRADORES|registrador~64_q\;
\ULA|ULA_B25|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B25|SOMA_SUB|C_out~combout\;
\ULA|ULA_B25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[25]~11_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[25]~11_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[25]~25_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[25]~25_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1187_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1187_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~319_q\ <= NOT \BANCO_REGISTRADORES|registrador~319_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~63_q\ <= NOT \BANCO_REGISTRADORES|registrador~63_q\;
\ULA|ULA_B24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[24]~10_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[24]~10_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[24]~24_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[24]~24_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1182_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~318_q\ <= NOT \BANCO_REGISTRADORES|registrador~318_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~62_q\ <= NOT \BANCO_REGISTRADORES|registrador~62_q\;
\ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~1_combout\ <= NOT \ULA|ULA_B23|SOMA_SUB|C_out~1_combout\;
\ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \ULA|ULA_B23|SOMA_SUB|C_out~0_combout\;
\ULA|ULA_B23|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \ULA|ULA_B23|SOMA_SUB|saida_xor~combout\;
\ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[23]~9_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[23]~9_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[23]~23_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[23]~23_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1177_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1177_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~317_q\ <= NOT \BANCO_REGISTRADORES|registrador~317_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~61_q\ <= NOT \BANCO_REGISTRADORES|registrador~61_q\;
\ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[22]~8_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[22]~8_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[22]~22_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[22]~22_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1172_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1172_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~316_q\ <= NOT \BANCO_REGISTRADORES|registrador~316_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~60_q\ <= NOT \BANCO_REGISTRADORES|registrador~60_q\;
\ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[21]~7_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[21]~7_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[21]~21_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[21]~21_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1167_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1167_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~315_q\ <= NOT \BANCO_REGISTRADORES|registrador~315_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~59_q\ <= NOT \BANCO_REGISTRADORES|registrador~59_q\;
\ULA|ULA_B20|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B20|SOMA_SUB|C_out~combout\;
\ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[20]~6_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[20]~6_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[20]~20_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[20]~20_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1162_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~314_q\ <= NOT \BANCO_REGISTRADORES|registrador~314_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~58_q\ <= NOT \BANCO_REGISTRADORES|registrador~58_q\;
\ULA|ULA_B19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[19]~5_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[19]~5_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[19]~19_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[19]~19_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1157_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1157_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~313_q\ <= NOT \BANCO_REGISTRADORES|registrador~313_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~57_q\ <= NOT \BANCO_REGISTRADORES|registrador~57_q\;
\ULA|ULA_B18|SOMA_SUB|ALT_INV_C_out~1_combout\ <= NOT \ULA|ULA_B18|SOMA_SUB|C_out~1_combout\;
\ULA|ULA_B18|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \ULA|ULA_B18|SOMA_SUB|C_out~0_combout\;
\ULA|ULA_B18|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \ULA|ULA_B18|SOMA_SUB|saida_xor~combout\;
\ULA|ULA_B18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[18]~4_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[18]~4_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[18]~18_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[18]~18_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1152_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1152_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~312_q\ <= NOT \BANCO_REGISTRADORES|registrador~312_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~56_q\ <= NOT \BANCO_REGISTRADORES|registrador~56_q\;
\ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[17]~3_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[17]~3_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[17]~17_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[17]~17_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1147_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1147_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~311_q\ <= NOT \BANCO_REGISTRADORES|registrador~311_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~55_q\ <= NOT \BANCO_REGISTRADORES|registrador~55_q\;
\ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[16]~2_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[16]~2_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[16]~16_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[16]~16_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1142_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~310_q\ <= NOT \BANCO_REGISTRADORES|registrador~310_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~54_q\ <= NOT \BANCO_REGISTRADORES|registrador~54_q\;
\ULA|ULA_B15|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B15|SOMA_SUB|C_out~combout\;
\ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[15]~1_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[15]~1_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[15]~15_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[15]~15_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1137_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1137_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~309_q\ <= NOT \BANCO_REGISTRADORES|registrador~309_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~53_q\ <= NOT \BANCO_REGISTRADORES|registrador~53_q\;
\ULA|ULA_B14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[14]~0_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[14]~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[14]~14_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[14]~14_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1132_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1132_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~308_q\ <= NOT \BANCO_REGISTRADORES|registrador~308_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~52_q\ <= NOT \BANCO_REGISTRADORES|registrador~52_q\;
\ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~1_combout\ <= NOT \ULA|ULA_B13|SOMA_SUB|C_out~1_combout\;
\ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \ULA|ULA_B13|SOMA_SUB|C_out~0_combout\;
\ULA|ULA_B13|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \ULA|ULA_B13|SOMA_SUB|saida_xor~combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[13]~13_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[13]~13_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1127_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1127_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~307_q\ <= NOT \BANCO_REGISTRADORES|registrador~307_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~51_q\ <= NOT \BANCO_REGISTRADORES|registrador~51_q\;
\ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[12]~12_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[12]~12_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1122_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~306_q\ <= NOT \BANCO_REGISTRADORES|registrador~306_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~50_q\ <= NOT \BANCO_REGISTRADORES|registrador~50_q\;
\ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[11]~11_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[11]~11_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1117_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1117_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~305_q\ <= NOT \BANCO_REGISTRADORES|registrador~305_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~49_q\ <= NOT \BANCO_REGISTRADORES|registrador~49_q\;
\ULA|ULA_B10|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B10|SOMA_SUB|C_out~combout\;
\ULA|ULA_B10|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[10]~10_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[10]~10_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1112_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1112_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~304_q\ <= NOT \BANCO_REGISTRADORES|registrador~304_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~48_q\ <= NOT \BANCO_REGISTRADORES|registrador~48_q\;
\ULA|ULA_B9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[9]~9_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[9]~9_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1107_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1107_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~303_q\ <= NOT \BANCO_REGISTRADORES|registrador~303_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~47_q\ <= NOT \BANCO_REGISTRADORES|registrador~47_q\;
\ULA|ULA_B8|SOMA_SUB|ALT_INV_C_out~1_combout\ <= NOT \ULA|ULA_B8|SOMA_SUB|C_out~1_combout\;
\ULA|ULA_B8|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \ULA|ULA_B8|SOMA_SUB|C_out~0_combout\;
\ULA|ULA_B8|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \ULA|ULA_B8|SOMA_SUB|saida_xor~combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[8]~8_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[8]~8_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1102_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~302_q\ <= NOT \BANCO_REGISTRADORES|registrador~302_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~46_q\ <= NOT \BANCO_REGISTRADORES|registrador~46_q\;
\ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[7]~7_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[7]~7_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1097_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1097_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~301_q\ <= NOT \BANCO_REGISTRADORES|registrador~301_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~45_q\ <= NOT \BANCO_REGISTRADORES|registrador~45_q\;
\ULA|ULA_B6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[6]~6_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[6]~6_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1092_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~300_q\ <= NOT \BANCO_REGISTRADORES|registrador~300_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[8]~11_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[8]~11_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[9]~10_combout\;
\MEMORIA_DADOS|ALT_INV_ram~43_q\ <= NOT \MEMORIA_DADOS|ram~43_q\;
\MEMORIA_DADOS|ALT_INV_ram~75_q\ <= NOT \MEMORIA_DADOS|ram~75_q\;
\ULA|ULA_B9|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B9|MUX|saida_MUX~0_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[10]~9_combout\;
\MEMORIA_DADOS|ALT_INV_ram~44_q\ <= NOT \MEMORIA_DADOS|ram~44_q\;
\MEMORIA_DADOS|ALT_INV_ram~76_q\ <= NOT \MEMORIA_DADOS|ram~76_q\;
\ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B10|MUX|saida_MUX~0_combout\;
\ULA|ULA_B9|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B9|SOMA_SUB|C_out~combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[11]~8_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[11]~8_combout\;
\ULA|ULA_B11|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B11|MUX|saida_MUX~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~103_combout\ <= NOT \MEMORIA_DADOS|ram~103_combout\;
\MEMORIA_DADOS|ALT_INV_ram~45_q\ <= NOT \MEMORIA_DADOS|ram~45_q\;
\MEMORIA_DADOS|ALT_INV_ram~77_q\ <= NOT \MEMORIA_DADOS|ram~77_q\;
\ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B8|MUX|saida_MUX~0_combout\;
\ULA|ULA_B8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA|ULA_B7|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B7|SOMA_SUB|C_out~combout\;
\MEMORIA_DADOS|ALT_INV_ram~102_combout\ <= NOT \MEMORIA_DADOS|ram~102_combout\;
\MEMORIA_DADOS|ALT_INV_ram~42_q\ <= NOT \MEMORIA_DADOS|ram~42_q\;
\MEMORIA_DADOS|ALT_INV_ram~74_q\ <= NOT \MEMORIA_DADOS|ram~74_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[4]~7_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[4]~7_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[5]~6_combout\;
\MEMORIA_DADOS|ALT_INV_ram~39_q\ <= NOT \MEMORIA_DADOS|ram~39_q\;
\MEMORIA_DADOS|ALT_INV_ram~71_q\ <= NOT \MEMORIA_DADOS|ram~71_q\;
\ULA|ULA_B5|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B5|MUX|saida_MUX~0_combout\;
\ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B4|SOMA_SUB|C_out~combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[6]~5_combout\;
\MEMORIA_DADOS|ALT_INV_ram~40_q\ <= NOT \MEMORIA_DADOS|ram~40_q\;
\MEMORIA_DADOS|ALT_INV_ram~72_q\ <= NOT \MEMORIA_DADOS|ram~72_q\;
\ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B6|MUX|saida_MUX~0_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[7]~4_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[7]~4_combout\;
\ULA|ULA_B7|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B7|MUX|saida_MUX~0_combout\;
\ULA|ULA_B6|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B6|SOMA_SUB|C_out~combout\;
\MEMORIA_DADOS|ALT_INV_ram~101_combout\ <= NOT \MEMORIA_DADOS|ram~101_combout\;
\MEMORIA_DADOS|ALT_INV_ram~41_q\ <= NOT \MEMORIA_DADOS|ram~41_q\;
\MEMORIA_DADOS|ALT_INV_ram~73_q\ <= NOT \MEMORIA_DADOS|ram~73_q\;
\ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B4|MUX|saida_MUX~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~100_combout\ <= NOT \MEMORIA_DADOS|ram~100_combout\;
\MEMORIA_DADOS|ALT_INV_ram~38_q\ <= NOT \MEMORIA_DADOS|ram~38_q\;
\MEMORIA_DADOS|ALT_INV_ram~70_q\ <= NOT \MEMORIA_DADOS|ram~70_q\;
\MEMORIA_DADOS|ALT_INV_ram~99_combout\ <= NOT \MEMORIA_DADOS|ram~99_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[3]~3_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[1]~2_combout\;
\MEMORIA_DADOS|ALT_INV_ram~35_q\ <= NOT \MEMORIA_DADOS|ram~35_q\;
\MEMORIA_DADOS|ALT_INV_ram~67_q\ <= NOT \MEMORIA_DADOS|ram~67_q\;
\ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B1|MUX|saida_MUX~0_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[2]~1_combout\;
\MEMORIA_DADOS|ALT_INV_ram~36_q\ <= NOT \MEMORIA_DADOS|ram~36_q\;
\MEMORIA_DADOS|ALT_INV_ram~68_q\ <= NOT \MEMORIA_DADOS|ram~68_q\;
\ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B2|MUX|saida_MUX~0_combout\;
\ULA|ULA_B1|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B1|SOMA_SUB|C_out~combout\;
\ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA_B0|MUX|saida_MUX~1_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[0]~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~34_q\ <= NOT \MEMORIA_DADOS|ram~34_q\;
\MEMORIA_DADOS|ALT_INV_ram~66_q\ <= NOT \MEMORIA_DADOS|ram~66_q\;
\UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\ <= NOT \UNIDADE_DE_CONTROLE|Mux4~0_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~16_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~16_combout\;
\ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B3|MUX|saida_MUX~0_combout\;
\ULA|ULA_B3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA|ULA_B2|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B2|SOMA_SUB|C_out~combout\;
\MEMORIA_DADOS|ALT_INV_ram~98_combout\ <= NOT \MEMORIA_DADOS|ram~98_combout\;
\MEMORIA_DADOS|ALT_INV_ram~37_q\ <= NOT \MEMORIA_DADOS|ram~37_q\;
\ULA|ULA_B0|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B0|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[0]~18_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[0]~18_combout\;
\ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B0|MUX|saida_MUX~0_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~15_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~14_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~14_combout\;
\ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[31]~17_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[31]~17_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[31]~31_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[31]~31_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1217_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1217_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~325_q\ <= NOT \BANCO_REGISTRADORES|registrador~325_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~69_q\ <= NOT \BANCO_REGISTRADORES|registrador~69_q\;
\ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B30|SOMA_SUB|C_out~combout\;
\ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[30]~16_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[30]~16_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[30]~30_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1212_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1212_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~324_q\ <= NOT \BANCO_REGISTRADORES|registrador~324_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~68_q\ <= NOT \BANCO_REGISTRADORES|registrador~68_q\;
\ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[29]~15_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[29]~15_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[29]~29_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1207_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1207_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~323_q\ <= NOT \BANCO_REGISTRADORES|registrador~323_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~67_q\ <= NOT \BANCO_REGISTRADORES|registrador~67_q\;
\ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~1_combout\ <= NOT \ULA|ULA_B28|SOMA_SUB|C_out~1_combout\;
\ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \ULA|ULA_B28|SOMA_SUB|C_out~0_combout\;
\ULA|ULA_B28|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \ULA|ULA_B28|SOMA_SUB|saida_xor~combout\;
\ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[28]~14_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[28]~14_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[28]~28_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[28]~28_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1202_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1202_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~322_q\ <= NOT \BANCO_REGISTRADORES|registrador~322_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~66_q\ <= NOT \BANCO_REGISTRADORES|registrador~66_q\;
\ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[27]~13_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[27]~13_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[27]~27_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1197_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1197_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~321_q\ <= NOT \BANCO_REGISTRADORES|registrador~321_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~65_q\ <= NOT \BANCO_REGISTRADORES|registrador~65_q\;
\ULA|ULA_B26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaB[26]~12_combout\ <= NOT \BANCO_REGISTRADORES|saidaB[26]~12_combout\;
\BANCO_REGISTRADORES|ALT_INV_saidaA[26]~26_combout\ <= NOT \BANCO_REGISTRADORES|saidaA[26]~26_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1192_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1192_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~320_q\ <= NOT \BANCO_REGISTRADORES|registrador~320_q\;
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ULA|ULA_B31|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA_B31|MUX|saida_MUX~1_combout\;
\ULA|ULA_B31|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B31|MUX|saida_MUX~0_combout\;
\ULA|ULA_B31|SOMA_SUB|ALT_INV_soma~0_combout\ <= NOT \ULA|ULA_B31|SOMA_SUB|soma~0_combout\;
\ULA|ULA_B30|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA_B30|MUX|saida_MUX~1_combout\;
\ULA|ULA_B30|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B30|MUX|saida_MUX~0_combout\;
\ULA|ULA_B30|SOMA_SUB|ALT_INV_soma~combout\ <= NOT \ULA|ULA_B30|SOMA_SUB|soma~combout\;
\ULA|ULA_B29|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B29|MUX|saida_MUX~0_combout\;
\ULA|ULA_B28|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B28|MUX|saida_MUX~0_combout\;
\ULA|ULA_B27|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B27|SOMA_SUB|C_out~combout\;
\ULA|ULA_B27|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA_B27|MUX|saida_MUX~1_combout\;
\ULA|ULA_B27|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B27|MUX|saida_MUX~0_combout\;
\ULA|ULA_B27|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \ULA|ULA_B27|SOMA_SUB|saida_xor~combout\;
\ULA|ULA_B26|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B26|MUX|saida_MUX~0_combout\;
\ULA|ULA_B25|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B25|MUX|saida_MUX~0_combout\;
\ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B24|SOMA_SUB|C_out~combout\;
\ULA|ULA_B24|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B24|MUX|saida_MUX~0_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[20]~23_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[20]~23_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[21]~22_combout\;
\MEMORIA_DADOS|ALT_INV_ram~55_q\ <= NOT \MEMORIA_DADOS|ram~55_q\;
\MEMORIA_DADOS|ALT_INV_ram~87_q\ <= NOT \MEMORIA_DADOS|ram~87_q\;
\ULA|ULA_B21|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B21|MUX|saida_MUX~0_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[22]~21_combout\;
\MEMORIA_DADOS|ALT_INV_ram~56_q\ <= NOT \MEMORIA_DADOS|ram~56_q\;
\MEMORIA_DADOS|ALT_INV_ram~88_q\ <= NOT \MEMORIA_DADOS|ram~88_q\;
\ULA|ULA_B22|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA_B22|MUX|saida_MUX~1_combout\;
\ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B22|MUX|saida_MUX~0_combout\;
\ULA|ULA_B22|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \ULA|ULA_B22|SOMA_SUB|saida_xor~combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[23]~20_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[23]~20_combout\;
\ULA|ULA_B23|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B23|MUX|saida_MUX~0_combout\;
\ULA|ULA_B22|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B22|SOMA_SUB|C_out~combout\;
\MEMORIA_DADOS|ALT_INV_ram~109_combout\ <= NOT \MEMORIA_DADOS|ram~109_combout\;
\MEMORIA_DADOS|ALT_INV_ram~57_q\ <= NOT \MEMORIA_DADOS|ram~57_q\;
\MEMORIA_DADOS|ALT_INV_ram~89_q\ <= NOT \MEMORIA_DADOS|ram~89_q\;
\ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B20|MUX|saida_MUX~0_combout\;
\ULA|ULA_B19|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B19|SOMA_SUB|C_out~combout\;
\MEMORIA_DADOS|ALT_INV_ram~108_combout\ <= NOT \MEMORIA_DADOS|ram~108_combout\;
\MEMORIA_DADOS|ALT_INV_ram~54_q\ <= NOT \MEMORIA_DADOS|ram~54_q\;
\MEMORIA_DADOS|ALT_INV_ram~86_q\ <= NOT \MEMORIA_DADOS|ram~86_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[16]~19_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[16]~19_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[17]~18_combout\;
\MEMORIA_DADOS|ALT_INV_ram~51_q\ <= NOT \MEMORIA_DADOS|ram~51_q\;
\MEMORIA_DADOS|ALT_INV_ram~83_q\ <= NOT \MEMORIA_DADOS|ram~83_q\;
\ULA|ULA_B17|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA_B17|MUX|saida_MUX~1_combout\;
\ULA|ULA_B17|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B17|MUX|saida_MUX~0_combout\;
\ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA_B3|MUX|saida_MUX~1_combout\;
\ULA|ULA_B17|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \ULA|ULA_B17|SOMA_SUB|saida_xor~combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[18]~17_combout\;
\MEMORIA_DADOS|ALT_INV_ram~52_q\ <= NOT \MEMORIA_DADOS|ram~52_q\;
\MEMORIA_DADOS|ALT_INV_ram~84_q\ <= NOT \MEMORIA_DADOS|ram~84_q\;
\ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B18|MUX|saida_MUX~0_combout\;
\ULA|ULA_B17|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B17|SOMA_SUB|C_out~combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[19]~16_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[19]~16_combout\;
\ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B19|MUX|saida_MUX~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~107_combout\ <= NOT \MEMORIA_DADOS|ram~107_combout\;
\MEMORIA_DADOS|ALT_INV_ram~53_q\ <= NOT \MEMORIA_DADOS|ram~53_q\;
\MEMORIA_DADOS|ALT_INV_ram~85_q\ <= NOT \MEMORIA_DADOS|ram~85_q\;
\ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B16|MUX|saida_MUX~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~106_combout\ <= NOT \MEMORIA_DADOS|ram~106_combout\;
\MEMORIA_DADOS|ALT_INV_ram~50_q\ <= NOT \MEMORIA_DADOS|ram~50_q\;
\MEMORIA_DADOS|ALT_INV_ram~82_q\ <= NOT \MEMORIA_DADOS|ram~82_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[12]~15_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[12]~15_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[13]~14_combout\;
\MEMORIA_DADOS|ALT_INV_ram~47_q\ <= NOT \MEMORIA_DADOS|ram~47_q\;
\MEMORIA_DADOS|ALT_INV_ram~79_q\ <= NOT \MEMORIA_DADOS|ram~79_q\;
\ULA|ULA_B13|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B13|MUX|saida_MUX~0_combout\;
\ULA|ULA_B12|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B12|SOMA_SUB|C_out~combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[14]~13_combout\;
\MEMORIA_DADOS|ALT_INV_ram~48_q\ <= NOT \MEMORIA_DADOS|ram~48_q\;
\MEMORIA_DADOS|ALT_INV_ram~80_q\ <= NOT \MEMORIA_DADOS|ram~80_q\;
\ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B14|MUX|saida_MUX~0_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[15]~12_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[15]~12_combout\;
\ULA|ULA_B15|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B15|MUX|saida_MUX~0_combout\;
\ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B14|SOMA_SUB|C_out~combout\;
\MEMORIA_DADOS|ALT_INV_ram~105_combout\ <= NOT \MEMORIA_DADOS|ram~105_combout\;
\MEMORIA_DADOS|ALT_INV_ram~49_q\ <= NOT \MEMORIA_DADOS|ram~49_q\;
\MEMORIA_DADOS|ALT_INV_ram~81_q\ <= NOT \MEMORIA_DADOS|ram~81_q\;
\ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA_B12|MUX|saida_MUX~0_combout\;
\ULA|ULA_B11|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \ULA|ULA_B11|SOMA_SUB|C_out~combout\;
\MEMORIA_DADOS|ALT_INV_ram~104_combout\ <= NOT \MEMORIA_DADOS|ram~104_combout\;
\MEMORIA_DADOS|ALT_INV_ram~46_q\ <= NOT \MEMORIA_DADOS|ram~46_q\;
\MEMORIA_DADOS|ALT_INV_ram~78_q\ <= NOT \MEMORIA_DADOS|ram~78_q\;
\UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\ <= NOT \UNIDADE_CONT_ULA|ULActrl[2]~0_combout\;
\BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\ <= NOT \BANCO_REGISTRADORES|Equal0~0_combout\;
\ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA|ULA_B2|MUX|saida_MUX~2_combout\;
\ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA_B2|MUX|saida_MUX~1_combout\;
\MEMORIA_DADOS|ALT_INV_ram~115_combout\ <= NOT \MEMORIA_DADOS|ram~115_combout\;
\MEMORIA_DADOS|ALT_INV_ram~114_combout\ <= NOT \MEMORIA_DADOS|ram~114_combout\;
\MEMORIA_DADOS|ALT_INV_ram~113_combout\ <= NOT \MEMORIA_DADOS|ram~113_combout\;
\MEMORIA_DADOS|ALT_INV_ram~112_combout\ <= NOT \MEMORIA_DADOS|ram~112_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\MEMORIA_DADOS|ALT_INV_ram~65_q\ <= NOT \MEMORIA_DADOS|ram~65_q\;
\MEMORIA_DADOS|ALT_INV_ram~97_q\ <= NOT \MEMORIA_DADOS|ram~97_q\;
\MEMORIA_DADOS|ALT_INV_ram~64_q\ <= NOT \MEMORIA_DADOS|ram~64_q\;
\MEMORIA_DADOS|ALT_INV_ram~96_q\ <= NOT \MEMORIA_DADOS|ram~96_q\;
\MEMORIA_DADOS|ALT_INV_ram~63_q\ <= NOT \MEMORIA_DADOS|ram~63_q\;
\MEMORIA_DADOS|ALT_INV_ram~95_q\ <= NOT \MEMORIA_DADOS|ram~95_q\;
\MEMORIA_DADOS|ALT_INV_ram~62_q\ <= NOT \MEMORIA_DADOS|ram~62_q\;
\MEMORIA_DADOS|ALT_INV_ram~94_q\ <= NOT \MEMORIA_DADOS|ram~94_q\;
\MEMORIA_DADOS|ALT_INV_ram~61_q\ <= NOT \MEMORIA_DADOS|ram~61_q\;
\MEMORIA_DADOS|ALT_INV_ram~93_q\ <= NOT \MEMORIA_DADOS|ram~93_q\;
\MEMORIA_DADOS|ALT_INV_ram~60_q\ <= NOT \MEMORIA_DADOS|ram~60_q\;
\MEMORIA_DADOS|ALT_INV_ram~92_q\ <= NOT \MEMORIA_DADOS|ram~92_q\;
\MEMORIA_DADOS|ALT_INV_ram~59_q\ <= NOT \MEMORIA_DADOS|ram~59_q\;
\MEMORIA_DADOS|ALT_INV_ram~91_q\ <= NOT \MEMORIA_DADOS|ram~91_q\;
\MEMORIA_DADOS|ALT_INV_ram~58_q\ <= NOT \MEMORIA_DADOS|ram~58_q\;
\MEMORIA_DADOS|ALT_INV_ram~90_q\ <= NOT \MEMORIA_DADOS|ram~90_q\;
\UNIDADE_DE_CONTROLE|ALT_INV_Mux2~0_combout\ <= NOT \UNIDADE_DE_CONTROLE|Mux2~0_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~18_combout\;
\UNIDADE_DE_CONTROLE|ALT_INV_Mux8~0_combout\ <= NOT \UNIDADE_DE_CONTROLE|Mux8~0_combout\;
\ALT_INV_comb~9_combout\ <= NOT \comb~9_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\ALT_INV_comb~7_combout\ <= NOT \comb~7_combout\;
\ALT_INV_comb~6_combout\ <= NOT \comb~6_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~17_combout\;
\UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\ <= NOT \UNIDADE_DE_CONTROLE|Mux0~1_combout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECOD_HEX5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\RESULTADO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B0|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[0]~output_o\);

\RESULTADO[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B1|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[1]~output_o\);

\RESULTADO[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B2|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[2]~output_o\);

\RESULTADO[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B3|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[3]~output_o\);

\RESULTADO[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[4]~output_o\);

\RESULTADO[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B5|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[5]~output_o\);

\RESULTADO[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B6|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[6]~output_o\);

\RESULTADO[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B7|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[7]~output_o\);

\RESULTADO[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[8]~output_o\);

\RESULTADO[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B9|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[9]~output_o\);

\RESULTADO[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B10|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[10]~output_o\);

\RESULTADO[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B11|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[11]~output_o\);

\RESULTADO[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[12]~output_o\);

\RESULTADO[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B13|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[13]~output_o\);

\RESULTADO[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B14|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[14]~output_o\);

\RESULTADO[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B15|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[15]~output_o\);

\RESULTADO[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[16]~output_o\);

\RESULTADO[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B17|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[17]~output_o\);

\RESULTADO[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B18|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[18]~output_o\);

\RESULTADO[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B19|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[19]~output_o\);

\RESULTADO[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[20]~output_o\);

\RESULTADO[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B21|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[21]~output_o\);

\RESULTADO[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B22|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[22]~output_o\);

\RESULTADO[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B23|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[23]~output_o\);

\RESULTADO[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B24|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[24]~output_o\);

\RESULTADO[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B25|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[25]~output_o\);

\RESULTADO[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B26|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[26]~output_o\);

\RESULTADO[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B27|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[27]~output_o\);

\RESULTADO[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B28|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[28]~output_o\);

\RESULTADO[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B29|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[29]~output_o\);

\RESULTADO[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B30|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[30]~output_o\);

\RESULTADO[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B31|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \RESULTADO[31]~output_o\);

\REG_RS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => \REG_RS[0]~output_o\);

\REG_RS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => \REG_RS[1]~output_o\);

\REG_RS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[2]~2_combout\,
	devoe => ww_devoe,
	o => \REG_RS[2]~output_o\);

\REG_RS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => \REG_RS[3]~output_o\);

\REG_RS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => \REG_RS[4]~output_o\);

\REG_RS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => \REG_RS[5]~output_o\);

\REG_RS[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => \REG_RS[6]~output_o\);

\REG_RS[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => \REG_RS[7]~output_o\);

\REG_RS[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => \REG_RS[8]~output_o\);

\REG_RS[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => \REG_RS[9]~output_o\);

\REG_RS[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => \REG_RS[10]~output_o\);

\REG_RS[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => \REG_RS[11]~output_o\);

\REG_RS[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => \REG_RS[12]~output_o\);

\REG_RS[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => \REG_RS[13]~output_o\);

\REG_RS[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => \REG_RS[14]~output_o\);

\REG_RS[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => \REG_RS[15]~output_o\);

\REG_RS[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => \REG_RS[16]~output_o\);

\REG_RS[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => \REG_RS[17]~output_o\);

\REG_RS[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => \REG_RS[18]~output_o\);

\REG_RS[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => \REG_RS[19]~output_o\);

\REG_RS[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => \REG_RS[20]~output_o\);

\REG_RS[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => \REG_RS[21]~output_o\);

\REG_RS[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => \REG_RS[22]~output_o\);

\REG_RS[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => \REG_RS[23]~output_o\);

\REG_RS[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => \REG_RS[24]~output_o\);

\REG_RS[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => \REG_RS[25]~output_o\);

\REG_RS[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => \REG_RS[26]~output_o\);

\REG_RS[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => \REG_RS[27]~output_o\);

\REG_RS[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => \REG_RS[28]~output_o\);

\REG_RS[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => \REG_RS[29]~output_o\);

\REG_RS[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => \REG_RS[30]~output_o\);

\REG_RS[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => \REG_RS[31]~output_o\);

\REG_RT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[0]~18_combout\,
	devoe => ww_devoe,
	o => \REG_RT[0]~output_o\);

\REG_RT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[1]~19_combout\,
	devoe => ww_devoe,
	o => \REG_RT[1]~output_o\);

\REG_RT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[2]~20_combout\,
	devoe => ww_devoe,
	o => \REG_RT[2]~output_o\);

\REG_RT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[3]~21_combout\,
	devoe => ww_devoe,
	o => \REG_RT[3]~output_o\);

\REG_RT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[4]~22_combout\,
	devoe => ww_devoe,
	o => \REG_RT[4]~output_o\);

\REG_RT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[5]~23_combout\,
	devoe => ww_devoe,
	o => \REG_RT[5]~output_o\);

\REG_RT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[6]~24_combout\,
	devoe => ww_devoe,
	o => \REG_RT[6]~output_o\);

\REG_RT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[7]~25_combout\,
	devoe => ww_devoe,
	o => \REG_RT[7]~output_o\);

\REG_RT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[8]~26_combout\,
	devoe => ww_devoe,
	o => \REG_RT[8]~output_o\);

\REG_RT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[9]~27_combout\,
	devoe => ww_devoe,
	o => \REG_RT[9]~output_o\);

\REG_RT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[10]~28_combout\,
	devoe => ww_devoe,
	o => \REG_RT[10]~output_o\);

\REG_RT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[11]~29_combout\,
	devoe => ww_devoe,
	o => \REG_RT[11]~output_o\);

\REG_RT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[12]~30_combout\,
	devoe => ww_devoe,
	o => \REG_RT[12]~output_o\);

\REG_RT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[13]~31_combout\,
	devoe => ww_devoe,
	o => \REG_RT[13]~output_o\);

\REG_RT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[14]~0_combout\,
	devoe => ww_devoe,
	o => \REG_RT[14]~output_o\);

\REG_RT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[15]~1_combout\,
	devoe => ww_devoe,
	o => \REG_RT[15]~output_o\);

\REG_RT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[16]~2_combout\,
	devoe => ww_devoe,
	o => \REG_RT[16]~output_o\);

\REG_RT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[17]~3_combout\,
	devoe => ww_devoe,
	o => \REG_RT[17]~output_o\);

\REG_RT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[18]~4_combout\,
	devoe => ww_devoe,
	o => \REG_RT[18]~output_o\);

\REG_RT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[19]~5_combout\,
	devoe => ww_devoe,
	o => \REG_RT[19]~output_o\);

\REG_RT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[20]~6_combout\,
	devoe => ww_devoe,
	o => \REG_RT[20]~output_o\);

\REG_RT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[21]~7_combout\,
	devoe => ww_devoe,
	o => \REG_RT[21]~output_o\);

\REG_RT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[22]~8_combout\,
	devoe => ww_devoe,
	o => \REG_RT[22]~output_o\);

\REG_RT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[23]~9_combout\,
	devoe => ww_devoe,
	o => \REG_RT[23]~output_o\);

\REG_RT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[24]~10_combout\,
	devoe => ww_devoe,
	o => \REG_RT[24]~output_o\);

\REG_RT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[25]~11_combout\,
	devoe => ww_devoe,
	o => \REG_RT[25]~output_o\);

\REG_RT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[26]~12_combout\,
	devoe => ww_devoe,
	o => \REG_RT[26]~output_o\);

\REG_RT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[27]~13_combout\,
	devoe => ww_devoe,
	o => \REG_RT[27]~output_o\);

\REG_RT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[28]~14_combout\,
	devoe => ww_devoe,
	o => \REG_RT[28]~output_o\);

\REG_RT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[29]~15_combout\,
	devoe => ww_devoe,
	o => \REG_RT[29]~output_o\);

\REG_RT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[30]~16_combout\,
	devoe => ww_devoe,
	o => \REG_RT[30]~output_o\);

\REG_RT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCO_REGISTRADORES|saidaB[31]~17_combout\,
	devoe => ww_devoe,
	o => \REG_RT[31]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \PC_OUT[9]~output_o\);

\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => \PC_OUT[10]~output_o\);

\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => \PC_OUT[11]~output_o\);

\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \PC_OUT[12]~output_o\);

\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => \PC_OUT[13]~output_o\);

\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => \PC_OUT[14]~output_o\);

\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => \PC_OUT[15]~output_o\);

\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => \PC_OUT[16]~output_o\);

\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => \PC_OUT[17]~output_o\);

\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => \PC_OUT[18]~output_o\);

\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => \PC_OUT[19]~output_o\);

\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => \PC_OUT[20]~output_o\);

\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => \PC_OUT[21]~output_o\);

\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => \PC_OUT[22]~output_o\);

\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => \PC_OUT[23]~output_o\);

\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => \PC_OUT[24]~output_o\);

\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => \PC_OUT[25]~output_o\);

\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => \PC_OUT[26]~output_o\);

\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => \PC_OUT[27]~output_o\);

\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => \PC_OUT[28]~output_o\);

\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => \PC_OUT[29]~output_o\);

\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => \PC_OUT[30]~output_o\);

\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => \PC_OUT[31]~output_o\);

\TESTE_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B0|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[0]~output_o\);

\TESTE_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B1|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[1]~output_o\);

\TESTE_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B2|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[2]~output_o\);

\TESTE_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B3|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[3]~output_o\);

\TESTE_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[4]~output_o\);

\TESTE_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B5|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[5]~output_o\);

\TESTE_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B6|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[6]~output_o\);

\TESTE_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B7|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[7]~output_o\);

\TESTE_ULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[8]~output_o\);

\TESTE_ULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B9|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[9]~output_o\);

\TESTE_ULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B10|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[10]~output_o\);

\TESTE_ULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B11|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[11]~output_o\);

\TESTE_ULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[12]~output_o\);

\TESTE_ULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B13|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[13]~output_o\);

\TESTE_ULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B14|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[14]~output_o\);

\TESTE_ULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B15|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[15]~output_o\);

\TESTE_ULA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[16]~output_o\);

\TESTE_ULA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B17|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[17]~output_o\);

\TESTE_ULA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B18|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[18]~output_o\);

\TESTE_ULA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B19|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[19]~output_o\);

\TESTE_ULA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[20]~output_o\);

\TESTE_ULA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B21|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[21]~output_o\);

\TESTE_ULA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B22|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[22]~output_o\);

\TESTE_ULA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B23|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[23]~output_o\);

\TESTE_ULA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B24|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[24]~output_o\);

\TESTE_ULA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B25|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[25]~output_o\);

\TESTE_ULA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B26|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[26]~output_o\);

\TESTE_ULA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B27|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[27]~output_o\);

\TESTE_ULA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B28|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[28]~output_o\);

\TESTE_ULA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B29|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[29]~output_o\);

\TESTE_ULA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B30|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[30]~output_o\);

\TESTE_ULA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA_B31|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \TESTE_ULA[31]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSub0|saidaQ~0_combout\);

\detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub0|saidaQ~q\);

\detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \detectorSub0|ALT_INV_saidaQ~q\,
	combout => \detectorSub0|saida~combout\);

\MEMORIA_INSTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~1_combout\ = (!\PC|DOUT\(7) & !\PC|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INSTRUCAO|memROM~1_combout\);

\MEMORIA_INSTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~5_combout\ = ((!\PC|DOUT\(4) & ((\PC|DOUT\(3)))) # (\PC|DOUT\(4) & (!\PC|DOUT\(2)))) # (\PC|DOUT\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101011111111001110101111111100111010111111110011101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INSTRUCAO|memROM~5_combout\);

\MEMORIA_INSTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~6_combout\ = (\MEMORIA_INSTRUCAO|memROM~1_combout\ & !\MEMORIA_INSTRUCAO|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~5_combout\,
	combout => \MEMORIA_INSTRUCAO|memROM~6_combout\);

\SOMADOR|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \SOMADOR|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \SOMADOR|Add0~1_sumout\,
	cout => \SOMADOR|Add0~2\);

\SOMADOR|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~5_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMADOR|Add0~2\ ))
-- \SOMADOR|Add0~6\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMADOR|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \SOMADOR|Add0~2\,
	sumout => \SOMADOR|Add0~5_sumout\,
	cout => \SOMADOR|Add0~6\);

\SOMADOR|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMADOR|Add0~6\ ))
-- \SOMADOR|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMADOR|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \SOMADOR|Add0~6\,
	sumout => \SOMADOR|Add0~9_sumout\,
	cout => \SOMADOR|Add0~10\);

\SOMADOR|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMADOR|Add0~10\ ))
-- \SOMADOR|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMADOR|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \SOMADOR|Add0~10\,
	sumout => \SOMADOR|Add0~13_sumout\,
	cout => \SOMADOR|Add0~14\);

\ULA|ULA_B2|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B2|MUX|saida_MUX~2_combout\ = ( \PC|DOUT\(3) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(6) & !\PC|DOUT\(5))) ) ) ) # ( !\PC|DOUT\(3) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(6) & ((!\PC|DOUT\(2) & (\PC|DOUT\(5) & !\PC|DOUT\(4))) # (\PC|DOUT\(2) 
-- & (!\PC|DOUT\(5) & \PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ULA|ULA_B2|MUX|saida_MUX~2_combout\);

\ULA|ULA_B2|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B2|MUX|saida_MUX~1_combout\ = ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & (\PC|DOUT\(4) & !\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(7),
	combout => \ULA|ULA_B2|MUX|saida_MUX~1_combout\);

\ULA|ULA_B3|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B3|MUX|saida_MUX~1_combout\ = (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & !\ULA|ULA_B2|MUX|saida_MUX~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B3|MUX|saida_MUX~1_combout\);

\MEMORIA_INSTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~2_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \MEMORIA_INSTRUCAO|memROM~2_combout\);

\UNIDADE_DE_CONTROLE|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_DE_CONTROLE|Mux3~0_combout\ = (\MEMORIA_INSTRUCAO|memROM~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~1_combout\ & \MEMORIA_INSTRUCAO|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \UNIDADE_DE_CONTROLE|Mux3~0_combout\);

\UNIDADE_CONT_ULA|ULActrl[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(5) & ((!\PC|DOUT\(4) & (\PC|DOUT\(3) & !\PC|DOUT\(2))) # (\PC|DOUT\(4) & (!\PC|DOUT\(3) & \PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \UNIDADE_CONT_ULA|ULActrl[2]~0_combout\);

\MEMORIA_INSTRUCAO|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~12_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & (!\PC|DOUT\(3) $ (!\PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INSTRUCAO|memROM~12_combout\);

\MEMORIA_INSTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~3_combout\ = (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & ((\PC|DOUT\(4)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INSTRUCAO|memROM~3_combout\);

\MEMORIA_INSTRUCAO|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ = (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & !\PC|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INSTRUCAO|memROM~15_combout\);

\MEMORIA_INSTRUCAO|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~16_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & \MEMORIA_INSTRUCAO|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_INSTRUCAO|memROM~16_combout\);

\UNIDADE_DE_CONTROLE|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_DE_CONTROLE|Mux4~0_combout\ = (\MEMORIA_INSTRUCAO|memROM~14_combout\ & (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & \MEMORIA_INSTRUCAO|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~14_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~16_combout\,
	combout => \UNIDADE_DE_CONTROLE|Mux4~0_combout\);

\UNIDADE_DE_CONTROLE|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_DE_CONTROLE|Mux0~0_combout\ = ( !\PC|DOUT\(6) & ( \PC|DOUT\(2) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & (!\PC|DOUT\(3) $ (\PC|DOUT\(4))))) ) ) ) # ( !\PC|DOUT\(6) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & 
-- !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \UNIDADE_DE_CONTROLE|Mux0~0_combout\);

\UNIDADE_DE_CONTROLE|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_DE_CONTROLE|Mux8~0_combout\ = (!\MEMORIA_INSTRUCAO|memROM~14_combout\ & !\UNIDADE_DE_CONTROLE|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~14_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~0_combout\,
	combout => \UNIDADE_DE_CONTROLE|Mux8~0_combout\);

\MEMORIA_INSTRUCAO|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~18_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(5) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (((!\PC|DOUT\(2)) # (!\PC|DOUT\(3))) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) ) # ( !\PC|DOUT\(4) & ( 
-- !\PC|DOUT\(5) & ( (((\PC|DOUT\(3)) # (\PC|DOUT\(2))) # (\PC|DOUT\(6))) # (\PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INSTRUCAO|memROM~18_combout\);

\MEMORIA_INSTRUCAO|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~17_combout\ = (\PC|DOUT\(3) & (\PC|DOUT\(4) & (\PC|DOUT\(2) & \MEMORIA_INSTRUCAO|memROM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \MEMORIA_INSTRUCAO|memROM~17_combout\);

\UNIDADE_DE_CONTROLE|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_DE_CONTROLE|Mux2~0_combout\ = (!\MEMORIA_INSTRUCAO|memROM~17_combout\ & (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\MEMORIA_INSTRUCAO|memROM~16_combout\ $ (\MEMORIA_INSTRUCAO|memROM~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000100100000000000010010000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~16_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~14_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	combout => \UNIDADE_DE_CONTROLE|Mux2~0_combout\);

\BANCO_REGISTRADORES|registrador~1223\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1223_combout\ = ( \UNIDADE_DE_CONTROLE|Mux2~0_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~4_combout\ & (\MEMORIA_INSTRUCAO|memROM~15_combout\ & (!\UNIDADE_DE_CONTROLE|Mux8~0_combout\ & \MEMORIA_INSTRUCAO|memROM~18_combout\))) 
-- # (\MEMORIA_INSTRUCAO|memROM~4_combout\ & (((\UNIDADE_DE_CONTROLE|Mux8~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010010010100000000000000000000010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux8~0_combout\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \UNIDADE_DE_CONTROLE|ALT_INV_Mux2~0_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1223_combout\);

\BANCO_REGISTRADORES|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[31]~31_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~325_q\);

\BANCO_REGISTRADORES|registrador~1348\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1348_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~69_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~69_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1348_combout\);

\BANCO_REGISTRADORES|registrador~1218\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1218_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1348_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1348_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1348_combout\ & ( (\BANCO_REGISTRADORES|registrador~325_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~325_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1348_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1218_combout\);

\BANCO_REGISTRADORES|saidaB[31]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[31]~17_combout\ = (\BANCO_REGISTRADORES|registrador~1218_combout\ & \BANCO_REGISTRADORES|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~1218_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[31]~17_combout\);

\ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[31]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[31]~17_combout\,
	combout => \ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B31|SOMA_SUB|soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B31|SOMA_SUB|soma~0_combout\ = !\BANCO_REGISTRADORES|saidaA[31]~31_combout\ $ (!\ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[31]~31_combout\,
	datab => \ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B31|SOMA_SUB|soma~0_combout\);

\ULA|ULA_B31|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B31|MUX|saida_MUX~0_combout\ = (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((!\BANCO_REGISTRADORES|saidaA[31]~31_combout\ & (\ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\ & \ULA|ULA_B2|MUX|saida_MUX~1_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[31]~31_combout\ & ((\ULA|ULA_B2|MUX|saida_MUX~1_combout\) # (\ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110000000100000111000000010000011100000001000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[31]~31_combout\,
	datab => \ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B31|MUX|saida_MUX~0_combout\);

\ULA|ULA_B31|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B31|MUX|saida_MUX~1_combout\ = ((\ULA|ULA_B3|MUX|saida_MUX~1_combout\ & (!\ULA|ULA_B30|SOMA_SUB|C_out~combout\ $ (\ULA|ULA_B31|SOMA_SUB|soma~0_combout\)))) # (\ULA|ULA_B31|MUX|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000111111111001000011111111100100001111111110010000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA|ULA_B31|SOMA_SUB|ALT_INV_soma~0_combout\,
	datad => \ULA|ULA_B31|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B31|MUX|saida_MUX~1_combout\);

\BANCO_REGISTRADORES|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[0]~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~294_q\);

\BANCO_REGISTRADORES|registrador~1224\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1224_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~38_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~38_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1224_combout\);

\BANCO_REGISTRADORES|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1063_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1224_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1224_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1224_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1224_combout\ & ( (\BANCO_REGISTRADORES|registrador~294_q\ & \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~294_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1224_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1063_combout\);

\BANCO_REGISTRADORES|saidaB[0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[0]~18_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1063_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[0]~18_combout\);

\ULA|ULA_B0|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B0|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[0]~18_combout\,
	combout => \ULA|ULA_B0|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B0|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B0|MUX|saida_MUX~2_combout\ = ( !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( ((!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (\ULA|ULA_B0|MUX_INVERTE_B|saida_MUX~0_combout\ & ((\BANCO_REGISTRADORES|saidaA[0]~0_combout\)))) # 
-- (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (!\ULA|ULA_B0|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (\BANCO_REGISTRADORES|saidaA[0]~0_combout\))))) ) ) # ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( 
-- (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((((\BANCO_REGISTRADORES|saidaA[0]~0_combout\)) # (\ULA|ULA_B0|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (\ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaA[31]~31_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000110011001100111111111100111100110000110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA_B0|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[31]~31_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[0]~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datag => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	combout => \ULA|ULA_B0|MUX|saida_MUX~2_combout\);

\BANCO_REGISTRADORES|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[28]~28_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~322_q\);

\BANCO_REGISTRADORES|registrador~1336\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1336_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~66_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~66_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1336_combout\);

\BANCO_REGISTRADORES|registrador~1203\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1203_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1336_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1336_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1336_combout\ & ( (\BANCO_REGISTRADORES|registrador~322_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1336_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1203_combout\);

\BANCO_REGISTRADORES|saidaB[28]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[28]~14_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1203_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1203_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[28]~14_combout\);

\MEMORIA_DADOS|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[28]~14_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~94_q\);

\BANCO_REGISTRADORES|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[29]~29_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~323_q\);

\BANCO_REGISTRADORES|registrador~1340\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1340_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~67_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~67_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1340_combout\);

\BANCO_REGISTRADORES|registrador~1208\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1208_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1340_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1340_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1340_combout\ & ( (\BANCO_REGISTRADORES|registrador~323_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~323_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1340_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1208_combout\);

\BANCO_REGISTRADORES|saidaB[29]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[29]~15_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1208_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1208_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[29]~15_combout\);

\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[29]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[29]~15_combout\,
	combout => \ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B29|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B29|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~2_combout\ ) ) ) # ( !\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & \BANCO_REGISTRADORES|saidaA[29]~29_combout\) ) ) ) # ( \ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( 
-- !\BANCO_REGISTRADORES|saidaA[29]~29_combout\ $ (((!\ULA|ULA_B2|MUX|saida_MUX~2_combout\) # ((\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\) # (\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\)))) ) ) ) # ( !\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ $ (((!\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000010000001011111100000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datac => \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\,
	datae => \ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B29|MUX|saida_MUX~0_combout\);

\MEMORIA_DADOS|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[29]~15_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~95_q\);

\MEMORIA_DADOS|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[29]~15_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~63_q\);

\MUX_RAM_ULA|saida_MUX[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[29]~29_combout\ = ( \MEMORIA_DADOS|ram~63_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B29|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~95_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~63_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B29|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~95_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B29|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~95_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~63_q\,
	combout => \MUX_RAM_ULA|saida_MUX[29]~29_combout\);

\BANCO_REGISTRADORES|registrador~1222\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1222_combout\ = ( \UNIDADE_DE_CONTROLE|Mux2~0_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~4_combout\ & (((!\MEMORIA_INSTRUCAO|memROM~15_combout\ & \MEMORIA_INSTRUCAO|memROM~18_combout\)) # 
-- (\UNIDADE_DE_CONTROLE|Mux8~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101000101000000000000000000000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux8~0_combout\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \UNIDADE_DE_CONTROLE|ALT_INV_Mux2~0_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1222_combout\);

\BANCO_REGISTRADORES|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[29]~29_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~67_q\);

\MEMORIA_INSTRUCAO|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~13_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & (!\PC|DOUT\(3) $ (!\PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000000000000000000000101000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INSTRUCAO|memROM~13_combout\);

\BANCO_REGISTRADORES|registrador~1207\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1207_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~323_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~67_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~323_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1207_combout\);

\BANCO_REGISTRADORES|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[29]~29_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1207_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1207_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[29]~29_combout\);

\BANCO_REGISTRADORES|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[30]~30_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~324_q\);

\BANCO_REGISTRADORES|registrador~1344\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1344_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~68_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~68_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1344_combout\);

\BANCO_REGISTRADORES|registrador~1213\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1213_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1344_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1344_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1344_combout\ & ( (\BANCO_REGISTRADORES|registrador~324_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1344_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1213_combout\);

\BANCO_REGISTRADORES|saidaB[30]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[30]~16_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1213_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1213_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[30]~16_combout\);

\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[30]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[30]~16_combout\,
	combout => \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B30|SOMA_SUB|soma\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B30|SOMA_SUB|soma~combout\ = ( \BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & (\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- ((\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\) # (\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\)))) # (\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & (((\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\)) # 
-- (\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\))) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & ((!\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & (!\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\ & 
-- !\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( \BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( !\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & 
-- ((!\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & (!\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ & 
-- (!\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( !\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & 
-- (\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & ((\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\) # (\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\)))) # (\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & (((\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\)) # (\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111111110001000000011111000100000000000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\,
	datad => \ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\,
	dataf => \ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B30|SOMA_SUB|soma~combout\);

\ULA|ULA_B30|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B30|MUX|saida_MUX~0_combout\ = (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((!\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & (\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & \ULA|ULA_B2|MUX|saida_MUX~1_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ((\ULA|ULA_B2|MUX|saida_MUX~1_combout\) # (\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\,
	datac => \ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B30|MUX|saida_MUX~0_combout\);

\ULA|ULA_B30|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B30|MUX|saida_MUX~1_combout\ = ((\ULA|ULA_B3|MUX|saida_MUX~1_combout\ & \ULA|ULA_B30|SOMA_SUB|soma~combout\)) # (\ULA|ULA_B30|MUX|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA|ULA_B30|SOMA_SUB|ALT_INV_soma~combout\,
	datac => \ULA|ULA_B30|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B30|MUX|saida_MUX~1_combout\);

\MEMORIA_DADOS|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[30]~16_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~96_q\);

\MEMORIA_DADOS|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[30]~16_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~64_q\);

\MUX_RAM_ULA|saida_MUX[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[30]~30_combout\ = ( \MEMORIA_DADOS|ram~64_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B30|MUX|saida_MUX~1_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~96_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~64_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B30|MUX|saida_MUX~1_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~96_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B30|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~96_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~64_q\,
	combout => \MUX_RAM_ULA|saida_MUX[30]~30_combout\);

\BANCO_REGISTRADORES|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[30]~30_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~68_q\);

\BANCO_REGISTRADORES|registrador~1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1212_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~324_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~68_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1212_combout\);

\BANCO_REGISTRADORES|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[30]~30_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1212_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1212_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[30]~30_combout\);

\MEMORIA_DADOS|ram~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~114_combout\ = ( \BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA|ULA_B0|MUX|saida_MUX~2_combout\ ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( 
-- \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~0_combout\) # ((\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[29]~29_combout\)))) ) ) ) # ( 
-- \BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( !\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~0_combout\) # ((\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[29]~29_combout\)))) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( !\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\ & !\ULA|ULA_B0|MUX|saida_MUX~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100011001100110010001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\,
	datad => \ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\,
	dataf => \ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \MEMORIA_DADOS|ram~114_combout\);

\MEMORIA_DADOS|ram~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~115_combout\ = (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & (((\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & 
-- (((\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\,
	datab => \ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\,
	datad => \ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \MEMORIA_DADOS|ram~115_combout\);

\MEMORIA_DADOS|ram~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~111_combout\ = ( \MEMORIA_DADOS|ram~114_combout\ & ( \MEMORIA_DADOS|ram~115_combout\ & ( \UNIDADE_DE_CONTROLE|Mux3~0_combout\ ) ) ) # ( \MEMORIA_DADOS|ram~114_combout\ & ( !\MEMORIA_DADOS|ram~115_combout\ & ( 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~0_combout\) # ((\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\) # (\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datad => \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~114_combout\,
	dataf => \MEMORIA_DADOS|ALT_INV_ram~115_combout\,
	combout => \MEMORIA_DADOS|ram~111_combout\);

\MEMORIA_DADOS|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[28]~14_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~62_q\);

\MUX_RAM_ULA|saida_MUX[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[28]~28_combout\ = ( \MEMORIA_DADOS|ram~62_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B28|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~94_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~62_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B28|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~94_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B28|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~94_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~62_q\,
	combout => \MUX_RAM_ULA|saida_MUX[28]~28_combout\);

\BANCO_REGISTRADORES|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[28]~28_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~66_q\);

\BANCO_REGISTRADORES|registrador~1202\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1202_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~322_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~66_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1202_combout\);

\BANCO_REGISTRADORES|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[28]~28_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1202_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1202_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[28]~28_combout\);

\ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[28]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[28]~14_combout\,
	combout => \ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B28|SOMA_SUB|C_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B28|SOMA_SUB|C_out~1_combout\ = (\BANCO_REGISTRADORES|saidaA[28]~28_combout\ & \ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[28]~28_combout\,
	datab => \ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B28|SOMA_SUB|C_out~1_combout\);

\MEMORIA_DADOS|ram~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~112_combout\ = ( !\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ULA|ULA_B0|MUX|saida_MUX~0_combout\ & ((!\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\ & 
-- ((!\BANCO_REGISTRADORES|saidaA[29]~29_combout\) # (!\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\ & (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & !\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) ) # 
-- ( \BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( !\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ULA|ULA_B0|MUX|saida_MUX~0_combout\ & ((!\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\ & ((!\BANCO_REGISTRADORES|saidaA[29]~29_combout\) # 
-- (!\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\ & (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & !\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & 
-- ( !\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B0|MUX|saida_MUX~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101000100000001010100010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\,
	datad => \ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\,
	dataf => \ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \MEMORIA_DADOS|ram~112_combout\);

\MEMORIA_DADOS|ram~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~113_combout\ = (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & ((!\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & !\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & (((!\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & !\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010001000111110001000100011111000100010001111100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\,
	datab => \ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\,
	datad => \ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \MEMORIA_DADOS|ram~113_combout\);

\MEMORIA_DADOS|ram~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~110_combout\ = ( \MEMORIA_DADOS|ram~113_combout\ & ( (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\MEMORIA_DADOS|ram~112_combout\) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) ) # ( !\MEMORIA_DADOS|ram~113_combout\ & ( 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (((!\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ & \MEMORIA_DADOS|ram~112_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010001000100010101010100010001010100010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datac => \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~112_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~113_combout\,
	combout => \MEMORIA_DADOS|ram~110_combout\);

\MEMORIA_DADOS|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[31]~17_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~97_q\);

\MEMORIA_DADOS|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[31]~17_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~65_q\);

\MUX_RAM_ULA|saida_MUX[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[31]~31_combout\ = ( \MEMORIA_DADOS|ram~65_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B31|MUX|saida_MUX~1_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~97_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~65_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B31|MUX|saida_MUX~1_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~97_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B31|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~97_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~65_q\,
	combout => \MUX_RAM_ULA|saida_MUX[31]~31_combout\);

\BANCO_REGISTRADORES|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[31]~31_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~69_q\);

\BANCO_REGISTRADORES|registrador~1217\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1217_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~325_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~69_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~325_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1217_combout\);

\BANCO_REGISTRADORES|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[31]~31_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1217_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1217_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[31]~31_combout\);

\ULA|ULA_B0|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B0|MUX|saida_MUX~0_combout\ = (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ((\ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[31]~31_combout\,
	datab => \ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B0|MUX|saida_MUX~0_combout\);

\ULA|ULA_B0|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B0|MUX|saida_MUX~1_combout\ = ((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	combout => \ULA|ULA_B0|MUX|saida_MUX~1_combout\);

\BANCO_REGISTRADORES|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[26]~26_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~320_q\);

\BANCO_REGISTRADORES|registrador~1328\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1328_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~64_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~64_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1328_combout\);

\BANCO_REGISTRADORES|registrador~1193\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1193_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1328_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1328_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1328_combout\ & ( (\BANCO_REGISTRADORES|registrador~320_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1328_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1193_combout\);

\BANCO_REGISTRADORES|saidaB[26]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[26]~12_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1193_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1193_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[26]~12_combout\);

\ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[26]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[26]~12_combout\,
	combout => \ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B26|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B26|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[26]~26_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[26]~26_combout\ & \ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B25|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[26]~26_combout\ $ (!\ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B25|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[26]~26_combout\,
	datad => \ULA|ULA_B26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B26|MUX|saida_MUX~0_combout\);

\MEMORIA_DADOS|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[26]~12_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~92_q\);

\MEMORIA_DADOS|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[26]~12_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~60_q\);

\MUX_RAM_ULA|saida_MUX[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[26]~26_combout\ = ( \MEMORIA_DADOS|ram~60_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B26|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~92_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~60_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B26|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~92_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B26|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~92_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~60_q\,
	combout => \MUX_RAM_ULA|saida_MUX[26]~26_combout\);

\BANCO_REGISTRADORES|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[26]~26_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~64_q\);

\BANCO_REGISTRADORES|registrador~1192\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1192_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~320_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~64_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1192_combout\);

\BANCO_REGISTRADORES|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[26]~26_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1192_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1192_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[26]~26_combout\);

\BANCO_REGISTRADORES|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[27]~27_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~321_q\);

\BANCO_REGISTRADORES|registrador~1332\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1332_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~65_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~65_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1332_combout\);

\BANCO_REGISTRADORES|registrador~1198\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1198_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1332_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1332_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1332_combout\ & ( (\BANCO_REGISTRADORES|registrador~321_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~321_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1332_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1198_combout\);

\BANCO_REGISTRADORES|saidaB[27]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[27]~13_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1198_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1198_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[27]~13_combout\);

\ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[27]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[27]~13_combout\,
	combout => \ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B27|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B27|SOMA_SUB|saida_xor~combout\ = !\BANCO_REGISTRADORES|saidaA[27]~27_combout\ $ (!\ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\,
	datab => \ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B27|SOMA_SUB|saida_xor~combout\);

\ULA|ULA_B27|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B27|MUX|saida_MUX~0_combout\ = (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((!\BANCO_REGISTRADORES|saidaA[27]~27_combout\ & (\ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ & \ULA|ULA_B2|MUX|saida_MUX~1_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[27]~27_combout\ & ((\ULA|ULA_B2|MUX|saida_MUX~1_combout\) # (\ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\,
	datac => \ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B27|MUX|saida_MUX~0_combout\);

\ULA|ULA_B27|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B27|MUX|saida_MUX~1_combout\ = ( \ULA|ULA_B3|MUX|saida_MUX~1_combout\ & ( \ULA|ULA_B27|MUX|saida_MUX~0_combout\ ) ) # ( !\ULA|ULA_B3|MUX|saida_MUX~1_combout\ & ( \ULA|ULA_B27|MUX|saida_MUX~0_combout\ ) ) # ( \ULA|ULA_B3|MUX|saida_MUX~1_combout\ & 
-- ( !\ULA|ULA_B27|MUX|saida_MUX~0_combout\ & ( !\ULA|ULA_B27|SOMA_SUB|saida_xor~combout\ $ (((!\ULA|ULA_B25|SOMA_SUB|C_out~combout\ & (!\BANCO_REGISTRADORES|saidaA[26]~26_combout\ & !\ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\)) # 
-- (\ULA|ULA_B25|SOMA_SUB|C_out~combout\ & ((!\BANCO_REGISTRADORES|saidaA[26]~26_combout\) # (!\ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B25|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[26]~26_combout\,
	datac => \ULA|ULA_B26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B27|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datae => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA|ULA_B27|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B27|MUX|saida_MUX~1_combout\);

\MEMORIA_DADOS|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[27]~13_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~93_q\);

\MEMORIA_DADOS|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[27]~13_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~61_q\);

\MUX_RAM_ULA|saida_MUX[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[27]~27_combout\ = ( \MEMORIA_DADOS|ram~61_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B27|MUX|saida_MUX~1_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~93_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~61_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B27|MUX|saida_MUX~1_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~93_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B27|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~93_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~61_q\,
	combout => \MUX_RAM_ULA|saida_MUX[27]~27_combout\);

\BANCO_REGISTRADORES|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[27]~27_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~65_q\);

\BANCO_REGISTRADORES|registrador~1197\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1197_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~321_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~65_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~321_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1197_combout\);

\BANCO_REGISTRADORES|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[27]~27_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1197_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1197_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[27]~27_combout\);

\ULA|ULA_B28|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B28|SOMA_SUB|saida_xor~combout\ = !\BANCO_REGISTRADORES|saidaA[28]~28_combout\ $ (!\ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[28]~28_combout\,
	datab => \ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B28|SOMA_SUB|saida_xor~combout\);

\ULA|ULA_B28|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ = ( \ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B28|SOMA_SUB|saida_xor~combout\ & ( ((!\ULA|ULA_B25|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[26]~26_combout\))) # (\ULA|ULA_B25|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[26]~26_combout\ & \ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\BANCO_REGISTRADORES|saidaA[27]~27_combout\) ) ) ) # ( 
-- !\ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B28|SOMA_SUB|saida_xor~combout\ & ( (\BANCO_REGISTRADORES|saidaA[27]~27_combout\ & ((!\ULA|ULA_B25|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[26]~26_combout\))) # (\ULA|ULA_B25|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[26]~26_combout\ & \ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B25|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[26]~26_combout\,
	datac => \ULA|ULA_B26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\,
	datae => \ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B28|SOMA_SUB|ALT_INV_saida_xor~combout\,
	combout => \ULA|ULA_B28|SOMA_SUB|C_out~0_combout\);

\ULA|ULA_B30|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B30|SOMA_SUB|C_out~combout\ = ( !\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( \ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & ((!\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & (!\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\ & 
-- !\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( \BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( !\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & 
-- ((!\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[29]~29_combout\ & (!\ULA|ULA_B28|SOMA_SUB|C_out~0_combout\ & 
-- (!\ULA|ULA_B28|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[30]~30_combout\ & ( !\ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[29]~29_combout\,
	datad => \ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[30]~30_combout\,
	dataf => \ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B30|SOMA_SUB|C_out~combout\);

\MEMORIA_DADOS|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[0]~18_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~66_q\);

\MEMORIA_DADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[0]~18_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~34_q\);

\MUX_RAM_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[0]~0_combout\ = ( \MEMORIA_DADOS|ram~34_q\ & ( \UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # 
-- (\MEMORIA_DADOS|ram~66_q\) ) ) ) # ( !\MEMORIA_DADOS|ram~34_q\ & ( \UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ( (\MEMORIA_DADOS|ram~66_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # 
-- (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) ) ) # ( \MEMORIA_DADOS|ram~34_q\ & ( !\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ( ((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\) ) ) ) # ( 
-- !\MEMORIA_DADOS|ram~34_q\ & ( !\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ( ((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~66_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~34_q\,
	dataf => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[0]~0_combout\);

\BANCO_REGISTRADORES|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[0]~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~38_q\);

\BANCO_REGISTRADORES|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1062_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~294_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~38_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~294_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1062_combout\);

\BANCO_REGISTRADORES|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[0]~0_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1062_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1062_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[0]~0_combout\);

\ULA|ULA_B0|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B0|SOMA_SUB|C_out~combout\ = ( \BANCO_REGISTRADORES|registrador~1063_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\BANCO_REGISTRADORES|Equal0~0_combout\ & (\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\)) # 
-- (\BANCO_REGISTRADORES|Equal0~0_combout\ & ((\BANCO_REGISTRADORES|saidaA[0]~0_combout\))))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ & ((\BANCO_REGISTRADORES|saidaA[0]~0_combout\)))) ) ) # ( 
-- !\BANCO_REGISTRADORES|registrador~1063_combout\ & ( (\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\) # (\BANCO_REGISTRADORES|saidaA[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011001000000011101100100010001100110010000000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[0]~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1063_combout\,
	combout => \ULA|ULA_B0|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[1]~2_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~295_q\);

\BANCO_REGISTRADORES|registrador~1228\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1228_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~39_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~39_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1228_combout\);

\BANCO_REGISTRADORES|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1068_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1228_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1228_combout\ ) ) # ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1228_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- !\BANCO_REGISTRADORES|registrador~1228_combout\ & ( (\BANCO_REGISTRADORES|registrador~295_q\ & \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~295_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1228_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1068_combout\);

\ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \BANCO_REGISTRADORES|registrador~1068_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|Equal0~0_combout\)))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~8_combout\)) ) ) # ( !\BANCO_REGISTRADORES|registrador~1068_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110111011000100011011000110110001101110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~8_combout\,
	datac => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\,
	combout => \ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B1|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B1|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[1]~1_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & \ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B0|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[1]~1_combout\ $ (\ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~1_combout\,
	datad => \ULA|ULA_B1|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B1|MUX|saida_MUX~0_combout\);

\BANCO_REGISTRADORES|saidaB[1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[1]~19_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1068_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1068_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[1]~19_combout\);

\MEMORIA_DADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[1]~19_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~67_q\);

\MEMORIA_DADOS|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[1]~19_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~35_q\);

\MUX_RAM_ULA|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[1]~2_combout\ = ( \MEMORIA_DADOS|ram~35_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B1|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~67_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~35_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B1|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~67_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~67_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~35_q\,
	combout => \MUX_RAM_ULA|saida_MUX[1]~2_combout\);

\BANCO_REGISTRADORES|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[1]~2_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~39_q\);

\BANCO_REGISTRADORES|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1067_combout\ = ( \MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~295_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~39_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~295_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1067_combout\);

\BANCO_REGISTRADORES|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[1]~1_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1067_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1067_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[1]~1_combout\);

\ULA|ULA_B1|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B1|SOMA_SUB|C_out~combout\ = (!\ULA|ULA_B0|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & \ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ULA|ULA_B0|SOMA_SUB|C_out~combout\ & 
-- ((\ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~1_combout\,
	datac => \ULA|ULA_B1|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B1|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[2]~1_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~296_q\);

\BANCO_REGISTRADORES|registrador~1232\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1232_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~40_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~40_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1232_combout\);

\BANCO_REGISTRADORES|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1073_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1232_combout\ ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1232_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1232_combout\ & ( (\BANCO_REGISTRADORES|registrador~296_q\ & \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~296_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1232_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1073_combout\);

\ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \BANCO_REGISTRADORES|registrador~1073_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|Equal0~0_combout\)))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~10_combout\)) ) ) # ( !\BANCO_REGISTRADORES|registrador~1073_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110111011000100011011000110110001101110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~10_combout\,
	datac => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\,
	combout => \ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B2|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B2|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[2]~2_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & \ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B1|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[2]~2_combout\ $ (\ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B1|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[2]~2_combout\,
	datad => \ULA|ULA_B2|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B2|MUX|saida_MUX~0_combout\);

\BANCO_REGISTRADORES|saidaB[2]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[2]~20_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1073_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1073_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[2]~20_combout\);

\MEMORIA_DADOS|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[2]~20_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~68_q\);

\MEMORIA_DADOS|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[2]~20_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~36_q\);

\MUX_RAM_ULA|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[2]~1_combout\ = ( \MEMORIA_DADOS|ram~36_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B2|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~68_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~36_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B2|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~68_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~68_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~36_q\,
	combout => \MUX_RAM_ULA|saida_MUX[2]~1_combout\);

\BANCO_REGISTRADORES|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[2]~1_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~40_q\);

\BANCO_REGISTRADORES|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1072_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~296_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~40_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~296_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1072_combout\);

\BANCO_REGISTRADORES|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[2]~2_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1072_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1072_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[2]~2_combout\);

\ULA|ULA_B2|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B2|SOMA_SUB|C_out~combout\ = ( \ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ & ( ((!\ULA|ULA_B0|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & \ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\)) # 
-- (\ULA|ULA_B0|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[1]~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[2]~2_combout\) ) ) # ( !\ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- (\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & ((!\ULA|ULA_B0|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & \ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ULA|ULA_B0|SOMA_SUB|C_out~combout\ & 
-- ((\ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[1]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~1_combout\,
	datac => \ULA|ULA_B1|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[2]~2_combout\,
	datae => \ULA|ULA_B2|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B2|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[3]~3_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~297_q\);

\BANCO_REGISTRADORES|registrador~1236\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1236_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~41_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~41_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1236_combout\);

\BANCO_REGISTRADORES|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1078_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1236_combout\ ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1236_combout\ ) ) # ( 
-- \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1236_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1236_combout\ & ( 
-- (\BANCO_REGISTRADORES|registrador~297_q\ & \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~297_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1236_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1078_combout\);

\ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \BANCO_REGISTRADORES|registrador~1078_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|Equal0~0_combout\)))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) # ( !\BANCO_REGISTRADORES|registrador~1078_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110111011000100011011000110110001101110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	combout => \ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B3|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B3|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[3]~3_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & \ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B2|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[3]~3_combout\ $ (\ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B2|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[3]~3_combout\,
	datad => \ULA|ULA_B3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B3|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[3]~3_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B3|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~98_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~98_combout\,
	datab => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[3]~3_combout\);

\BANCO_REGISTRADORES|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[3]~3_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~41_q\);

\BANCO_REGISTRADORES|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1077_combout\ = ( \MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~297_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~41_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~297_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1077_combout\);

\BANCO_REGISTRADORES|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[3]~3_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1077_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1077_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[3]~3_combout\);

\ULA|ULA_B3|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B3|SOMA_SUB|saida_xor~combout\ = ( \BANCO_REGISTRADORES|saidaA[3]~3_combout\ & ( \BANCO_REGISTRADORES|registrador~1078_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ 
-- (\BANCO_REGISTRADORES|Equal0~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & ( \BANCO_REGISTRADORES|registrador~1078_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|Equal0~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) ) # ( 
-- \BANCO_REGISTRADORES|saidaA[3]~3_combout\ & ( !\BANCO_REGISTRADORES|registrador~1078_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- (!\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[3]~3_combout\ & ( !\BANCO_REGISTRADORES|registrador~1078_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011111001001110010000011011101100011110010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[3]~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	combout => \ULA|ULA_B3|SOMA_SUB|saida_xor~combout\);

\ULA|ULA_B3|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B3|SOMA_SUB|C_out~0_combout\ = ( \ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B3|SOMA_SUB|saida_xor~combout\ & ( ((!\ULA|ULA_B0|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & 
-- \ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ULA|ULA_B0|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[1]~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[2]~2_combout\) ) ) ) # ( 
-- !\ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B3|SOMA_SUB|saida_xor~combout\ & ( (\BANCO_REGISTRADORES|saidaA[2]~2_combout\ & ((!\ULA|ULA_B0|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[1]~1_combout\ & 
-- \ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ULA|ULA_B0|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B1|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[1]~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[1]~1_combout\,
	datac => \ULA|ULA_B1|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[2]~2_combout\,
	datae => \ULA|ULA_B2|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B3|SOMA_SUB|ALT_INV_saida_xor~combout\,
	combout => \ULA|ULA_B3|SOMA_SUB|C_out~0_combout\);

\ULA|ULA_B3|SOMA_SUB|C_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B3|SOMA_SUB|C_out~1_combout\ = ( \BANCO_REGISTRADORES|saidaA[3]~3_combout\ & ( \BANCO_REGISTRADORES|registrador~1078_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ 
-- (!\BANCO_REGISTRADORES|Equal0~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) ) # ( \BANCO_REGISTRADORES|saidaA[3]~3_combout\ & ( !\BANCO_REGISTRADORES|registrador~1078_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110001101100000000000000000001101110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~6_combout\,
	datac => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[3]~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	combout => \ULA|ULA_B3|SOMA_SUB|C_out~1_combout\);

\BANCO_REGISTRADORES|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[4]~7_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~298_q\);

\BANCO_REGISTRADORES|registrador~1240\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1240_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~42_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~42_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1240_combout\);

\BANCO_REGISTRADORES|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1083_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1240_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1240_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1240_combout\ & ( (\BANCO_REGISTRADORES|registrador~298_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~298_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1240_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1083_combout\);

\BANCO_REGISTRADORES|saidaB[4]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[4]~22_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1083_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[4]~22_combout\);

\MEMORIA_DADOS|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[4]~22_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~70_q\);

\MEMORIA_DADOS|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[4]~22_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~38_q\);

\MEMORIA_DADOS|ram~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~100_combout\ = ( \MEMORIA_DADOS|ram~38_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~70_q\) ) ) # ( !\MEMORIA_DADOS|ram~38_q\ 
-- & ( (\MEMORIA_DADOS|ram~70_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~70_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~38_q\,
	combout => \MEMORIA_DADOS|ram~100_combout\);

\ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (((!\BANCO_REGISTRADORES|Equal0~0_combout\) # (!\BANCO_REGISTRADORES|registrador~1083_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101000001000100010100000100010001010000010001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1083_combout\,
	combout => \ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B4|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B4|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( \ULA|ULA_B2|MUX|saida_MUX~2_combout\ ) ) ) # ( !\ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\) ) ) ) # ( \ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( 
-- !\BANCO_REGISTRADORES|saidaA[4]~4_combout\ $ (((\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (!\ULA|ULA_B3|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B3|SOMA_SUB|C_out~1_combout\)))) ) ) ) # ( !\ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\) # (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\ $ (((\ULA|ULA_B3|SOMA_SUB|C_out~1_combout\) # (\ULA|ULA_B3|SOMA_SUB|C_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010111111101111110100000011111111010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B3|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datac => \ULA|ULA_B3|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[4]~4_combout\,
	datae => \ULA|ULA_B4|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B4|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[4]~7_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B4|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~100_combout\,
	datac => \ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[4]~7_combout\);

\BANCO_REGISTRADORES|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[4]~7_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~42_q\);

\BANCO_REGISTRADORES|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1082_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~298_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~42_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~298_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1082_combout\);

\BANCO_REGISTRADORES|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[4]~4_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1082_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[4]~4_combout\);

\ULA|ULA_B4|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B4|SOMA_SUB|C_out~combout\ = (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & ((!\ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B3|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B3|SOMA_SUB|C_out~1_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & (!\ULA|ULA_B3|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B3|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B3|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B3|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[4]~4_combout\,
	datad => \ULA|ULA_B4|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B4|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[5]~6_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~299_q\);

\BANCO_REGISTRADORES|registrador~1244\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1244_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~43_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~43_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1244_combout\);

\BANCO_REGISTRADORES|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1088_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1244_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1244_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1244_combout\ & ( (\BANCO_REGISTRADORES|registrador~299_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~299_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1244_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1088_combout\);

\ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \BANCO_REGISTRADORES|registrador~1088_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|Equal0~0_combout\)))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) # ( !\BANCO_REGISTRADORES|registrador~1088_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111011101000100011101000111010001110111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\,
	combout => \ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B5|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B5|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[5]~5_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & \ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B4|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[5]~5_combout\ $ (!\ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[5]~5_combout\,
	datad => \ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B5|MUX|saida_MUX~0_combout\);

\BANCO_REGISTRADORES|saidaB[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[5]~23_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1088_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1088_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[5]~23_combout\);

\MEMORIA_DADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[5]~23_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~71_q\);

\MEMORIA_DADOS|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[5]~23_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~39_q\);

\MUX_RAM_ULA|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[5]~6_combout\ = ( \MEMORIA_DADOS|ram~39_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B5|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~71_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~39_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B5|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~71_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B5|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~71_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~39_q\,
	combout => \MUX_RAM_ULA|saida_MUX[5]~6_combout\);

\BANCO_REGISTRADORES|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[5]~6_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~43_q\);

\BANCO_REGISTRADORES|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1087_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~299_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~43_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~299_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1087_combout\);

\BANCO_REGISTRADORES|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[5]~5_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1087_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1087_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[5]~5_combout\);

\ULA|ULA_B5|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B5|SOMA_SUB|C_out~combout\ = ( !\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & ( \ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & ((!\ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA_B3|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B3|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & (!\ULA|ULA_B3|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B3|SOMA_SUB|C_out~1_combout\ & 
-- !\ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( \BANCO_REGISTRADORES|saidaA[5]~5_combout\ & ( !\ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & ((!\ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\) 
-- # ((!\ULA|ULA_B3|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B3|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[4]~4_combout\ & (!\ULA|ULA_B3|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B3|SOMA_SUB|C_out~1_combout\ & 
-- !\ULA|ULA_B4|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[5]~5_combout\ & ( !\ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B3|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B3|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[4]~4_combout\,
	datad => \ULA|ULA_B4|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[5]~5_combout\,
	dataf => \ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B5|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[6]~5_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~300_q\);

\BANCO_REGISTRADORES|registrador~1248\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1248_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~44_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~44_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1248_combout\);

\BANCO_REGISTRADORES|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1093_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1248_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1248_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1248_combout\ & ( (\BANCO_REGISTRADORES|registrador~300_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~300_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1248_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1093_combout\);

\ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (((!\BANCO_REGISTRADORES|Equal0~0_combout\) # (!\BANCO_REGISTRADORES|registrador~1093_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101000001000100010100000100010001010000010001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\,
	combout => \ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B6|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B6|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[6]~6_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & \ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B5|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[6]~6_combout\ $ (!\ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B5|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~6_combout\,
	datad => \ULA|ULA_B6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B6|MUX|saida_MUX~0_combout\);

\BANCO_REGISTRADORES|saidaB[6]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[6]~24_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1093_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1093_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[6]~24_combout\);

\MEMORIA_DADOS|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[6]~24_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~72_q\);

\MEMORIA_DADOS|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[6]~24_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~40_q\);

\MUX_RAM_ULA|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[6]~5_combout\ = ( \MEMORIA_DADOS|ram~40_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B6|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~72_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~40_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B6|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~72_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~72_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~40_q\,
	combout => \MUX_RAM_ULA|saida_MUX[6]~5_combout\);

\BANCO_REGISTRADORES|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[6]~5_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~44_q\);

\BANCO_REGISTRADORES|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1092_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~300_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~44_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~300_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1092_combout\);

\BANCO_REGISTRADORES|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[6]~6_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1092_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1092_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[6]~6_combout\);

\BANCO_REGISTRADORES|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[7]~4_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~301_q\);

\BANCO_REGISTRADORES|registrador~1252\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1252_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~45_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~45_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1252_combout\);

\BANCO_REGISTRADORES|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1098_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1252_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1252_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1252_combout\ & ( (\BANCO_REGISTRADORES|registrador~301_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~301_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1252_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1098_combout\);

\BANCO_REGISTRADORES|saidaB[7]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[7]~25_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1098_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[7]~25_combout\);

\MEMORIA_DADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[7]~25_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~73_q\);

\MEMORIA_DADOS|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[7]~25_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~41_q\);

\MEMORIA_DADOS|ram~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~101_combout\ = ( \MEMORIA_DADOS|ram~41_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~73_q\) ) ) # ( !\MEMORIA_DADOS|ram~41_q\ 
-- & ( (\MEMORIA_DADOS|ram~73_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~73_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~41_q\,
	combout => \MEMORIA_DADOS|ram~101_combout\);

\ULA|ULA_B6|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B6|SOMA_SUB|C_out~combout\ = (!\ULA|ULA_B5|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[6]~6_combout\))) # (\ULA|ULA_B5|SOMA_SUB|C_out~combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & \ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B5|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~6_combout\,
	datac => \ULA|ULA_B6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B6|SOMA_SUB|C_out~combout\);

\ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (((!\BANCO_REGISTRADORES|Equal0~0_combout\) # (!\BANCO_REGISTRADORES|registrador~1098_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101000001000100010100000100010001010000010001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\,
	combout => \ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B7|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B7|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[7]~7_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & \ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B6|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[7]~7_combout\ $ (\ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B6|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[7]~7_combout\,
	datad => \ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B7|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[7]~4_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B7|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~101_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~101_combout\,
	datac => \ULA|ULA_B7|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[7]~4_combout\);

\BANCO_REGISTRADORES|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[7]~4_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~45_q\);

\BANCO_REGISTRADORES|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1097_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~301_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~45_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~301_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1097_combout\);

\BANCO_REGISTRADORES|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[7]~7_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1097_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1097_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[7]~7_combout\);

\BANCO_REGISTRADORES|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[8]~11_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~302_q\);

\BANCO_REGISTRADORES|registrador~1256\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1256_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~46_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~46_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1256_combout\);

\BANCO_REGISTRADORES|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1103_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1256_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1256_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1256_combout\ & ( (\BANCO_REGISTRADORES|registrador~302_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~302_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1256_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1103_combout\);

\BANCO_REGISTRADORES|saidaB[8]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[8]~26_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1103_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[8]~26_combout\);

\MEMORIA_DADOS|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[8]~26_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~74_q\);

\MEMORIA_DADOS|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[8]~26_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~42_q\);

\MEMORIA_DADOS|ram~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~102_combout\ = ( \MEMORIA_DADOS|ram~42_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~74_q\) ) ) # ( !\MEMORIA_DADOS|ram~42_q\ 
-- & ( (\MEMORIA_DADOS|ram~74_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~74_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~42_q\,
	combout => \MEMORIA_DADOS|ram~102_combout\);

\ULA|ULA_B7|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B7|SOMA_SUB|C_out~combout\ = ( \ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( ((!\ULA|ULA_B5|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[6]~6_combout\))) # 
-- (\ULA|ULA_B5|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & \ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\BANCO_REGISTRADORES|saidaA[7]~7_combout\) ) ) # ( !\ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- (\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & ((!\ULA|ULA_B5|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[6]~6_combout\))) # (\ULA|ULA_B5|SOMA_SUB|C_out~combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & \ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B5|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~6_combout\,
	datac => \ULA|ULA_B6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[7]~7_combout\,
	datae => \ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B7|SOMA_SUB|C_out~combout\);

\ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (((!\BANCO_REGISTRADORES|Equal0~0_combout\) # (!\BANCO_REGISTRADORES|registrador~1103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101000001000100010100000100010001010000010001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\,
	combout => \ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B8|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B8|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( ((!\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & !\ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((!\BANCO_REGISTRADORES|saidaA[8]~8_combout\) # (!\ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B7|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[8]~8_combout\ $ (!\ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101110110100111101010101010111101011101101001111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B7|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[8]~8_combout\,
	datad => \ULA|ULA_B8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B8|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[8]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[8]~11_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B8|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~102_combout\,
	datac => \ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[8]~11_combout\);

\BANCO_REGISTRADORES|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[8]~11_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~46_q\);

\BANCO_REGISTRADORES|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1102_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~302_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~46_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~302_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1102_combout\);

\BANCO_REGISTRADORES|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[8]~8_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1102_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[8]~8_combout\);

\ULA|ULA_B8|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B8|SOMA_SUB|saida_xor~combout\ = ( \BANCO_REGISTRADORES|registrador~1103_combout\ & ( !\BANCO_REGISTRADORES|saidaA[8]~8_combout\ $ (((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (\BANCO_REGISTRADORES|Equal0~0_combout\)) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\))) ) ) # ( !\BANCO_REGISTRADORES|registrador~1103_combout\ & ( !\BANCO_REGISTRADORES|saidaA[8]~8_combout\ $ (((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011011101001010001101011100100010110111010010100011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[8]~8_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\,
	combout => \ULA|ULA_B8|SOMA_SUB|saida_xor~combout\);

\ULA|ULA_B8|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B8|SOMA_SUB|C_out~0_combout\ = ( \ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B8|SOMA_SUB|saida_xor~combout\ & ( ((!\ULA|ULA_B5|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[6]~6_combout\))) # (\ULA|ULA_B5|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & \ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\BANCO_REGISTRADORES|saidaA[7]~7_combout\) ) ) ) # ( 
-- !\ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B8|SOMA_SUB|saida_xor~combout\ & ( (\BANCO_REGISTRADORES|saidaA[7]~7_combout\ & ((!\ULA|ULA_B5|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[6]~6_combout\))) # (\ULA|ULA_B5|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[6]~6_combout\ & \ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B5|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[6]~6_combout\,
	datac => \ULA|ULA_B6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[7]~7_combout\,
	datae => \ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B8|SOMA_SUB|ALT_INV_saida_xor~combout\,
	combout => \ULA|ULA_B8|SOMA_SUB|C_out~0_combout\);

\ULA|ULA_B8|SOMA_SUB|C_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B8|SOMA_SUB|C_out~1_combout\ = ( \BANCO_REGISTRADORES|registrador~1103_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\BANCO_REGISTRADORES|saidaA[8]~8_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ 
-- (!\BANCO_REGISTRADORES|Equal0~0_combout\)))) ) ) # ( !\BANCO_REGISTRADORES|registrador~1103_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ & \BANCO_REGISTRADORES|saidaA[8]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010100000000000001000100000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[8]~8_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1103_combout\,
	combout => \ULA|ULA_B8|SOMA_SUB|C_out~1_combout\);

\BANCO_REGISTRADORES|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[9]~10_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~303_q\);

\BANCO_REGISTRADORES|registrador~1260\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1260_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~47_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~47_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1260_combout\);

\BANCO_REGISTRADORES|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1108_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1260_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1260_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1260_combout\ & ( (\BANCO_REGISTRADORES|registrador~303_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~303_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1260_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1108_combout\);

\ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (((!\BANCO_REGISTRADORES|Equal0~0_combout\) # (!\BANCO_REGISTRADORES|registrador~1108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101000001000100010100000100010001010000010001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\,
	combout => \ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B9|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B9|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~2_combout\ ) ) ) # ( !\ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & \BANCO_REGISTRADORES|saidaA[9]~9_combout\) ) ) ) # ( \ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( 
-- !\BANCO_REGISTRADORES|saidaA[9]~9_combout\ $ (((!\ULA|ULA_B2|MUX|saida_MUX~2_combout\) # ((\ULA|ULA_B8|SOMA_SUB|C_out~1_combout\) # (\ULA|ULA_B8|SOMA_SUB|C_out~0_combout\)))) ) ) ) # ( !\ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (!\BANCO_REGISTRADORES|saidaA[9]~9_combout\ $ (((!\ULA|ULA_B8|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B8|SOMA_SUB|C_out~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000010000001011111100000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B8|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datac => \ULA|ULA_B8|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[9]~9_combout\,
	datae => \ULA|ULA_B9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B9|MUX|saida_MUX~0_combout\);

\BANCO_REGISTRADORES|saidaB[9]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[9]~27_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1108_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1108_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[9]~27_combout\);

\MEMORIA_DADOS|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[9]~27_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~75_q\);

\MEMORIA_DADOS|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[9]~27_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~43_q\);

\MUX_RAM_ULA|saida_MUX[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[9]~10_combout\ = ( \MEMORIA_DADOS|ram~43_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B9|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~75_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~43_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B9|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~75_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B9|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~75_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~43_q\,
	combout => \MUX_RAM_ULA|saida_MUX[9]~10_combout\);

\BANCO_REGISTRADORES|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[9]~10_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~47_q\);

\BANCO_REGISTRADORES|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1107_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~303_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~47_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~303_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1107_combout\);

\BANCO_REGISTRADORES|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[9]~9_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1107_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1107_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[9]~9_combout\);

\ULA|ULA_B9|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B9|SOMA_SUB|C_out~combout\ = (!\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & ((!\ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B8|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B8|SOMA_SUB|C_out~1_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & (!\ULA|ULA_B8|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B8|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B8|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B8|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[9]~9_combout\,
	datad => \ULA|ULA_B9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B9|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[10]~9_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~304_q\);

\BANCO_REGISTRADORES|registrador~1264\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1264_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~48_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~48_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1264_combout\);

\BANCO_REGISTRADORES|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1113_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1264_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1264_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1264_combout\ & ( (\BANCO_REGISTRADORES|registrador~304_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~304_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1264_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1113_combout\);

\ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (((!\BANCO_REGISTRADORES|Equal0~0_combout\) # (!\BANCO_REGISTRADORES|registrador~1113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101000001000100010100000100010001010000010001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1113_combout\,
	combout => \ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B10|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B10|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[10]~10_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & \ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B9|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[10]~10_combout\ $ (!\ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B9|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[10]~10_combout\,
	datad => \ULA|ULA_B10|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B10|MUX|saida_MUX~0_combout\);

\BANCO_REGISTRADORES|saidaB[10]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[10]~28_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1113_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1113_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[10]~28_combout\);

\MEMORIA_DADOS|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[10]~28_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~76_q\);

\MEMORIA_DADOS|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[10]~28_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~44_q\);

\MUX_RAM_ULA|saida_MUX[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[10]~9_combout\ = ( \MEMORIA_DADOS|ram~44_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B10|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~76_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~44_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B10|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~76_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~76_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~44_q\,
	combout => \MUX_RAM_ULA|saida_MUX[10]~9_combout\);

\BANCO_REGISTRADORES|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[10]~9_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~48_q\);

\BANCO_REGISTRADORES|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1112_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~304_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~48_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~304_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1112_combout\);

\BANCO_REGISTRADORES|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[10]~10_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1112_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1112_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[10]~10_combout\);

\ULA|ULA_B10|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B10|SOMA_SUB|C_out~combout\ = ( !\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & ( \ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & ((!\ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA_B8|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B8|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & (!\ULA|ULA_B8|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B8|SOMA_SUB|C_out~1_combout\ & 
-- !\ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( \BANCO_REGISTRADORES|saidaA[10]~10_combout\ & ( !\ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & 
-- ((!\ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B8|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B8|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[9]~9_combout\ & (!\ULA|ULA_B8|SOMA_SUB|C_out~0_combout\ & 
-- (!\ULA|ULA_B8|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B9|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[10]~10_combout\ & ( !\ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B8|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B8|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[9]~9_combout\,
	datad => \ULA|ULA_B9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[10]~10_combout\,
	dataf => \ULA|ULA_B10|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B10|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[11]~8_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~305_q\);

\BANCO_REGISTRADORES|registrador~1268\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1268_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~49_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~49_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1268_combout\);

\BANCO_REGISTRADORES|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1118_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1268_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1268_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1268_combout\ & ( (\BANCO_REGISTRADORES|registrador~305_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~305_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1268_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1118_combout\);

\BANCO_REGISTRADORES|saidaB[11]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[11]~29_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1118_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[11]~29_combout\);

\MEMORIA_DADOS|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[11]~29_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~77_q\);

\MEMORIA_DADOS|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[11]~29_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~45_q\);

\MEMORIA_DADOS|ram~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~103_combout\ = ( \MEMORIA_DADOS|ram~45_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~77_q\) ) ) # ( !\MEMORIA_DADOS|ram~45_q\ 
-- & ( (\MEMORIA_DADOS|ram~77_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~77_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~45_q\,
	combout => \MEMORIA_DADOS|ram~103_combout\);

\ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (((!\BANCO_REGISTRADORES|Equal0~0_combout\) # (!\BANCO_REGISTRADORES|registrador~1118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101000001000100010100000100010001010000010001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\,
	combout => \ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B11|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B11|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[11]~11_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & \ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B10|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[11]~11_combout\ $ (!\ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B10|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~11_combout\,
	datad => \ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B11|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[11]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[11]~8_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B11|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~103_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~103_combout\,
	datac => \ULA|ULA_B11|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[11]~8_combout\);

\BANCO_REGISTRADORES|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[11]~8_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~49_q\);

\BANCO_REGISTRADORES|registrador~1117\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1117_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~305_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~49_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~305_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1117_combout\);

\BANCO_REGISTRADORES|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[11]~11_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1117_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1117_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[11]~11_combout\);

\BANCO_REGISTRADORES|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[12]~15_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~306_q\);

\BANCO_REGISTRADORES|registrador~1272\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1272_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~50_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~50_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1272_combout\);

\BANCO_REGISTRADORES|registrador~1123\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1123_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1272_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1272_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1272_combout\ & ( (\BANCO_REGISTRADORES|registrador~306_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~306_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1272_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1123_combout\);

\BANCO_REGISTRADORES|saidaB[12]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[12]~30_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1123_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1123_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[12]~30_combout\);

\MEMORIA_DADOS|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[12]~30_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~78_q\);

\MEMORIA_DADOS|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[12]~30_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~46_q\);

\MEMORIA_DADOS|ram~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~104_combout\ = ( \MEMORIA_DADOS|ram~46_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~78_q\) ) ) # ( !\MEMORIA_DADOS|ram~46_q\ 
-- & ( (\MEMORIA_DADOS|ram~78_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~78_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~46_q\,
	combout => \MEMORIA_DADOS|ram~104_combout\);

\ULA|ULA_B11|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B11|SOMA_SUB|C_out~combout\ = (!\ULA|ULA_B10|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[11]~11_combout\))) # (\ULA|ULA_B10|SOMA_SUB|C_out~combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & \ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B10|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B11|SOMA_SUB|C_out~combout\);

\ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (((!\BANCO_REGISTRADORES|Equal0~0_combout\) # (!\BANCO_REGISTRADORES|registrador~1123_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101000001000100010100000100010001010000010001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1123_combout\,
	combout => \ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B12|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B12|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( ((!\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & !\ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((!\BANCO_REGISTRADORES|saidaA[12]~12_combout\) # (!\ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B11|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[12]~12_combout\ $ (!\ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101110110100111101010101010111101011101101001111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B11|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[12]~12_combout\,
	datad => \ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B12|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[12]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[12]~15_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B12|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~104_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~104_combout\,
	datac => \ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[12]~15_combout\);

\BANCO_REGISTRADORES|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[12]~15_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~50_q\);

\BANCO_REGISTRADORES|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1122_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~306_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~50_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~306_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1122_combout\);

\BANCO_REGISTRADORES|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[12]~12_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1122_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[12]~12_combout\);

\ULA|ULA_B12|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B12|SOMA_SUB|C_out~combout\ = ( \ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & ( ((!\ULA|ULA_B10|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[11]~11_combout\))) # 
-- (\ULA|ULA_B10|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & \ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\BANCO_REGISTRADORES|saidaA[12]~12_combout\) ) ) # ( !\ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- (\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & ((!\ULA|ULA_B10|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[11]~11_combout\))) # (\ULA|ULA_B10|SOMA_SUB|C_out~combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & \ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B10|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[12]~12_combout\,
	datae => \ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B12|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[13]~14_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~307_q\);

\BANCO_REGISTRADORES|registrador~1276\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1276_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~51_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~51_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1276_combout\);

\BANCO_REGISTRADORES|registrador~1128\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1128_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1276_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1276_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1276_combout\ & ( (\BANCO_REGISTRADORES|registrador~307_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~307_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1276_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1128_combout\);

\ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (((!\BANCO_REGISTRADORES|Equal0~0_combout\) # (!\BANCO_REGISTRADORES|registrador~1128_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101000001000100010100000100010001010000010001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\,
	combout => \ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B13|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B13|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[13]~13_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & \ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B12|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[13]~13_combout\ $ (\ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B12|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[13]~13_combout\,
	datad => \ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B13|MUX|saida_MUX~0_combout\);

\BANCO_REGISTRADORES|saidaB[13]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[13]~31_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1128_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[13]~31_combout\);

\MEMORIA_DADOS|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[13]~31_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~79_q\);

\MEMORIA_DADOS|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[13]~31_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~47_q\);

\MUX_RAM_ULA|saida_MUX[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[13]~14_combout\ = ( \MEMORIA_DADOS|ram~47_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B13|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~79_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~47_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B13|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~79_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B13|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~79_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~47_q\,
	combout => \MUX_RAM_ULA|saida_MUX[13]~14_combout\);

\BANCO_REGISTRADORES|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[13]~14_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~51_q\);

\BANCO_REGISTRADORES|registrador~1127\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1127_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~307_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~51_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~307_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1127_combout\);

\BANCO_REGISTRADORES|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[13]~13_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1127_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1127_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[13]~13_combout\);

\ULA|ULA_B13|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B13|SOMA_SUB|saida_xor~combout\ = ( \BANCO_REGISTRADORES|registrador~1128_combout\ & ( !\BANCO_REGISTRADORES|saidaA[13]~13_combout\ $ (((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (\BANCO_REGISTRADORES|Equal0~0_combout\)) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\))) ) ) # ( !\BANCO_REGISTRADORES|registrador~1128_combout\ & ( !\BANCO_REGISTRADORES|saidaA[13]~13_combout\ $ (((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011011101001010001101011100100010110111010010100011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[13]~13_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1128_combout\,
	combout => \ULA|ULA_B13|SOMA_SUB|saida_xor~combout\);

\ULA|ULA_B13|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B13|SOMA_SUB|C_out~0_combout\ = ( \ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B13|SOMA_SUB|saida_xor~combout\ & ( ((!\ULA|ULA_B10|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[11]~11_combout\))) # (\ULA|ULA_B10|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & \ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\BANCO_REGISTRADORES|saidaA[12]~12_combout\) ) ) ) # ( 
-- !\ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B13|SOMA_SUB|saida_xor~combout\ & ( (\BANCO_REGISTRADORES|saidaA[12]~12_combout\ & ((!\ULA|ULA_B10|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[11]~11_combout\))) # (\ULA|ULA_B10|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[11]~11_combout\ & \ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B10|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[12]~12_combout\,
	datae => \ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B13|SOMA_SUB|ALT_INV_saida_xor~combout\,
	combout => \ULA|ULA_B13|SOMA_SUB|C_out~0_combout\);

\ULA|ULA_B13|SOMA_SUB|C_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B13|SOMA_SUB|C_out~1_combout\ = (\BANCO_REGISTRADORES|saidaA[13]~13_combout\ & \ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[13]~13_combout\,
	datab => \ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B13|SOMA_SUB|C_out~1_combout\);

\BANCO_REGISTRADORES|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[14]~13_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~308_q\);

\BANCO_REGISTRADORES|registrador~1280\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1280_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~52_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~52_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1280_combout\);

\BANCO_REGISTRADORES|registrador~1133\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1133_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1280_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1280_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1280_combout\ & ( (\BANCO_REGISTRADORES|registrador~308_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1280_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1133_combout\);

\BANCO_REGISTRADORES|saidaB[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[14]~0_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1133_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1133_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[14]~0_combout\);

\ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[14]~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- (\MEMORIA_INSTRUCAO|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110111010001000111011101000100011101110100010001110111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaB[14]~0_combout\,
	combout => \ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B14|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B14|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~2_combout\ ) ) ) # ( !\ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & \BANCO_REGISTRADORES|saidaA[14]~14_combout\) ) ) ) # ( \ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( 
-- !\BANCO_REGISTRADORES|saidaA[14]~14_combout\ $ (((!\ULA|ULA_B2|MUX|saida_MUX~2_combout\) # ((\ULA|ULA_B13|SOMA_SUB|C_out~1_combout\) # (\ULA|ULA_B13|SOMA_SUB|C_out~0_combout\)))) ) ) ) # ( !\ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (!\BANCO_REGISTRADORES|saidaA[14]~14_combout\ $ (((!\ULA|ULA_B13|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B13|SOMA_SUB|C_out~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000010000001011111100000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datac => \ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[14]~14_combout\,
	datae => \ULA|ULA_B14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B14|MUX|saida_MUX~0_combout\);

\MEMORIA_DADOS|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[14]~0_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~80_q\);

\MEMORIA_DADOS|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[14]~0_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~48_q\);

\MUX_RAM_ULA|saida_MUX[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[14]~13_combout\ = ( \MEMORIA_DADOS|ram~48_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B14|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~80_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~48_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B14|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~80_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~80_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~48_q\,
	combout => \MUX_RAM_ULA|saida_MUX[14]~13_combout\);

\BANCO_REGISTRADORES|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[14]~13_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~52_q\);

\BANCO_REGISTRADORES|registrador~1132\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1132_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~308_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~52_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1132_combout\);

\BANCO_REGISTRADORES|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[14]~14_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1132_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1132_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[14]~14_combout\);

\BANCO_REGISTRADORES|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[15]~12_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~309_q\);

\BANCO_REGISTRADORES|registrador~1284\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1284_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~53_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~53_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1284_combout\);

\BANCO_REGISTRADORES|registrador~1138\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1138_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1284_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1284_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1284_combout\ & ( (\BANCO_REGISTRADORES|registrador~309_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~309_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1284_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1138_combout\);

\BANCO_REGISTRADORES|saidaB[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[15]~1_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1138_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1138_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[15]~1_combout\);

\MEMORIA_DADOS|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[15]~1_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~81_q\);

\MEMORIA_DADOS|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[15]~1_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~49_q\);

\MEMORIA_DADOS|ram~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~105_combout\ = ( \MEMORIA_DADOS|ram~49_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~81_q\) ) ) # ( !\MEMORIA_DADOS|ram~49_q\ 
-- & ( (\MEMORIA_DADOS|ram~81_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~81_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~49_q\,
	combout => \MEMORIA_DADOS|ram~105_combout\);

\ULA|ULA_B14|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B14|SOMA_SUB|C_out~combout\ = (!\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & ((!\ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B13|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B13|SOMA_SUB|C_out~1_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & (!\ULA|ULA_B13|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B13|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[14]~14_combout\,
	datad => \ULA|ULA_B14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B14|SOMA_SUB|C_out~combout\);

\ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[15]~1_combout\,
	combout => \ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B15|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B15|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[15]~15_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & \ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B14|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[15]~15_combout\ $ (!\ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[15]~15_combout\,
	datad => \ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B15|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[15]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[15]~12_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B15|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~105_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~105_combout\,
	datac => \ULA|ULA_B15|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[15]~12_combout\);

\BANCO_REGISTRADORES|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[15]~12_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~53_q\);

\BANCO_REGISTRADORES|registrador~1137\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1137_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~309_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~53_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~309_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1137_combout\);

\BANCO_REGISTRADORES|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[15]~15_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1137_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1137_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[15]~15_combout\);

\ULA|ULA_B15|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B15|SOMA_SUB|C_out~combout\ = ( !\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & ( \ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & ((!\ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA_B13|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B13|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & (!\ULA|ULA_B13|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B13|SOMA_SUB|C_out~1_combout\ & 
-- !\ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( \BANCO_REGISTRADORES|saidaA[15]~15_combout\ & ( !\ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & 
-- ((!\ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B13|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B13|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[14]~14_combout\ & (!\ULA|ULA_B13|SOMA_SUB|C_out~0_combout\ & 
-- (!\ULA|ULA_B13|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B14|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[15]~15_combout\ & ( !\ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[14]~14_combout\,
	datad => \ULA|ULA_B14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[15]~15_combout\,
	dataf => \ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B15|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[16]~19_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~310_q\);

\BANCO_REGISTRADORES|registrador~1288\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1288_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~54_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~54_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1288_combout\);

\BANCO_REGISTRADORES|registrador~1143\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1143_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1288_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1288_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1288_combout\ & ( (\BANCO_REGISTRADORES|registrador~310_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1288_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1143_combout\);

\BANCO_REGISTRADORES|saidaB[16]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[16]~2_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1143_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1143_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[16]~2_combout\);

\MEMORIA_DADOS|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[16]~2_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~82_q\);

\MEMORIA_DADOS|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[16]~2_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~50_q\);

\MEMORIA_DADOS|ram~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~106_combout\ = ( \MEMORIA_DADOS|ram~50_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~82_q\) ) ) # ( !\MEMORIA_DADOS|ram~50_q\ 
-- & ( (\MEMORIA_DADOS|ram~82_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~82_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~50_q\,
	combout => \MEMORIA_DADOS|ram~106_combout\);

\ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[16]~2_combout\,
	combout => \ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B16|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B16|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( ((!\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & !\ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((!\BANCO_REGISTRADORES|saidaA[16]~16_combout\) # (!\ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B15|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[16]~16_combout\ $ (\ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111011100001111101010101010110111110111000011111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B15|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~16_combout\,
	datad => \ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B16|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[16]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[16]~19_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B16|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~106_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~106_combout\,
	datac => \ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[16]~19_combout\);

\BANCO_REGISTRADORES|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[16]~19_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~54_q\);

\BANCO_REGISTRADORES|registrador~1142\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1142_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~310_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~54_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1142_combout\);

\BANCO_REGISTRADORES|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[16]~16_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1142_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[16]~16_combout\);

\BANCO_REGISTRADORES|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[17]~18_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~311_q\);

\BANCO_REGISTRADORES|registrador~1292\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1292_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~55_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~55_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1292_combout\);

\BANCO_REGISTRADORES|registrador~1148\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1148_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1292_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1292_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1292_combout\ & ( (\BANCO_REGISTRADORES|registrador~311_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~311_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1292_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1148_combout\);

\ULA|ULA_B17|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B17|SOMA_SUB|saida_xor~combout\ = ( \BANCO_REGISTRADORES|registrador~1148_combout\ & ( !\BANCO_REGISTRADORES|saidaA[17]~17_combout\ $ (((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (\BANCO_REGISTRADORES|Equal0~0_combout\)) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\))) ) ) # ( !\BANCO_REGISTRADORES|registrador~1148_combout\ & ( !\BANCO_REGISTRADORES|saidaA[17]~17_combout\ $ (((!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011011101001010001101011100100010110111010010100011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~17_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_registrador~1148_combout\,
	combout => \ULA|ULA_B17|SOMA_SUB|saida_xor~combout\);

\BANCO_REGISTRADORES|saidaB[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[17]~3_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1148_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1148_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[17]~3_combout\);

\ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[17]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[17]~3_combout\,
	combout => \ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B17|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B17|MUX|saida_MUX~0_combout\ = (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((!\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & (\ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & \ULA|ULA_B2|MUX|saida_MUX~1_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & ((\ULA|ULA_B2|MUX|saida_MUX~1_combout\) # (\ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~17_combout\,
	datac => \ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B17|MUX|saida_MUX~0_combout\);

\ULA|ULA_B17|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B17|MUX|saida_MUX~1_combout\ = ( \ULA|ULA_B3|MUX|saida_MUX~1_combout\ & ( \ULA|ULA_B17|MUX|saida_MUX~0_combout\ ) ) # ( !\ULA|ULA_B3|MUX|saida_MUX~1_combout\ & ( \ULA|ULA_B17|MUX|saida_MUX~0_combout\ ) ) # ( \ULA|ULA_B3|MUX|saida_MUX~1_combout\ & 
-- ( !\ULA|ULA_B17|MUX|saida_MUX~0_combout\ & ( !\ULA|ULA_B17|SOMA_SUB|saida_xor~combout\ $ (((!\ULA|ULA_B15|SOMA_SUB|C_out~combout\ & (!\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & !\ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\)) # 
-- (\ULA|ULA_B15|SOMA_SUB|C_out~combout\ & ((!\BANCO_REGISTRADORES|saidaA[16]~16_combout\) # (!\ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B15|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~16_combout\,
	datac => \ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B17|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datae => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA|ULA_B17|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B17|MUX|saida_MUX~1_combout\);

\MEMORIA_DADOS|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[17]~3_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~83_q\);

\MEMORIA_DADOS|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[17]~3_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~51_q\);

\MUX_RAM_ULA|saida_MUX[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[17]~18_combout\ = ( \MEMORIA_DADOS|ram~51_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B17|MUX|saida_MUX~1_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~83_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~51_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B17|MUX|saida_MUX~1_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~83_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B17|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~83_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~51_q\,
	combout => \MUX_RAM_ULA|saida_MUX[17]~18_combout\);

\BANCO_REGISTRADORES|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[17]~18_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~55_q\);

\BANCO_REGISTRADORES|registrador~1147\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1147_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~311_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~55_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~311_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1147_combout\);

\BANCO_REGISTRADORES|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[17]~17_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1147_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1147_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[17]~17_combout\);

\ULA|ULA_B17|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B17|SOMA_SUB|C_out~combout\ = ( \ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & ( ((!\ULA|ULA_B15|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[16]~16_combout\))) # 
-- (\ULA|ULA_B15|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & \ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\BANCO_REGISTRADORES|saidaA[17]~17_combout\) ) ) # ( !\ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- (\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & ((!\ULA|ULA_B15|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[16]~16_combout\))) # (\ULA|ULA_B15|SOMA_SUB|C_out~combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & \ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B15|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~16_combout\,
	datac => \ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~17_combout\,
	datae => \ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B17|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[18]~17_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~312_q\);

\BANCO_REGISTRADORES|registrador~1296\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1296_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~56_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~56_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1296_combout\);

\BANCO_REGISTRADORES|registrador~1153\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1153_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1296_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1296_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1296_combout\ & ( (\BANCO_REGISTRADORES|registrador~312_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1296_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1153_combout\);

\BANCO_REGISTRADORES|saidaB[18]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[18]~4_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1153_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1153_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[18]~4_combout\);

\ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[18]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[18]~4_combout\,
	combout => \ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B18|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B18|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[18]~18_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[18]~18_combout\ & \ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B17|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[18]~18_combout\ $ (\ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B17|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[18]~18_combout\,
	datad => \ULA|ULA_B18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B18|MUX|saida_MUX~0_combout\);

\MEMORIA_DADOS|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[18]~4_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~84_q\);

\MEMORIA_DADOS|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[18]~4_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~52_q\);

\MUX_RAM_ULA|saida_MUX[18]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[18]~17_combout\ = ( \MEMORIA_DADOS|ram~52_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B18|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~84_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~52_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B18|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~84_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~84_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~52_q\,
	combout => \MUX_RAM_ULA|saida_MUX[18]~17_combout\);

\BANCO_REGISTRADORES|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[18]~17_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~56_q\);

\BANCO_REGISTRADORES|registrador~1152\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1152_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~312_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~56_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1152_combout\);

\BANCO_REGISTRADORES|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[18]~18_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1152_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1152_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[18]~18_combout\);

\ULA|ULA_B18|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B18|SOMA_SUB|saida_xor~combout\ = !\BANCO_REGISTRADORES|saidaA[18]~18_combout\ $ (!\ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[18]~18_combout\,
	datab => \ULA|ULA_B18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B18|SOMA_SUB|saida_xor~combout\);

\ULA|ULA_B18|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B18|SOMA_SUB|C_out~0_combout\ = ( \ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B18|SOMA_SUB|saida_xor~combout\ & ( ((!\ULA|ULA_B15|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[16]~16_combout\))) # (\ULA|ULA_B15|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & \ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\BANCO_REGISTRADORES|saidaA[17]~17_combout\) ) ) ) # ( 
-- !\ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B18|SOMA_SUB|saida_xor~combout\ & ( (\BANCO_REGISTRADORES|saidaA[17]~17_combout\ & ((!\ULA|ULA_B15|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[16]~16_combout\))) # (\ULA|ULA_B15|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[16]~16_combout\ & \ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B15|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[16]~16_combout\,
	datac => \ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[17]~17_combout\,
	datae => \ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B18|SOMA_SUB|ALT_INV_saida_xor~combout\,
	combout => \ULA|ULA_B18|SOMA_SUB|C_out~0_combout\);

\ULA|ULA_B18|SOMA_SUB|C_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B18|SOMA_SUB|C_out~1_combout\ = (\BANCO_REGISTRADORES|saidaA[18]~18_combout\ & \ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[18]~18_combout\,
	datab => \ULA|ULA_B18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B18|SOMA_SUB|C_out~1_combout\);

\BANCO_REGISTRADORES|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[19]~16_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~313_q\);

\BANCO_REGISTRADORES|registrador~1300\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1300_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~57_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~57_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1300_combout\);

\BANCO_REGISTRADORES|registrador~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1158_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1300_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1300_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1300_combout\ & ( (\BANCO_REGISTRADORES|registrador~313_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~313_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1300_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1158_combout\);

\BANCO_REGISTRADORES|saidaB[19]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[19]~5_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1158_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[19]~5_combout\);

\MEMORIA_DADOS|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[19]~5_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~85_q\);

\MEMORIA_DADOS|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[19]~5_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~53_q\);

\MEMORIA_DADOS|ram~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~107_combout\ = ( \MEMORIA_DADOS|ram~53_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~85_q\) ) ) # ( !\MEMORIA_DADOS|ram~53_q\ 
-- & ( (\MEMORIA_DADOS|ram~85_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~85_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~53_q\,
	combout => \MEMORIA_DADOS|ram~107_combout\);

\ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[19]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[19]~5_combout\,
	combout => \ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B19|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B19|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~2_combout\ ) ) ) # ( !\ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & \BANCO_REGISTRADORES|saidaA[19]~19_combout\) ) ) ) # ( \ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( 
-- !\BANCO_REGISTRADORES|saidaA[19]~19_combout\ $ (((!\ULA|ULA_B2|MUX|saida_MUX~2_combout\) # ((\ULA|ULA_B18|SOMA_SUB|C_out~1_combout\) # (\ULA|ULA_B18|SOMA_SUB|C_out~0_combout\)))) ) ) ) # ( !\ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (!\BANCO_REGISTRADORES|saidaA[19]~19_combout\ $ (((!\ULA|ULA_B18|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B18|SOMA_SUB|C_out~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000010000001011111100000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B18|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datac => \ULA|ULA_B18|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[19]~19_combout\,
	datae => \ULA|ULA_B19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B19|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[19]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[19]~16_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B19|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~107_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~107_combout\,
	datac => \ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[19]~16_combout\);

\BANCO_REGISTRADORES|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[19]~16_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~57_q\);

\BANCO_REGISTRADORES|registrador~1157\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1157_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~313_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~57_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~313_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1157_combout\);

\BANCO_REGISTRADORES|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[19]~19_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1157_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1157_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[19]~19_combout\);

\BANCO_REGISTRADORES|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[20]~23_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~314_q\);

\BANCO_REGISTRADORES|registrador~1304\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1304_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~58_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~58_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1304_combout\);

\BANCO_REGISTRADORES|registrador~1163\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1163_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1304_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1304_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1304_combout\ & ( (\BANCO_REGISTRADORES|registrador~314_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1304_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1163_combout\);

\BANCO_REGISTRADORES|saidaB[20]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[20]~6_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1163_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1163_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[20]~6_combout\);

\MEMORIA_DADOS|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[20]~6_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~86_q\);

\MEMORIA_DADOS|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[20]~6_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~54_q\);

\MEMORIA_DADOS|ram~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~108_combout\ = ( \MEMORIA_DADOS|ram~54_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~86_q\) ) ) # ( !\MEMORIA_DADOS|ram~54_q\ 
-- & ( (\MEMORIA_DADOS|ram~86_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~86_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~54_q\,
	combout => \MEMORIA_DADOS|ram~108_combout\);

\ULA|ULA_B19|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B19|SOMA_SUB|C_out~combout\ = (!\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & ((!\ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B18|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B18|SOMA_SUB|C_out~1_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & (!\ULA|ULA_B18|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B18|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B18|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B18|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[19]~19_combout\,
	datad => \ULA|ULA_B19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B19|SOMA_SUB|C_out~combout\);

\ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[20]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[20]~6_combout\,
	combout => \ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B20|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B20|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( ((!\BANCO_REGISTRADORES|saidaA[20]~20_combout\ & !\ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((!\BANCO_REGISTRADORES|saidaA[20]~20_combout\) # (!\ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B19|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[20]~20_combout\ $ (\ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111011100001111101010101010110111110111000011111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B19|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[20]~20_combout\,
	datad => \ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B20|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[20]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[20]~23_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B20|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~108_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~108_combout\,
	datac => \ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[20]~23_combout\);

\BANCO_REGISTRADORES|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[20]~23_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~58_q\);

\BANCO_REGISTRADORES|registrador~1162\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1162_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~314_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~58_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1162_combout\);

\BANCO_REGISTRADORES|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[20]~20_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1162_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[20]~20_combout\);

\ULA|ULA_B20|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B20|SOMA_SUB|C_out~combout\ = ( !\BANCO_REGISTRADORES|saidaA[20]~20_combout\ & ( \ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & ((!\ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA_B18|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B18|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & (!\ULA|ULA_B18|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B18|SOMA_SUB|C_out~1_combout\ & 
-- !\ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( \BANCO_REGISTRADORES|saidaA[20]~20_combout\ & ( !\ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & 
-- ((!\ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B18|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B18|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[19]~19_combout\ & (!\ULA|ULA_B18|SOMA_SUB|C_out~0_combout\ & 
-- (!\ULA|ULA_B18|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B19|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[20]~20_combout\ & ( !\ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B18|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B18|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[19]~19_combout\,
	datad => \ULA|ULA_B19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[20]~20_combout\,
	dataf => \ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B20|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[21]~22_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~315_q\);

\BANCO_REGISTRADORES|registrador~1308\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1308_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~59_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~59_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1308_combout\);

\BANCO_REGISTRADORES|registrador~1168\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1168_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1308_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1308_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1308_combout\ & ( (\BANCO_REGISTRADORES|registrador~315_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~315_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1308_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1168_combout\);

\BANCO_REGISTRADORES|saidaB[21]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[21]~7_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1168_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1168_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[21]~7_combout\);

\ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[21]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[21]~7_combout\,
	combout => \ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B21|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B21|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[21]~21_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[21]~21_combout\ & \ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B20|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[21]~21_combout\ $ (!\ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B20|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[21]~21_combout\,
	datad => \ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B21|MUX|saida_MUX~0_combout\);

\MEMORIA_DADOS|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[21]~7_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~87_q\);

\MEMORIA_DADOS|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[21]~7_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~55_q\);

\MUX_RAM_ULA|saida_MUX[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[21]~22_combout\ = ( \MEMORIA_DADOS|ram~55_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B21|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~87_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~55_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B21|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~87_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B21|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~87_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~55_q\,
	combout => \MUX_RAM_ULA|saida_MUX[21]~22_combout\);

\BANCO_REGISTRADORES|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[21]~22_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~59_q\);

\BANCO_REGISTRADORES|registrador~1167\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1167_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~315_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~59_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~315_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1167_combout\);

\BANCO_REGISTRADORES|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[21]~21_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1167_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1167_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[21]~21_combout\);

\BANCO_REGISTRADORES|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[22]~21_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~316_q\);

\BANCO_REGISTRADORES|registrador~1312\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1312_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~60_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~60_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1312_combout\);

\BANCO_REGISTRADORES|registrador~1173\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1173_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1312_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1312_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1312_combout\ & ( (\BANCO_REGISTRADORES|registrador~316_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1312_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1173_combout\);

\BANCO_REGISTRADORES|saidaB[22]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[22]~8_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1173_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1173_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[22]~8_combout\);

\ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[22]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[22]~8_combout\,
	combout => \ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B22|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B22|SOMA_SUB|saida_xor~combout\ = !\BANCO_REGISTRADORES|saidaA[22]~22_combout\ $ (!\ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[22]~22_combout\,
	datab => \ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B22|SOMA_SUB|saida_xor~combout\);

\ULA|ULA_B22|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B22|MUX|saida_MUX~0_combout\ = (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((!\BANCO_REGISTRADORES|saidaA[22]~22_combout\ & (\ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & \ULA|ULA_B2|MUX|saida_MUX~1_combout\)) # 
-- (\BANCO_REGISTRADORES|saidaA[22]~22_combout\ & ((\ULA|ULA_B2|MUX|saida_MUX~1_combout\) # (\ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[22]~22_combout\,
	datac => \ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B22|MUX|saida_MUX~0_combout\);

\ULA|ULA_B22|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B22|MUX|saida_MUX~1_combout\ = ( \ULA|ULA_B3|MUX|saida_MUX~1_combout\ & ( \ULA|ULA_B22|MUX|saida_MUX~0_combout\ ) ) # ( !\ULA|ULA_B3|MUX|saida_MUX~1_combout\ & ( \ULA|ULA_B22|MUX|saida_MUX~0_combout\ ) ) # ( \ULA|ULA_B3|MUX|saida_MUX~1_combout\ & 
-- ( !\ULA|ULA_B22|MUX|saida_MUX~0_combout\ & ( !\ULA|ULA_B22|SOMA_SUB|saida_xor~combout\ $ (((!\ULA|ULA_B20|SOMA_SUB|C_out~combout\ & (!\BANCO_REGISTRADORES|saidaA[21]~21_combout\ & !\ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\)) # 
-- (\ULA|ULA_B20|SOMA_SUB|C_out~combout\ & ((!\BANCO_REGISTRADORES|saidaA[21]~21_combout\) # (!\ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B20|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[21]~21_combout\,
	datac => \ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B22|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datae => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B22|MUX|saida_MUX~1_combout\);

\MEMORIA_DADOS|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[22]~8_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~88_q\);

\MEMORIA_DADOS|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[22]~8_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~56_q\);

\MUX_RAM_ULA|saida_MUX[22]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[22]~21_combout\ = ( \MEMORIA_DADOS|ram~56_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B22|MUX|saida_MUX~1_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~88_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~56_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B22|MUX|saida_MUX~1_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~88_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B22|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~88_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~56_q\,
	combout => \MUX_RAM_ULA|saida_MUX[22]~21_combout\);

\BANCO_REGISTRADORES|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[22]~21_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~60_q\);

\BANCO_REGISTRADORES|registrador~1172\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1172_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~316_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~60_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1172_combout\);

\BANCO_REGISTRADORES|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[22]~22_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1172_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1172_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[22]~22_combout\);

\BANCO_REGISTRADORES|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[23]~20_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~317_q\);

\BANCO_REGISTRADORES|registrador~1316\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1316_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~61_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~61_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1316_combout\);

\BANCO_REGISTRADORES|registrador~1178\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1178_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1316_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1316_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1316_combout\ & ( (\BANCO_REGISTRADORES|registrador~317_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~317_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1316_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1178_combout\);

\BANCO_REGISTRADORES|saidaB[23]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[23]~9_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1178_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[23]~9_combout\);

\MEMORIA_DADOS|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[23]~9_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~89_q\);

\MEMORIA_DADOS|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[23]~9_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~57_q\);

\MEMORIA_DADOS|ram~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~109_combout\ = ( \MEMORIA_DADOS|ram~57_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~89_q\) ) ) # ( !\MEMORIA_DADOS|ram~57_q\ 
-- & ( (\MEMORIA_DADOS|ram~89_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~89_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~57_q\,
	combout => \MEMORIA_DADOS|ram~109_combout\);

\ULA|ULA_B22|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B22|SOMA_SUB|C_out~combout\ = ( \ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & ( ((!\ULA|ULA_B20|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[21]~21_combout\))) # 
-- (\ULA|ULA_B20|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[21]~21_combout\ & \ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\BANCO_REGISTRADORES|saidaA[22]~22_combout\) ) ) # ( !\ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- (\BANCO_REGISTRADORES|saidaA[22]~22_combout\ & ((!\ULA|ULA_B20|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[21]~21_combout\))) # (\ULA|ULA_B20|SOMA_SUB|C_out~combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[21]~21_combout\ & \ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B20|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[21]~21_combout\,
	datac => \ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[22]~22_combout\,
	datae => \ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B22|SOMA_SUB|C_out~combout\);

\ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[23]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[23]~9_combout\,
	combout => \ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B23|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B23|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[23]~23_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[23]~23_combout\ & \ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B22|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[23]~23_combout\ $ (\ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B22|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[23]~23_combout\,
	datad => \ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B23|MUX|saida_MUX~0_combout\);

\MUX_RAM_ULA|saida_MUX[23]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[23]~20_combout\ = (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B23|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~109_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~109_combout\,
	datac => \ULA|ULA_B23|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[23]~20_combout\);

\BANCO_REGISTRADORES|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[23]~20_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~61_q\);

\BANCO_REGISTRADORES|registrador~1177\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1177_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~317_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~61_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~317_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1177_combout\);

\BANCO_REGISTRADORES|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[23]~23_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1177_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1177_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[23]~23_combout\);

\ULA|ULA_B23|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B23|SOMA_SUB|saida_xor~combout\ = !\BANCO_REGISTRADORES|saidaA[23]~23_combout\ $ (!\ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[23]~23_combout\,
	datab => \ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B23|SOMA_SUB|saida_xor~combout\);

\ULA|ULA_B23|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B23|SOMA_SUB|C_out~0_combout\ = ( \ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B23|SOMA_SUB|saida_xor~combout\ & ( ((!\ULA|ULA_B20|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[21]~21_combout\))) # (\ULA|ULA_B20|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[21]~21_combout\ & \ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\BANCO_REGISTRADORES|saidaA[22]~22_combout\) ) ) ) # ( 
-- !\ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B23|SOMA_SUB|saida_xor~combout\ & ( (\BANCO_REGISTRADORES|saidaA[22]~22_combout\ & ((!\ULA|ULA_B20|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\BANCO_REGISTRADORES|saidaA[21]~21_combout\))) # (\ULA|ULA_B20|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[21]~21_combout\ & \ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B20|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[21]~21_combout\,
	datac => \ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[22]~22_combout\,
	datae => \ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B23|SOMA_SUB|ALT_INV_saida_xor~combout\,
	combout => \ULA|ULA_B23|SOMA_SUB|C_out~0_combout\);

\ULA|ULA_B23|SOMA_SUB|C_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B23|SOMA_SUB|C_out~1_combout\ = (\BANCO_REGISTRADORES|saidaA[23]~23_combout\ & \ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_saidaA[23]~23_combout\,
	datab => \ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B23|SOMA_SUB|C_out~1_combout\);

\BANCO_REGISTRADORES|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[24]~24_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~318_q\);

\BANCO_REGISTRADORES|registrador~1320\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1320_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~62_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~62_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1320_combout\);

\BANCO_REGISTRADORES|registrador~1183\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1183_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1320_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1320_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1320_combout\ & ( (\BANCO_REGISTRADORES|registrador~318_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1320_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1183_combout\);

\BANCO_REGISTRADORES|saidaB[24]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[24]~10_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1183_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1183_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[24]~10_combout\);

\ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[24]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[24]~10_combout\,
	combout => \ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B24|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B24|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~2_combout\ ) ) ) # ( !\ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & \BANCO_REGISTRADORES|saidaA[24]~24_combout\) ) ) ) # ( \ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( 
-- !\BANCO_REGISTRADORES|saidaA[24]~24_combout\ $ (((!\ULA|ULA_B2|MUX|saida_MUX~2_combout\) # ((\ULA|ULA_B23|SOMA_SUB|C_out~1_combout\) # (\ULA|ULA_B23|SOMA_SUB|C_out~0_combout\)))) ) ) ) # ( !\ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (!\BANCO_REGISTRADORES|saidaA[24]~24_combout\ $ (((!\ULA|ULA_B23|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B23|SOMA_SUB|C_out~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000000010000001011111100000000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datac => \ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[24]~24_combout\,
	datae => \ULA|ULA_B24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B24|MUX|saida_MUX~0_combout\);

\MEMORIA_DADOS|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[24]~10_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~90_q\);

\MEMORIA_DADOS|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[24]~10_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~58_q\);

\MUX_RAM_ULA|saida_MUX[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[24]~24_combout\ = ( \MEMORIA_DADOS|ram~58_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B24|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~90_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~58_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B24|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~90_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B24|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~90_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~58_q\,
	combout => \MUX_RAM_ULA|saida_MUX[24]~24_combout\);

\BANCO_REGISTRADORES|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[24]~24_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~62_q\);

\BANCO_REGISTRADORES|registrador~1182\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1182_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~318_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~62_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1182_combout\);

\BANCO_REGISTRADORES|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[24]~24_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1182_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[24]~24_combout\);

\ULA|ULA_B24|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B24|SOMA_SUB|C_out~combout\ = (!\BANCO_REGISTRADORES|saidaA[24]~24_combout\ & ((!\ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B23|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B23|SOMA_SUB|C_out~1_combout\)))) # 
-- (\BANCO_REGISTRADORES|saidaA[24]~24_combout\ & (!\ULA|ULA_B23|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B23|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[24]~24_combout\,
	datad => \ULA|ULA_B24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B24|SOMA_SUB|C_out~combout\);

\BANCO_REGISTRADORES|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[25]~25_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~319_q\);

\BANCO_REGISTRADORES|registrador~1324\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1324_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~18_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ & ( (\BANCO_REGISTRADORES|registrador~63_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~63_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1324_combout\);

\BANCO_REGISTRADORES|registrador~1188\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1188_combout\ = ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~1324_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( 
-- \BANCO_REGISTRADORES|registrador~1324_combout\ & ( !\MEMORIA_INSTRUCAO|memROM~15_combout\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( !\BANCO_REGISTRADORES|registrador~1324_combout\ & ( (\BANCO_REGISTRADORES|registrador~319_q\ & 
-- \MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~319_q\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1324_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1188_combout\);

\BANCO_REGISTRADORES|saidaB[25]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[25]~11_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1188_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1188_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[25]~11_combout\);

\ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\UNIDADE_CONT_ULA|ULActrl[2]~0_combout\ $ (!\BANCO_REGISTRADORES|saidaB[25]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~0_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaB[25]~11_combout\,
	combout => \ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\);

\ULA|ULA_B25|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B25|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[25]~25_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[25]~25_combout\ & \ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B24|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[25]~25_combout\ $ (!\ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110000010101010101001000001000111100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[25]~25_combout\,
	datad => \ULA|ULA_B25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B25|MUX|saida_MUX~0_combout\);

\MEMORIA_DADOS|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[25]~11_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~91_q\);

\MEMORIA_DADOS|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[25]~11_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~59_q\);

\MUX_RAM_ULA|saida_MUX[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[25]~25_combout\ = ( \MEMORIA_DADOS|ram~59_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B25|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B0|MUX|saida_MUX~1_combout\) # 
-- ((\MEMORIA_DADOS|ram~91_q\)))) ) ) # ( !\MEMORIA_DADOS|ram~59_q\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (((\ULA|ULA_B25|MUX|saida_MUX~0_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\ULA|ULA_B0|MUX|saida_MUX~1_combout\ & 
-- ((\MEMORIA_DADOS|ram~91_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001011100011111100001100000111010010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \ULA|ULA_B25|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~91_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~59_q\,
	combout => \MUX_RAM_ULA|saida_MUX[25]~25_combout\);

\BANCO_REGISTRADORES|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_RAM_ULA|saida_MUX[25]~25_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~63_q\);

\BANCO_REGISTRADORES|registrador~1187\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1187_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( \MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~319_q\ ) ) ) # ( !\MEMORIA_INSTRUCAO|memROM~13_combout\ & ( 
-- !\MEMORIA_INSTRUCAO|memROM~4_combout\ & ( \BANCO_REGISTRADORES|registrador~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_registrador~63_q\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~319_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	dataf => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1187_combout\);

\BANCO_REGISTRADORES|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaA[25]~25_combout\ = (!\PC|DOUT\(7) & (\BANCO_REGISTRADORES|registrador~1187_combout\ & ((\MEMORIA_INSTRUCAO|memROM~3_combout\) # (\MEMORIA_INSTRUCAO|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~12_combout\,
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~1187_combout\,
	combout => \BANCO_REGISTRADORES|saidaA[25]~25_combout\);

\ULA|ULA_B25|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B25|SOMA_SUB|C_out~combout\ = ( !\BANCO_REGISTRADORES|saidaA[25]~25_combout\ & ( \ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[24]~24_combout\ & ((!\ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA_B23|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B23|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[24]~24_combout\ & (!\ULA|ULA_B23|SOMA_SUB|C_out~0_combout\ & (!\ULA|ULA_B23|SOMA_SUB|C_out~1_combout\ & 
-- !\ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( \BANCO_REGISTRADORES|saidaA[25]~25_combout\ & ( !\ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\BANCO_REGISTRADORES|saidaA[24]~24_combout\ & 
-- ((!\ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA|ULA_B23|SOMA_SUB|C_out~0_combout\ & !\ULA|ULA_B23|SOMA_SUB|C_out~1_combout\)))) # (\BANCO_REGISTRADORES|saidaA[24]~24_combout\ & (!\ULA|ULA_B23|SOMA_SUB|C_out~0_combout\ & 
-- (!\ULA|ULA_B23|SOMA_SUB|C_out~1_combout\ & !\ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\BANCO_REGISTRADORES|saidaA[25]~25_combout\ & ( !\ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[24]~24_combout\,
	datad => \ULA|ULA_B24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \BANCO_REGISTRADORES|ALT_INV_saidaA[25]~25_combout\,
	dataf => \ULA|ULA_B25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B25|SOMA_SUB|C_out~combout\);

\ULA|ULA_B27|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B27|SOMA_SUB|C_out~combout\ = ( \ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ & ( ((!\ULA|ULA_B25|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[26]~26_combout\))) # 
-- (\ULA|ULA_B25|SOMA_SUB|C_out~combout\ & (\BANCO_REGISTRADORES|saidaA[26]~26_combout\ & \ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\BANCO_REGISTRADORES|saidaA[27]~27_combout\) ) ) # ( !\ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- (\BANCO_REGISTRADORES|saidaA[27]~27_combout\ & ((!\ULA|ULA_B25|SOMA_SUB|C_out~combout\ & ((\ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[26]~26_combout\))) # (\ULA|ULA_B25|SOMA_SUB|C_out~combout\ & 
-- (\BANCO_REGISTRADORES|saidaA[26]~26_combout\ & \ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B25|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_saidaA[26]~26_combout\,
	datac => \ULA|ULA_B26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \BANCO_REGISTRADORES|ALT_INV_saidaA[27]~27_combout\,
	datae => \ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA_B27|SOMA_SUB|C_out~combout\);

\ULA|ULA_B28|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA_B28|MUX|saida_MUX~0_combout\ = ( \ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & ((\ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\) # (\BANCO_REGISTRADORES|saidaA[28]~28_combout\))) ) ) # ( 
-- !\ULA|ULA_B2|MUX|saida_MUX~1_combout\ & ( (!\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & (((\BANCO_REGISTRADORES|saidaA[28]~28_combout\ & \ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA|ULA_B2|MUX|saida_MUX~2_combout\ & 
-- (!\ULA|ULA_B27|SOMA_SUB|C_out~combout\ $ (!\BANCO_REGISTRADORES|saidaA[28]~28_combout\ $ (\ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001001011000010101010101000010100010010110000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \ULA|ULA_B27|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_saidaA[28]~28_combout\,
	datad => \ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA_B28|MUX|saida_MUX~0_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~14_combout\ & (\MEMORIA_INSTRUCAO|memROM~17_combout\ & (!\ULA|ULA_B3|MUX|saida_MUX~0_combout\ & !\ULA|ULA_B2|MUX|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~14_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	datac => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \comb~0_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \comb~0_combout\ & ( (\ULA|ULA_B4|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B7|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B6|MUX|saida_MUX~0_combout\ & !\ULA|ULA_B5|MUX|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA_B7|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B5|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_comb~0_combout\,
	combout => \comb~1_combout\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\ULA|ULA_B8|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B10|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B9|MUX|saida_MUX~0_combout\ & \comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B9|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_comb~1_combout\,
	combout => \comb~2_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\ULA|ULA_B11|MUX|saida_MUX~0_combout\ & (\ULA|ULA_B12|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B14|MUX|saida_MUX~0_combout\ & \comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B11|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_comb~2_combout\,
	combout => \comb~3_combout\);

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \comb~3_combout\ & ( (!\ULA|ULA_B15|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B13|MUX|saida_MUX~0_combout\ & (\ULA|ULA_B16|MUX|saida_MUX~0_combout\ & !\ULA|ULA_B17|MUX|saida_MUX~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B15|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA_B13|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B17|MUX|ALT_INV_saida_MUX~1_combout\,
	datae => \ALT_INV_comb~3_combout\,
	combout => \comb~4_combout\);

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \comb~4_combout\ & ( (!\ULA|ULA_B19|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B18|MUX|saida_MUX~0_combout\ & (\ULA|ULA_B20|MUX|saida_MUX~0_combout\ & !\ULA|ULA_B22|MUX|saida_MUX~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B22|MUX|ALT_INV_saida_MUX~1_combout\,
	datae => \ALT_INV_comb~4_combout\,
	combout => \comb~5_combout\);

\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\ULA|ULA_B23|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B21|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B24|MUX|saida_MUX~0_combout\ & \comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B23|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA_B21|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B24|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_comb~5_combout\,
	combout => \comb~6_combout\);

\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\ULA|ULA_B25|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B26|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B27|MUX|saida_MUX~1_combout\ & \comb~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B25|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA_B26|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B27|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_comb~6_combout\,
	combout => \comb~7_combout\);

\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( !\ULA|ULA_B30|MUX|saida_MUX~0_combout\ & ( \comb~7_combout\ & ( (!\ULA|ULA_B28|MUX|saida_MUX~0_combout\ & (!\ULA|ULA_B29|MUX|saida_MUX~0_combout\ & ((!\ULA|ULA_B3|MUX|saida_MUX~1_combout\) # (!\ULA|ULA_B30|SOMA_SUB|soma~combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA|ULA_B28|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B29|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B30|SOMA_SUB|ALT_INV_soma~combout\,
	datae => \ULA|ULA_B30|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_comb~7_combout\,
	combout => \comb~8_combout\);

\comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ( \ULA|ULA_B31|SOMA_SUB|soma~0_combout\ & ( !\ULA|ULA_B31|MUX|saida_MUX~0_combout\ & ( (!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # ((!\ULA|ULA_B0|MUX|saida_MUX~0_combout\ & 
-- !\ULA|ULA_B3|MUX|saida_MUX~1_combout\)))) ) ) ) # ( !\ULA|ULA_B31|SOMA_SUB|soma~0_combout\ & ( !\ULA|ULA_B31|MUX|saida_MUX~0_combout\ & ( (!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & 
-- ((!\ULA|ULA_B3|MUX|saida_MUX~1_combout\))) # (\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000001000000111000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\,
	datae => \ULA|ULA_B31|SOMA_SUB|ALT_INV_soma~0_combout\,
	dataf => \ULA|ULA_B31|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \comb~9_combout\);

\MEMORIA_INSTRUCAO|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~9_combout\ = (!\PC|DOUT\(5) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \PC|DOUT\(4))) # (\PC|DOUT\(2) & (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000000000110010000000000011001000000000001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INSTRUCAO|memROM~9_combout\);

\MEMORIA_INSTRUCAO|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~7_combout\ = (!\PC|DOUT\(5) & ((!\PC|DOUT\(2) & (\PC|DOUT\(3) & !\PC|DOUT\(4))) # (\PC|DOUT\(2) & ((\PC|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100000000001001010000000000100101000000000010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INSTRUCAO|memROM~7_combout\);

\SOMADOR_beq|Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~118_cout\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~11_combout\ ) + ( \SOMADOR|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~11_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~1_sumout\,
	cin => GND,
	cout => \SOMADOR_beq|Add0~118_cout\);

\SOMADOR_beq|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~1_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \MEMORIA_INSTRUCAO|memROM~7_combout\)) ) + ( \SOMADOR|Add0~5_sumout\ ) + ( \SOMADOR_beq|Add0~118_cout\ ))
-- \SOMADOR_beq|Add0~2\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \MEMORIA_INSTRUCAO|memROM~7_combout\)) ) + ( \SOMADOR|Add0~5_sumout\ ) + ( \SOMADOR_beq|Add0~118_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~7_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~5_sumout\,
	cin => \SOMADOR_beq|Add0~118_cout\,
	sumout => \SOMADOR_beq|Add0~1_sumout\,
	cout => \SOMADOR_beq|Add0~2\);

\SOMADOR_beq|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~5_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \MEMORIA_INSTRUCAO|memROM~9_combout\)) ) + ( \SOMADOR|Add0~9_sumout\ ) + ( \SOMADOR_beq|Add0~2\ ))
-- \SOMADOR_beq|Add0~6\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \MEMORIA_INSTRUCAO|memROM~9_combout\)) ) + ( \SOMADOR|Add0~9_sumout\ ) + ( \SOMADOR_beq|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~9_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~9_sumout\,
	cin => \SOMADOR_beq|Add0~2\,
	sumout => \SOMADOR_beq|Add0~5_sumout\,
	cout => \SOMADOR_beq|Add0~6\);

\SOMADOR_beq|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~9_sumout\ = SUM(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\MEMORIA_INSTRUCAO|memROM~5_combout\)) ) + ( \SOMADOR|Add0~13_sumout\ ) + ( \SOMADOR_beq|Add0~6\ ))
-- \SOMADOR_beq|Add0~10\ = CARRY(( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\MEMORIA_INSTRUCAO|memROM~5_combout\)) ) + ( \SOMADOR|Add0~13_sumout\ ) + ( \SOMADOR_beq|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~5_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~13_sumout\,
	cin => \SOMADOR_beq|Add0~6\,
	sumout => \SOMADOR_beq|Add0~9_sumout\,
	cout => \SOMADOR_beq|Add0~10\);

\MUX_Prox_PC|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[5]~3_combout\ = ( \comb~9_combout\ & ( \SOMADOR_beq|Add0~9_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\) # (\SOMADOR|Add0~13_sumout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & 
-- (\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) ) # ( !\comb~9_combout\ & ( \SOMADOR_beq|Add0~9_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & ((\SOMADOR|Add0~13_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & 
-- (\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) ) # ( \comb~9_combout\ & ( !\SOMADOR_beq|Add0~9_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\SOMADOR|Add0~13_sumout\ & !\comb~8_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & 
-- (\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) ) # ( !\comb~9_combout\ & ( !\SOMADOR_beq|Add0~9_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & ((\SOMADOR|Add0~13_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & 
-- (\MEMORIA_INSTRUCAO|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001000100011101000111010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~6_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \SOMADOR|ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \ALT_INV_comb~9_combout\,
	dataf => \SOMADOR_beq|ALT_INV_Add0~9_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[5]~3_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\MEMORIA_INSTRUCAO|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~10_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) $ (\PC|DOUT\(3))))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (\PC|DOUT\(2) & 
-- \PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000100000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INSTRUCAO|memROM~10_combout\);

\MUX_Prox_PC|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[4]~2_combout\ = ( \comb~9_combout\ & ( \SOMADOR_beq|Add0~5_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\) # (\SOMADOR|Add0~9_sumout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & 
-- (\MEMORIA_INSTRUCAO|memROM~10_combout\)) ) ) ) # ( !\comb~9_combout\ & ( \SOMADOR_beq|Add0~5_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & ((\SOMADOR|Add0~9_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & 
-- (\MEMORIA_INSTRUCAO|memROM~10_combout\)) ) ) ) # ( \comb~9_combout\ & ( !\SOMADOR_beq|Add0~5_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\SOMADOR|Add0~9_sumout\ & !\comb~8_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & 
-- (\MEMORIA_INSTRUCAO|memROM~10_combout\)) ) ) ) # ( !\comb~9_combout\ & ( !\SOMADOR_beq|Add0~5_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & ((\SOMADOR|Add0~9_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & 
-- (\MEMORIA_INSTRUCAO|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001000100011101000111010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~10_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \SOMADOR|ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \ALT_INV_comb~9_combout\,
	dataf => \SOMADOR_beq|ALT_INV_Add0~5_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[4]~2_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\MEMORIA_INSTRUCAO|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~8_combout\ = ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & \PC|DOUT\(2))) ) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) & \PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INSTRUCAO|memROM~8_combout\);

\MUX_Prox_PC|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[3]~1_combout\ = ( \comb~9_combout\ & ( \SOMADOR_beq|Add0~1_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\) # (\SOMADOR|Add0~5_sumout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & 
-- (\MEMORIA_INSTRUCAO|memROM~8_combout\)) ) ) ) # ( !\comb~9_combout\ & ( \SOMADOR_beq|Add0~1_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & ((\SOMADOR|Add0~5_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~8_combout\)) 
-- ) ) ) # ( \comb~9_combout\ & ( !\SOMADOR_beq|Add0~1_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\SOMADOR|Add0~5_sumout\ & !\comb~8_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~8_combout\)) ) ) ) # ( 
-- !\comb~9_combout\ & ( !\SOMADOR_beq|Add0~1_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & ((\SOMADOR|Add0~5_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001000100011101000111010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~8_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \SOMADOR|ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \ALT_INV_comb~9_combout\,
	dataf => \SOMADOR_beq|ALT_INV_Add0~1_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[3]~1_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\MEMORIA_INSTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~4_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(5) & ((\PC|DOUT\(4)) # (\PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000000000000000000000101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \MEMORIA_INSTRUCAO|memROM~4_combout\);

\SOMADOR|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMADOR|Add0~14\ ))
-- \SOMADOR|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMADOR|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \SOMADOR|Add0~14\,
	sumout => \SOMADOR|Add0~21_sumout\,
	cout => \SOMADOR|Add0~22\);

\SOMADOR|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMADOR|Add0~22\ ))
-- \SOMADOR|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMADOR|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \SOMADOR|Add0~22\,
	sumout => \SOMADOR|Add0~17_sumout\,
	cout => \SOMADOR|Add0~18\);

\SOMADOR_beq|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~17_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~21_sumout\ ) + ( \SOMADOR_beq|Add0~10\ ))
-- \SOMADOR_beq|Add0~18\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~21_sumout\ ) + ( \SOMADOR_beq|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~21_sumout\,
	cin => \SOMADOR_beq|Add0~10\,
	sumout => \SOMADOR_beq|Add0~17_sumout\,
	cout => \SOMADOR_beq|Add0~18\);

\SOMADOR_beq|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~13_sumout\ = SUM(( (!\PC|DOUT\(7) & \MEMORIA_INSTRUCAO|memROM~3_combout\) ) + ( \SOMADOR|Add0~17_sumout\ ) + ( \SOMADOR_beq|Add0~18\ ))
-- \SOMADOR_beq|Add0~14\ = CARRY(( (!\PC|DOUT\(7) & \MEMORIA_INSTRUCAO|memROM~3_combout\) ) + ( \SOMADOR|Add0~17_sumout\ ) + ( \SOMADOR_beq|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~17_sumout\,
	cin => \SOMADOR_beq|Add0~18\,
	sumout => \SOMADOR_beq|Add0~13_sumout\,
	cout => \SOMADOR_beq|Add0~14\);

\MUX_Prox_PC|saida_MUX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[7]~4_combout\ = ( \comb~8_combout\ & ( \comb~9_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & ((\SOMADOR_beq|Add0~13_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) ) # ( 
-- !\comb~8_combout\ & ( \comb~9_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & ((\SOMADOR|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) ) # ( \comb~8_combout\ & ( !\comb~9_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & ((\SOMADOR|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) ) # ( !\comb~8_combout\ & ( !\comb~9_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & 
-- ((\SOMADOR|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \SOMADOR|ALT_INV_Add0~17_sumout\,
	datad => \SOMADOR_beq|ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_comb~8_combout\,
	dataf => \ALT_INV_comb~9_combout\,
	combout => \MUX_Prox_PC|saida_MUX[7]~4_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\MEMORIA_INSTRUCAO|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~11_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(3) & (\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \MEMORIA_INSTRUCAO|memROM~11_combout\);

\MUX_Prox_PC|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[2]~0_combout\ = ( \comb~9_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\SOMADOR|Add0~1_sumout\ & !\comb~8_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~11_combout\)) ) ) # ( 
-- !\comb~9_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & ((\SOMADOR|Add0~1_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001000100011101000111010001110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~11_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \SOMADOR|ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \ALT_INV_comb~9_combout\,
	combout => \MUX_Prox_PC|saida_MUX[2]~0_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\MEMORIA_INSTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~0_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & ((!\PC|DOUT\(2)) # (!\PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INSTRUCAO|memROM~0_combout\);

\MEMORIA_INSTRUCAO|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~14_combout\ = (\MEMORIA_INSTRUCAO|memROM~0_combout\ & \MEMORIA_INSTRUCAO|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	combout => \MEMORIA_INSTRUCAO|memROM~14_combout\);

\UNIDADE_DE_CONTROLE|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_DE_CONTROLE|Mux0~1_combout\ = (\MEMORIA_INSTRUCAO|memROM~14_combout\ & !\UNIDADE_DE_CONTROLE|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~14_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~0_combout\,
	combout => \UNIDADE_DE_CONTROLE|Mux0~1_combout\);

\MUX_Prox_PC|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[6]~5_combout\ = ( \SOMADOR_beq|Add0~17_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~21_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~17_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~21_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100000001000100010101000100010001000000010001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \SOMADOR|ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \ALT_INV_comb~9_combout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~17_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[6]~5_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\BANCO_REGISTRADORES|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|Equal0~0_combout\ = (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(7),
	combout => \BANCO_REGISTRADORES|Equal0~0_combout\);

\BANCO_REGISTRADORES|saidaB[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[3]~21_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1078_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[3]~21_combout\);

\MEMORIA_DADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[3]~21_combout\,
	ena => \MEMORIA_DADOS|ram~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~69_q\);

\MEMORIA_DADOS|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[3]~21_combout\,
	ena => \MEMORIA_DADOS|ram~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~37_q\);

\MEMORIA_DADOS|ram~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~98_combout\ = ( \MEMORIA_DADOS|ram~37_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~69_q\) ) ) # ( !\MEMORIA_DADOS|ram~37_q\ 
-- & ( (\MEMORIA_DADOS|ram~69_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101111111010101010100000001010101011111110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~69_q\,
	datab => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~37_q\,
	combout => \MEMORIA_DADOS|ram~98_combout\);

\DECOD_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( \MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B3|MUX|saida_MUX~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~98_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( !\MUX_RAM_ULA|saida_MUX[0]~0_combout\ $ (((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((\ULA|ULA_B3|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~98_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B3|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~98_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010110010100011010100000000001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~98_combout\,
	datab => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[0]~0_combout\);

\DECOD_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[1]~1_combout\ = (!\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & (\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & (!\MUX_RAM_ULA|saida_MUX[0]~0_combout\ $ (!\MUX_RAM_ULA|saida_MUX[3]~3_combout\)))) # (\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & 
-- ((!\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & (\MUX_RAM_ULA|saida_MUX[2]~1_combout\)) # (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & ((\MUX_RAM_ULA|saida_MUX[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100111000100100010011100010010001001110001001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[1]~1_combout\);

\DECOD_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[2]~2_combout\ = (!\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & (!\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & (\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & !\MUX_RAM_ULA|saida_MUX[3]~3_combout\))) # (\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & 
-- (\MUX_RAM_ULA|saida_MUX[3]~3_combout\ & ((!\MUX_RAM_ULA|saida_MUX[0]~0_combout\) # (\MUX_RAM_ULA|saida_MUX[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[2]~2_combout\);

\DECOD_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & (!\MUX_RAM_ULA|saida_MUX[3]~3_combout\ & (!\MUX_RAM_ULA|saida_MUX[0]~0_combout\ $ (!\MUX_RAM_ULA|saida_MUX[2]~1_combout\)))) # (\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & 
-- ((!\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & (!\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & \MUX_RAM_ULA|saida_MUX[3]~3_combout\)) # (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & (\MUX_RAM_ULA|saida_MUX[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[3]~3_combout\);

\MEMORIA_DADOS|ram~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~99_combout\ = ( \MEMORIA_DADOS|ram~34_q\ & ( ((!\ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ((!\ULA|ULA_B30|SOMA_SUB|C_out~combout\) # (!\ULA|ULA_B0|MUX|saida_MUX~0_combout\)))) # (\MEMORIA_DADOS|ram~66_q\) ) ) # ( !\MEMORIA_DADOS|ram~34_q\ 
-- & ( (\MEMORIA_DADOS|ram~66_q\ & (((\ULA|ULA_B30|SOMA_SUB|C_out~combout\ & \ULA|ULA_B0|MUX|saida_MUX~0_combout\)) # (\ULA|ULA_B0|MUX|saida_MUX~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011111111000001111111100000000000111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~66_q\,
	datae => \MEMORIA_DADOS|ALT_INV_ram~34_q\,
	combout => \MEMORIA_DADOS|ram~99_combout\);

\DECOD_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( \MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[3]~3_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B0|MUX|saida_MUX~1_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~99_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( \MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[3]~3_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((\ULA|ULA_B0|MUX|saida_MUX~1_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~99_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( !\MUX_RAM_ULA|saida_MUX[3]~3_combout\ ) ) 
-- ) # ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B0|MUX|saida_MUX~1_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~99_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111101010101010101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~99_combout\,
	datad => \ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[4]~4_combout\);

\DECOD_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( \MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B3|MUX|saida_MUX~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~98_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( \MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B3|MUX|saida_MUX~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~98_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((\ULA|ULA_B3|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~98_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B3|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~98_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~98_combout\,
	datac => \ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[5]~5_combout\);

\DECOD_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[6]~6_combout\ = (!\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & (!\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & (!\MUX_RAM_ULA|saida_MUX[2]~1_combout\ $ (\MUX_RAM_ULA|saida_MUX[3]~3_combout\)))) # (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & 
-- (!\MUX_RAM_ULA|saida_MUX[3]~3_combout\ & (!\MUX_RAM_ULA|saida_MUX[2]~1_combout\ $ (\MUX_RAM_ULA|saida_MUX[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100100000110000010010000011000001001000001100000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[6]~6_combout\);

\DECOD_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[7]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B4|MUX|saida_MUX~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( !\MUX_RAM_ULA|saida_MUX[7]~4_combout\ $ (((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B4|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[7]~4_combout\ 
-- & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B4|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010100000000001110101100010100000000110001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~100_combout\,
	datab => \ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[7]~4_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[0]~0_combout\);

\DECOD_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[1]~1_combout\ = (!\MUX_RAM_ULA|saida_MUX[7]~4_combout\ & (\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & (!\MUX_RAM_ULA|saida_MUX[5]~6_combout\ $ (!\MUX_RAM_ULA|saida_MUX[4]~7_combout\)))) # (\MUX_RAM_ULA|saida_MUX[7]~4_combout\ & 
-- ((!\MUX_RAM_ULA|saida_MUX[4]~7_combout\ & (\MUX_RAM_ULA|saida_MUX[6]~5_combout\)) # (\MUX_RAM_ULA|saida_MUX[4]~7_combout\ & ((\MUX_RAM_ULA|saida_MUX[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[7]~4_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~7_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[1]~1_combout\);

\DECOD_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[2]~2_combout\ = (!\MUX_RAM_ULA|saida_MUX[7]~4_combout\ & (!\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & (\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & !\MUX_RAM_ULA|saida_MUX[4]~7_combout\))) # (\MUX_RAM_ULA|saida_MUX[7]~4_combout\ & 
-- (\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ((!\MUX_RAM_ULA|saida_MUX[4]~7_combout\) # (\MUX_RAM_ULA|saida_MUX[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[7]~4_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~7_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[2]~2_combout\);

\DECOD_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & (!\MUX_RAM_ULA|saida_MUX[7]~4_combout\ & (!\MUX_RAM_ULA|saida_MUX[4]~7_combout\ $ (!\MUX_RAM_ULA|saida_MUX[6]~5_combout\)))) # (\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & 
-- ((!\MUX_RAM_ULA|saida_MUX[4]~7_combout\ & (!\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & \MUX_RAM_ULA|saida_MUX[7]~4_combout\)) # (\MUX_RAM_ULA|saida_MUX[4]~7_combout\ & (\MUX_RAM_ULA|saida_MUX[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~7_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[7]~4_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[3]~3_combout\);

\DECOD_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[7]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B4|MUX|saida_MUX~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[7]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B4|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( !\MUX_RAM_ULA|saida_MUX[7]~4_combout\ ) 
-- ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B4|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011101010101010101010001010000000101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[7]~4_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~100_combout\,
	datad => \ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[4]~4_combout\);

\DECOD_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[4]~7_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B7|MUX|saida_MUX~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~101_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B7|MUX|saida_MUX~0_combout\))) 
-- # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~101_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[4]~7_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((\ULA|ULA_B7|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~101_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[4]~7_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B7|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~101_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~101_combout\,
	datac => \ULA|ULA_B7|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~7_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[5]~5_combout\);

\DECOD_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[6]~6_combout\ = (!\MUX_RAM_ULA|saida_MUX[4]~7_combout\ & (!\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & (!\MUX_RAM_ULA|saida_MUX[7]~4_combout\ $ (\MUX_RAM_ULA|saida_MUX[6]~5_combout\)))) # (\MUX_RAM_ULA|saida_MUX[4]~7_combout\ & 
-- (!\MUX_RAM_ULA|saida_MUX[7]~4_combout\ & (!\MUX_RAM_ULA|saida_MUX[6]~5_combout\ $ (\MUX_RAM_ULA|saida_MUX[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[7]~4_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~7_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[6]~6_combout\);

\DECOD_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[11]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B8|MUX|saida_MUX~0_combout\))) 
-- # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( !\MUX_RAM_ULA|saida_MUX[11]~8_combout\ $ (((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ 
-- & ((!\ULA|ULA_B8|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( 
-- (!\MUX_RAM_ULA|saida_MUX[11]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B8|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010100000000001110101100010100000000110001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~102_combout\,
	datab => \ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[11]~8_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[0]~0_combout\);

\DECOD_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[1]~1_combout\ = (!\MUX_RAM_ULA|saida_MUX[11]~8_combout\ & (\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & (!\MUX_RAM_ULA|saida_MUX[9]~10_combout\ $ (!\MUX_RAM_ULA|saida_MUX[8]~11_combout\)))) # (\MUX_RAM_ULA|saida_MUX[11]~8_combout\ & 
-- ((!\MUX_RAM_ULA|saida_MUX[8]~11_combout\ & (\MUX_RAM_ULA|saida_MUX[10]~9_combout\)) # (\MUX_RAM_ULA|saida_MUX[8]~11_combout\ & ((\MUX_RAM_ULA|saida_MUX[9]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[11]~8_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~11_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[1]~1_combout\);

\DECOD_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[2]~2_combout\ = (!\MUX_RAM_ULA|saida_MUX[11]~8_combout\ & (!\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & (\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & !\MUX_RAM_ULA|saida_MUX[8]~11_combout\))) # (\MUX_RAM_ULA|saida_MUX[11]~8_combout\ & 
-- (\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ((!\MUX_RAM_ULA|saida_MUX[8]~11_combout\) # (\MUX_RAM_ULA|saida_MUX[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[11]~8_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~11_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[2]~2_combout\);

\DECOD_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & (!\MUX_RAM_ULA|saida_MUX[11]~8_combout\ & (!\MUX_RAM_ULA|saida_MUX[8]~11_combout\ $ (!\MUX_RAM_ULA|saida_MUX[10]~9_combout\)))) # (\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & 
-- ((!\MUX_RAM_ULA|saida_MUX[8]~11_combout\ & (!\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & \MUX_RAM_ULA|saida_MUX[11]~8_combout\)) # (\MUX_RAM_ULA|saida_MUX[8]~11_combout\ & (\MUX_RAM_ULA|saida_MUX[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~11_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[11]~8_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[3]~3_combout\);

\DECOD_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[11]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B8|MUX|saida_MUX~0_combout\))) 
-- # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[11]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ 
-- & ((!\ULA|ULA_B8|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( 
-- !\MUX_RAM_ULA|saida_MUX[11]~8_combout\ ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B8|MUX|saida_MUX~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011101010101010101010001010000000101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[11]~8_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~102_combout\,
	datad => \ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[4]~4_combout\);

\DECOD_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[8]~11_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B11|MUX|saida_MUX~0_combout\))) 
-- # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~103_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B11|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~103_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[8]~11_combout\ 
-- & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B11|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~103_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( 
-- !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[8]~11_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B11|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~103_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~103_combout\,
	datac => \ULA|ULA_B11|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~11_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[5]~5_combout\);

\DECOD_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[6]~6_combout\ = (!\MUX_RAM_ULA|saida_MUX[8]~11_combout\ & (!\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & (!\MUX_RAM_ULA|saida_MUX[11]~8_combout\ $ (\MUX_RAM_ULA|saida_MUX[10]~9_combout\)))) # (\MUX_RAM_ULA|saida_MUX[8]~11_combout\ & 
-- (!\MUX_RAM_ULA|saida_MUX[11]~8_combout\ & (!\MUX_RAM_ULA|saida_MUX[10]~9_combout\ $ (\MUX_RAM_ULA|saida_MUX[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[11]~8_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~11_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[6]~6_combout\);

\DECOD_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (\MUX_RAM_ULA|saida_MUX[15]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B12|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~104_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( 
-- !\MUX_RAM_ULA|saida_MUX[15]~12_combout\ $ (((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B12|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~104_combout\)))) ) ) ) # ( 
-- !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[15]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B12|MUX|saida_MUX~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~104_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010100000000001110101100010100000000110001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~104_combout\,
	datab => \ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[15]~12_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[0]~0_combout\);

\DECOD_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[1]~1_combout\ = (!\MUX_RAM_ULA|saida_MUX[15]~12_combout\ & (\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & (!\MUX_RAM_ULA|saida_MUX[13]~14_combout\ $ (!\MUX_RAM_ULA|saida_MUX[12]~15_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[15]~12_combout\ & ((!\MUX_RAM_ULA|saida_MUX[12]~15_combout\ & (\MUX_RAM_ULA|saida_MUX[14]~13_combout\)) # (\MUX_RAM_ULA|saida_MUX[12]~15_combout\ & ((\MUX_RAM_ULA|saida_MUX[13]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[15]~12_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~15_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[1]~1_combout\);

\DECOD_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[2]~2_combout\ = (!\MUX_RAM_ULA|saida_MUX[15]~12_combout\ & (!\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & (\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & !\MUX_RAM_ULA|saida_MUX[12]~15_combout\))) # (\MUX_RAM_ULA|saida_MUX[15]~12_combout\ 
-- & (\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ((!\MUX_RAM_ULA|saida_MUX[12]~15_combout\) # (\MUX_RAM_ULA|saida_MUX[13]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[15]~12_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~15_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[2]~2_combout\);

\DECOD_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & (!\MUX_RAM_ULA|saida_MUX[15]~12_combout\ & (!\MUX_RAM_ULA|saida_MUX[12]~15_combout\ $ (!\MUX_RAM_ULA|saida_MUX[14]~13_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ((!\MUX_RAM_ULA|saida_MUX[12]~15_combout\ & (!\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & \MUX_RAM_ULA|saida_MUX[15]~12_combout\)) # (\MUX_RAM_ULA|saida_MUX[12]~15_combout\ & 
-- (\MUX_RAM_ULA|saida_MUX[14]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~15_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[15]~12_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[3]~3_combout\);

\DECOD_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[15]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B12|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~104_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( 
-- (!\MUX_RAM_ULA|saida_MUX[15]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B12|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~104_combout\)))) ) ) ) # ( 
-- \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( !\MUX_RAM_ULA|saida_MUX[15]~12_combout\ ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B12|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~104_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011101010101010101010001010000000101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[15]~12_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~104_combout\,
	datad => \ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[4]~4_combout\);

\DECOD_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (\MUX_RAM_ULA|saida_MUX[12]~15_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B15|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~105_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B15|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~105_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ 
-- & ( (\MUX_RAM_ULA|saida_MUX[12]~15_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B15|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~105_combout\)))) ) ) ) # ( 
-- !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (\MUX_RAM_ULA|saida_MUX[12]~15_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B15|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ 
-- & (!\MEMORIA_DADOS|ram~105_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~105_combout\,
	datac => \ULA|ULA_B15|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~15_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[5]~5_combout\);

\DECOD_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[6]~6_combout\ = (!\MUX_RAM_ULA|saida_MUX[12]~15_combout\ & (!\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & (!\MUX_RAM_ULA|saida_MUX[15]~12_combout\ $ (\MUX_RAM_ULA|saida_MUX[14]~13_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[12]~15_combout\ & (!\MUX_RAM_ULA|saida_MUX[15]~12_combout\ & (!\MUX_RAM_ULA|saida_MUX[14]~13_combout\ $ (\MUX_RAM_ULA|saida_MUX[13]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[15]~12_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~15_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[6]~6_combout\);

\DECOD_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (\MUX_RAM_ULA|saida_MUX[19]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B16|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~106_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( 
-- !\MUX_RAM_ULA|saida_MUX[19]~16_combout\ $ (((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B16|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~106_combout\)))) ) ) ) # ( 
-- !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[19]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B16|MUX|saida_MUX~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~106_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010100000000001110101100010100000000110001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~106_combout\,
	datab => \ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[19]~16_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[0]~0_combout\);

\DECOD_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[1]~1_combout\ = (!\MUX_RAM_ULA|saida_MUX[19]~16_combout\ & (\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & (!\MUX_RAM_ULA|saida_MUX[17]~18_combout\ $ (!\MUX_RAM_ULA|saida_MUX[16]~19_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[19]~16_combout\ & ((!\MUX_RAM_ULA|saida_MUX[16]~19_combout\ & (\MUX_RAM_ULA|saida_MUX[18]~17_combout\)) # (\MUX_RAM_ULA|saida_MUX[16]~19_combout\ & ((\MUX_RAM_ULA|saida_MUX[17]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[19]~16_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~19_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[1]~1_combout\);

\DECOD_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[2]~2_combout\ = (!\MUX_RAM_ULA|saida_MUX[19]~16_combout\ & (!\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & (\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & !\MUX_RAM_ULA|saida_MUX[16]~19_combout\))) # (\MUX_RAM_ULA|saida_MUX[19]~16_combout\ 
-- & (\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ((!\MUX_RAM_ULA|saida_MUX[16]~19_combout\) # (\MUX_RAM_ULA|saida_MUX[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[19]~16_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~19_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[2]~2_combout\);

\DECOD_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & (!\MUX_RAM_ULA|saida_MUX[19]~16_combout\ & (!\MUX_RAM_ULA|saida_MUX[16]~19_combout\ $ (!\MUX_RAM_ULA|saida_MUX[18]~17_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ((!\MUX_RAM_ULA|saida_MUX[16]~19_combout\ & (!\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & \MUX_RAM_ULA|saida_MUX[19]~16_combout\)) # (\MUX_RAM_ULA|saida_MUX[16]~19_combout\ & 
-- (\MUX_RAM_ULA|saida_MUX[18]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~19_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[19]~16_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[3]~3_combout\);

\DECOD_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[19]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B16|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~106_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( 
-- (!\MUX_RAM_ULA|saida_MUX[19]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B16|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~106_combout\)))) ) ) ) # ( 
-- \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( !\MUX_RAM_ULA|saida_MUX[19]~16_combout\ ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B16|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~106_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011101010101010101010001010000000101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[19]~16_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~106_combout\,
	datad => \ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[4]~4_combout\);

\DECOD_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (\MUX_RAM_ULA|saida_MUX[16]~19_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B19|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~107_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B19|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~107_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ 
-- & ( (\MUX_RAM_ULA|saida_MUX[16]~19_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B19|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~107_combout\)))) ) ) ) # ( 
-- !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (\MUX_RAM_ULA|saida_MUX[16]~19_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B19|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ 
-- & (!\MEMORIA_DADOS|ram~107_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~107_combout\,
	datac => \ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~19_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[5]~5_combout\);

\DECOD_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[6]~6_combout\ = (!\MUX_RAM_ULA|saida_MUX[16]~19_combout\ & (!\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & (!\MUX_RAM_ULA|saida_MUX[19]~16_combout\ $ (\MUX_RAM_ULA|saida_MUX[18]~17_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[16]~19_combout\ & (!\MUX_RAM_ULA|saida_MUX[19]~16_combout\ & (!\MUX_RAM_ULA|saida_MUX[18]~17_combout\ $ (\MUX_RAM_ULA|saida_MUX[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[19]~16_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~19_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[6]~6_combout\);

\DECOD_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (\MUX_RAM_ULA|saida_MUX[23]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B20|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~108_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( 
-- !\MUX_RAM_ULA|saida_MUX[23]~20_combout\ $ (((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B20|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~108_combout\)))) ) ) ) # ( 
-- !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[23]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B20|MUX|saida_MUX~0_combout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~108_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010100000000001110101100010100000000110001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~108_combout\,
	datab => \ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[23]~20_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[0]~0_combout\);

\DECOD_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[1]~1_combout\ = (!\MUX_RAM_ULA|saida_MUX[23]~20_combout\ & (\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & (!\MUX_RAM_ULA|saida_MUX[21]~22_combout\ $ (!\MUX_RAM_ULA|saida_MUX[20]~23_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[23]~20_combout\ & ((!\MUX_RAM_ULA|saida_MUX[20]~23_combout\ & (\MUX_RAM_ULA|saida_MUX[22]~21_combout\)) # (\MUX_RAM_ULA|saida_MUX[20]~23_combout\ & ((\MUX_RAM_ULA|saida_MUX[21]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[23]~20_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~23_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[1]~1_combout\);

\DECOD_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[2]~2_combout\ = (!\MUX_RAM_ULA|saida_MUX[23]~20_combout\ & (!\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & (\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & !\MUX_RAM_ULA|saida_MUX[20]~23_combout\))) # (\MUX_RAM_ULA|saida_MUX[23]~20_combout\ 
-- & (\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ((!\MUX_RAM_ULA|saida_MUX[20]~23_combout\) # (\MUX_RAM_ULA|saida_MUX[21]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[23]~20_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~23_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[2]~2_combout\);

\DECOD_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & (!\MUX_RAM_ULA|saida_MUX[23]~20_combout\ & (!\MUX_RAM_ULA|saida_MUX[20]~23_combout\ $ (!\MUX_RAM_ULA|saida_MUX[22]~21_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ((!\MUX_RAM_ULA|saida_MUX[20]~23_combout\ & (!\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & \MUX_RAM_ULA|saida_MUX[23]~20_combout\)) # (\MUX_RAM_ULA|saida_MUX[20]~23_combout\ & 
-- (\MUX_RAM_ULA|saida_MUX[22]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~23_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[23]~20_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[3]~3_combout\);

\DECOD_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[23]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B20|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~108_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( 
-- (!\MUX_RAM_ULA|saida_MUX[23]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B20|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~108_combout\)))) ) ) ) # ( 
-- \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( !\MUX_RAM_ULA|saida_MUX[23]~20_combout\ ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B20|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~108_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011101010101010101010001010000000101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[23]~20_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~108_combout\,
	datad => \ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[4]~4_combout\);

\DECOD_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (\MUX_RAM_ULA|saida_MUX[20]~23_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & 
-- ((!\ULA|ULA_B23|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~109_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B23|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (!\MEMORIA_DADOS|ram~109_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ 
-- & ( (\MUX_RAM_ULA|saida_MUX[20]~23_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((\ULA|ULA_B23|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & (\MEMORIA_DADOS|ram~109_combout\)))) ) ) ) # ( 
-- !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (\MUX_RAM_ULA|saida_MUX[20]~23_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux4~0_combout\ & ((!\ULA|ULA_B23|MUX|saida_MUX~0_combout\))) # (\UNIDADE_DE_CONTROLE|Mux4~0_combout\ 
-- & (!\MEMORIA_DADOS|ram~109_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux4~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~109_combout\,
	datac => \ULA|ULA_B23|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~23_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[5]~5_combout\);

\DECOD_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[6]~6_combout\ = (!\MUX_RAM_ULA|saida_MUX[20]~23_combout\ & (!\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & (!\MUX_RAM_ULA|saida_MUX[23]~20_combout\ $ (\MUX_RAM_ULA|saida_MUX[22]~21_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[20]~23_combout\ & (!\MUX_RAM_ULA|saida_MUX[23]~20_combout\ & (!\MUX_RAM_ULA|saida_MUX[22]~21_combout\ $ (\MUX_RAM_ULA|saida_MUX[21]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[23]~20_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~23_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[6]~6_combout\);

\SOMADOR|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~25_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \SOMADOR|Add0~18\ ))
-- \SOMADOR|Add0~26\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \SOMADOR|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \SOMADOR|Add0~18\,
	sumout => \SOMADOR|Add0~25_sumout\,
	cout => \SOMADOR|Add0~26\);

\SOMADOR_beq|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~21_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~25_sumout\ ) + ( \SOMADOR_beq|Add0~14\ ))
-- \SOMADOR_beq|Add0~22\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~25_sumout\ ) + ( \SOMADOR_beq|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~25_sumout\,
	cin => \SOMADOR_beq|Add0~14\,
	sumout => \SOMADOR_beq|Add0~21_sumout\,
	cout => \SOMADOR_beq|Add0~22\);

\MUX_Prox_PC|saida_MUX[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[8]~6_combout\ = ( \SOMADOR_beq|Add0~21_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~25_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~21_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~25_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~25_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~21_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[8]~6_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\SOMADOR|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~29_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \SOMADOR|Add0~26\ ))
-- \SOMADOR|Add0~30\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \SOMADOR|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \SOMADOR|Add0~26\,
	sumout => \SOMADOR|Add0~29_sumout\,
	cout => \SOMADOR|Add0~30\);

\SOMADOR_beq|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~25_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~29_sumout\ ) + ( \SOMADOR_beq|Add0~22\ ))
-- \SOMADOR_beq|Add0~26\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~29_sumout\ ) + ( \SOMADOR_beq|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~29_sumout\,
	cin => \SOMADOR_beq|Add0~22\,
	sumout => \SOMADOR_beq|Add0~25_sumout\,
	cout => \SOMADOR_beq|Add0~26\);

\MUX_Prox_PC|saida_MUX[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[9]~7_combout\ = ( \SOMADOR_beq|Add0~25_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~29_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~25_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~29_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~29_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~25_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[9]~7_combout\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\SOMADOR|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~33_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \SOMADOR|Add0~30\ ))
-- \SOMADOR|Add0~34\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \SOMADOR|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \SOMADOR|Add0~30\,
	sumout => \SOMADOR|Add0~33_sumout\,
	cout => \SOMADOR|Add0~34\);

\SOMADOR_beq|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~29_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~33_sumout\ ) + ( \SOMADOR_beq|Add0~26\ ))
-- \SOMADOR_beq|Add0~30\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~33_sumout\ ) + ( \SOMADOR_beq|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~33_sumout\,
	cin => \SOMADOR_beq|Add0~26\,
	sumout => \SOMADOR_beq|Add0~29_sumout\,
	cout => \SOMADOR_beq|Add0~30\);

\MUX_Prox_PC|saida_MUX[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[10]~8_combout\ = ( \SOMADOR_beq|Add0~29_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~33_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~29_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~33_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~33_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~29_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[10]~8_combout\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[10]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\SOMADOR|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~37_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \SOMADOR|Add0~34\ ))
-- \SOMADOR|Add0~38\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \SOMADOR|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \SOMADOR|Add0~34\,
	sumout => \SOMADOR|Add0~37_sumout\,
	cout => \SOMADOR|Add0~38\);

\SOMADOR_beq|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~33_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~37_sumout\ ) + ( \SOMADOR_beq|Add0~30\ ))
-- \SOMADOR_beq|Add0~34\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~37_sumout\ ) + ( \SOMADOR_beq|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~37_sumout\,
	cin => \SOMADOR_beq|Add0~30\,
	sumout => \SOMADOR_beq|Add0~33_sumout\,
	cout => \SOMADOR_beq|Add0~34\);

\MUX_Prox_PC|saida_MUX[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[11]~9_combout\ = ( \SOMADOR_beq|Add0~33_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~37_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~33_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~37_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~37_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~33_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[11]~9_combout\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\SOMADOR|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~41_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \SOMADOR|Add0~38\ ))
-- \SOMADOR|Add0~42\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \SOMADOR|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \SOMADOR|Add0~38\,
	sumout => \SOMADOR|Add0~41_sumout\,
	cout => \SOMADOR|Add0~42\);

\SOMADOR_beq|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~37_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~41_sumout\ ) + ( \SOMADOR_beq|Add0~34\ ))
-- \SOMADOR_beq|Add0~38\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~41_sumout\ ) + ( \SOMADOR_beq|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~41_sumout\,
	cin => \SOMADOR_beq|Add0~34\,
	sumout => \SOMADOR_beq|Add0~37_sumout\,
	cout => \SOMADOR_beq|Add0~38\);

\MUX_Prox_PC|saida_MUX[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[12]~10_combout\ = ( \SOMADOR_beq|Add0~37_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~41_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~37_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~41_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~41_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~37_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[12]~10_combout\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\SOMADOR|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~45_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \SOMADOR|Add0~42\ ))
-- \SOMADOR|Add0~46\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \SOMADOR|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \SOMADOR|Add0~42\,
	sumout => \SOMADOR|Add0~45_sumout\,
	cout => \SOMADOR|Add0~46\);

\SOMADOR_beq|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~41_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~45_sumout\ ) + ( \SOMADOR_beq|Add0~38\ ))
-- \SOMADOR_beq|Add0~42\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~45_sumout\ ) + ( \SOMADOR_beq|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~45_sumout\,
	cin => \SOMADOR_beq|Add0~38\,
	sumout => \SOMADOR_beq|Add0~41_sumout\,
	cout => \SOMADOR_beq|Add0~42\);

\MUX_Prox_PC|saida_MUX[13]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[13]~11_combout\ = ( \SOMADOR_beq|Add0~41_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~45_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~41_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~45_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~45_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~41_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[13]~11_combout\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\SOMADOR|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~49_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \SOMADOR|Add0~46\ ))
-- \SOMADOR|Add0~50\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \SOMADOR|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \SOMADOR|Add0~46\,
	sumout => \SOMADOR|Add0~49_sumout\,
	cout => \SOMADOR|Add0~50\);

\SOMADOR_beq|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~45_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~49_sumout\ ) + ( \SOMADOR_beq|Add0~42\ ))
-- \SOMADOR_beq|Add0~46\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~49_sumout\ ) + ( \SOMADOR_beq|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~49_sumout\,
	cin => \SOMADOR_beq|Add0~42\,
	sumout => \SOMADOR_beq|Add0~45_sumout\,
	cout => \SOMADOR_beq|Add0~46\);

\MUX_Prox_PC|saida_MUX[14]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[14]~12_combout\ = ( \SOMADOR_beq|Add0~45_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~49_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~45_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~49_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~49_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~45_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[14]~12_combout\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\SOMADOR|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~53_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \SOMADOR|Add0~50\ ))
-- \SOMADOR|Add0~54\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \SOMADOR|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \SOMADOR|Add0~50\,
	sumout => \SOMADOR|Add0~53_sumout\,
	cout => \SOMADOR|Add0~54\);

\SOMADOR_beq|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~49_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~53_sumout\ ) + ( \SOMADOR_beq|Add0~46\ ))
-- \SOMADOR_beq|Add0~50\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~53_sumout\ ) + ( \SOMADOR_beq|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~53_sumout\,
	cin => \SOMADOR_beq|Add0~46\,
	sumout => \SOMADOR_beq|Add0~49_sumout\,
	cout => \SOMADOR_beq|Add0~50\);

\MUX_Prox_PC|saida_MUX[15]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[15]~13_combout\ = ( \SOMADOR_beq|Add0~49_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~53_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~49_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~53_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~53_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~49_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[15]~13_combout\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[15]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\SOMADOR|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~57_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \SOMADOR|Add0~54\ ))
-- \SOMADOR|Add0~58\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \SOMADOR|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \SOMADOR|Add0~54\,
	sumout => \SOMADOR|Add0~57_sumout\,
	cout => \SOMADOR|Add0~58\);

\SOMADOR_beq|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~53_sumout\ = SUM(( (!\PC|DOUT\(7) & \MEMORIA_INSTRUCAO|memROM~3_combout\) ) + ( \SOMADOR|Add0~57_sumout\ ) + ( \SOMADOR_beq|Add0~50\ ))
-- \SOMADOR_beq|Add0~54\ = CARRY(( (!\PC|DOUT\(7) & \MEMORIA_INSTRUCAO|memROM~3_combout\) ) + ( \SOMADOR|Add0~57_sumout\ ) + ( \SOMADOR_beq|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~57_sumout\,
	cin => \SOMADOR_beq|Add0~50\,
	sumout => \SOMADOR_beq|Add0~53_sumout\,
	cout => \SOMADOR_beq|Add0~54\);

\MUX_Prox_PC|saida_MUX[16]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[16]~14_combout\ = ( \SOMADOR|Add0~57_sumout\ & ( \SOMADOR_beq|Add0~53_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\) # (\MEMORIA_INSTRUCAO|memROM~4_combout\) ) ) ) # ( !\SOMADOR|Add0~57_sumout\ & ( \SOMADOR_beq|Add0~53_sumout\ 
-- & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) ) # ( \SOMADOR|Add0~57_sumout\ & ( !\SOMADOR_beq|Add0~53_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((!\comb~8_combout\) # (!\comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) ) # ( !\SOMADOR|Add0~57_sumout\ & ( !\SOMADOR_beq|Add0~53_sumout\ & ( 
-- (\MEMORIA_INSTRUCAO|memROM~4_combout\ & \UNIDADE_DE_CONTROLE|Mux0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \ALT_INV_comb~9_combout\,
	datae => \SOMADOR|ALT_INV_Add0~57_sumout\,
	dataf => \SOMADOR_beq|ALT_INV_Add0~53_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[16]~14_combout\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\SOMADOR|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~61_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \SOMADOR|Add0~58\ ))
-- \SOMADOR|Add0~62\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \SOMADOR|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \SOMADOR|Add0~58\,
	sumout => \SOMADOR|Add0~61_sumout\,
	cout => \SOMADOR|Add0~62\);

\SOMADOR_beq|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~57_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~61_sumout\ ) + ( \SOMADOR_beq|Add0~54\ ))
-- \SOMADOR_beq|Add0~58\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~61_sumout\ ) + ( \SOMADOR_beq|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~61_sumout\,
	cin => \SOMADOR_beq|Add0~54\,
	sumout => \SOMADOR_beq|Add0~57_sumout\,
	cout => \SOMADOR_beq|Add0~58\);

\MUX_Prox_PC|saida_MUX[17]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[17]~15_combout\ = ( \SOMADOR_beq|Add0~57_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~61_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~57_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~61_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~61_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~57_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[17]~15_combout\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\SOMADOR|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~65_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \SOMADOR|Add0~62\ ))
-- \SOMADOR|Add0~66\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \SOMADOR|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \SOMADOR|Add0~62\,
	sumout => \SOMADOR|Add0~65_sumout\,
	cout => \SOMADOR|Add0~66\);

\SOMADOR_beq|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~61_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~65_sumout\ ) + ( \SOMADOR_beq|Add0~58\ ))
-- \SOMADOR_beq|Add0~62\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~65_sumout\ ) + ( \SOMADOR_beq|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~65_sumout\,
	cin => \SOMADOR_beq|Add0~58\,
	sumout => \SOMADOR_beq|Add0~61_sumout\,
	cout => \SOMADOR_beq|Add0~62\);

\MUX_Prox_PC|saida_MUX[18]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[18]~16_combout\ = ( \SOMADOR|Add0~65_sumout\ & ( \SOMADOR_beq|Add0~61_sumout\ & ( (!\MEMORIA_INSTRUCAO|memROM~18_combout\) # (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\) ) ) ) # ( !\SOMADOR|Add0~65_sumout\ & ( 
-- \SOMADOR_beq|Add0~61_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (!\MEMORIA_INSTRUCAO|memROM~18_combout\)) ) ) ) # ( \SOMADOR|Add0~65_sumout\ & ( 
-- !\SOMADOR_beq|Add0~61_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((!\comb~8_combout\) # (!\comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (!\MEMORIA_INSTRUCAO|memROM~18_combout\)) ) ) ) # ( !\SOMADOR|Add0~65_sumout\ & ( 
-- !\SOMADOR_beq|Add0~61_sumout\ & ( (!\MEMORIA_INSTRUCAO|memROM~18_combout\ & \UNIDADE_DE_CONTROLE|Mux0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010111011101110001000100010001011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~18_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \ALT_INV_comb~9_combout\,
	datae => \SOMADOR|ALT_INV_Add0~65_sumout\,
	dataf => \SOMADOR_beq|ALT_INV_Add0~61_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[18]~16_combout\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[18]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\SOMADOR|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~69_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \SOMADOR|Add0~66\ ))
-- \SOMADOR|Add0~70\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \SOMADOR|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \SOMADOR|Add0~66\,
	sumout => \SOMADOR|Add0~69_sumout\,
	cout => \SOMADOR|Add0~70\);

\SOMADOR_beq|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~65_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~69_sumout\ ) + ( \SOMADOR_beq|Add0~62\ ))
-- \SOMADOR_beq|Add0~66\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~69_sumout\ ) + ( \SOMADOR_beq|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~69_sumout\,
	cin => \SOMADOR_beq|Add0~62\,
	sumout => \SOMADOR_beq|Add0~65_sumout\,
	cout => \SOMADOR_beq|Add0~66\);

\MUX_Prox_PC|saida_MUX[19]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[19]~17_combout\ = ( \SOMADOR|Add0~69_sumout\ & ( \SOMADOR_beq|Add0~65_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\) # (\MEMORIA_INSTRUCAO|memROM~4_combout\) ) ) ) # ( !\SOMADOR|Add0~69_sumout\ & ( \SOMADOR_beq|Add0~65_sumout\ 
-- & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) ) # ( \SOMADOR|Add0~69_sumout\ & ( !\SOMADOR_beq|Add0~65_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((!\comb~8_combout\) # (!\comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) ) # ( !\SOMADOR|Add0~69_sumout\ & ( !\SOMADOR_beq|Add0~65_sumout\ & ( 
-- (\MEMORIA_INSTRUCAO|memROM~4_combout\ & \UNIDADE_DE_CONTROLE|Mux0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \ALT_INV_comb~9_combout\,
	datae => \SOMADOR|ALT_INV_Add0~69_sumout\,
	dataf => \SOMADOR_beq|ALT_INV_Add0~65_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[19]~17_combout\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[19]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\SOMADOR|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~73_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \SOMADOR|Add0~70\ ))
-- \SOMADOR|Add0~74\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \SOMADOR|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \SOMADOR|Add0~70\,
	sumout => \SOMADOR|Add0~73_sumout\,
	cout => \SOMADOR|Add0~74\);

\SOMADOR_beq|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~69_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~73_sumout\ ) + ( \SOMADOR_beq|Add0~66\ ))
-- \SOMADOR_beq|Add0~70\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~73_sumout\ ) + ( \SOMADOR_beq|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~73_sumout\,
	cin => \SOMADOR_beq|Add0~66\,
	sumout => \SOMADOR_beq|Add0~69_sumout\,
	cout => \SOMADOR_beq|Add0~70\);

\MUX_Prox_PC|saida_MUX[20]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[20]~18_combout\ = ( \SOMADOR_beq|Add0~69_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~73_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~69_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~73_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~73_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~69_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[20]~18_combout\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[20]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\SOMADOR|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~77_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \SOMADOR|Add0~74\ ))
-- \SOMADOR|Add0~78\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \SOMADOR|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \SOMADOR|Add0~74\,
	sumout => \SOMADOR|Add0~77_sumout\,
	cout => \SOMADOR|Add0~78\);

\SOMADOR_beq|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~73_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~77_sumout\ ) + ( \SOMADOR_beq|Add0~70\ ))
-- \SOMADOR_beq|Add0~74\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~77_sumout\ ) + ( \SOMADOR_beq|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~77_sumout\,
	cin => \SOMADOR_beq|Add0~70\,
	sumout => \SOMADOR_beq|Add0~73_sumout\,
	cout => \SOMADOR_beq|Add0~74\);

\MUX_Prox_PC|saida_MUX[21]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[21]~19_combout\ = ( \SOMADOR|Add0~77_sumout\ & ( \SOMADOR_beq|Add0~73_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\) # (\MEMORIA_INSTRUCAO|memROM~15_combout\) ) ) ) # ( !\SOMADOR|Add0~77_sumout\ & ( \SOMADOR_beq|Add0~73_sumout\ 
-- & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~15_combout\)) ) ) ) # ( \SOMADOR|Add0~77_sumout\ & ( !\SOMADOR_beq|Add0~73_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((!\comb~8_combout\) # (!\comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~15_combout\)) ) ) ) # ( !\SOMADOR|Add0~77_sumout\ & ( !\SOMADOR_beq|Add0~73_sumout\ & ( 
-- (\MEMORIA_INSTRUCAO|memROM~15_combout\ & \UNIDADE_DE_CONTROLE|Mux0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~15_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \ALT_INV_comb~9_combout\,
	datae => \SOMADOR|ALT_INV_Add0~77_sumout\,
	dataf => \SOMADOR_beq|ALT_INV_Add0~73_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[21]~19_combout\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\SOMADOR|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~81_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \SOMADOR|Add0~78\ ))
-- \SOMADOR|Add0~82\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \SOMADOR|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \SOMADOR|Add0~78\,
	sumout => \SOMADOR|Add0~81_sumout\,
	cout => \SOMADOR|Add0~82\);

\SOMADOR_beq|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~77_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~81_sumout\ ) + ( \SOMADOR_beq|Add0~74\ ))
-- \SOMADOR_beq|Add0~78\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~81_sumout\ ) + ( \SOMADOR_beq|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~81_sumout\,
	cin => \SOMADOR_beq|Add0~74\,
	sumout => \SOMADOR_beq|Add0~77_sumout\,
	cout => \SOMADOR_beq|Add0~78\);

\MUX_Prox_PC|saida_MUX[22]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[22]~20_combout\ = ( \SOMADOR_beq|Add0~77_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~81_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~77_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~81_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~81_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~77_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[22]~20_combout\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\SOMADOR|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~85_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \SOMADOR|Add0~82\ ))
-- \SOMADOR|Add0~86\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \SOMADOR|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \SOMADOR|Add0~82\,
	sumout => \SOMADOR|Add0~85_sumout\,
	cout => \SOMADOR|Add0~86\);

\SOMADOR_beq|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~81_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~85_sumout\ ) + ( \SOMADOR_beq|Add0~78\ ))
-- \SOMADOR_beq|Add0~82\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~85_sumout\ ) + ( \SOMADOR_beq|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~85_sumout\,
	cin => \SOMADOR_beq|Add0~78\,
	sumout => \SOMADOR_beq|Add0~81_sumout\,
	cout => \SOMADOR_beq|Add0~82\);

\MUX_Prox_PC|saida_MUX[23]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[23]~21_combout\ = ( \SOMADOR|Add0~85_sumout\ & ( \SOMADOR_beq|Add0~81_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\) # (\MEMORIA_INSTRUCAO|memROM~13_combout\) ) ) ) # ( !\SOMADOR|Add0~85_sumout\ & ( \SOMADOR_beq|Add0~81_sumout\ 
-- & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~13_combout\)) ) ) ) # ( \SOMADOR|Add0~85_sumout\ & ( !\SOMADOR_beq|Add0~81_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((!\comb~8_combout\) # (!\comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~13_combout\)) ) ) ) # ( !\SOMADOR|Add0~85_sumout\ & ( !\SOMADOR_beq|Add0~81_sumout\ & ( 
-- (\MEMORIA_INSTRUCAO|memROM~13_combout\ & \UNIDADE_DE_CONTROLE|Mux0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~13_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \ALT_INV_comb~9_combout\,
	datae => \SOMADOR|ALT_INV_Add0~85_sumout\,
	dataf => \SOMADOR_beq|ALT_INV_Add0~81_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[23]~21_combout\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[23]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\SOMADOR|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~89_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \SOMADOR|Add0~86\ ))
-- \SOMADOR|Add0~90\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \SOMADOR|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \SOMADOR|Add0~86\,
	sumout => \SOMADOR|Add0~89_sumout\,
	cout => \SOMADOR|Add0~90\);

\SOMADOR_beq|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~85_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~89_sumout\ ) + ( \SOMADOR_beq|Add0~82\ ))
-- \SOMADOR_beq|Add0~86\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~89_sumout\ ) + ( \SOMADOR_beq|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~89_sumout\,
	cin => \SOMADOR_beq|Add0~82\,
	sumout => \SOMADOR_beq|Add0~85_sumout\,
	cout => \SOMADOR_beq|Add0~86\);

\MUX_Prox_PC|saida_MUX[24]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[24]~22_combout\ = ( \SOMADOR_beq|Add0~85_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~89_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~85_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~89_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~89_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~85_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[24]~22_combout\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[24]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\SOMADOR|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~93_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \SOMADOR|Add0~90\ ))
-- \SOMADOR|Add0~94\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \SOMADOR|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \SOMADOR|Add0~90\,
	sumout => \SOMADOR|Add0~93_sumout\,
	cout => \SOMADOR|Add0~94\);

\SOMADOR_beq|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~89_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~93_sumout\ ) + ( \SOMADOR_beq|Add0~86\ ))
-- \SOMADOR_beq|Add0~90\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~93_sumout\ ) + ( \SOMADOR_beq|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~93_sumout\,
	cin => \SOMADOR_beq|Add0~86\,
	sumout => \SOMADOR_beq|Add0~89_sumout\,
	cout => \SOMADOR_beq|Add0~90\);

\MUX_Prox_PC|saida_MUX[25]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[25]~23_combout\ = ( \SOMADOR_beq|Add0~89_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~93_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~89_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~93_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~93_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~89_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[25]~23_combout\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[25]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\SOMADOR|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~97_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \SOMADOR|Add0~94\ ))
-- \SOMADOR|Add0~98\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \SOMADOR|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \SOMADOR|Add0~94\,
	sumout => \SOMADOR|Add0~97_sumout\,
	cout => \SOMADOR|Add0~98\);

\SOMADOR_beq|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~93_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~97_sumout\ ) + ( \SOMADOR_beq|Add0~90\ ))
-- \SOMADOR_beq|Add0~94\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~97_sumout\ ) + ( \SOMADOR_beq|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~97_sumout\,
	cin => \SOMADOR_beq|Add0~90\,
	sumout => \SOMADOR_beq|Add0~93_sumout\,
	cout => \SOMADOR_beq|Add0~94\);

\MUX_Prox_PC|saida_MUX[26]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[26]~24_combout\ = ( \SOMADOR|Add0~97_sumout\ & ( \SOMADOR_beq|Add0~93_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\) # (\MEMORIA_INSTRUCAO|memROM~4_combout\) ) ) ) # ( !\SOMADOR|Add0~97_sumout\ & ( \SOMADOR_beq|Add0~93_sumout\ 
-- & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) ) # ( \SOMADOR|Add0~97_sumout\ & ( !\SOMADOR_beq|Add0~93_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((!\comb~8_combout\) # (!\comb~9_combout\)))) # (\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\MEMORIA_INSTRUCAO|memROM~4_combout\)) ) ) ) # ( !\SOMADOR|Add0~97_sumout\ & ( !\SOMADOR_beq|Add0~93_sumout\ & ( 
-- (\MEMORIA_INSTRUCAO|memROM~4_combout\ & \UNIDADE_DE_CONTROLE|Mux0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101000100010001000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~4_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \ALT_INV_comb~9_combout\,
	datae => \SOMADOR|ALT_INV_Add0~97_sumout\,
	dataf => \SOMADOR_beq|ALT_INV_Add0~93_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[26]~24_combout\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[26]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\SOMADOR|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~101_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \SOMADOR|Add0~98\ ))
-- \SOMADOR|Add0~102\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \SOMADOR|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \SOMADOR|Add0~98\,
	sumout => \SOMADOR|Add0~101_sumout\,
	cout => \SOMADOR|Add0~102\);

\SOMADOR_beq|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~97_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~101_sumout\ ) + ( \SOMADOR_beq|Add0~94\ ))
-- \SOMADOR_beq|Add0~98\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~101_sumout\ ) + ( \SOMADOR_beq|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~101_sumout\,
	cin => \SOMADOR_beq|Add0~94\,
	sumout => \SOMADOR_beq|Add0~97_sumout\,
	cout => \SOMADOR_beq|Add0~98\);

\MUX_Prox_PC|saida_MUX[27]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[27]~25_combout\ = ( \SOMADOR_beq|Add0~97_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (((\comb~8_combout\ & \comb~9_combout\)) # (\SOMADOR|Add0~101_sumout\))) ) ) # ( !\SOMADOR_beq|Add0~97_sumout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux0~1_combout\ & (\SOMADOR|Add0~101_sumout\ & ((!\comb~8_combout\) # (!\comb~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000101010101000000000101010000000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux0~1_combout\,
	datab => \ALT_INV_comb~8_combout\,
	datac => \ALT_INV_comb~9_combout\,
	datad => \SOMADOR|ALT_INV_Add0~101_sumout\,
	datae => \SOMADOR_beq|ALT_INV_Add0~97_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[27]~25_combout\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[27]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\SOMADOR|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~105_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \SOMADOR|Add0~102\ ))
-- \SOMADOR|Add0~106\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \SOMADOR|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \SOMADOR|Add0~102\,
	sumout => \SOMADOR|Add0~105_sumout\,
	cout => \SOMADOR|Add0~106\);

\SOMADOR_beq|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~101_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~105_sumout\ ) + ( \SOMADOR_beq|Add0~98\ ))
-- \SOMADOR_beq|Add0~102\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~105_sumout\ ) + ( \SOMADOR_beq|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~105_sumout\,
	cin => \SOMADOR_beq|Add0~98\,
	sumout => \SOMADOR_beq|Add0~101_sumout\,
	cout => \SOMADOR_beq|Add0~102\);

\MUX_Prox_PC|saida_MUX[28]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[28]~26_combout\ = (!\comb~8_combout\ & (((\SOMADOR|Add0~105_sumout\)))) # (\comb~8_combout\ & ((!\comb~9_combout\ & (\SOMADOR|Add0~105_sumout\)) # (\comb~9_combout\ & ((\SOMADOR_beq|Add0~101_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \SOMADOR|ALT_INV_Add0~105_sumout\,
	datad => \SOMADOR_beq|ALT_INV_Add0~101_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[28]~26_combout\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[28]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\SOMADOR|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~109_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \SOMADOR|Add0~106\ ))
-- \SOMADOR|Add0~110\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \SOMADOR|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \SOMADOR|Add0~106\,
	sumout => \SOMADOR|Add0~109_sumout\,
	cout => \SOMADOR|Add0~110\);

\SOMADOR_beq|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~105_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~109_sumout\ ) + ( \SOMADOR_beq|Add0~102\ ))
-- \SOMADOR_beq|Add0~106\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~109_sumout\ ) + ( \SOMADOR_beq|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~109_sumout\,
	cin => \SOMADOR_beq|Add0~102\,
	sumout => \SOMADOR_beq|Add0~105_sumout\,
	cout => \SOMADOR_beq|Add0~106\);

\MUX_Prox_PC|saida_MUX[29]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[29]~27_combout\ = (!\comb~8_combout\ & (((\SOMADOR|Add0~109_sumout\)))) # (\comb~8_combout\ & ((!\comb~9_combout\ & (\SOMADOR|Add0~109_sumout\)) # (\comb~9_combout\ & ((\SOMADOR_beq|Add0~105_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \SOMADOR|ALT_INV_Add0~109_sumout\,
	datad => \SOMADOR_beq|ALT_INV_Add0~105_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[29]~27_combout\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[29]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\SOMADOR|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~113_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \SOMADOR|Add0~110\ ))
-- \SOMADOR|Add0~114\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \SOMADOR|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \SOMADOR|Add0~110\,
	sumout => \SOMADOR|Add0~113_sumout\,
	cout => \SOMADOR|Add0~114\);

\SOMADOR_beq|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~109_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~113_sumout\ ) + ( \SOMADOR_beq|Add0~106\ ))
-- \SOMADOR_beq|Add0~110\ = CARRY(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~113_sumout\ ) + ( \SOMADOR_beq|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~113_sumout\,
	cin => \SOMADOR_beq|Add0~106\,
	sumout => \SOMADOR_beq|Add0~109_sumout\,
	cout => \SOMADOR_beq|Add0~110\);

\MUX_Prox_PC|saida_MUX[30]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[30]~28_combout\ = (!\comb~8_combout\ & (((\SOMADOR|Add0~113_sumout\)))) # (\comb~8_combout\ & ((!\comb~9_combout\ & (\SOMADOR|Add0~113_sumout\)) # (\comb~9_combout\ & ((\SOMADOR_beq|Add0~109_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \SOMADOR|ALT_INV_Add0~113_sumout\,
	datad => \SOMADOR_beq|ALT_INV_Add0~109_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[30]~28_combout\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[30]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\SOMADOR|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~117_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \SOMADOR|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \SOMADOR|Add0~114\,
	sumout => \SOMADOR|Add0~117_sumout\);

\SOMADOR_beq|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR_beq|Add0~113_sumout\ = SUM(( \MEMORIA_INSTRUCAO|memROM~17_combout\ ) + ( \SOMADOR|Add0~117_sumout\ ) + ( \SOMADOR_beq|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~17_combout\,
	dataf => \SOMADOR|ALT_INV_Add0~117_sumout\,
	cin => \SOMADOR_beq|Add0~110\,
	sumout => \SOMADOR_beq|Add0~113_sumout\);

\MUX_Prox_PC|saida_MUX[31]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Prox_PC|saida_MUX[31]~29_combout\ = (!\comb~8_combout\ & (((\SOMADOR|Add0~117_sumout\)))) # (\comb~8_combout\ & ((!\comb~9_combout\ & (\SOMADOR|Add0~117_sumout\)) # (\comb~9_combout\ & ((\SOMADOR_beq|Add0~113_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ALT_INV_comb~9_combout\,
	datac => \SOMADOR|ALT_INV_Add0~117_sumout\,
	datad => \SOMADOR_beq|ALT_INV_Add0~113_sumout\,
	combout => \MUX_Prox_PC|saida_MUX[31]~29_combout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \MUX_Prox_PC|saida_MUX[31]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_RESULTADO(0) <= \RESULTADO[0]~output_o\;

ww_RESULTADO(1) <= \RESULTADO[1]~output_o\;

ww_RESULTADO(2) <= \RESULTADO[2]~output_o\;

ww_RESULTADO(3) <= \RESULTADO[3]~output_o\;

ww_RESULTADO(4) <= \RESULTADO[4]~output_o\;

ww_RESULTADO(5) <= \RESULTADO[5]~output_o\;

ww_RESULTADO(6) <= \RESULTADO[6]~output_o\;

ww_RESULTADO(7) <= \RESULTADO[7]~output_o\;

ww_RESULTADO(8) <= \RESULTADO[8]~output_o\;

ww_RESULTADO(9) <= \RESULTADO[9]~output_o\;

ww_RESULTADO(10) <= \RESULTADO[10]~output_o\;

ww_RESULTADO(11) <= \RESULTADO[11]~output_o\;

ww_RESULTADO(12) <= \RESULTADO[12]~output_o\;

ww_RESULTADO(13) <= \RESULTADO[13]~output_o\;

ww_RESULTADO(14) <= \RESULTADO[14]~output_o\;

ww_RESULTADO(15) <= \RESULTADO[15]~output_o\;

ww_RESULTADO(16) <= \RESULTADO[16]~output_o\;

ww_RESULTADO(17) <= \RESULTADO[17]~output_o\;

ww_RESULTADO(18) <= \RESULTADO[18]~output_o\;

ww_RESULTADO(19) <= \RESULTADO[19]~output_o\;

ww_RESULTADO(20) <= \RESULTADO[20]~output_o\;

ww_RESULTADO(21) <= \RESULTADO[21]~output_o\;

ww_RESULTADO(22) <= \RESULTADO[22]~output_o\;

ww_RESULTADO(23) <= \RESULTADO[23]~output_o\;

ww_RESULTADO(24) <= \RESULTADO[24]~output_o\;

ww_RESULTADO(25) <= \RESULTADO[25]~output_o\;

ww_RESULTADO(26) <= \RESULTADO[26]~output_o\;

ww_RESULTADO(27) <= \RESULTADO[27]~output_o\;

ww_RESULTADO(28) <= \RESULTADO[28]~output_o\;

ww_RESULTADO(29) <= \RESULTADO[29]~output_o\;

ww_RESULTADO(30) <= \RESULTADO[30]~output_o\;

ww_RESULTADO(31) <= \RESULTADO[31]~output_o\;

ww_REG_RS(0) <= \REG_RS[0]~output_o\;

ww_REG_RS(1) <= \REG_RS[1]~output_o\;

ww_REG_RS(2) <= \REG_RS[2]~output_o\;

ww_REG_RS(3) <= \REG_RS[3]~output_o\;

ww_REG_RS(4) <= \REG_RS[4]~output_o\;

ww_REG_RS(5) <= \REG_RS[5]~output_o\;

ww_REG_RS(6) <= \REG_RS[6]~output_o\;

ww_REG_RS(7) <= \REG_RS[7]~output_o\;

ww_REG_RS(8) <= \REG_RS[8]~output_o\;

ww_REG_RS(9) <= \REG_RS[9]~output_o\;

ww_REG_RS(10) <= \REG_RS[10]~output_o\;

ww_REG_RS(11) <= \REG_RS[11]~output_o\;

ww_REG_RS(12) <= \REG_RS[12]~output_o\;

ww_REG_RS(13) <= \REG_RS[13]~output_o\;

ww_REG_RS(14) <= \REG_RS[14]~output_o\;

ww_REG_RS(15) <= \REG_RS[15]~output_o\;

ww_REG_RS(16) <= \REG_RS[16]~output_o\;

ww_REG_RS(17) <= \REG_RS[17]~output_o\;

ww_REG_RS(18) <= \REG_RS[18]~output_o\;

ww_REG_RS(19) <= \REG_RS[19]~output_o\;

ww_REG_RS(20) <= \REG_RS[20]~output_o\;

ww_REG_RS(21) <= \REG_RS[21]~output_o\;

ww_REG_RS(22) <= \REG_RS[22]~output_o\;

ww_REG_RS(23) <= \REG_RS[23]~output_o\;

ww_REG_RS(24) <= \REG_RS[24]~output_o\;

ww_REG_RS(25) <= \REG_RS[25]~output_o\;

ww_REG_RS(26) <= \REG_RS[26]~output_o\;

ww_REG_RS(27) <= \REG_RS[27]~output_o\;

ww_REG_RS(28) <= \REG_RS[28]~output_o\;

ww_REG_RS(29) <= \REG_RS[29]~output_o\;

ww_REG_RS(30) <= \REG_RS[30]~output_o\;

ww_REG_RS(31) <= \REG_RS[31]~output_o\;

ww_REG_RT(0) <= \REG_RT[0]~output_o\;

ww_REG_RT(1) <= \REG_RT[1]~output_o\;

ww_REG_RT(2) <= \REG_RT[2]~output_o\;

ww_REG_RT(3) <= \REG_RT[3]~output_o\;

ww_REG_RT(4) <= \REG_RT[4]~output_o\;

ww_REG_RT(5) <= \REG_RT[5]~output_o\;

ww_REG_RT(6) <= \REG_RT[6]~output_o\;

ww_REG_RT(7) <= \REG_RT[7]~output_o\;

ww_REG_RT(8) <= \REG_RT[8]~output_o\;

ww_REG_RT(9) <= \REG_RT[9]~output_o\;

ww_REG_RT(10) <= \REG_RT[10]~output_o\;

ww_REG_RT(11) <= \REG_RT[11]~output_o\;

ww_REG_RT(12) <= \REG_RT[12]~output_o\;

ww_REG_RT(13) <= \REG_RT[13]~output_o\;

ww_REG_RT(14) <= \REG_RT[14]~output_o\;

ww_REG_RT(15) <= \REG_RT[15]~output_o\;

ww_REG_RT(16) <= \REG_RT[16]~output_o\;

ww_REG_RT(17) <= \REG_RT[17]~output_o\;

ww_REG_RT(18) <= \REG_RT[18]~output_o\;

ww_REG_RT(19) <= \REG_RT[19]~output_o\;

ww_REG_RT(20) <= \REG_RT[20]~output_o\;

ww_REG_RT(21) <= \REG_RT[21]~output_o\;

ww_REG_RT(22) <= \REG_RT[22]~output_o\;

ww_REG_RT(23) <= \REG_RT[23]~output_o\;

ww_REG_RT(24) <= \REG_RT[24]~output_o\;

ww_REG_RT(25) <= \REG_RT[25]~output_o\;

ww_REG_RT(26) <= \REG_RT[26]~output_o\;

ww_REG_RT(27) <= \REG_RT[27]~output_o\;

ww_REG_RT(28) <= \REG_RT[28]~output_o\;

ww_REG_RT(29) <= \REG_RT[29]~output_o\;

ww_REG_RT(30) <= \REG_RT[30]~output_o\;

ww_REG_RT(31) <= \REG_RT[31]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_PC_OUT(9) <= \PC_OUT[9]~output_o\;

ww_PC_OUT(10) <= \PC_OUT[10]~output_o\;

ww_PC_OUT(11) <= \PC_OUT[11]~output_o\;

ww_PC_OUT(12) <= \PC_OUT[12]~output_o\;

ww_PC_OUT(13) <= \PC_OUT[13]~output_o\;

ww_PC_OUT(14) <= \PC_OUT[14]~output_o\;

ww_PC_OUT(15) <= \PC_OUT[15]~output_o\;

ww_PC_OUT(16) <= \PC_OUT[16]~output_o\;

ww_PC_OUT(17) <= \PC_OUT[17]~output_o\;

ww_PC_OUT(18) <= \PC_OUT[18]~output_o\;

ww_PC_OUT(19) <= \PC_OUT[19]~output_o\;

ww_PC_OUT(20) <= \PC_OUT[20]~output_o\;

ww_PC_OUT(21) <= \PC_OUT[21]~output_o\;

ww_PC_OUT(22) <= \PC_OUT[22]~output_o\;

ww_PC_OUT(23) <= \PC_OUT[23]~output_o\;

ww_PC_OUT(24) <= \PC_OUT[24]~output_o\;

ww_PC_OUT(25) <= \PC_OUT[25]~output_o\;

ww_PC_OUT(26) <= \PC_OUT[26]~output_o\;

ww_PC_OUT(27) <= \PC_OUT[27]~output_o\;

ww_PC_OUT(28) <= \PC_OUT[28]~output_o\;

ww_PC_OUT(29) <= \PC_OUT[29]~output_o\;

ww_PC_OUT(30) <= \PC_OUT[30]~output_o\;

ww_PC_OUT(31) <= \PC_OUT[31]~output_o\;

ww_TESTE_ULA(0) <= \TESTE_ULA[0]~output_o\;

ww_TESTE_ULA(1) <= \TESTE_ULA[1]~output_o\;

ww_TESTE_ULA(2) <= \TESTE_ULA[2]~output_o\;

ww_TESTE_ULA(3) <= \TESTE_ULA[3]~output_o\;

ww_TESTE_ULA(4) <= \TESTE_ULA[4]~output_o\;

ww_TESTE_ULA(5) <= \TESTE_ULA[5]~output_o\;

ww_TESTE_ULA(6) <= \TESTE_ULA[6]~output_o\;

ww_TESTE_ULA(7) <= \TESTE_ULA[7]~output_o\;

ww_TESTE_ULA(8) <= \TESTE_ULA[8]~output_o\;

ww_TESTE_ULA(9) <= \TESTE_ULA[9]~output_o\;

ww_TESTE_ULA(10) <= \TESTE_ULA[10]~output_o\;

ww_TESTE_ULA(11) <= \TESTE_ULA[11]~output_o\;

ww_TESTE_ULA(12) <= \TESTE_ULA[12]~output_o\;

ww_TESTE_ULA(13) <= \TESTE_ULA[13]~output_o\;

ww_TESTE_ULA(14) <= \TESTE_ULA[14]~output_o\;

ww_TESTE_ULA(15) <= \TESTE_ULA[15]~output_o\;

ww_TESTE_ULA(16) <= \TESTE_ULA[16]~output_o\;

ww_TESTE_ULA(17) <= \TESTE_ULA[17]~output_o\;

ww_TESTE_ULA(18) <= \TESTE_ULA[18]~output_o\;

ww_TESTE_ULA(19) <= \TESTE_ULA[19]~output_o\;

ww_TESTE_ULA(20) <= \TESTE_ULA[20]~output_o\;

ww_TESTE_ULA(21) <= \TESTE_ULA[21]~output_o\;

ww_TESTE_ULA(22) <= \TESTE_ULA[22]~output_o\;

ww_TESTE_ULA(23) <= \TESTE_ULA[23]~output_o\;

ww_TESTE_ULA(24) <= \TESTE_ULA[24]~output_o\;

ww_TESTE_ULA(25) <= \TESTE_ULA[25]~output_o\;

ww_TESTE_ULA(26) <= \TESTE_ULA[26]~output_o\;

ww_TESTE_ULA(27) <= \TESTE_ULA[27]~output_o\;

ww_TESTE_ULA(28) <= \TESTE_ULA[28]~output_o\;

ww_TESTE_ULA(29) <= \TESTE_ULA[29]~output_o\;

ww_TESTE_ULA(30) <= \TESTE_ULA[30]~output_o\;

ww_TESTE_ULA(31) <= \TESTE_ULA[31]~output_o\;
END structure;


