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

-- DATE "11/03/2021 15:30:58"

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

ENTITY 	Aula14 IS
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
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0)
	);
END Aula14;

ARCHITECTURE structure OF Aula14 IS
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \detectorSub0|saida~combout\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \detectorSub1|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSub1|saidaQ~q\ : std_logic;
SIGNAL \detectorSub1|saida~combout\ : std_logic;
SIGNAL \SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~10\ : std_logic;
SIGNAL \SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~18\ : std_logic;
SIGNAL \SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~14\ : std_logic;
SIGNAL \SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~6\ : std_logic;
SIGNAL \SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|Equal0~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~117_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~66_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~118_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~99_combout\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|Mux3~0_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1064_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~102_q\ : std_logic;
SIGNAL \ULA|Add0~1_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~99_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1063_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~294_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1062_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~358_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1065_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~38_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1190_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[1]~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~67_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~119_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~103_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~295_q\ : std_logic;
SIGNAL \ULA|Add0~13_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~119_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~359_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~39_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1186_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[2]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~68_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~120_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~104_q\ : std_logic;
SIGNAL \ULA|Add0~9_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~120_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~296_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~360_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~40_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1182_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~105_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~297_q\ : std_logic;
SIGNAL \ULA|Add0~5_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~98_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~361_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~41_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1178_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[3]~3_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~69_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~98_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[4]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~101_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~106_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~298_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~362_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~42_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1174_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[5]~5_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~71_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~121_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~107_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~299_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~363_q\ : std_logic;
SIGNAL \ULA|Add0~29_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~121_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~43_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1170_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[6]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~72_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~122_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~108_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~300_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~364_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~44_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1166_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~109_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~301_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~365_q\ : std_logic;
SIGNAL \ULA|Add0~17_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~100_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~45_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1162_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[7]~7_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~100_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[8]~8_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~104_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~110_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~302_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~366_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~46_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1158_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[9]~9_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~75_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~123_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~111_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~303_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~367_q\ : std_logic;
SIGNAL \ULA|Add0~45_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~123_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~47_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1154_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[10]~10_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~76_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~103_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~112_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~304_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~368_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~48_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1150_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~113_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~305_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~369_q\ : std_logic;
SIGNAL \ULA|Add0~33_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~102_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~49_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1146_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[11]~11_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~102_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[10]~9_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[9]~10_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[11]~11_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[12]~12_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~106_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~114_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~306_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~370_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~50_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1142_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[13]~13_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~79_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~108_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~115_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~307_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~371_q\ : std_logic;
SIGNAL \ULA|Add0~61_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~108_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~51_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1138_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[14]~14_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~80_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~107_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~116_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~308_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~372_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~52_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1134_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~117_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~309_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~373_q\ : std_logic;
SIGNAL \ULA|Add0~49_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~105_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~53_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1130_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[15]~15_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~81_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~105_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[12]~12_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[14]~13_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[13]~14_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[15]~15_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[16]~16_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~82_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~110_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~118_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~310_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~374_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~54_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1126_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[17]~17_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~83_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~112_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~119_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~311_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~375_q\ : std_logic;
SIGNAL \ULA|Add0~77_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~112_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~55_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1122_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[18]~18_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~84_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~111_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~120_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~312_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~376_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~56_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1118_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~121_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~313_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~377_q\ : std_logic;
SIGNAL \ULA|Add0~65_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~109_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~57_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1114_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[19]~19_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~85_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~109_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[16]~16_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[18]~17_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[17]~18_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[19]~19_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[20]~20_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~86_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~114_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~122_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~314_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~378_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~58_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1110_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[21]~21_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~87_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~116_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~123_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~315_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~379_q\ : std_logic;
SIGNAL \ULA|Add0~93_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~116_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~59_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1106_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[22]~22_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~88_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~115_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~124_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~316_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~380_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~60_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1102_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~125_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~317_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~381_q\ : std_logic;
SIGNAL \ULA|Add0~81_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~113_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~61_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1098_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[23]~23_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~89_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~113_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[20]~20_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[22]~21_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[21]~22_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|saida_MUX[23]~23_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECOD_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[24]~24_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~90_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~124_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~126_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~318_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~382_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~62_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1094_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[25]~25_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~125_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~127_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~319_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~383_q\ : std_logic;
SIGNAL \ULA|Add0~101_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~125_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~63_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1090_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[26]~26_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~126_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~128_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~320_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~384_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~64_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1086_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[27]~27_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~127_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~129_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~321_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~385_q\ : std_logic;
SIGNAL \ULA|Add0~109_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~127_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~65_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1082_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[28]~28_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~94_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~128_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~130_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~322_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~386_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~66_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1078_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[29]~29_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~129_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~131_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~323_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~387_q\ : std_logic;
SIGNAL \ULA|Add0~117_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~129_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~67_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1074_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[30]~30_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~130_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~132_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~324_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~388_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~68_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1070_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|saidaB[31]~31_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~131_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~133_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~325_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~389_q\ : std_logic;
SIGNAL \ULA|Add0~125_wirecell_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ram~131_wirecell_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~69_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|registrador~1066_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~2\ : std_logic;
SIGNAL \SOMADOR|Add0~21_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~22\ : std_logic;
SIGNAL \SOMADOR|Add0~25_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~26\ : std_logic;
SIGNAL \SOMADOR|Add0~29_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~30\ : std_logic;
SIGNAL \SOMADOR|Add0~33_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~34\ : std_logic;
SIGNAL \SOMADOR|Add0~37_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~38\ : std_logic;
SIGNAL \SOMADOR|Add0~41_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~42\ : std_logic;
SIGNAL \SOMADOR|Add0~45_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~46\ : std_logic;
SIGNAL \SOMADOR|Add0~49_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~50\ : std_logic;
SIGNAL \SOMADOR|Add0~53_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~54\ : std_logic;
SIGNAL \SOMADOR|Add0~57_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~58\ : std_logic;
SIGNAL \SOMADOR|Add0~61_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~62\ : std_logic;
SIGNAL \SOMADOR|Add0~65_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~66\ : std_logic;
SIGNAL \SOMADOR|Add0~69_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~70\ : std_logic;
SIGNAL \SOMADOR|Add0~73_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~74\ : std_logic;
SIGNAL \SOMADOR|Add0~77_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~78\ : std_logic;
SIGNAL \SOMADOR|Add0~81_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~82\ : std_logic;
SIGNAL \SOMADOR|Add0~85_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~86\ : std_logic;
SIGNAL \SOMADOR|Add0~89_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~90\ : std_logic;
SIGNAL \SOMADOR|Add0~93_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~94\ : std_logic;
SIGNAL \SOMADOR|Add0~97_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~98\ : std_logic;
SIGNAL \SOMADOR|Add0~101_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~102\ : std_logic;
SIGNAL \SOMADOR|Add0~105_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~106\ : std_logic;
SIGNAL \SOMADOR|Add0~109_sumout\ : std_logic;
SIGNAL \SOMADOR|Add0~110\ : std_logic;
SIGNAL \SOMADOR|Add0~113_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~117_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~373_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~116_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~372_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~115_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~371_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~114_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~370_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~113_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~369_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~112_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~368_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~111_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~367_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~110_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~366_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~109_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~365_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~108_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~364_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~107_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~363_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~106_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~362_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~105_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~361_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~104_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~360_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~103_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~359_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~102_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~358_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~133_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~389_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~132_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~388_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~131_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~387_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~130_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~386_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~129_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~385_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~128_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~384_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~127_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~383_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~126_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~382_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~125_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~381_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~124_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~380_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~123_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~379_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~122_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~378_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~121_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~377_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~120_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~376_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~119_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~375_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~118_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~374_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~109_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[15]~15_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~108_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~107_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~12_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~106_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~105_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~104_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[11]~11_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~103_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~102_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~101_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~100_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~99_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~98_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1190_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1186_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1174_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1170_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1166_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1154_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1150_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1146_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1138_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1134_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1130_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1126_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1114_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1110_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~127_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~125_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~123_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~121_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~120_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~119_combout\ : std_logic;
SIGNAL \detectorSub1|ALT_INV_saida~combout\ : std_logic;
SIGNAL \detectorSub1|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[23]~23_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~116_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~115_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~20_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~114_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~113_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[19]~19_combout\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~112_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~111_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~16_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~110_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~131_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~129_combout\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MEMORIA_DADOS|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\BANCO_REGISTRADORES|ALT_INV_registrador~117_q\ <= NOT \BANCO_REGISTRADORES|registrador~117_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~309_q\ <= NOT \BANCO_REGISTRADORES|registrador~309_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~373_q\ <= NOT \BANCO_REGISTRADORES|registrador~373_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~52_q\ <= NOT \BANCO_REGISTRADORES|registrador~52_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~116_q\ <= NOT \BANCO_REGISTRADORES|registrador~116_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~308_q\ <= NOT \BANCO_REGISTRADORES|registrador~308_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~372_q\ <= NOT \BANCO_REGISTRADORES|registrador~372_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~51_q\ <= NOT \BANCO_REGISTRADORES|registrador~51_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~115_q\ <= NOT \BANCO_REGISTRADORES|registrador~115_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~307_q\ <= NOT \BANCO_REGISTRADORES|registrador~307_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~371_q\ <= NOT \BANCO_REGISTRADORES|registrador~371_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~50_q\ <= NOT \BANCO_REGISTRADORES|registrador~50_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~114_q\ <= NOT \BANCO_REGISTRADORES|registrador~114_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~306_q\ <= NOT \BANCO_REGISTRADORES|registrador~306_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~370_q\ <= NOT \BANCO_REGISTRADORES|registrador~370_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~49_q\ <= NOT \BANCO_REGISTRADORES|registrador~49_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~113_q\ <= NOT \BANCO_REGISTRADORES|registrador~113_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~305_q\ <= NOT \BANCO_REGISTRADORES|registrador~305_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~369_q\ <= NOT \BANCO_REGISTRADORES|registrador~369_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~48_q\ <= NOT \BANCO_REGISTRADORES|registrador~48_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~112_q\ <= NOT \BANCO_REGISTRADORES|registrador~112_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~304_q\ <= NOT \BANCO_REGISTRADORES|registrador~304_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~368_q\ <= NOT \BANCO_REGISTRADORES|registrador~368_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~47_q\ <= NOT \BANCO_REGISTRADORES|registrador~47_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~111_q\ <= NOT \BANCO_REGISTRADORES|registrador~111_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~303_q\ <= NOT \BANCO_REGISTRADORES|registrador~303_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~367_q\ <= NOT \BANCO_REGISTRADORES|registrador~367_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~46_q\ <= NOT \BANCO_REGISTRADORES|registrador~46_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~110_q\ <= NOT \BANCO_REGISTRADORES|registrador~110_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~302_q\ <= NOT \BANCO_REGISTRADORES|registrador~302_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~366_q\ <= NOT \BANCO_REGISTRADORES|registrador~366_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~45_q\ <= NOT \BANCO_REGISTRADORES|registrador~45_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~109_q\ <= NOT \BANCO_REGISTRADORES|registrador~109_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~301_q\ <= NOT \BANCO_REGISTRADORES|registrador~301_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~365_q\ <= NOT \BANCO_REGISTRADORES|registrador~365_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~44_q\ <= NOT \BANCO_REGISTRADORES|registrador~44_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~108_q\ <= NOT \BANCO_REGISTRADORES|registrador~108_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~300_q\ <= NOT \BANCO_REGISTRADORES|registrador~300_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~364_q\ <= NOT \BANCO_REGISTRADORES|registrador~364_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~43_q\ <= NOT \BANCO_REGISTRADORES|registrador~43_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~107_q\ <= NOT \BANCO_REGISTRADORES|registrador~107_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~299_q\ <= NOT \BANCO_REGISTRADORES|registrador~299_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~363_q\ <= NOT \BANCO_REGISTRADORES|registrador~363_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~42_q\ <= NOT \BANCO_REGISTRADORES|registrador~42_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~106_q\ <= NOT \BANCO_REGISTRADORES|registrador~106_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~298_q\ <= NOT \BANCO_REGISTRADORES|registrador~298_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~362_q\ <= NOT \BANCO_REGISTRADORES|registrador~362_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~41_q\ <= NOT \BANCO_REGISTRADORES|registrador~41_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~105_q\ <= NOT \BANCO_REGISTRADORES|registrador~105_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~297_q\ <= NOT \BANCO_REGISTRADORES|registrador~297_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~361_q\ <= NOT \BANCO_REGISTRADORES|registrador~361_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~40_q\ <= NOT \BANCO_REGISTRADORES|registrador~40_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~104_q\ <= NOT \BANCO_REGISTRADORES|registrador~104_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~296_q\ <= NOT \BANCO_REGISTRADORES|registrador~296_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~360_q\ <= NOT \BANCO_REGISTRADORES|registrador~360_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~39_q\ <= NOT \BANCO_REGISTRADORES|registrador~39_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~103_q\ <= NOT \BANCO_REGISTRADORES|registrador~103_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~295_q\ <= NOT \BANCO_REGISTRADORES|registrador~295_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~359_q\ <= NOT \BANCO_REGISTRADORES|registrador~359_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~38_q\ <= NOT \BANCO_REGISTRADORES|registrador~38_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~102_q\ <= NOT \BANCO_REGISTRADORES|registrador~102_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~294_q\ <= NOT \BANCO_REGISTRADORES|registrador~294_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~358_q\ <= NOT \BANCO_REGISTRADORES|registrador~358_q\;
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\ULA|ALT_INV_Add0~89_sumout\ <= NOT \ULA|Add0~89_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\ULA|ALT_INV_Add0~81_sumout\ <= NOT \ULA|Add0~81_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\ULA|ALT_INV_Add0~73_sumout\ <= NOT \ULA|Add0~73_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\ULA|ALT_INV_Add0~65_sumout\ <= NOT \ULA|Add0~65_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\ULA|ALT_INV_Add0~57_sumout\ <= NOT \ULA|Add0~57_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\ULA|ALT_INV_Add0~49_sumout\ <= NOT \ULA|Add0~49_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\ULA|ALT_INV_Add0~41_sumout\ <= NOT \ULA|Add0~41_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\ULA|ALT_INV_Add0~33_sumout\ <= NOT \ULA|Add0~33_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add0~25_sumout\ <= NOT \ULA|Add0~25_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~9_sumout\ <= NOT \ULA|Add0~9_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1078_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1074_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1070_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1066_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~69_q\ <= NOT \BANCO_REGISTRADORES|registrador~69_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~133_q\ <= NOT \BANCO_REGISTRADORES|registrador~133_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~325_q\ <= NOT \BANCO_REGISTRADORES|registrador~325_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~389_q\ <= NOT \BANCO_REGISTRADORES|registrador~389_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~68_q\ <= NOT \BANCO_REGISTRADORES|registrador~68_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~132_q\ <= NOT \BANCO_REGISTRADORES|registrador~132_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~324_q\ <= NOT \BANCO_REGISTRADORES|registrador~324_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~388_q\ <= NOT \BANCO_REGISTRADORES|registrador~388_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~67_q\ <= NOT \BANCO_REGISTRADORES|registrador~67_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~131_q\ <= NOT \BANCO_REGISTRADORES|registrador~131_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~323_q\ <= NOT \BANCO_REGISTRADORES|registrador~323_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~387_q\ <= NOT \BANCO_REGISTRADORES|registrador~387_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~66_q\ <= NOT \BANCO_REGISTRADORES|registrador~66_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~130_q\ <= NOT \BANCO_REGISTRADORES|registrador~130_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~322_q\ <= NOT \BANCO_REGISTRADORES|registrador~322_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~386_q\ <= NOT \BANCO_REGISTRADORES|registrador~386_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~65_q\ <= NOT \BANCO_REGISTRADORES|registrador~65_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~129_q\ <= NOT \BANCO_REGISTRADORES|registrador~129_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~321_q\ <= NOT \BANCO_REGISTRADORES|registrador~321_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~385_q\ <= NOT \BANCO_REGISTRADORES|registrador~385_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~64_q\ <= NOT \BANCO_REGISTRADORES|registrador~64_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~128_q\ <= NOT \BANCO_REGISTRADORES|registrador~128_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~320_q\ <= NOT \BANCO_REGISTRADORES|registrador~320_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~384_q\ <= NOT \BANCO_REGISTRADORES|registrador~384_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~63_q\ <= NOT \BANCO_REGISTRADORES|registrador~63_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~127_q\ <= NOT \BANCO_REGISTRADORES|registrador~127_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~319_q\ <= NOT \BANCO_REGISTRADORES|registrador~319_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~383_q\ <= NOT \BANCO_REGISTRADORES|registrador~383_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~62_q\ <= NOT \BANCO_REGISTRADORES|registrador~62_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~126_q\ <= NOT \BANCO_REGISTRADORES|registrador~126_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~318_q\ <= NOT \BANCO_REGISTRADORES|registrador~318_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~382_q\ <= NOT \BANCO_REGISTRADORES|registrador~382_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~61_q\ <= NOT \BANCO_REGISTRADORES|registrador~61_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~125_q\ <= NOT \BANCO_REGISTRADORES|registrador~125_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~317_q\ <= NOT \BANCO_REGISTRADORES|registrador~317_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~381_q\ <= NOT \BANCO_REGISTRADORES|registrador~381_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~60_q\ <= NOT \BANCO_REGISTRADORES|registrador~60_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~124_q\ <= NOT \BANCO_REGISTRADORES|registrador~124_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~316_q\ <= NOT \BANCO_REGISTRADORES|registrador~316_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~380_q\ <= NOT \BANCO_REGISTRADORES|registrador~380_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~59_q\ <= NOT \BANCO_REGISTRADORES|registrador~59_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~123_q\ <= NOT \BANCO_REGISTRADORES|registrador~123_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~315_q\ <= NOT \BANCO_REGISTRADORES|registrador~315_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~379_q\ <= NOT \BANCO_REGISTRADORES|registrador~379_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~58_q\ <= NOT \BANCO_REGISTRADORES|registrador~58_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~122_q\ <= NOT \BANCO_REGISTRADORES|registrador~122_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~314_q\ <= NOT \BANCO_REGISTRADORES|registrador~314_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~378_q\ <= NOT \BANCO_REGISTRADORES|registrador~378_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~57_q\ <= NOT \BANCO_REGISTRADORES|registrador~57_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~121_q\ <= NOT \BANCO_REGISTRADORES|registrador~121_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~313_q\ <= NOT \BANCO_REGISTRADORES|registrador~313_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~377_q\ <= NOT \BANCO_REGISTRADORES|registrador~377_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~56_q\ <= NOT \BANCO_REGISTRADORES|registrador~56_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~120_q\ <= NOT \BANCO_REGISTRADORES|registrador~120_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~312_q\ <= NOT \BANCO_REGISTRADORES|registrador~312_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~376_q\ <= NOT \BANCO_REGISTRADORES|registrador~376_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~55_q\ <= NOT \BANCO_REGISTRADORES|registrador~55_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~119_q\ <= NOT \BANCO_REGISTRADORES|registrador~119_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~311_q\ <= NOT \BANCO_REGISTRADORES|registrador~311_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~375_q\ <= NOT \BANCO_REGISTRADORES|registrador~375_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~54_q\ <= NOT \BANCO_REGISTRADORES|registrador~54_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~118_q\ <= NOT \BANCO_REGISTRADORES|registrador~118_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~310_q\ <= NOT \BANCO_REGISTRADORES|registrador~310_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~374_q\ <= NOT \BANCO_REGISTRADORES|registrador~374_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~53_q\ <= NOT \BANCO_REGISTRADORES|registrador~53_q\;
\MEMORIA_DADOS|ALT_INV_ram~109_combout\ <= NOT \MEMORIA_DADOS|ram~109_combout\;
\MEMORIA_DADOS|ALT_INV_ram~53_q\ <= NOT \MEMORIA_DADOS|ram~53_q\;
\MEMORIA_DADOS|ALT_INV_ram~85_q\ <= NOT \MEMORIA_DADOS|ram~85_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[15]~15_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[15]~15_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[13]~14_combout\;
\MEMORIA_DADOS|ALT_INV_ram~108_combout\ <= NOT \MEMORIA_DADOS|ram~108_combout\;
\MEMORIA_DADOS|ALT_INV_ram~47_q\ <= NOT \MEMORIA_DADOS|ram~47_q\;
\MEMORIA_DADOS|ALT_INV_ram~79_q\ <= NOT \MEMORIA_DADOS|ram~79_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[14]~13_combout\;
\MEMORIA_DADOS|ALT_INV_ram~107_combout\ <= NOT \MEMORIA_DADOS|ram~107_combout\;
\MEMORIA_DADOS|ALT_INV_ram~48_q\ <= NOT \MEMORIA_DADOS|ram~48_q\;
\MEMORIA_DADOS|ALT_INV_ram~80_q\ <= NOT \MEMORIA_DADOS|ram~80_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[12]~12_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[12]~12_combout\;
\MEMORIA_DADOS|ALT_INV_ram~106_combout\ <= NOT \MEMORIA_DADOS|ram~106_combout\;
\MEMORIA_DADOS|ALT_INV_ram~46_q\ <= NOT \MEMORIA_DADOS|ram~46_q\;
\MEMORIA_DADOS|ALT_INV_ram~78_q\ <= NOT \MEMORIA_DADOS|ram~78_q\;
\MEMORIA_DADOS|ALT_INV_ram~105_combout\ <= NOT \MEMORIA_DADOS|ram~105_combout\;
\MEMORIA_DADOS|ALT_INV_ram~49_q\ <= NOT \MEMORIA_DADOS|ram~49_q\;
\MEMORIA_DADOS|ALT_INV_ram~81_q\ <= NOT \MEMORIA_DADOS|ram~81_q\;
\MEMORIA_DADOS|ALT_INV_ram~104_combout\ <= NOT \MEMORIA_DADOS|ram~104_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[11]~11_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[11]~11_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[9]~10_combout\;
\MEMORIA_DADOS|ALT_INV_ram~43_q\ <= NOT \MEMORIA_DADOS|ram~43_q\;
\MEMORIA_DADOS|ALT_INV_ram~75_q\ <= NOT \MEMORIA_DADOS|ram~75_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[10]~9_combout\;
\MEMORIA_DADOS|ALT_INV_ram~103_combout\ <= NOT \MEMORIA_DADOS|ram~103_combout\;
\MEMORIA_DADOS|ALT_INV_ram~44_q\ <= NOT \MEMORIA_DADOS|ram~44_q\;
\MEMORIA_DADOS|ALT_INV_ram~76_q\ <= NOT \MEMORIA_DADOS|ram~76_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[8]~8_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[8]~8_combout\;
\MEMORIA_DADOS|ALT_INV_ram~42_q\ <= NOT \MEMORIA_DADOS|ram~42_q\;
\MEMORIA_DADOS|ALT_INV_ram~74_q\ <= NOT \MEMORIA_DADOS|ram~74_q\;
\MEMORIA_DADOS|ALT_INV_ram~102_combout\ <= NOT \MEMORIA_DADOS|ram~102_combout\;
\MEMORIA_DADOS|ALT_INV_ram~45_q\ <= NOT \MEMORIA_DADOS|ram~45_q\;
\MEMORIA_DADOS|ALT_INV_ram~77_q\ <= NOT \MEMORIA_DADOS|ram~77_q\;
\MEMORIA_DADOS|ALT_INV_ram~101_combout\ <= NOT \MEMORIA_DADOS|ram~101_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[7]~7_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[5]~6_combout\;
\MEMORIA_DADOS|ALT_INV_ram~39_q\ <= NOT \MEMORIA_DADOS|ram~39_q\;
\MEMORIA_DADOS|ALT_INV_ram~71_q\ <= NOT \MEMORIA_DADOS|ram~71_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[6]~5_combout\;
\MEMORIA_DADOS|ALT_INV_ram~40_q\ <= NOT \MEMORIA_DADOS|ram~40_q\;
\MEMORIA_DADOS|ALT_INV_ram~72_q\ <= NOT \MEMORIA_DADOS|ram~72_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[4]~4_combout\;
\MEMORIA_DADOS|ALT_INV_ram~38_q\ <= NOT \MEMORIA_DADOS|ram~38_q\;
\MEMORIA_DADOS|ALT_INV_ram~70_q\ <= NOT \MEMORIA_DADOS|ram~70_q\;
\MEMORIA_DADOS|ALT_INV_ram~100_combout\ <= NOT \MEMORIA_DADOS|ram~100_combout\;
\MEMORIA_DADOS|ALT_INV_ram~41_q\ <= NOT \MEMORIA_DADOS|ram~41_q\;
\MEMORIA_DADOS|ALT_INV_ram~73_q\ <= NOT \MEMORIA_DADOS|ram~73_q\;
\MEMORIA_DADOS|ALT_INV_ram~99_combout\ <= NOT \MEMORIA_DADOS|ram~99_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[3]~3_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[1]~2_combout\;
\MEMORIA_DADOS|ALT_INV_ram~35_q\ <= NOT \MEMORIA_DADOS|ram~35_q\;
\MEMORIA_DADOS|ALT_INV_ram~67_q\ <= NOT \MEMORIA_DADOS|ram~67_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[2]~1_combout\;
\MEMORIA_DADOS|ALT_INV_ram~36_q\ <= NOT \MEMORIA_DADOS|ram~36_q\;
\MEMORIA_DADOS|ALT_INV_ram~68_q\ <= NOT \MEMORIA_DADOS|ram~68_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[0]~0_combout\;
\MEMORIA_DADOS|ALT_INV_ram~34_q\ <= NOT \MEMORIA_DADOS|ram~34_q\;
\MEMORIA_DADOS|ALT_INV_ram~66_q\ <= NOT \MEMORIA_DADOS|ram~66_q\;
\UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\ <= NOT \UNIDADE_DE_CONTROLE|Mux3~0_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~0_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\MEMORIA_DADOS|ALT_INV_ram~98_combout\ <= NOT \MEMORIA_DADOS|ram~98_combout\;
\MEMORIA_DADOS|ALT_INV_ram~37_q\ <= NOT \MEMORIA_DADOS|ram~37_q\;
\MEMORIA_DADOS|ALT_INV_ram~69_q\ <= NOT \MEMORIA_DADOS|ram~69_q\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1190_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1190_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1186_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1186_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1182_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1178_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1174_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1174_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1170_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1170_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1166_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1166_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1162_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1158_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1154_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1154_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1150_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1150_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1146_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1146_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1142_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1138_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1138_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1134_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1134_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1130_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1130_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1126_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1126_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1122_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1118_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1114_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1114_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1110_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1110_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1106_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1102_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1098_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1094_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1090_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1086_combout\;
\BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\ <= NOT \BANCO_REGISTRADORES|registrador~1082_combout\;
\MEMORIA_DADOS|ALT_INV_ram~127_combout\ <= NOT \MEMORIA_DADOS|ram~127_combout\;
\MEMORIA_DADOS|ALT_INV_ram~61_q\ <= NOT \MEMORIA_DADOS|ram~61_q\;
\MEMORIA_DADOS|ALT_INV_ram~93_q\ <= NOT \MEMORIA_DADOS|ram~93_q\;
\MEMORIA_DADOS|ALT_INV_ram~60_q\ <= NOT \MEMORIA_DADOS|ram~60_q\;
\MEMORIA_DADOS|ALT_INV_ram~92_q\ <= NOT \MEMORIA_DADOS|ram~92_q\;
\MEMORIA_DADOS|ALT_INV_ram~125_combout\ <= NOT \MEMORIA_DADOS|ram~125_combout\;
\MEMORIA_DADOS|ALT_INV_ram~59_q\ <= NOT \MEMORIA_DADOS|ram~59_q\;
\MEMORIA_DADOS|ALT_INV_ram~91_q\ <= NOT \MEMORIA_DADOS|ram~91_q\;
\MEMORIA_DADOS|ALT_INV_ram~58_q\ <= NOT \MEMORIA_DADOS|ram~58_q\;
\MEMORIA_DADOS|ALT_INV_ram~90_q\ <= NOT \MEMORIA_DADOS|ram~90_q\;
\MEMORIA_DADOS|ALT_INV_ram~123_combout\ <= NOT \MEMORIA_DADOS|ram~123_combout\;
\MEMORIA_DADOS|ALT_INV_ram~121_combout\ <= NOT \MEMORIA_DADOS|ram~121_combout\;
\MEMORIA_DADOS|ALT_INV_ram~120_combout\ <= NOT \MEMORIA_DADOS|ram~120_combout\;
\MEMORIA_DADOS|ALT_INV_ram~119_combout\ <= NOT \MEMORIA_DADOS|ram~119_combout\;
\detectorSub1|ALT_INV_saida~combout\ <= NOT \detectorSub1|saida~combout\;
\detectorSub1|ALT_INV_saidaQ~q\ <= NOT \detectorSub1|saidaQ~q\;
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
\MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~3_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~2_combout\;
\MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\ <= NOT \MEMORIA_INSTRUCAO|memROM~1_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[23]~23_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[23]~23_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[21]~22_combout\;
\MEMORIA_DADOS|ALT_INV_ram~116_combout\ <= NOT \MEMORIA_DADOS|ram~116_combout\;
\MEMORIA_DADOS|ALT_INV_ram~55_q\ <= NOT \MEMORIA_DADOS|ram~55_q\;
\MEMORIA_DADOS|ALT_INV_ram~87_q\ <= NOT \MEMORIA_DADOS|ram~87_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[22]~21_combout\;
\MEMORIA_DADOS|ALT_INV_ram~115_combout\ <= NOT \MEMORIA_DADOS|ram~115_combout\;
\MEMORIA_DADOS|ALT_INV_ram~56_q\ <= NOT \MEMORIA_DADOS|ram~56_q\;
\MEMORIA_DADOS|ALT_INV_ram~88_q\ <= NOT \MEMORIA_DADOS|ram~88_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[20]~20_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[20]~20_combout\;
\MEMORIA_DADOS|ALT_INV_ram~114_combout\ <= NOT \MEMORIA_DADOS|ram~114_combout\;
\MEMORIA_DADOS|ALT_INV_ram~54_q\ <= NOT \MEMORIA_DADOS|ram~54_q\;
\MEMORIA_DADOS|ALT_INV_ram~86_q\ <= NOT \MEMORIA_DADOS|ram~86_q\;
\MEMORIA_DADOS|ALT_INV_ram~113_combout\ <= NOT \MEMORIA_DADOS|ram~113_combout\;
\MEMORIA_DADOS|ALT_INV_ram~57_q\ <= NOT \MEMORIA_DADOS|ram~57_q\;
\MEMORIA_DADOS|ALT_INV_ram~89_q\ <= NOT \MEMORIA_DADOS|ram~89_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[19]~19_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[19]~19_combout\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[17]~18_combout\;
\MEMORIA_DADOS|ALT_INV_ram~112_combout\ <= NOT \MEMORIA_DADOS|ram~112_combout\;
\MEMORIA_DADOS|ALT_INV_ram~51_q\ <= NOT \MEMORIA_DADOS|ram~51_q\;
\MEMORIA_DADOS|ALT_INV_ram~83_q\ <= NOT \MEMORIA_DADOS|ram~83_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[18]~17_combout\;
\MEMORIA_DADOS|ALT_INV_ram~111_combout\ <= NOT \MEMORIA_DADOS|ram~111_combout\;
\MEMORIA_DADOS|ALT_INV_ram~52_q\ <= NOT \MEMORIA_DADOS|ram~52_q\;
\MEMORIA_DADOS|ALT_INV_ram~84_q\ <= NOT \MEMORIA_DADOS|ram~84_q\;
\MUX_RAM_ULA|ALT_INV_saida_MUX[16]~16_combout\ <= NOT \MUX_RAM_ULA|saida_MUX[16]~16_combout\;
\MEMORIA_DADOS|ALT_INV_ram~110_combout\ <= NOT \MEMORIA_DADOS|ram~110_combout\;
\MEMORIA_DADOS|ALT_INV_ram~50_q\ <= NOT \MEMORIA_DADOS|ram~50_q\;
\MEMORIA_DADOS|ALT_INV_ram~82_q\ <= NOT \MEMORIA_DADOS|ram~82_q\;
\BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\ <= NOT \BANCO_REGISTRADORES|Equal0~0_combout\;
\detectorSub0|ALT_INV_saidaQ~q\ <= NOT \detectorSub0|saidaQ~q\;
\MEMORIA_DADOS|ALT_INV_ram~131_combout\ <= NOT \MEMORIA_DADOS|ram~131_combout\;
\MEMORIA_DADOS|ALT_INV_ram~65_q\ <= NOT \MEMORIA_DADOS|ram~65_q\;
\MEMORIA_DADOS|ALT_INV_ram~97_q\ <= NOT \MEMORIA_DADOS|ram~97_q\;
\MEMORIA_DADOS|ALT_INV_ram~64_q\ <= NOT \MEMORIA_DADOS|ram~64_q\;
\MEMORIA_DADOS|ALT_INV_ram~96_q\ <= NOT \MEMORIA_DADOS|ram~96_q\;
\MEMORIA_DADOS|ALT_INV_ram~129_combout\ <= NOT \MEMORIA_DADOS|ram~129_combout\;
\MEMORIA_DADOS|ALT_INV_ram~63_q\ <= NOT \MEMORIA_DADOS|ram~63_q\;
\MEMORIA_DADOS|ALT_INV_ram~95_q\ <= NOT \MEMORIA_DADOS|ram~95_q\;
\MEMORIA_DADOS|ALT_INV_ram~62_q\ <= NOT \MEMORIA_DADOS|ram~62_q\;
\MEMORIA_DADOS|ALT_INV_ram~94_q\ <= NOT \MEMORIA_DADOS|ram~94_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;

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
	i => \ULA|Add0~1_sumout\,
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
	i => \ULA|Add0~13_sumout\,
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
	i => \ULA|Add0~9_sumout\,
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
	i => \ULA|Add0~5_sumout\,
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
	i => \ULA|Add0~21_sumout\,
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
	i => \ULA|Add0~29_sumout\,
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
	i => \ULA|Add0~25_sumout\,
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
	i => \ULA|Add0~17_sumout\,
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
	i => \ULA|Add0~37_sumout\,
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
	i => \ULA|Add0~45_sumout\,
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
	i => \ULA|Add0~41_sumout\,
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
	i => \ULA|Add0~33_sumout\,
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
	i => \ULA|Add0~53_sumout\,
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
	i => \ULA|Add0~61_sumout\,
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
	i => \ULA|Add0~57_sumout\,
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
	i => \ULA|Add0~49_sumout\,
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
	i => \ULA|Add0~69_sumout\,
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
	i => \ULA|Add0~77_sumout\,
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
	i => \ULA|Add0~73_sumout\,
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
	i => \ULA|Add0~65_sumout\,
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
	i => \ULA|Add0~85_sumout\,
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
	i => \ULA|Add0~93_sumout\,
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
	i => \ULA|Add0~89_sumout\,
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
	i => \ULA|Add0~81_sumout\,
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
	i => \ULA|Add0~97_sumout\,
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
	i => \ULA|Add0~101_sumout\,
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
	i => \ULA|Add0~105_sumout\,
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
	i => \ULA|Add0~109_sumout\,
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
	i => \ULA|Add0~113_sumout\,
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
	i => \ULA|Add0~117_sumout\,
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
	i => \ULA|Add0~121_sumout\,
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
	i => \ULA|Add0~125_sumout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \BANCO_REGISTRADORES|saidaB[0]~0_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[1]~1_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[2]~2_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[3]~3_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[4]~4_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[5]~5_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[6]~6_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[7]~7_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[8]~8_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[9]~9_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[10]~10_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[11]~11_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[12]~12_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[13]~13_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[14]~14_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[15]~15_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[16]~16_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[17]~17_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[18]~18_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[19]~19_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[20]~20_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[21]~21_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[22]~22_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[23]~23_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[24]~24_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[25]~25_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[26]~26_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[27]~27_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[28]~28_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[29]~29_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[30]~30_combout\,
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
	i => \BANCO_REGISTRADORES|saidaB[31]~31_combout\,
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

\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = !\PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\detectorSub1|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub1|saidaQ~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	combout => \detectorSub1|saidaQ~0_combout\);

\detectorSub1|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \detectorSub1|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSub1|saidaQ~q\);

\detectorSub1|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSub1|saida~combout\ = (!\KEY[1]~input_o\ & !\detectorSub1|saidaQ~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \detectorSub1|ALT_INV_saidaQ~q\,
	combout => \detectorSub1|saida~combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \PC|DOUT[2]~0_combout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\SOMADOR|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \SOMADOR|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \SOMADOR|Add0~9_sumout\,
	cout => \SOMADOR|Add0~10\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~9_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\SOMADOR|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMADOR|Add0~10\ ))
-- \SOMADOR|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMADOR|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \SOMADOR|Add0~10\,
	sumout => \SOMADOR|Add0~17_sumout\,
	cout => \SOMADOR|Add0~18\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~17_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\SOMADOR|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMADOR|Add0~18\ ))
-- \SOMADOR|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMADOR|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \SOMADOR|Add0~18\,
	sumout => \SOMADOR|Add0~13_sumout\,
	cout => \SOMADOR|Add0~14\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~13_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\SOMADOR|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~5_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMADOR|Add0~14\ ))
-- \SOMADOR|Add0~6\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMADOR|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \SOMADOR|Add0~14\,
	sumout => \SOMADOR|Add0~5_sumout\,
	cout => \SOMADOR|Add0~6\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~5_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\SOMADOR|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~1_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMADOR|Add0~6\ ))
-- \SOMADOR|Add0~2\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMADOR|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \SOMADOR|Add0~6\,
	sumout => \SOMADOR|Add0~1_sumout\,
	cout => \SOMADOR|Add0~2\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~1_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\BANCO_REGISTRADORES|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|Equal0~0_combout\ = ( \PC|DOUT\(6) & ( \PC|DOUT\(7) ) ) # ( !\PC|DOUT\(6) & ( \PC|DOUT\(7) ) ) # ( \PC|DOUT\(6) & ( !\PC|DOUT\(7) ) ) # ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (((\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(5))) # 
-- (\PC|DOUT\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \BANCO_REGISTRADORES|Equal0~0_combout\);

\MEMORIA_INSTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~2_combout\ = ( !\PC|DOUT\(4) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(3) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \MEMORIA_INSTRUCAO|memROM~2_combout\);

\MEMORIA_INSTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~1_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(5) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (((\PC|DOUT\(2) & \PC|DOUT\(3))) # (\PC|DOUT\(6))) # 
-- (\PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INSTRUCAO|memROM~1_combout\);

\MEMORIA_INSTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~0_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(3) & !\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	combout => \MEMORIA_INSTRUCAO|memROM~0_combout\);

\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( !\MEMORIA_INSTRUCAO|memROM~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1190_combout\)))) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1190_combout\)))) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1190_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\BANCO_REGISTRADORES|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[0]~0_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1190_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1190_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[0]~0_combout\);

\MEMORIA_DADOS|ram~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~117_combout\ = (\MEMORIA_INSTRUCAO|memROM~2_combout\ & \ULA|Add0~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \MEMORIA_DADOS|ram~117_combout\);

\MEMORIA_DADOS|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[0]~0_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~66_q\);

\MEMORIA_DADOS|ram~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~118_combout\ = (\MEMORIA_INSTRUCAO|memROM~2_combout\ & !\ULA|Add0~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \MEMORIA_DADOS|ram~118_combout\);

\MEMORIA_DADOS|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[0]~0_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~34_q\);

\MEMORIA_DADOS|ram~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~99_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~34_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~66_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~66_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~34_q\,
	combout => \MEMORIA_DADOS|ram~99_combout\);

\UNIDADE_DE_CONTROLE|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UNIDADE_DE_CONTROLE|Mux3~0_combout\ = (\MEMORIA_INSTRUCAO|memROM~0_combout\ & \PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	combout => \UNIDADE_DE_CONTROLE|Mux3~0_combout\);

\MEMORIA_INSTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_INSTRUCAO|memROM~3_combout\ = ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \MEMORIA_INSTRUCAO|memROM~3_combout\);

\BANCO_REGISTRADORES|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1064_combout\ = (\MEMORIA_INSTRUCAO|memROM~0_combout\ & (\PC|DOUT\(2) & (\MEMORIA_INSTRUCAO|memROM~1_combout\ & \MEMORIA_INSTRUCAO|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1064_combout\);

\BANCO_REGISTRADORES|registrador~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~1_sumout\,
	asdata => \MEMORIA_DADOS|ram~99_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~102_q\);

\ULA|Add0~1_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_wirecell_combout\ = !\ULA|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \ULA|Add0~1_wirecell_combout\);

\MEMORIA_DADOS|ram~99_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~99_wirecell_combout\ = !\MEMORIA_DADOS|ram~99_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~99_combout\,
	combout => \MEMORIA_DADOS|ram~99_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1063_combout\ = (\MEMORIA_INSTRUCAO|memROM~0_combout\ & (\PC|DOUT\(2) & (!\MEMORIA_INSTRUCAO|memROM~1_combout\ & !\MEMORIA_INSTRUCAO|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1063_combout\);

\BANCO_REGISTRADORES|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~1_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~99_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~294_q\);

\BANCO_REGISTRADORES|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1062_combout\ = (\MEMORIA_INSTRUCAO|memROM~0_combout\ & (\PC|DOUT\(2) & (!\MEMORIA_INSTRUCAO|memROM~1_combout\ & \MEMORIA_INSTRUCAO|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1062_combout\);

\BANCO_REGISTRADORES|registrador~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~1_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~99_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~358_q\);

\BANCO_REGISTRADORES|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1065_combout\ = (\BANCO_REGISTRADORES|Equal0~0_combout\ & \UNIDADE_DE_CONTROLE|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	combout => \BANCO_REGISTRADORES|registrador~1065_combout\);

\BANCO_REGISTRADORES|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~1_sumout\,
	asdata => \MEMORIA_DADOS|ram~99_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~38_q\);

\BANCO_REGISTRADORES|registrador~1190\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1190_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((!\BANCO_REGISTRADORES|registrador~294_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~38_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((!\BANCO_REGISTRADORES|registrador~358_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~102_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000101000000010100010101000101010001010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~102_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~294_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~358_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~38_q\,
	combout => \BANCO_REGISTRADORES|registrador~1190_combout\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1186_combout\)))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~14\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1186_combout\)))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1186_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\BANCO_REGISTRADORES|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[1]~1_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1186_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1186_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[1]~1_combout\);

\MEMORIA_DADOS|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[1]~1_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[1]~1_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~35_q\);

\MEMORIA_DADOS|ram~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~119_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~35_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~67_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~67_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~35_q\,
	combout => \MEMORIA_DADOS|ram~119_combout\);

\BANCO_REGISTRADORES|registrador~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~13_sumout\,
	asdata => \MEMORIA_DADOS|ram~119_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~103_q\);

\BANCO_REGISTRADORES|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~13_sumout\,
	asdata => \MEMORIA_DADOS|ram~119_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~295_q\);

\ULA|Add0~13_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_wirecell_combout\ = !\ULA|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \ULA|Add0~13_wirecell_combout\);

\MEMORIA_DADOS|ram~119_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~119_wirecell_combout\ = !\MEMORIA_DADOS|ram~119_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~119_combout\,
	combout => \MEMORIA_DADOS|ram~119_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~13_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~119_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~359_q\);

\BANCO_REGISTRADORES|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~13_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~119_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~39_q\);

\BANCO_REGISTRADORES|registrador~1186\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1186_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~295_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~39_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((!\BANCO_REGISTRADORES|registrador~359_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~103_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000100010101000101000100000101010000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~103_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~295_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~359_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~39_q\,
	combout => \BANCO_REGISTRADORES|registrador~1186_combout\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1182_combout\)))) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~10\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1182_combout\)))) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\BANCO_REGISTRADORES|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[2]~2_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1182_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1182_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[2]~2_combout\);

\MEMORIA_DADOS|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[2]~2_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[2]~2_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~36_q\);

\MEMORIA_DADOS|ram~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~120_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~36_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~68_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~68_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~36_q\,
	combout => \MEMORIA_DADOS|ram~120_combout\);

\BANCO_REGISTRADORES|registrador~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~9_sumout\,
	asdata => \MEMORIA_DADOS|ram~120_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~104_q\);

\ULA|Add0~9_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_wirecell_combout\ = !\ULA|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~9_sumout\,
	combout => \ULA|Add0~9_wirecell_combout\);

\MEMORIA_DADOS|ram~120_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~120_wirecell_combout\ = !\MEMORIA_DADOS|ram~120_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~120_combout\,
	combout => \MEMORIA_DADOS|ram~120_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~9_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~120_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~296_q\);

\BANCO_REGISTRADORES|registrador~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~9_sumout\,
	asdata => \MEMORIA_DADOS|ram~120_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~360_q\);

\BANCO_REGISTRADORES|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~9_sumout\,
	asdata => \MEMORIA_DADOS|ram~120_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~40_q\);

\BANCO_REGISTRADORES|registrador~1182\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1182_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((!\BANCO_REGISTRADORES|registrador~296_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~40_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~360_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~104_q\)))) # (\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\MEMORIA_INSTRUCAO|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000101000000010010001100100011010001010000000101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~104_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~296_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~360_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~40_q\,
	combout => \BANCO_REGISTRADORES|registrador~1182_combout\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( !\MEMORIA_INSTRUCAO|memROM~1_combout\ ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1178_combout\)))) ) + ( 
-- \ULA|Add0~10\ ))
-- \ULA|Add0~6\ = CARRY(( !\MEMORIA_INSTRUCAO|memROM~1_combout\ ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1178_combout\)))) ) + ( 
-- \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\BANCO_REGISTRADORES|registrador~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~5_sumout\,
	asdata => \MEMORIA_DADOS|ram~98_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~105_q\);

\BANCO_REGISTRADORES|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~5_sumout\,
	asdata => \MEMORIA_DADOS|ram~98_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~297_q\);

\ULA|Add0~5_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_wirecell_combout\ = !\ULA|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \ULA|Add0~5_wirecell_combout\);

\MEMORIA_DADOS|ram~98_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~98_wirecell_combout\ = !\MEMORIA_DADOS|ram~98_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~98_combout\,
	combout => \MEMORIA_DADOS|ram~98_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~5_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~98_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~361_q\);

\BANCO_REGISTRADORES|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~5_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~98_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~41_q\);

\BANCO_REGISTRADORES|registrador~1178\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1178_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~297_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~41_q\)))) # (\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\MEMORIA_INSTRUCAO|memROM~1_combout\)) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ 
-- & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((!\BANCO_REGISTRADORES|registrador~361_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~105_q\)))) # (\MEMORIA_INSTRUCAO|memROM~2_combout\ & 
-- (!\MEMORIA_INSTRUCAO|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0110010011101100110011101100111001100100111011000100011001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~105_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~297_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~361_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~41_q\,
	combout => \BANCO_REGISTRADORES|registrador~1178_combout\);

\BANCO_REGISTRADORES|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[3]~3_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1178_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1178_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[3]~3_combout\);

\MEMORIA_DADOS|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[3]~3_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[3]~3_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~37_q\);

\MEMORIA_DADOS|ram~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~98_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~37_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~69_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~69_q\,
	datab => \ULA|ALT_INV_Add0~1_sumout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~37_q\,
	combout => \MEMORIA_DADOS|ram~98_combout\);

\MUX_RAM_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[0]~0_combout\ = (!\ULA|Add0~1_sumout\ & (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\MEMORIA_DADOS|ram~34_q\)))) # (\ULA|Add0~1_sumout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\) # ((\MEMORIA_DADOS|ram~66_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101100111010001010110011101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~66_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~34_q\,
	combout => \MUX_RAM_ULA|saida_MUX[0]~0_combout\);

\MUX_RAM_ULA|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[2]~1_combout\ = ( \ULA|Add0~9_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~36_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~68_q\))) ) ) # ( !\ULA|Add0~9_sumout\ & ( 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~36_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~68_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~68_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~36_q\,
	datae => \ULA|ALT_INV_Add0~9_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[2]~1_combout\);

\MUX_RAM_ULA|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[1]~2_combout\ = ( \ULA|Add0~13_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~35_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~67_q\))) ) ) # ( !\ULA|Add0~13_sumout\ & ( 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~35_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~67_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~67_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~35_q\,
	datae => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[1]~2_combout\);

\DECOD_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( \MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~5_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~98_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( !\MUX_RAM_ULA|saida_MUX[0]~0_combout\ $ (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~5_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~98_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~5_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~98_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010110010100011010100000000001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~98_combout\,
	datab => \ULA|ALT_INV_Add0~5_sumout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[0]~0_combout\);

\MUX_RAM_ULA|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[3]~3_combout\ = ( \UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ( (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~37_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~69_q\)) ) ) # ( !\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ( 
-- \ULA|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~69_q\,
	datab => \ULA|ALT_INV_Add0~1_sumout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~37_q\,
	datad => \ULA|ALT_INV_Add0~5_sumout\,
	datae => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	combout => \MUX_RAM_ULA|saida_MUX[3]~3_combout\);

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

\DECOD_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( \MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[3]~3_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~1_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~99_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( \MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[3]~3_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~1_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~99_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( !\MUX_RAM_ULA|saida_MUX[3]~3_combout\ ) ) ) # ( 
-- !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~1_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~99_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111101010101010101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[3]~3_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~99_combout\,
	datad => \ULA|ALT_INV_Add0~1_sumout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[4]~4_combout\);

\DECOD_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( \MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~5_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~98_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( \MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~5_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~98_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~5_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~98_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[2]~1_combout\ & ( !\MUX_RAM_ULA|saida_MUX[1]~2_combout\ & ( (\MUX_RAM_ULA|saida_MUX[0]~0_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~5_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~98_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~98_combout\,
	datac => \ULA|ALT_INV_Add0~5_sumout\,
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

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1174_combout\)))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~22\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1174_combout\)))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1174_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\BANCO_REGISTRADORES|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[4]~4_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1174_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1174_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[4]~4_combout\);

\MEMORIA_DADOS|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[4]~4_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[4]~4_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~38_q\);

\MEMORIA_DADOS|ram~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~101_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~38_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~70_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~70_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~38_q\,
	combout => \MEMORIA_DADOS|ram~101_combout\);

\BANCO_REGISTRADORES|registrador~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~21_sumout\,
	asdata => \MEMORIA_DADOS|ram~101_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~106_q\);

\BANCO_REGISTRADORES|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~21_sumout\,
	asdata => \MEMORIA_DADOS|ram~101_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~298_q\);

\BANCO_REGISTRADORES|registrador~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~21_sumout\,
	asdata => \MEMORIA_DADOS|ram~101_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~362_q\);

\BANCO_REGISTRADORES|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~21_sumout\,
	asdata => \MEMORIA_DADOS|ram~101_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~42_q\);

\BANCO_REGISTRADORES|registrador~1174\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1174_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~298_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~42_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~362_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~106_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~106_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~298_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~362_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~42_q\,
	combout => \BANCO_REGISTRADORES|registrador~1174_combout\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1170_combout\)))) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~30\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1170_combout\)))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1170_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\BANCO_REGISTRADORES|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[5]~5_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1170_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1170_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[5]~5_combout\);

\MEMORIA_DADOS|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[5]~5_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[5]~5_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~39_q\);

\MEMORIA_DADOS|ram~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~121_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~39_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~71_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~71_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~39_q\,
	combout => \MEMORIA_DADOS|ram~121_combout\);

\BANCO_REGISTRADORES|registrador~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~29_sumout\,
	asdata => \MEMORIA_DADOS|ram~121_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~107_q\);

\BANCO_REGISTRADORES|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~29_sumout\,
	asdata => \MEMORIA_DADOS|ram~121_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~299_q\);

\BANCO_REGISTRADORES|registrador~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~29_sumout\,
	asdata => \MEMORIA_DADOS|ram~121_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~363_q\);

\ULA|Add0~29_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_wirecell_combout\ = !\ULA|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \ULA|Add0~29_wirecell_combout\);

\MEMORIA_DADOS|ram~121_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~121_wirecell_combout\ = !\MEMORIA_DADOS|ram~121_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~121_combout\,
	combout => \MEMORIA_DADOS|ram~121_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~29_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~121_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~43_q\);

\BANCO_REGISTRADORES|registrador~1170\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1170_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~299_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~43_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~363_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~107_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~107_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~299_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~363_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~43_q\,
	combout => \BANCO_REGISTRADORES|registrador~1170_combout\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1166_combout\)))) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~26\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1166_combout\)))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1166_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\BANCO_REGISTRADORES|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[6]~6_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1166_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1166_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[6]~6_combout\);

\MEMORIA_DADOS|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[6]~6_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[6]~6_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~40_q\);

\MEMORIA_DADOS|ram~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~122_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~40_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~72_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~72_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~40_q\,
	combout => \MEMORIA_DADOS|ram~122_combout\);

\BANCO_REGISTRADORES|registrador~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~25_sumout\,
	asdata => \MEMORIA_DADOS|ram~122_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~108_q\);

\BANCO_REGISTRADORES|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~25_sumout\,
	asdata => \MEMORIA_DADOS|ram~122_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~300_q\);

\BANCO_REGISTRADORES|registrador~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~25_sumout\,
	asdata => \MEMORIA_DADOS|ram~122_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~364_q\);

\BANCO_REGISTRADORES|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~25_sumout\,
	asdata => \MEMORIA_DADOS|ram~122_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~44_q\);

\BANCO_REGISTRADORES|registrador~1166\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1166_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~300_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~44_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~364_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~108_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~108_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~300_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~364_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~44_q\,
	combout => \BANCO_REGISTRADORES|registrador~1166_combout\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1162_combout\)))) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~18\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1162_combout\)))) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\BANCO_REGISTRADORES|registrador~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~17_sumout\,
	asdata => \MEMORIA_DADOS|ram~100_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~109_q\);

\BANCO_REGISTRADORES|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~17_sumout\,
	asdata => \MEMORIA_DADOS|ram~100_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~301_q\);

\BANCO_REGISTRADORES|registrador~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~17_sumout\,
	asdata => \MEMORIA_DADOS|ram~100_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~365_q\);

\ULA|Add0~17_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_wirecell_combout\ = !\ULA|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \ULA|Add0~17_wirecell_combout\);

\MEMORIA_DADOS|ram~100_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~100_wirecell_combout\ = !\MEMORIA_DADOS|ram~100_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~100_combout\,
	combout => \MEMORIA_DADOS|ram~100_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~17_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~100_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~45_q\);

\BANCO_REGISTRADORES|registrador~1162\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1162_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~301_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~45_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~365_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~109_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~109_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~301_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~365_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~45_q\,
	combout => \BANCO_REGISTRADORES|registrador~1162_combout\);

\BANCO_REGISTRADORES|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[7]~7_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1162_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1162_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[7]~7_combout\);

\MEMORIA_DADOS|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[7]~7_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[7]~7_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~41_q\);

\MEMORIA_DADOS|ram~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~100_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~41_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~73_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~73_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~41_q\,
	combout => \MEMORIA_DADOS|ram~100_combout\);

\MUX_RAM_ULA|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[4]~4_combout\ = ( \ULA|Add0~21_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~38_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~70_q\))) ) ) # ( !\ULA|Add0~21_sumout\ & ( 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~38_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~70_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~70_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~38_q\,
	datae => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[4]~4_combout\);

\MUX_RAM_ULA|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[6]~5_combout\ = ( \ULA|Add0~25_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~40_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~72_q\))) ) ) # ( !\ULA|Add0~25_sumout\ & ( 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~40_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~72_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~72_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~40_q\,
	datae => \ULA|ALT_INV_Add0~25_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[6]~5_combout\);

\MUX_RAM_ULA|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[5]~6_combout\ = ( \ULA|Add0~29_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~39_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~71_q\))) ) ) # ( !\ULA|Add0~29_sumout\ & ( 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~39_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~71_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~71_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~39_q\,
	datae => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[5]~6_combout\);

\DECOD_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~17_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( !\MUX_RAM_ULA|saida_MUX[4]~4_combout\ $ (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~100_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010110010100011010100000000001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~100_combout\,
	datab => \ULA|ALT_INV_Add0~17_sumout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[0]~0_combout\);

\DECOD_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[1]~1_combout\ = ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[4]~4_combout\) # ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~17_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( !\MUX_RAM_ULA|saida_MUX[4]~4_combout\ $ 
-- (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~100_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110111110010000000000000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~100_combout\,
	datac => \ULA|ALT_INV_Add0~17_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[1]~1_combout\);

\DECOD_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[2]~2_combout\ = ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- (\MEMORIA_DADOS|ram~100_combout\)) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~17_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110000000011100100000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~100_combout\,
	datac => \ULA|ALT_INV_Add0~17_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[2]~2_combout\);

\MUX_RAM_ULA|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[7]~7_combout\ = ( \ULA|Add0~17_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~41_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~73_q\))) ) ) # ( !\ULA|Add0~17_sumout\ & ( 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~41_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~73_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~73_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~41_q\,
	datae => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[7]~7_combout\);

\DECOD_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & (!\MUX_RAM_ULA|saida_MUX[7]~7_combout\ & (!\MUX_RAM_ULA|saida_MUX[4]~4_combout\ $ (!\MUX_RAM_ULA|saida_MUX[6]~5_combout\)))) # (\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & 
-- ((!\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & (!\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & \MUX_RAM_ULA|saida_MUX[7]~7_combout\)) # (\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & (\MUX_RAM_ULA|saida_MUX[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[3]~3_combout\);

\DECOD_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[7]~7_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~21_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~101_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[7]~7_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~21_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~101_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( !\MUX_RAM_ULA|saida_MUX[7]~7_combout\ ) ) ) # ( 
-- !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~21_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~101_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111101010101010101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[7]~7_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~101_combout\,
	datad => \ULA|ALT_INV_Add0~21_sumout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[4]~4_combout\);

\DECOD_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~17_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~17_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~100_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~100_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~100_combout\,
	datac => \ULA|ALT_INV_Add0~17_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[5]~5_combout\);

\DECOD_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[6]~6_combout\ = ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( \MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~17_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[4]~4_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~100_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[6]~5_combout\ & ( !\MUX_RAM_ULA|saida_MUX[5]~6_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((!\ULA|Add0~17_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~100_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100000110110000000000000000000000000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~100_combout\,
	datac => \ULA|ALT_INV_Add0~17_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[5]~6_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[6]~6_combout\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1158_combout\)))) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~38\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1158_combout\)))) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\BANCO_REGISTRADORES|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[8]~8_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1158_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1158_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[8]~8_combout\);

\MEMORIA_DADOS|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[8]~8_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[8]~8_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~42_q\);

\MEMORIA_DADOS|ram~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~104_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~42_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~74_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~74_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~42_q\,
	combout => \MEMORIA_DADOS|ram~104_combout\);

\BANCO_REGISTRADORES|registrador~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~37_sumout\,
	asdata => \MEMORIA_DADOS|ram~104_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~110_q\);

\BANCO_REGISTRADORES|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~37_sumout\,
	asdata => \MEMORIA_DADOS|ram~104_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~302_q\);

\BANCO_REGISTRADORES|registrador~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~37_sumout\,
	asdata => \MEMORIA_DADOS|ram~104_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~366_q\);

\BANCO_REGISTRADORES|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~37_sumout\,
	asdata => \MEMORIA_DADOS|ram~104_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~46_q\);

\BANCO_REGISTRADORES|registrador~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1158_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~302_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~46_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~366_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~110_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~110_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~302_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~366_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~46_q\,
	combout => \BANCO_REGISTRADORES|registrador~1158_combout\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1154_combout\)))) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~46\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1154_combout\)))) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1154_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\BANCO_REGISTRADORES|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[9]~9_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1154_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1154_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[9]~9_combout\);

\MEMORIA_DADOS|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[9]~9_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[9]~9_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~43_q\);

\MEMORIA_DADOS|ram~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~123_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~43_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~75_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~75_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~43_q\,
	combout => \MEMORIA_DADOS|ram~123_combout\);

\BANCO_REGISTRADORES|registrador~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~45_sumout\,
	asdata => \MEMORIA_DADOS|ram~123_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~111_q\);

\BANCO_REGISTRADORES|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~45_sumout\,
	asdata => \MEMORIA_DADOS|ram~123_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~303_q\);

\BANCO_REGISTRADORES|registrador~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~45_sumout\,
	asdata => \MEMORIA_DADOS|ram~123_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~367_q\);

\ULA|Add0~45_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_wirecell_combout\ = !\ULA|Add0~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \ULA|Add0~45_wirecell_combout\);

\MEMORIA_DADOS|ram~123_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~123_wirecell_combout\ = !\MEMORIA_DADOS|ram~123_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~123_combout\,
	combout => \MEMORIA_DADOS|ram~123_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~45_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~123_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~47_q\);

\BANCO_REGISTRADORES|registrador~1154\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1154_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~303_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~47_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~367_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~111_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~111_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~303_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~367_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~47_q\,
	combout => \BANCO_REGISTRADORES|registrador~1154_combout\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1150_combout\)))) ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~42\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1150_combout\)))) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1150_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\BANCO_REGISTRADORES|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[10]~10_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1150_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1150_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[10]~10_combout\);

\MEMORIA_DADOS|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[10]~10_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[10]~10_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~44_q\);

\MEMORIA_DADOS|ram~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~103_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~44_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~76_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~76_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~44_q\,
	combout => \MEMORIA_DADOS|ram~103_combout\);

\BANCO_REGISTRADORES|registrador~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~41_sumout\,
	asdata => \MEMORIA_DADOS|ram~103_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~112_q\);

\BANCO_REGISTRADORES|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~41_sumout\,
	asdata => \MEMORIA_DADOS|ram~103_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~304_q\);

\BANCO_REGISTRADORES|registrador~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~41_sumout\,
	asdata => \MEMORIA_DADOS|ram~103_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~368_q\);

\BANCO_REGISTRADORES|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~41_sumout\,
	asdata => \MEMORIA_DADOS|ram~103_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~48_q\);

\BANCO_REGISTRADORES|registrador~1150\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1150_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~304_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~48_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~368_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~112_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~112_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~304_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~368_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~48_q\,
	combout => \BANCO_REGISTRADORES|registrador~1150_combout\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1146_combout\)))) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~34\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1146_combout\)))) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1146_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\BANCO_REGISTRADORES|registrador~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~33_sumout\,
	asdata => \MEMORIA_DADOS|ram~102_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~113_q\);

\BANCO_REGISTRADORES|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~33_sumout\,
	asdata => \MEMORIA_DADOS|ram~102_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~305_q\);

\BANCO_REGISTRADORES|registrador~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~33_sumout\,
	asdata => \MEMORIA_DADOS|ram~102_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~369_q\);

\ULA|Add0~33_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_wirecell_combout\ = !\ULA|Add0~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~33_sumout\,
	combout => \ULA|Add0~33_wirecell_combout\);

\MEMORIA_DADOS|ram~102_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~102_wirecell_combout\ = !\MEMORIA_DADOS|ram~102_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~102_combout\,
	combout => \MEMORIA_DADOS|ram~102_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~33_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~102_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~49_q\);

\BANCO_REGISTRADORES|registrador~1146\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1146_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~305_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~49_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~369_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~113_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~113_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~305_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~369_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~49_q\,
	combout => \BANCO_REGISTRADORES|registrador~1146_combout\);

\BANCO_REGISTRADORES|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[11]~11_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1146_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1146_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[11]~11_combout\);

\MEMORIA_DADOS|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[11]~11_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[11]~11_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~45_q\);

\MEMORIA_DADOS|ram~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~102_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~45_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~77_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~77_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~45_q\,
	combout => \MEMORIA_DADOS|ram~102_combout\);

\MUX_RAM_ULA|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[8]~8_combout\ = ( \ULA|Add0~37_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~42_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~74_q\))) ) ) # ( !\ULA|Add0~37_sumout\ & ( 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~42_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~74_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~74_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~42_q\,
	datae => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[8]~8_combout\);

\MUX_RAM_ULA|saida_MUX[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[10]~9_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~41_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~103_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~103_combout\,
	datac => \ULA|ALT_INV_Add0~41_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[10]~9_combout\);

\MUX_RAM_ULA|saida_MUX[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[9]~10_combout\ = ( \ULA|Add0~45_sumout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~43_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~75_q\))) ) ) # ( !\ULA|Add0~45_sumout\ & ( 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~43_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~75_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~75_q\,
	datad => \MEMORIA_DADOS|ALT_INV_ram~43_q\,
	datae => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[9]~10_combout\);

\DECOD_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~33_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( !\MUX_RAM_ULA|saida_MUX[8]~8_combout\ $ (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~102_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010110010100011010100000000001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~102_combout\,
	datab => \ULA|ALT_INV_Add0~33_sumout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~8_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[0]~0_combout\);

\DECOD_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[1]~1_combout\ = ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[8]~8_combout\) # ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~33_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( !\MUX_RAM_ULA|saida_MUX[8]~8_combout\ $ 
-- (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~102_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110111110010000000000000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~102_combout\,
	datac => \ULA|ALT_INV_Add0~33_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~8_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[1]~1_combout\);

\DECOD_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[2]~2_combout\ = ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- (\MEMORIA_DADOS|ram~102_combout\)) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~33_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110000000011100100000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~102_combout\,
	datac => \ULA|ALT_INV_Add0~33_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~8_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[2]~2_combout\);

\MUX_RAM_ULA|saida_MUX[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[11]~11_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~102_combout\,
	datac => \ULA|ALT_INV_Add0~33_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[11]~11_combout\);

\DECOD_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & (!\MUX_RAM_ULA|saida_MUX[11]~11_combout\ & (!\MUX_RAM_ULA|saida_MUX[8]~8_combout\ $ (!\MUX_RAM_ULA|saida_MUX[10]~9_combout\)))) # (\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & 
-- ((!\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & (!\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & \MUX_RAM_ULA|saida_MUX[11]~11_combout\)) # (\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & (\MUX_RAM_ULA|saida_MUX[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~8_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[11]~11_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[3]~3_combout\);

\DECOD_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[11]~11_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~37_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~104_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[11]~11_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ 
-- & ((\ULA|Add0~37_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~104_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( !\MUX_RAM_ULA|saida_MUX[11]~11_combout\ ) ) ) # ( 
-- !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~37_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~104_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111101010101010101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[11]~11_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~104_combout\,
	datad => \ULA|ALT_INV_Add0~37_sumout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[4]~4_combout\);

\DECOD_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~33_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~33_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~102_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~102_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~102_combout\,
	datac => \ULA|ALT_INV_Add0~33_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~8_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[5]~5_combout\);

\DECOD_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[6]~6_combout\ = ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( \MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~33_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[8]~8_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~102_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[10]~9_combout\ & ( !\MUX_RAM_ULA|saida_MUX[9]~10_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- ((!\ULA|Add0~33_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~102_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100000110110000000000000000000000000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~102_combout\,
	datac => \ULA|ALT_INV_Add0~33_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[8]~8_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[10]~9_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[6]~6_combout\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1142_combout\)))) ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~54\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1142_combout\)))) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\BANCO_REGISTRADORES|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[12]~12_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1142_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1142_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[12]~12_combout\);

\MEMORIA_DADOS|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[12]~12_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[12]~12_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~46_q\);

\MEMORIA_DADOS|ram~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~106_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~46_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~78_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~78_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~46_q\,
	combout => \MEMORIA_DADOS|ram~106_combout\);

\BANCO_REGISTRADORES|registrador~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~53_sumout\,
	asdata => \MEMORIA_DADOS|ram~106_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~114_q\);

\BANCO_REGISTRADORES|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~53_sumout\,
	asdata => \MEMORIA_DADOS|ram~106_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~306_q\);

\BANCO_REGISTRADORES|registrador~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~53_sumout\,
	asdata => \MEMORIA_DADOS|ram~106_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~370_q\);

\BANCO_REGISTRADORES|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~53_sumout\,
	asdata => \MEMORIA_DADOS|ram~106_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~50_q\);

\BANCO_REGISTRADORES|registrador~1142\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1142_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~306_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~50_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~370_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~114_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~114_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~306_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~370_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~50_q\,
	combout => \BANCO_REGISTRADORES|registrador~1142_combout\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1138_combout\)))) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~62\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1138_combout\)))) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1138_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\BANCO_REGISTRADORES|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[13]~13_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1138_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1138_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[13]~13_combout\);

\MEMORIA_DADOS|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[13]~13_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[13]~13_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~47_q\);

\MEMORIA_DADOS|ram~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~108_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~47_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~79_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~79_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~47_q\,
	combout => \MEMORIA_DADOS|ram~108_combout\);

\BANCO_REGISTRADORES|registrador~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~61_sumout\,
	asdata => \MEMORIA_DADOS|ram~108_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~115_q\);

\BANCO_REGISTRADORES|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~61_sumout\,
	asdata => \MEMORIA_DADOS|ram~108_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~307_q\);

\BANCO_REGISTRADORES|registrador~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~61_sumout\,
	asdata => \MEMORIA_DADOS|ram~108_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~371_q\);

\ULA|Add0~61_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_wirecell_combout\ = !\ULA|Add0~61_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \ULA|Add0~61_wirecell_combout\);

\MEMORIA_DADOS|ram~108_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~108_wirecell_combout\ = !\MEMORIA_DADOS|ram~108_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~108_combout\,
	combout => \MEMORIA_DADOS|ram~108_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~61_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~108_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~51_q\);

\BANCO_REGISTRADORES|registrador~1138\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1138_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~307_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~51_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~371_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~115_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~115_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~307_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~371_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~51_q\,
	combout => \BANCO_REGISTRADORES|registrador~1138_combout\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1134_combout\)))) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~58\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1134_combout\)))) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1134_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\BANCO_REGISTRADORES|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[14]~14_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1134_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1134_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[14]~14_combout\);

\MEMORIA_DADOS|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[14]~14_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[14]~14_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~48_q\);

\MEMORIA_DADOS|ram~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~107_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~48_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~80_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~80_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~48_q\,
	combout => \MEMORIA_DADOS|ram~107_combout\);

\BANCO_REGISTRADORES|registrador~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~57_sumout\,
	asdata => \MEMORIA_DADOS|ram~107_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~116_q\);

\BANCO_REGISTRADORES|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~57_sumout\,
	asdata => \MEMORIA_DADOS|ram~107_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~308_q\);

\BANCO_REGISTRADORES|registrador~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~57_sumout\,
	asdata => \MEMORIA_DADOS|ram~107_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~372_q\);

\BANCO_REGISTRADORES|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~57_sumout\,
	asdata => \MEMORIA_DADOS|ram~107_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~52_q\);

\BANCO_REGISTRADORES|registrador~1134\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1134_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~308_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~52_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~372_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~116_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~116_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~308_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~372_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~52_q\,
	combout => \BANCO_REGISTRADORES|registrador~1134_combout\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1130_combout\)))) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~50\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1130_combout\)))) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1130_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\BANCO_REGISTRADORES|registrador~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~49_sumout\,
	asdata => \MEMORIA_DADOS|ram~105_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~117_q\);

\BANCO_REGISTRADORES|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~49_sumout\,
	asdata => \MEMORIA_DADOS|ram~105_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~309_q\);

\BANCO_REGISTRADORES|registrador~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~49_sumout\,
	asdata => \MEMORIA_DADOS|ram~105_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~373_q\);

\ULA|Add0~49_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_wirecell_combout\ = !\ULA|Add0~49_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~49_sumout\,
	combout => \ULA|Add0~49_wirecell_combout\);

\MEMORIA_DADOS|ram~105_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~105_wirecell_combout\ = !\MEMORIA_DADOS|ram~105_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~105_combout\,
	combout => \MEMORIA_DADOS|ram~105_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~49_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~105_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~53_q\);

\BANCO_REGISTRADORES|registrador~1130\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1130_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~309_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~53_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~373_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~117_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~117_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~309_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~373_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~53_q\,
	combout => \BANCO_REGISTRADORES|registrador~1130_combout\);

\BANCO_REGISTRADORES|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[15]~15_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1130_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1130_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[15]~15_combout\);

\MEMORIA_DADOS|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[15]~15_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[15]~15_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~49_q\);

\MEMORIA_DADOS|ram~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~105_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~49_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~81_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~81_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~49_q\,
	combout => \MEMORIA_DADOS|ram~105_combout\);

\MUX_RAM_ULA|saida_MUX[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[12]~12_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~53_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~106_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~106_combout\,
	datac => \ULA|ALT_INV_Add0~53_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[12]~12_combout\);

\MUX_RAM_ULA|saida_MUX[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[14]~13_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~57_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~107_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~107_combout\,
	datac => \ULA|ALT_INV_Add0~57_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[14]~13_combout\);

\MUX_RAM_ULA|saida_MUX[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[13]~14_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~61_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~108_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~108_combout\,
	datac => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[13]~14_combout\);

\DECOD_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~49_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~105_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( !\MUX_RAM_ULA|saida_MUX[12]~12_combout\ $ 
-- (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~105_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( 
-- (\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~105_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010110010100011010100000000001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~105_combout\,
	datab => \ULA|ALT_INV_Add0~49_sumout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~12_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[0]~0_combout\);

\DECOD_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[1]~1_combout\ = ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[12]~12_combout\) # ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~49_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~105_combout\))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ 
-- & ((\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~105_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( !\MUX_RAM_ULA|saida_MUX[12]~12_combout\ $ 
-- (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~105_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110111110010000000000000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~105_combout\,
	datac => \ULA|ALT_INV_Add0~49_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~12_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[1]~1_combout\);

\DECOD_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[2]~2_combout\ = ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- (\MEMORIA_DADOS|ram~105_combout\)) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~49_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~105_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~105_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110000000011100100000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~105_combout\,
	datac => \ULA|ALT_INV_Add0~49_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~12_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[2]~2_combout\);

\MUX_RAM_ULA|saida_MUX[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[15]~15_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~105_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~105_combout\,
	datac => \ULA|ALT_INV_Add0~49_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[15]~15_combout\);

\DECOD_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & (!\MUX_RAM_ULA|saida_MUX[15]~15_combout\ & (!\MUX_RAM_ULA|saida_MUX[12]~12_combout\ $ (!\MUX_RAM_ULA|saida_MUX[14]~13_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ((!\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & (!\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & \MUX_RAM_ULA|saida_MUX[15]~15_combout\)) # (\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & 
-- (\MUX_RAM_ULA|saida_MUX[14]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~12_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[15]~15_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[3]~3_combout\);

\DECOD_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[15]~15_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~53_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~106_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[15]~15_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~53_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~106_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( 
-- !\MUX_RAM_ULA|saida_MUX[15]~15_combout\ ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~53_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- (\MEMORIA_DADOS|ram~106_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111101010101010101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[15]~15_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~106_combout\,
	datad => \ULA|ALT_INV_Add0~53_sumout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[4]~4_combout\);

\DECOD_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~49_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~105_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~49_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~105_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ 
-- & ((\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~105_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~105_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~105_combout\,
	datac => \ULA|ALT_INV_Add0~49_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~12_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[5]~5_combout\);

\DECOD_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[6]~6_combout\ = ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( \MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~49_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~105_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[12]~12_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~105_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[14]~13_combout\ & ( !\MUX_RAM_ULA|saida_MUX[13]~14_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~49_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~105_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100000110110000000000000000000000000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~105_combout\,
	datac => \ULA|ALT_INV_Add0~49_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[12]~12_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[14]~13_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[13]~14_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[6]~6_combout\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1126_combout\)))) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~70\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1126_combout\)))) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1126_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\BANCO_REGISTRADORES|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[16]~16_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1126_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1126_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[16]~16_combout\);

\MEMORIA_DADOS|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[16]~16_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[16]~16_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~50_q\);

\MEMORIA_DADOS|ram~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~110_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~50_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~82_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~82_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~50_q\,
	combout => \MEMORIA_DADOS|ram~110_combout\);

\BANCO_REGISTRADORES|registrador~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~69_sumout\,
	asdata => \MEMORIA_DADOS|ram~110_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~118_q\);

\BANCO_REGISTRADORES|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~69_sumout\,
	asdata => \MEMORIA_DADOS|ram~110_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~310_q\);

\BANCO_REGISTRADORES|registrador~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~69_sumout\,
	asdata => \MEMORIA_DADOS|ram~110_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~374_q\);

\BANCO_REGISTRADORES|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~69_sumout\,
	asdata => \MEMORIA_DADOS|ram~110_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~54_q\);

\BANCO_REGISTRADORES|registrador~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1126_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~310_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~54_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~374_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~118_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~118_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~310_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~374_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~54_q\,
	combout => \BANCO_REGISTRADORES|registrador~1126_combout\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1122_combout\)))) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~78\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1122_combout\)))) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\BANCO_REGISTRADORES|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[17]~17_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1122_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1122_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[17]~17_combout\);

\MEMORIA_DADOS|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[17]~17_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[17]~17_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~51_q\);

\MEMORIA_DADOS|ram~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~112_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~51_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~83_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~83_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~51_q\,
	combout => \MEMORIA_DADOS|ram~112_combout\);

\BANCO_REGISTRADORES|registrador~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~77_sumout\,
	asdata => \MEMORIA_DADOS|ram~112_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~119_q\);

\BANCO_REGISTRADORES|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~77_sumout\,
	asdata => \MEMORIA_DADOS|ram~112_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~311_q\);

\BANCO_REGISTRADORES|registrador~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~77_sumout\,
	asdata => \MEMORIA_DADOS|ram~112_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~375_q\);

\ULA|Add0~77_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_wirecell_combout\ = !\ULA|Add0~77_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~77_sumout\,
	combout => \ULA|Add0~77_wirecell_combout\);

\MEMORIA_DADOS|ram~112_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~112_wirecell_combout\ = !\MEMORIA_DADOS|ram~112_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~112_combout\,
	combout => \MEMORIA_DADOS|ram~112_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~77_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~112_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~55_q\);

\BANCO_REGISTRADORES|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1122_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~311_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~55_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~375_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~119_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~119_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~311_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~375_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~55_q\,
	combout => \BANCO_REGISTRADORES|registrador~1122_combout\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1118_combout\)))) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~74\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1118_combout\)))) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\BANCO_REGISTRADORES|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[18]~18_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1118_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1118_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[18]~18_combout\);

\MEMORIA_DADOS|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[18]~18_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[18]~18_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~52_q\);

\MEMORIA_DADOS|ram~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~111_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~52_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~84_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~84_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~52_q\,
	combout => \MEMORIA_DADOS|ram~111_combout\);

\BANCO_REGISTRADORES|registrador~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~73_sumout\,
	asdata => \MEMORIA_DADOS|ram~111_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~120_q\);

\BANCO_REGISTRADORES|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~73_sumout\,
	asdata => \MEMORIA_DADOS|ram~111_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~312_q\);

\BANCO_REGISTRADORES|registrador~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~73_sumout\,
	asdata => \MEMORIA_DADOS|ram~111_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~376_q\);

\BANCO_REGISTRADORES|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~73_sumout\,
	asdata => \MEMORIA_DADOS|ram~111_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~56_q\);

\BANCO_REGISTRADORES|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1118_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~312_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~56_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~376_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~120_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~120_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~312_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~376_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~56_q\,
	combout => \BANCO_REGISTRADORES|registrador~1118_combout\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1114_combout\)))) ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~66\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1114_combout\)))) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1114_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\BANCO_REGISTRADORES|registrador~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~65_sumout\,
	asdata => \MEMORIA_DADOS|ram~109_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~121_q\);

\BANCO_REGISTRADORES|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~65_sumout\,
	asdata => \MEMORIA_DADOS|ram~109_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~313_q\);

\BANCO_REGISTRADORES|registrador~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~65_sumout\,
	asdata => \MEMORIA_DADOS|ram~109_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~377_q\);

\ULA|Add0~65_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_wirecell_combout\ = !\ULA|Add0~65_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~65_sumout\,
	combout => \ULA|Add0~65_wirecell_combout\);

\MEMORIA_DADOS|ram~109_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~109_wirecell_combout\ = !\MEMORIA_DADOS|ram~109_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~109_combout\,
	combout => \MEMORIA_DADOS|ram~109_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~65_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~109_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~57_q\);

\BANCO_REGISTRADORES|registrador~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1114_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~313_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~57_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~377_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~121_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~121_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~313_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~377_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~57_q\,
	combout => \BANCO_REGISTRADORES|registrador~1114_combout\);

\BANCO_REGISTRADORES|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[19]~19_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1114_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1114_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[19]~19_combout\);

\MEMORIA_DADOS|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[19]~19_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[19]~19_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~53_q\);

\MEMORIA_DADOS|ram~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~109_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~53_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~85_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~85_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~53_q\,
	combout => \MEMORIA_DADOS|ram~109_combout\);

\MUX_RAM_ULA|saida_MUX[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[16]~16_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~69_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~110_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~110_combout\,
	datac => \ULA|ALT_INV_Add0~69_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[16]~16_combout\);

\MUX_RAM_ULA|saida_MUX[18]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[18]~17_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~73_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~111_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~111_combout\,
	datac => \ULA|ALT_INV_Add0~73_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[18]~17_combout\);

\MUX_RAM_ULA|saida_MUX[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[17]~18_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~77_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~112_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~112_combout\,
	datac => \ULA|ALT_INV_Add0~77_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[17]~18_combout\);

\DECOD_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~65_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~109_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( !\MUX_RAM_ULA|saida_MUX[16]~16_combout\ $ 
-- (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~109_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( 
-- (\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~109_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010110010100011010100000000001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~109_combout\,
	datab => \ULA|ALT_INV_Add0~65_sumout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~16_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[0]~0_combout\);

\DECOD_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[1]~1_combout\ = ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[16]~16_combout\) # ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~65_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~109_combout\))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ 
-- & ((\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~109_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( !\MUX_RAM_ULA|saida_MUX[16]~16_combout\ $ 
-- (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~109_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110111110010000000000000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~109_combout\,
	datac => \ULA|ALT_INV_Add0~65_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~16_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[1]~1_combout\);

\DECOD_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[2]~2_combout\ = ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- (\MEMORIA_DADOS|ram~109_combout\)) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~65_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~109_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~109_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110000000011100100000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~109_combout\,
	datac => \ULA|ALT_INV_Add0~65_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~16_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[2]~2_combout\);

\MUX_RAM_ULA|saida_MUX[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[19]~19_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~109_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~109_combout\,
	datac => \ULA|ALT_INV_Add0~65_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[19]~19_combout\);

\DECOD_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & (!\MUX_RAM_ULA|saida_MUX[19]~19_combout\ & (!\MUX_RAM_ULA|saida_MUX[16]~16_combout\ $ (!\MUX_RAM_ULA|saida_MUX[18]~17_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ((!\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & (!\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & \MUX_RAM_ULA|saida_MUX[19]~19_combout\)) # (\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & 
-- (\MUX_RAM_ULA|saida_MUX[18]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~16_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[19]~19_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[3]~3_combout\);

\DECOD_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[19]~19_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~69_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~110_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[19]~19_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~69_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~110_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( 
-- !\MUX_RAM_ULA|saida_MUX[19]~19_combout\ ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~69_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- (\MEMORIA_DADOS|ram~110_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111101010101010101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[19]~19_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~110_combout\,
	datad => \ULA|ALT_INV_Add0~69_sumout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[4]~4_combout\);

\DECOD_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~65_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~109_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~65_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~109_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ 
-- & ((\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~109_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~109_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~109_combout\,
	datac => \ULA|ALT_INV_Add0~65_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~16_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[5]~5_combout\);

\DECOD_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[6]~6_combout\ = ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( \MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~65_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~109_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[16]~16_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~109_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[18]~17_combout\ & ( !\MUX_RAM_ULA|saida_MUX[17]~18_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~65_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~109_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100000110110000000000000000000000000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~109_combout\,
	datac => \ULA|ALT_INV_Add0~65_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[16]~16_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[18]~17_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[17]~18_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[6]~6_combout\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1110_combout\)))) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~86\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1110_combout\)))) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1110_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\BANCO_REGISTRADORES|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[20]~20_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1110_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1110_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[20]~20_combout\);

\MEMORIA_DADOS|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[20]~20_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[20]~20_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~54_q\);

\MEMORIA_DADOS|ram~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~114_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~54_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~86_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~86_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~54_q\,
	combout => \MEMORIA_DADOS|ram~114_combout\);

\BANCO_REGISTRADORES|registrador~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~85_sumout\,
	asdata => \MEMORIA_DADOS|ram~114_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~122_q\);

\BANCO_REGISTRADORES|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~85_sumout\,
	asdata => \MEMORIA_DADOS|ram~114_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~314_q\);

\BANCO_REGISTRADORES|registrador~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~85_sumout\,
	asdata => \MEMORIA_DADOS|ram~114_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~378_q\);

\BANCO_REGISTRADORES|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~85_sumout\,
	asdata => \MEMORIA_DADOS|ram~114_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~58_q\);

\BANCO_REGISTRADORES|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1110_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~314_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~58_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~378_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~122_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~122_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~314_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~378_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~58_q\,
	combout => \BANCO_REGISTRADORES|registrador~1110_combout\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1106_combout\)))) ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~94\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1106_combout\)))) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\BANCO_REGISTRADORES|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[21]~21_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1106_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1106_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[21]~21_combout\);

\MEMORIA_DADOS|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[21]~21_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[21]~21_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~55_q\);

\MEMORIA_DADOS|ram~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~116_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~55_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~87_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~87_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~55_q\,
	combout => \MEMORIA_DADOS|ram~116_combout\);

\BANCO_REGISTRADORES|registrador~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~93_sumout\,
	asdata => \MEMORIA_DADOS|ram~116_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~123_q\);

\BANCO_REGISTRADORES|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~93_sumout\,
	asdata => \MEMORIA_DADOS|ram~116_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~315_q\);

\BANCO_REGISTRADORES|registrador~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~93_sumout\,
	asdata => \MEMORIA_DADOS|ram~116_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~379_q\);

\ULA|Add0~93_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_wirecell_combout\ = !\ULA|Add0~93_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \ULA|Add0~93_wirecell_combout\);

\MEMORIA_DADOS|ram~116_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~116_wirecell_combout\ = !\MEMORIA_DADOS|ram~116_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~116_combout\,
	combout => \MEMORIA_DADOS|ram~116_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~93_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~116_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~59_q\);

\BANCO_REGISTRADORES|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1106_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~315_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~59_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~379_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~123_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~123_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~315_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~379_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~59_q\,
	combout => \BANCO_REGISTRADORES|registrador~1106_combout\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1102_combout\)))) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~90\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1102_combout\)))) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\BANCO_REGISTRADORES|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[22]~22_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1102_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1102_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[22]~22_combout\);

\MEMORIA_DADOS|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[22]~22_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[22]~22_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~56_q\);

\MEMORIA_DADOS|ram~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~115_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~56_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~88_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~88_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~56_q\,
	combout => \MEMORIA_DADOS|ram~115_combout\);

\BANCO_REGISTRADORES|registrador~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~89_sumout\,
	asdata => \MEMORIA_DADOS|ram~115_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~124_q\);

\BANCO_REGISTRADORES|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~89_sumout\,
	asdata => \MEMORIA_DADOS|ram~115_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~316_q\);

\BANCO_REGISTRADORES|registrador~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~89_sumout\,
	asdata => \MEMORIA_DADOS|ram~115_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~380_q\);

\BANCO_REGISTRADORES|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~89_sumout\,
	asdata => \MEMORIA_DADOS|ram~115_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~60_q\);

\BANCO_REGISTRADORES|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1102_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~316_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~60_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~380_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~124_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~124_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~316_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~380_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~60_q\,
	combout => \BANCO_REGISTRADORES|registrador~1102_combout\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1098_combout\)))) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~82\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1098_combout\)))) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\BANCO_REGISTRADORES|registrador~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~81_sumout\,
	asdata => \MEMORIA_DADOS|ram~113_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~125_q\);

\BANCO_REGISTRADORES|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~81_sumout\,
	asdata => \MEMORIA_DADOS|ram~113_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~317_q\);

\BANCO_REGISTRADORES|registrador~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~81_sumout\,
	asdata => \MEMORIA_DADOS|ram~113_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~381_q\);

\ULA|Add0~81_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_wirecell_combout\ = !\ULA|Add0~81_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~81_sumout\,
	combout => \ULA|Add0~81_wirecell_combout\);

\MEMORIA_DADOS|ram~113_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~113_wirecell_combout\ = !\MEMORIA_DADOS|ram~113_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~113_combout\,
	combout => \MEMORIA_DADOS|ram~113_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~81_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~113_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~61_q\);

\BANCO_REGISTRADORES|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1098_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~317_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~61_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~381_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~125_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~125_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~317_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~381_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~61_q\,
	combout => \BANCO_REGISTRADORES|registrador~1098_combout\);

\BANCO_REGISTRADORES|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[23]~23_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1098_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1098_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[23]~23_combout\);

\MEMORIA_DADOS|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[23]~23_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[23]~23_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~57_q\);

\MEMORIA_DADOS|ram~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~113_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~57_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~89_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~89_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~57_q\,
	combout => \MEMORIA_DADOS|ram~113_combout\);

\MUX_RAM_ULA|saida_MUX[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[20]~20_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~85_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~114_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~114_combout\,
	datac => \ULA|ALT_INV_Add0~85_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[20]~20_combout\);

\MUX_RAM_ULA|saida_MUX[22]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[22]~21_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~89_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~115_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~115_combout\,
	datac => \ULA|ALT_INV_Add0~89_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[22]~21_combout\);

\MUX_RAM_ULA|saida_MUX[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[21]~22_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~93_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~116_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~116_combout\,
	datac => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[21]~22_combout\);

\DECOD_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[0]~0_combout\ = ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~81_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~113_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( !\MUX_RAM_ULA|saida_MUX[20]~20_combout\ $ 
-- (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~113_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( 
-- (\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~113_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001010110010100011010100000000001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~113_combout\,
	datab => \ULA|ALT_INV_Add0~81_sumout\,
	datac => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~20_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[0]~0_combout\);

\DECOD_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[1]~1_combout\ = ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[20]~20_combout\) # ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~81_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~113_combout\))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ 
-- & ((\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~113_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( !\MUX_RAM_ULA|saida_MUX[20]~20_combout\ $ 
-- (((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~113_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110111110010000000000000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~113_combout\,
	datac => \ULA|ALT_INV_Add0~81_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~20_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[1]~1_combout\);

\DECOD_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[2]~2_combout\ = ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- (\MEMORIA_DADOS|ram~113_combout\)) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~81_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~113_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~113_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110000000011100100000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~113_combout\,
	datac => \ULA|ALT_INV_Add0~81_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~20_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[2]~2_combout\);

\MUX_RAM_ULA|saida_MUX[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_RAM_ULA|saida_MUX[23]~23_combout\ = (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~113_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~113_combout\,
	datac => \ULA|ALT_INV_Add0~81_sumout\,
	combout => \MUX_RAM_ULA|saida_MUX[23]~23_combout\);

\DECOD_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[3]~3_combout\ = (!\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & (!\MUX_RAM_ULA|saida_MUX[23]~23_combout\ & (!\MUX_RAM_ULA|saida_MUX[20]~20_combout\ $ (!\MUX_RAM_ULA|saida_MUX[22]~21_combout\)))) # 
-- (\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ((!\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & (!\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & \MUX_RAM_ULA|saida_MUX[23]~23_combout\)) # (\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & 
-- (\MUX_RAM_ULA|saida_MUX[22]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~20_combout\,
	datab => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	datac => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[23]~23_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[3]~3_combout\);

\DECOD_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[4]~4_combout\ = ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[23]~23_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~85_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~114_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[23]~23_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~85_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~114_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( 
-- !\MUX_RAM_ULA|saida_MUX[23]~23_combout\ ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~85_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & 
-- (\MEMORIA_DADOS|ram~114_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111101010101010101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_RAM_ULA|ALT_INV_saida_MUX[23]~23_combout\,
	datab => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~114_combout\,
	datad => \ULA|ALT_INV_Add0~85_sumout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[4]~4_combout\);

\DECOD_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[5]~5_combout\ = ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~81_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~113_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~81_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~113_combout\)) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ 
-- & ((\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~113_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~113_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~113_combout\,
	datac => \ULA|ALT_INV_Add0~81_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~20_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[5]~5_combout\);

\DECOD_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[6]~6_combout\ = ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( \MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~81_sumout\))) # 
-- (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~113_combout\)))) ) ) ) # ( \MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( (!\MUX_RAM_ULA|saida_MUX[20]~20_combout\ & 
-- ((!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (\MEMORIA_DADOS|ram~113_combout\)))) ) ) ) # ( !\MUX_RAM_ULA|saida_MUX[22]~21_combout\ & ( !\MUX_RAM_ULA|saida_MUX[21]~22_combout\ & ( 
-- (!\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & ((!\ULA|Add0~81_sumout\))) # (\UNIDADE_DE_CONTROLE|Mux3~0_combout\ & (!\MEMORIA_DADOS|ram~113_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100000110110000000000000000000000000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UNIDADE_DE_CONTROLE|ALT_INV_Mux3~0_combout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~113_combout\,
	datac => \ULA|ALT_INV_Add0~81_sumout\,
	datad => \MUX_RAM_ULA|ALT_INV_saida_MUX[20]~20_combout\,
	datae => \MUX_RAM_ULA|ALT_INV_saida_MUX[22]~21_combout\,
	dataf => \MUX_RAM_ULA|ALT_INV_saida_MUX[21]~22_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[6]~6_combout\);

\BANCO_REGISTRADORES|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[24]~24_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1094_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[24]~24_combout\);

\MEMORIA_DADOS|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[24]~24_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[24]~24_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~58_q\);

\MEMORIA_DADOS|ram~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~124_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~58_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~90_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~90_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~58_q\,
	combout => \MEMORIA_DADOS|ram~124_combout\);

\BANCO_REGISTRADORES|registrador~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~97_sumout\,
	asdata => \MEMORIA_DADOS|ram~124_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~126_q\);

\BANCO_REGISTRADORES|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~97_sumout\,
	asdata => \MEMORIA_DADOS|ram~124_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~318_q\);

\BANCO_REGISTRADORES|registrador~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~97_sumout\,
	asdata => \MEMORIA_DADOS|ram~124_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~382_q\);

\BANCO_REGISTRADORES|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~97_sumout\,
	asdata => \MEMORIA_DADOS|ram~124_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~62_q\);

\BANCO_REGISTRADORES|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1094_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~318_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~62_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~382_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~126_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~126_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~318_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~382_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~62_q\,
	combout => \BANCO_REGISTRADORES|registrador~1094_combout\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1094_combout\)))) ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~98\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1094_combout\)))) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1094_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\BANCO_REGISTRADORES|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[25]~25_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1090_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[25]~25_combout\);

\MEMORIA_DADOS|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[25]~25_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[25]~25_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~59_q\);

\MEMORIA_DADOS|ram~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~125_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~59_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~91_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~91_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~59_q\,
	combout => \MEMORIA_DADOS|ram~125_combout\);

\BANCO_REGISTRADORES|registrador~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~101_sumout\,
	asdata => \MEMORIA_DADOS|ram~125_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~127_q\);

\BANCO_REGISTRADORES|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~101_sumout\,
	asdata => \MEMORIA_DADOS|ram~125_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~319_q\);

\BANCO_REGISTRADORES|registrador~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~101_sumout\,
	asdata => \MEMORIA_DADOS|ram~125_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~383_q\);

\ULA|Add0~101_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_wirecell_combout\ = !\ULA|Add0~101_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~101_sumout\,
	combout => \ULA|Add0~101_wirecell_combout\);

\MEMORIA_DADOS|ram~125_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~125_wirecell_combout\ = !\MEMORIA_DADOS|ram~125_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~125_combout\,
	combout => \MEMORIA_DADOS|ram~125_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~101_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~125_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~63_q\);

\BANCO_REGISTRADORES|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1090_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~319_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~63_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~383_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~127_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~127_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~319_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~383_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~63_q\,
	combout => \BANCO_REGISTRADORES|registrador~1090_combout\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1090_combout\)))) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1090_combout\)))) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1090_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\BANCO_REGISTRADORES|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[26]~26_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1086_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[26]~26_combout\);

\MEMORIA_DADOS|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[26]~26_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[26]~26_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~60_q\);

\MEMORIA_DADOS|ram~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~126_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~60_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~92_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~92_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~60_q\,
	combout => \MEMORIA_DADOS|ram~126_combout\);

\BANCO_REGISTRADORES|registrador~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~105_sumout\,
	asdata => \MEMORIA_DADOS|ram~126_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~128_q\);

\BANCO_REGISTRADORES|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~105_sumout\,
	asdata => \MEMORIA_DADOS|ram~126_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~320_q\);

\BANCO_REGISTRADORES|registrador~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~105_sumout\,
	asdata => \MEMORIA_DADOS|ram~126_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~384_q\);

\BANCO_REGISTRADORES|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~105_sumout\,
	asdata => \MEMORIA_DADOS|ram~126_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~64_q\);

\BANCO_REGISTRADORES|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1086_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~320_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~64_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~384_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~128_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~128_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~320_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~384_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~64_q\,
	combout => \BANCO_REGISTRADORES|registrador~1086_combout\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1086_combout\)))) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1086_combout\)))) ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1086_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\BANCO_REGISTRADORES|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[27]~27_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1082_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[27]~27_combout\);

\MEMORIA_DADOS|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[27]~27_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[27]~27_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~61_q\);

\MEMORIA_DADOS|ram~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~127_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~61_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~93_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~93_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~61_q\,
	combout => \MEMORIA_DADOS|ram~127_combout\);

\BANCO_REGISTRADORES|registrador~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~109_sumout\,
	asdata => \MEMORIA_DADOS|ram~127_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~129_q\);

\BANCO_REGISTRADORES|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~109_sumout\,
	asdata => \MEMORIA_DADOS|ram~127_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~321_q\);

\BANCO_REGISTRADORES|registrador~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~109_sumout\,
	asdata => \MEMORIA_DADOS|ram~127_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~385_q\);

\ULA|Add0~109_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_wirecell_combout\ = !\ULA|Add0~109_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~109_sumout\,
	combout => \ULA|Add0~109_wirecell_combout\);

\MEMORIA_DADOS|ram~127_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~127_wirecell_combout\ = !\MEMORIA_DADOS|ram~127_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~127_combout\,
	combout => \MEMORIA_DADOS|ram~127_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~109_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~127_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~65_q\);

\BANCO_REGISTRADORES|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1082_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~321_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~65_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~385_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~129_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~129_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~321_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~385_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~65_q\,
	combout => \BANCO_REGISTRADORES|registrador~1082_combout\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1082_combout\)))) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1082_combout\)))) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1082_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\BANCO_REGISTRADORES|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[28]~28_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1078_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[28]~28_combout\);

\MEMORIA_DADOS|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[28]~28_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~94_q\);

\MEMORIA_DADOS|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[28]~28_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~62_q\);

\MEMORIA_DADOS|ram~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~128_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~62_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~94_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~94_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~62_q\,
	combout => \MEMORIA_DADOS|ram~128_combout\);

\BANCO_REGISTRADORES|registrador~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~113_sumout\,
	asdata => \MEMORIA_DADOS|ram~128_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~130_q\);

\BANCO_REGISTRADORES|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~113_sumout\,
	asdata => \MEMORIA_DADOS|ram~128_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~322_q\);

\BANCO_REGISTRADORES|registrador~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~113_sumout\,
	asdata => \MEMORIA_DADOS|ram~128_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~386_q\);

\BANCO_REGISTRADORES|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~113_sumout\,
	asdata => \MEMORIA_DADOS|ram~128_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~66_q\);

\BANCO_REGISTRADORES|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1078_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~322_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~66_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~386_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~130_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~130_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~322_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~386_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~66_q\,
	combout => \BANCO_REGISTRADORES|registrador~1078_combout\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1078_combout\)))) ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1078_combout\)))) ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\BANCO_REGISTRADORES|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[29]~29_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1074_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[29]~29_combout\);

\MEMORIA_DADOS|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[29]~29_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[29]~29_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~63_q\);

\MEMORIA_DADOS|ram~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~129_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~63_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~95_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~95_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~63_q\,
	combout => \MEMORIA_DADOS|ram~129_combout\);

\BANCO_REGISTRADORES|registrador~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~117_sumout\,
	asdata => \MEMORIA_DADOS|ram~129_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~131_q\);

\BANCO_REGISTRADORES|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~117_sumout\,
	asdata => \MEMORIA_DADOS|ram~129_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~323_q\);

\BANCO_REGISTRADORES|registrador~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~117_sumout\,
	asdata => \MEMORIA_DADOS|ram~129_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~387_q\);

\ULA|Add0~117_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_wirecell_combout\ = !\ULA|Add0~117_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~117_sumout\,
	combout => \ULA|Add0~117_wirecell_combout\);

\MEMORIA_DADOS|ram~129_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~129_wirecell_combout\ = !\MEMORIA_DADOS|ram~129_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~129_combout\,
	combout => \MEMORIA_DADOS|ram~129_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~117_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~129_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~67_q\);

\BANCO_REGISTRADORES|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1074_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~323_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~67_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~387_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~131_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~131_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~323_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~387_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~67_q\,
	combout => \BANCO_REGISTRADORES|registrador~1074_combout\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1074_combout\)))) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1074_combout\)))) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1074_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\BANCO_REGISTRADORES|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[30]~30_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1070_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[30]~30_combout\);

\MEMORIA_DADOS|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[30]~30_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[30]~30_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~64_q\);

\MEMORIA_DADOS|ram~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~130_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~64_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~96_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~96_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~64_q\,
	combout => \MEMORIA_DADOS|ram~130_combout\);

\BANCO_REGISTRADORES|registrador~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~121_sumout\,
	asdata => \MEMORIA_DADOS|ram~130_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~132_q\);

\BANCO_REGISTRADORES|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~121_sumout\,
	asdata => \MEMORIA_DADOS|ram~130_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~324_q\);

\BANCO_REGISTRADORES|registrador~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~121_sumout\,
	asdata => \MEMORIA_DADOS|ram~130_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~388_q\);

\BANCO_REGISTRADORES|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~121_sumout\,
	asdata => \MEMORIA_DADOS|ram~130_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~68_q\);

\BANCO_REGISTRADORES|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1070_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~324_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~68_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~388_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~132_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000100000001000000010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~132_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~324_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~388_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~68_q\,
	combout => \BANCO_REGISTRADORES|registrador~1070_combout\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1070_combout\)))) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1070_combout\)))) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1070_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\BANCO_REGISTRADORES|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|saidaB[31]~31_combout\ = (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1066_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\,
	combout => \BANCO_REGISTRADORES|saidaB[31]~31_combout\);

\MEMORIA_DADOS|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \BANCO_REGISTRADORES|saidaB[31]~31_combout\,
	ena => \MEMORIA_DADOS|ram~117_combout\,
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
	d => \BANCO_REGISTRADORES|saidaB[31]~31_combout\,
	ena => \MEMORIA_DADOS|ram~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEMORIA_DADOS|ram~65_q\);

\MEMORIA_DADOS|ram~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~131_combout\ = (!\ULA|Add0~1_sumout\ & ((\MEMORIA_DADOS|ram~65_q\))) # (\ULA|Add0~1_sumout\ & (\MEMORIA_DADOS|ram~97_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \MEMORIA_DADOS|ALT_INV_ram~97_q\,
	datac => \MEMORIA_DADOS|ALT_INV_ram~65_q\,
	combout => \MEMORIA_DADOS|ram~131_combout\);

\BANCO_REGISTRADORES|registrador~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~125_sumout\,
	asdata => \MEMORIA_DADOS|ram~131_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~133_q\);

\BANCO_REGISTRADORES|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~125_sumout\,
	asdata => \MEMORIA_DADOS|ram~131_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~325_q\);

\BANCO_REGISTRADORES|registrador~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~125_sumout\,
	asdata => \MEMORIA_DADOS|ram~131_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~389_q\);

\ULA|Add0~125_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_wirecell_combout\ = !\ULA|Add0~125_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~125_sumout\,
	combout => \ULA|Add0~125_wirecell_combout\);

\MEMORIA_DADOS|ram~131_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEMORIA_DADOS|ram~131_wirecell_combout\ = !\MEMORIA_DADOS|ram~131_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_DADOS|ALT_INV_ram~131_combout\,
	combout => \MEMORIA_DADOS|ram~131_wirecell_combout\);

\BANCO_REGISTRADORES|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \ULA|Add0~125_wirecell_combout\,
	asdata => \MEMORIA_DADOS|ram~131_wirecell_combout\,
	sload => \UNIDADE_DE_CONTROLE|Mux3~0_combout\,
	ena => \BANCO_REGISTRADORES|registrador~1065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_REGISTRADORES|registrador~69_q\);

\BANCO_REGISTRADORES|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCO_REGISTRADORES|registrador~1066_combout\ = ( !\MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & (((\BANCO_REGISTRADORES|registrador~325_q\)))) # 
-- (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (!\BANCO_REGISTRADORES|registrador~69_q\)))) ) ) # ( \MEMORIA_INSTRUCAO|memROM~3_combout\ & ( (!\MEMORIA_INSTRUCAO|memROM~2_combout\ & ((!\MEMORIA_INSTRUCAO|memROM~1_combout\ & 
-- (((\BANCO_REGISTRADORES|registrador~389_q\)))) # (\MEMORIA_INSTRUCAO|memROM~1_combout\ & (\BANCO_REGISTRADORES|registrador~133_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000010101000000000100000001000100000101010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~1_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_registrador~133_q\,
	datad => \BANCO_REGISTRADORES|ALT_INV_registrador~325_q\,
	datae => \MEMORIA_INSTRUCAO|ALT_INV_memROM~3_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~389_q\,
	datag => \BANCO_REGISTRADORES|ALT_INV_registrador~69_q\,
	combout => \BANCO_REGISTRADORES|registrador~1066_combout\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( GND ) + ( !\MEMORIA_INSTRUCAO|memROM~0_combout\ $ (((!\MEMORIA_INSTRUCAO|memROM~2_combout\ & (!\BANCO_REGISTRADORES|Equal0~0_combout\ & \BANCO_REGISTRADORES|registrador~1066_combout\)))) ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA_INSTRUCAO|ALT_INV_memROM~0_combout\,
	datab => \MEMORIA_INSTRUCAO|ALT_INV_memROM~2_combout\,
	datac => \BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \BANCO_REGISTRADORES|ALT_INV_registrador~1066_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\SOMADOR|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~21_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \SOMADOR|Add0~2\ ))
-- \SOMADOR|Add0~22\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \SOMADOR|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \SOMADOR|Add0~2\,
	sumout => \SOMADOR|Add0~21_sumout\,
	cout => \SOMADOR|Add0~22\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~21_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\SOMADOR|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~25_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \SOMADOR|Add0~22\ ))
-- \SOMADOR|Add0~26\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \SOMADOR|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \SOMADOR|Add0~22\,
	sumout => \SOMADOR|Add0~25_sumout\,
	cout => \SOMADOR|Add0~26\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~25_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\SOMADOR|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~29_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \SOMADOR|Add0~26\ ))
-- \SOMADOR|Add0~30\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \SOMADOR|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \SOMADOR|Add0~26\,
	sumout => \SOMADOR|Add0~29_sumout\,
	cout => \SOMADOR|Add0~30\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~29_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\SOMADOR|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~33_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \SOMADOR|Add0~30\ ))
-- \SOMADOR|Add0~34\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \SOMADOR|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \SOMADOR|Add0~30\,
	sumout => \SOMADOR|Add0~33_sumout\,
	cout => \SOMADOR|Add0~34\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~33_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\SOMADOR|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~37_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \SOMADOR|Add0~34\ ))
-- \SOMADOR|Add0~38\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \SOMADOR|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \SOMADOR|Add0~34\,
	sumout => \SOMADOR|Add0~37_sumout\,
	cout => \SOMADOR|Add0~38\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~37_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\SOMADOR|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~41_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \SOMADOR|Add0~38\ ))
-- \SOMADOR|Add0~42\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \SOMADOR|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \SOMADOR|Add0~38\,
	sumout => \SOMADOR|Add0~41_sumout\,
	cout => \SOMADOR|Add0~42\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~41_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\SOMADOR|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~45_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \SOMADOR|Add0~42\ ))
-- \SOMADOR|Add0~46\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \SOMADOR|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \SOMADOR|Add0~42\,
	sumout => \SOMADOR|Add0~45_sumout\,
	cout => \SOMADOR|Add0~46\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~45_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\SOMADOR|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~49_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \SOMADOR|Add0~46\ ))
-- \SOMADOR|Add0~50\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \SOMADOR|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \SOMADOR|Add0~46\,
	sumout => \SOMADOR|Add0~49_sumout\,
	cout => \SOMADOR|Add0~50\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~49_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\SOMADOR|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~53_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \SOMADOR|Add0~50\ ))
-- \SOMADOR|Add0~54\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \SOMADOR|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \SOMADOR|Add0~50\,
	sumout => \SOMADOR|Add0~53_sumout\,
	cout => \SOMADOR|Add0~54\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~53_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\SOMADOR|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~57_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \SOMADOR|Add0~54\ ))
-- \SOMADOR|Add0~58\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \SOMADOR|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \SOMADOR|Add0~54\,
	sumout => \SOMADOR|Add0~57_sumout\,
	cout => \SOMADOR|Add0~58\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~57_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\SOMADOR|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~61_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \SOMADOR|Add0~58\ ))
-- \SOMADOR|Add0~62\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \SOMADOR|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \SOMADOR|Add0~58\,
	sumout => \SOMADOR|Add0~61_sumout\,
	cout => \SOMADOR|Add0~62\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~61_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\SOMADOR|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~65_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \SOMADOR|Add0~62\ ))
-- \SOMADOR|Add0~66\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \SOMADOR|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \SOMADOR|Add0~62\,
	sumout => \SOMADOR|Add0~65_sumout\,
	cout => \SOMADOR|Add0~66\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~65_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\SOMADOR|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~69_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \SOMADOR|Add0~66\ ))
-- \SOMADOR|Add0~70\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \SOMADOR|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \SOMADOR|Add0~66\,
	sumout => \SOMADOR|Add0~69_sumout\,
	cout => \SOMADOR|Add0~70\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~69_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\SOMADOR|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~73_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \SOMADOR|Add0~70\ ))
-- \SOMADOR|Add0~74\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \SOMADOR|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \SOMADOR|Add0~70\,
	sumout => \SOMADOR|Add0~73_sumout\,
	cout => \SOMADOR|Add0~74\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~73_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\SOMADOR|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~77_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \SOMADOR|Add0~74\ ))
-- \SOMADOR|Add0~78\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \SOMADOR|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \SOMADOR|Add0~74\,
	sumout => \SOMADOR|Add0~77_sumout\,
	cout => \SOMADOR|Add0~78\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~77_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\SOMADOR|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~81_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \SOMADOR|Add0~78\ ))
-- \SOMADOR|Add0~82\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \SOMADOR|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \SOMADOR|Add0~78\,
	sumout => \SOMADOR|Add0~81_sumout\,
	cout => \SOMADOR|Add0~82\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~81_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\SOMADOR|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~85_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \SOMADOR|Add0~82\ ))
-- \SOMADOR|Add0~86\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \SOMADOR|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \SOMADOR|Add0~82\,
	sumout => \SOMADOR|Add0~85_sumout\,
	cout => \SOMADOR|Add0~86\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~85_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\SOMADOR|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~89_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \SOMADOR|Add0~86\ ))
-- \SOMADOR|Add0~90\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \SOMADOR|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \SOMADOR|Add0~86\,
	sumout => \SOMADOR|Add0~89_sumout\,
	cout => \SOMADOR|Add0~90\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~89_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\SOMADOR|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~93_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \SOMADOR|Add0~90\ ))
-- \SOMADOR|Add0~94\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \SOMADOR|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \SOMADOR|Add0~90\,
	sumout => \SOMADOR|Add0~93_sumout\,
	cout => \SOMADOR|Add0~94\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~93_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\SOMADOR|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~97_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \SOMADOR|Add0~94\ ))
-- \SOMADOR|Add0~98\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \SOMADOR|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \SOMADOR|Add0~94\,
	sumout => \SOMADOR|Add0~97_sumout\,
	cout => \SOMADOR|Add0~98\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~97_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\SOMADOR|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~101_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \SOMADOR|Add0~98\ ))
-- \SOMADOR|Add0~102\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \SOMADOR|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \SOMADOR|Add0~98\,
	sumout => \SOMADOR|Add0~101_sumout\,
	cout => \SOMADOR|Add0~102\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~101_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\SOMADOR|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~105_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \SOMADOR|Add0~102\ ))
-- \SOMADOR|Add0~106\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \SOMADOR|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \SOMADOR|Add0~102\,
	sumout => \SOMADOR|Add0~105_sumout\,
	cout => \SOMADOR|Add0~106\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~105_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\SOMADOR|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~109_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \SOMADOR|Add0~106\ ))
-- \SOMADOR|Add0~110\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \SOMADOR|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \SOMADOR|Add0~106\,
	sumout => \SOMADOR|Add0~109_sumout\,
	cout => \SOMADOR|Add0~110\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~109_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\SOMADOR|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMADOR|Add0~113_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \SOMADOR|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \SOMADOR|Add0~110\,
	sumout => \SOMADOR|Add0~113_sumout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSub0|saida~combout\,
	d => \SOMADOR|Add0~113_sumout\,
	clrn => \detectorSub1|ALT_INV_saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

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
END structure;


