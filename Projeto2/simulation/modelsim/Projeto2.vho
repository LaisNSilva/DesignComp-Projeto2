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

-- DATE "12/09/2021 20:03:29"

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
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END Projeto2;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \IF_ID|DOUT[34]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|DOUT[186]~feeder_combout\ : std_logic;
SIGNAL \INST_FETCH|SOMADOR|Add0~10\ : std_logic;
SIGNAL \INST_FETCH|SOMADOR|Add0~13_sumout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~15_combout\ : std_logic;
SIGNAL \IF_ID|DOUT[46]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|DOUT[189]~feeder_combout\ : std_logic;
SIGNAL \INST_FETCH|SOMADOR|Add0~14\ : std_logic;
SIGNAL \INST_FETCH|SOMADOR|Add0~18\ : std_logic;
SIGNAL \INST_FETCH|SOMADOR|Add0~2\ : std_logic;
SIGNAL \INST_FETCH|SOMADOR|Add0~5_sumout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~14_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[188]~feeder_combout\ : std_logic;
SIGNAL \INST_FETCH|SOMADOR|Add0~1_sumout\ : std_logic;
SIGNAL \ID_EX|DOUT[188]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_FETCH|SOMADOR|Add0~17_sumout\ : std_logic;
SIGNAL \ID_EX|DOUT[187]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~0_combout\ : std_logic;
SIGNAL \IF_ID|DOUT[63]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|DOUT[149]~0_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[184]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~1_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~19_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~18_combout\ : std_logic;
SIGNAL \IF_ID|DOUT[60]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[186]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~2_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[187]~feeder_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~16_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[185]~feeder_combout\ : std_logic;
SIGNAL \INST_FETCH|SOMADOR|Add0~9_sumout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~12_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[184]~feeder_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~13_combout\ : std_logic;
SIGNAL \IF_ID|DOUT[33]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~4_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~17_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~8_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~7_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~9_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~0_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~1_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[1]~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~5_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~6_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[181]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~11_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~3_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~5_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~4_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~8_combout\ : std_logic;
SIGNAL \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~6_combout\ : std_logic;
SIGNAL \INST_DECODE|MUX_BR|Equal2~0_combout\ : std_logic;
SIGNAL \INST_DECODE|MUX_BR|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~3_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_DE_CONTROLE|Equal11~0_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~7_combout\ : std_logic;
SIGNAL \INST_DECODE|MUX_BR|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador~39_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~9_combout\ : std_logic;
SIGNAL \INST_DECODE|MUX_BR|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|memROM~10_combout\ : std_logic;
SIGNAL \INST_DECODE|MUX_BR|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~0_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~1_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador~38_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador~41_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador~42_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[65]~15_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[13]~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[17]~1_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[21]~4_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[25]~5_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[29]~6_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[33]~7_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[37]~8_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[41]~9_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[57]~13_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[73]~15_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[31]~31_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[73]~17_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[31]~31_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[30]~30_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[28]~28_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[69]~16_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[29]~29_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B29|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[26]~26_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[61]~14_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[25]~25_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[61]~12_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[25]~25_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B24|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[22]~22_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[57]~11_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[23]~23_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[53]~12_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[21]~21_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[20]~20_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[49]~11_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[19]~19_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[18]~18_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[45]~8_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[17]~17_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[16]~16_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[41]~7_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[15]~15_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[83]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[14]~14_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[115]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~1_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[37]~6_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[13]~13_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B14|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[12]~12_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[10]~10_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[29]~4_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[9]~9_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[110]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[33]~5_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[11]~11_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[25]~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[7]~7_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[8]~8_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[21]~2_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[5]~5_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[6]~6_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[2]~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[4]~4_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[105]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[17]~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[3]~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[13]~2_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[1]~1_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[101]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B30|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B31|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MEM_WB|DOUT[146]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[28]~28_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[129]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B28|SOMA_SUB|saida_xor~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[26]~26_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[127]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B25|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B26|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[24]~24_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B25|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[24]~24_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B24|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MEM_WB|DOUT[139]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[23]~23_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[22]~22_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[53]~10_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[21]~21_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[20]~20_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[49]~9_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[19]~19_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[18]~18_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[45]~10_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[17]~17_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[118]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[16]~16_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[15]~15_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[14]~14_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \MEM_WB|DOUT[129]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[13]~13_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \MEM_WB|DOUT[128]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[12]~12_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[113]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \MEM_WB|DOUT[127]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[11]~11_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B10|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[10]~10_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[9]~9_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[108]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[8]~8_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[7]~7_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[6]~6_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[5]~5_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[4]~4_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B2|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[3]~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[2]~2_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[103]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[1]~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[27]~27_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B27|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[65]~13_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[27]~27_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B28|SOMA_SUB|C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B29|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[69]~14_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaA[29]~29_combout\ : std_logic;
SIGNAL \ID_EX|DOUT[130]~DUPLICATE_q\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B30|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[71]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[30]~30_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|saidaB[0]~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECOD_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
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
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \IF_ID|DOUT\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ID_EX|DOUT\ : std_logic_vector(213 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \MEM_WB|DOUT\ : std_logic_vector(146 DOWNTO 0);
SIGNAL \EX_MEM|DOUT\ : std_logic_vector(178 DOWNTO 0);
SIGNAL \MEM_WB|ALT_INV_DOUT[146]~DUPLICATE_q\ : std_logic;
SIGNAL \MEM_WB|ALT_INV_DOUT[128]~DUPLICATE_q\ : std_logic;
SIGNAL \IF_ID|ALT_INV_DOUT[34]~DUPLICATE_q\ : std_logic;
SIGNAL \IF_ID|ALT_INV_DOUT[46]~DUPLICATE_q\ : std_logic;
SIGNAL \IF_ID|ALT_INV_DOUT[33]~DUPLICATE_q\ : std_logic;
SIGNAL \IF_ID|ALT_INV_DOUT[60]~DUPLICATE_q\ : std_logic;
SIGNAL \IF_ID|ALT_INV_DOUT[63]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[130]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[129]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[127]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[118]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[83]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[115]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[113]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[110]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[108]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[105]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[103]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[101]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[0]~8_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[0]~7_combout\ : std_logic;
SIGNAL \EX_MEM|ALT_INV_DOUT\ : std_logic_vector(154 DOWNTO 154);
SIGNAL \MEM_WB|ALT_INV_DOUT\ : std_logic_vector(146 DOWNTO 116);
SIGNAL \INST_FETCH|MEMORIA_INSTRUCAO|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_DE_CONTROLE|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_DE_CONTROLE|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \INST_DECODE|MUX_BR|ALT_INV_saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \IF_ID|ALT_INV_DOUT\ : std_logic_vector(63 DOWNTO 32);
SIGNAL \INST_DECODE|MUX_BR|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_DE_CONTROLE|ALT_INV_Saida[7]~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\ : std_logic_vector(74 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\ : std_logic_vector(74 DOWNTO 0);
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~42_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~41_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~39_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~38_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~5_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl~4_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[0]~3_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl~1_combout\ : std_logic;
SIGNAL \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B28|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B28|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B25|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~4_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~4_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B10|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~4_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~4_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~4_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B2|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ID_EX|ALT_INV_DOUT\ : std_logic_vector(189 DOWNTO 69);
SIGNAL \EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_C_out~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B26|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B19|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~1_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B9|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B6|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_saida_xor~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B1|SOMA_SUB|ALT_INV_C_out~combout\ : std_logic;
SIGNAL \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a16\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a17\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a18\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a19\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a20\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a21\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a22\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a23\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a24\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a25\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a26\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a27\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a28\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a29\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a30\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a31\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a11\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a12\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a13\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a14\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a15\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a16\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a17\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a18\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a19\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a20\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a21\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a22\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a23\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a24\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a25\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a26\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a27\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a28\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a29\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a30\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a31\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \MEM_WB|DOUT\(146) & \MEM_WB|DOUT\(145) & \MEM_WB|DOUT\(144) & \MEM_WB|DOUT\(143) & \MEM_WB|DOUT\(142) & 
\MEM_WB|DOUT\(141) & \MEM_WB|DOUT\(140) & \MEM_WB|DOUT[139]~DUPLICATE_q\ & \MEM_WB|DOUT\(138) & \MEM_WB|DOUT\(137) & \MEM_WB|DOUT\(136) & \MEM_WB|DOUT\(135) & \MEM_WB|DOUT\(134) & \MEM_WB|DOUT\(133) & \MEM_WB|DOUT\(132) & \MEM_WB|DOUT\(131) & 
\MEM_WB|DOUT\(130) & \MEM_WB|DOUT[129]~DUPLICATE_q\ & \MEM_WB|DOUT[128]~DUPLICATE_q\ & \MEM_WB|DOUT\(127) & \MEM_WB|DOUT\(126) & \MEM_WB|DOUT\(125) & \MEM_WB|DOUT\(124) & \MEM_WB|DOUT\(123) & \MEM_WB|DOUT\(122) & \MEM_WB|DOUT\(121) & \MEM_WB|DOUT\(120) & 
\MEM_WB|DOUT\(119) & \MEM_WB|DOUT\(118) & \MEM_WB|DOUT\(117) & \MEM_WB|DOUT\(116) & \MEM_WB|DOUT\(115));

\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ & \INST_DECODE|MUX_BR|saida_MUX[3]~4_combout\ & \INST_DECODE|MUX_BR|saida_MUX[2]~3_combout\ & 
\INST_DECODE|MUX_BR|saida_MUX[1]~2_combout\ & \INST_DECODE|MUX_BR|saida_MUX[0]~1_combout\);

\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\INST_FETCH|MEMORIA_INSTRUCAO|memROM~4_combout\ & \INST_FETCH|MEMORIA_INSTRUCAO|memROM~5_combout\ & \INST_FETCH|MEMORIA_INSTRUCAO|memROM~11_combout\ & 
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~4_combout\ & \INST_FETCH|MEMORIA_INSTRUCAO|memROM~3_combout\);

\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a1\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a2\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a3\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a4\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a5\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a6\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a7\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a8\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a9\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a10\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a11\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a12\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a13\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a14\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a15\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a16\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a17\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a18\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a19\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a20\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a21\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a22\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a23\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a24\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a25\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a26\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a27\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a28\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a29\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a30\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a31\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \MEM_WB|DOUT[146]~DUPLICATE_q\ & \MEM_WB|DOUT\(145) & \MEM_WB|DOUT\(144) & \MEM_WB|DOUT\(143) & 
\MEM_WB|DOUT\(142) & \MEM_WB|DOUT\(141) & \MEM_WB|DOUT\(140) & \MEM_WB|DOUT[139]~DUPLICATE_q\ & \MEM_WB|DOUT\(138) & \MEM_WB|DOUT\(137) & \MEM_WB|DOUT\(136) & \MEM_WB|DOUT\(135) & \MEM_WB|DOUT\(134) & \MEM_WB|DOUT\(133) & \MEM_WB|DOUT\(132) & 
\MEM_WB|DOUT\(131) & \MEM_WB|DOUT\(130) & \MEM_WB|DOUT[129]~DUPLICATE_q\ & \MEM_WB|DOUT[128]~DUPLICATE_q\ & \MEM_WB|DOUT[127]~DUPLICATE_q\ & \MEM_WB|DOUT\(126) & \MEM_WB|DOUT\(125) & \MEM_WB|DOUT\(124) & \MEM_WB|DOUT\(123) & \MEM_WB|DOUT\(122) & 
\MEM_WB|DOUT\(121) & \MEM_WB|DOUT\(120) & \MEM_WB|DOUT\(119) & \MEM_WB|DOUT\(118) & \MEM_WB|DOUT\(117) & \MEM_WB|DOUT\(116) & \MEM_WB|DOUT\(115));

\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ & \INST_DECODE|MUX_BR|saida_MUX[3]~4_combout\ & \INST_DECODE|MUX_BR|saida_MUX[2]~3_combout\ & 
\INST_DECODE|MUX_BR|saida_MUX[1]~2_combout\ & \INST_DECODE|MUX_BR|saida_MUX[0]~1_combout\);

\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \INST_FETCH|MEMORIA_INSTRUCAO|memROM~7_combout\ & \INST_FETCH|MEMORIA_INSTRUCAO|memROM~6_combout\ & 
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~9_combout\ & \INST_FETCH|MEMORIA_INSTRUCAO|memROM~10_combout\);

\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a1\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a2\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a3\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a4\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a5\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a6\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a7\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a8\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a9\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a10\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a11\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a12\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a13\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a14\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a15\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a16\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a17\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a18\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a19\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a20\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a21\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a22\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a23\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a24\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a25\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a26\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a27\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a28\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a29\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a30\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a31\ <= \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);
\MEM_WB|ALT_INV_DOUT[146]~DUPLICATE_q\ <= NOT \MEM_WB|DOUT[146]~DUPLICATE_q\;
\MEM_WB|ALT_INV_DOUT[128]~DUPLICATE_q\ <= NOT \MEM_WB|DOUT[128]~DUPLICATE_q\;
\IF_ID|ALT_INV_DOUT[34]~DUPLICATE_q\ <= NOT \IF_ID|DOUT[34]~DUPLICATE_q\;
\IF_ID|ALT_INV_DOUT[46]~DUPLICATE_q\ <= NOT \IF_ID|DOUT[46]~DUPLICATE_q\;
\IF_ID|ALT_INV_DOUT[33]~DUPLICATE_q\ <= NOT \IF_ID|DOUT[33]~DUPLICATE_q\;
\IF_ID|ALT_INV_DOUT[60]~DUPLICATE_q\ <= NOT \IF_ID|DOUT[60]~DUPLICATE_q\;
\IF_ID|ALT_INV_DOUT[63]~DUPLICATE_q\ <= NOT \IF_ID|DOUT[63]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[130]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[130]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[129]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[129]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[127]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[127]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[118]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[118]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[83]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[83]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[115]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[115]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[113]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[113]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[110]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[110]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[108]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[108]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[105]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[105]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[103]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[103]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[101]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[101]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[181]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[184]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[187]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[186]~DUPLICATE_q\;
\ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\ <= NOT \ID_EX|DOUT[188]~DUPLICATE_q\;
\INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[0]~8_combout\ <= NOT \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~8_combout\;
\INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[0]~7_combout\ <= NOT \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~7_combout\;
\EX_MEM|ALT_INV_DOUT\(154) <= NOT \EX_MEM|DOUT\(154);
\MEM_WB|ALT_INV_DOUT\(146) <= NOT \MEM_WB|DOUT\(146);
\MEM_WB|ALT_INV_DOUT\(145) <= NOT \MEM_WB|DOUT\(145);
\MEM_WB|ALT_INV_DOUT\(144) <= NOT \MEM_WB|DOUT\(144);
\MEM_WB|ALT_INV_DOUT\(142) <= NOT \MEM_WB|DOUT\(142);
\MEM_WB|ALT_INV_DOUT\(140) <= NOT \MEM_WB|DOUT\(140);
\MEM_WB|ALT_INV_DOUT\(138) <= NOT \MEM_WB|DOUT\(138);
\MEM_WB|ALT_INV_DOUT\(136) <= NOT \MEM_WB|DOUT\(136);
\MEM_WB|ALT_INV_DOUT\(134) <= NOT \MEM_WB|DOUT\(134);
\MEM_WB|ALT_INV_DOUT\(132) <= NOT \MEM_WB|DOUT\(132);
\MEM_WB|ALT_INV_DOUT\(130) <= NOT \MEM_WB|DOUT\(130);
\MEM_WB|ALT_INV_DOUT\(128) <= NOT \MEM_WB|DOUT\(128);
\MEM_WB|ALT_INV_DOUT\(126) <= NOT \MEM_WB|DOUT\(126);
\MEM_WB|ALT_INV_DOUT\(124) <= NOT \MEM_WB|DOUT\(124);
\MEM_WB|ALT_INV_DOUT\(122) <= NOT \MEM_WB|DOUT\(122);
\MEM_WB|ALT_INV_DOUT\(120) <= NOT \MEM_WB|DOUT\(120);
\MEM_WB|ALT_INV_DOUT\(118) <= NOT \MEM_WB|DOUT\(118);
\MEM_WB|ALT_INV_DOUT\(117) <= NOT \MEM_WB|DOUT\(117);
\MEM_WB|ALT_INV_DOUT\(116) <= NOT \MEM_WB|DOUT\(116);
\INST_FETCH|MEMORIA_INSTRUCAO|ALT_INV_memROM~7_combout\ <= NOT \INST_FETCH|MEMORIA_INSTRUCAO|memROM~7_combout\;
\INST_DECODE|UNIDADE_DE_CONTROLE|ALT_INV_Equal7~0_combout\ <= NOT \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\;
\INST_DECODE|UNIDADE_DE_CONTROLE|ALT_INV_Equal11~0_combout\ <= NOT \INST_DECODE|UNIDADE_DE_CONTROLE|Equal11~0_combout\;
\INST_DECODE|MUX_BR|ALT_INV_saida_MUX[4]~0_combout\ <= NOT \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\;
\IF_ID|ALT_INV_DOUT\(47) <= NOT \IF_ID|DOUT\(47);
\INST_DECODE|MUX_BR|ALT_INV_Equal2~0_combout\ <= NOT \INST_DECODE|MUX_BR|Equal2~0_combout\;
\INST_DECODE|UNIDADE_DE_CONTROLE|ALT_INV_Saida[7]~0_combout\ <= NOT \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~0_combout\;
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(73) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(73);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(74) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(74);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(73) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(73);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(74) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(74);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(71) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(71);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(72) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(72);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(71) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(71);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(72) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(72);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(69) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(69);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(70) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(70);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(69) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(69);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(70) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(70);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(67) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(67);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(68) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(68);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(67) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(67);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(68) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(68);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(65) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(65);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(66) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(66);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(65) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(65);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(66) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(66);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(63) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(63);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(64) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(64);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(63) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(63);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(64) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(64);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(61) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(61);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(62) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(62);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(61) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(61);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(62) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(62);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(59) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(59);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(60) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(60);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(59) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(59);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(60) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(60);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(57) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(57);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(58) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(58);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(57) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(57);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(58) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(58);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(55) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(55);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(56) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(56);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(55) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(55);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(56) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(56);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(53) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(53);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(54) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(54);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(53) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(53);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(54) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(54);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(51) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(51);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(52) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(52);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(51) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(51);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(52) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(52);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(49) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(49);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(50) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(50);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(49) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(49);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(50) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(50);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(47) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(47);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(48) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(48);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(47) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(47);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(48) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(48);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(45) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(45);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(46) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(46);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(45) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(45);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(46) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(46);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(43) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(43);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(44) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(44);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(43) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(43);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(44) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(44);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(41) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(41);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(42) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(42);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(41) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(41);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(42) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(42);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(39) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(39);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(40) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(40);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(39) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(39);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(40) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(40);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(37) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(37);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(38) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(38);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(37) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(37);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(38) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(38);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(35) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(35);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(36) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(36);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(35) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(35);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(36) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(36);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(33) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(33);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(34) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(34);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(33) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(33);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(34) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(34);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(31) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(31);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(32) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(32);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(31) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(31);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(32) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(32);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(29) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(29);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(30) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(30);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(29) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(29);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(30) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(30);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(27) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(27);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(28) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(28);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(27) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(27);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(28) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(28);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(25) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(25);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(26) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(26);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(25) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(25);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(26) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(26);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(23) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(23);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(24) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(24);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(23) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(23);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(24) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(24);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(21) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(21);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(22) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(22);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(21) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(21);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(22) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(22);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(19) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(19);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(20) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(20);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(19) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(19);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(20) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(20);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(17) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(17);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(18) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(18);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(17) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(17);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(18) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(18);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(15) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(15);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(16) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(16);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(15) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(15);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(16) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(16);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(13) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(13);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(14) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(14);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(13) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(13);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(14) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(14);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\;
\IF_ID|ALT_INV_DOUT\(48) <= NOT \IF_ID|DOUT\(48);
\IF_ID|ALT_INV_DOUT\(49) <= NOT \IF_ID|DOUT\(49);
\IF_ID|ALT_INV_DOUT\(50) <= NOT \IF_ID|DOUT\(50);
\IF_ID|ALT_INV_DOUT\(51) <= NOT \IF_ID|DOUT\(51);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(11) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(11);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\;
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~42_combout\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador~42_combout\;
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(8) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(8);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(7) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(7);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(6) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(6);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(5) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(5);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~41_combout\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador~41_combout\;
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(9) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(9);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(2) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(2);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(1) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(1);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(0) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(0);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(4) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(4);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(3) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(3);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(12) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(12);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\;
\IF_ID|ALT_INV_DOUT\(53) <= NOT \IF_ID|DOUT\(53);
\IF_ID|ALT_INV_DOUT\(55) <= NOT \IF_ID|DOUT\(55);
\IF_ID|ALT_INV_DOUT\(56) <= NOT \IF_ID|DOUT\(56);
\IF_ID|ALT_INV_DOUT\(57) <= NOT \IF_ID|DOUT\(57);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(11) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(11);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\;
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~39_combout\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador~39_combout\;
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(8) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(8);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(7) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(7);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(6) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(6);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(5) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(5);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~38_combout\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador~38_combout\;
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(4) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(4);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(3) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(3);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(2) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(2);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(1) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(1);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(0) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(0);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(10) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(10);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(9) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(9);
\INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(12) <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(12);
\INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~5_combout\ <= NOT \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~5_combout\;
\INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl~4_combout\ <= NOT \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~4_combout\;
\INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[0]~3_combout\ <= NOT \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~3_combout\;
\INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl~1_combout\ <= NOT \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~1_combout\;
\INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl~0_combout\ <= NOT \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~0_combout\;
\IF_ID|ALT_INV_DOUT\(32) <= NOT \IF_ID|DOUT\(32);
\IF_ID|ALT_INV_DOUT\(34) <= NOT \IF_ID|DOUT\(34);
\IF_ID|ALT_INV_DOUT\(36) <= NOT \IF_ID|DOUT\(36);
\IF_ID|ALT_INV_DOUT\(46) <= NOT \IF_ID|DOUT\(46);
\IF_ID|ALT_INV_DOUT\(33) <= NOT \IF_ID|DOUT\(33);
\IF_ID|ALT_INV_DOUT\(58) <= NOT \IF_ID|DOUT\(58);
\IF_ID|ALT_INV_DOUT\(60) <= NOT \IF_ID|DOUT\(60);
\IF_ID|ALT_INV_DOUT\(61) <= NOT \IF_ID|DOUT\(61);
\IF_ID|ALT_INV_DOUT\(63) <= NOT \IF_ID|DOUT\(63);
\EXECUTE|ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B30|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B28|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B28|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B28|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \EXECUTE|ULA|ULA_B28|SOMA_SUB|saida_xor~combout\;
\EXECUTE|ULA|ULA_B25|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B25|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B23|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B20|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B20|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~4_combout\ <= NOT \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\;
\EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B17|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B17|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B13|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B12|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B12|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~4_combout\ <= NOT \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\;
\EXECUTE|ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B10|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B10|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B7|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B7|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B5|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B5|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~4_combout\ <= NOT \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\;
\EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~4_combout\ <= NOT \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4_combout\;
\EXECUTE|ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~4_combout\ <= NOT \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\;
\EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\ <= NOT \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\;
\EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B2|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B2|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\ <= NOT \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\;
\EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\;
\EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~3_combout\ <= NOT \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\;
\EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\ <= NOT \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~2_combout\;
\EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\ <= NOT \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~1_combout\;
\EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(100) <= NOT \ID_EX|DOUT\(100);
\ID_EX|ALT_INV_DOUT\(132) <= NOT \ID_EX|DOUT\(132);
\EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(99) <= NOT \ID_EX|DOUT\(99);
\ID_EX|ALT_INV_DOUT\(131) <= NOT \ID_EX|DOUT\(131);
\EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_C_out~1_combout\ <= NOT \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1_combout\;
\EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\;
\EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \EXECUTE|ULA|ULA_B29|SOMA_SUB|saida_xor~combout\;
\EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(98) <= NOT \ID_EX|DOUT\(98);
\ID_EX|ALT_INV_DOUT\(130) <= NOT \ID_EX|DOUT\(130);
\EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(97) <= NOT \ID_EX|DOUT\(97);
\ID_EX|ALT_INV_DOUT\(129) <= NOT \ID_EX|DOUT\(129);
\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(96) <= NOT \ID_EX|DOUT\(96);
\ID_EX|ALT_INV_DOUT\(128) <= NOT \ID_EX|DOUT\(128);
\EXECUTE|ULA|ULA_B26|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(95) <= NOT \ID_EX|DOUT\(95);
\ID_EX|ALT_INV_DOUT\(127) <= NOT \ID_EX|DOUT\(127);
\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(94) <= NOT \ID_EX|DOUT\(94);
\ID_EX|ALT_INV_DOUT\(126) <= NOT \ID_EX|DOUT\(126);
\EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~1_combout\ <= NOT \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\;
\EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\;
\EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \EXECUTE|ULA|ULA_B24|SOMA_SUB|saida_xor~combout\;
\EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(93) <= NOT \ID_EX|DOUT\(93);
\ID_EX|ALT_INV_DOUT\(125) <= NOT \ID_EX|DOUT\(125);
\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(92) <= NOT \ID_EX|DOUT\(92);
\ID_EX|ALT_INV_DOUT\(124) <= NOT \ID_EX|DOUT\(124);
\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(91) <= NOT \ID_EX|DOUT\(91);
\ID_EX|ALT_INV_DOUT\(123) <= NOT \ID_EX|DOUT\(123);
\EXECUTE|ULA|ULA_B21|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(90) <= NOT \ID_EX|DOUT\(90);
\ID_EX|ALT_INV_DOUT\(122) <= NOT \ID_EX|DOUT\(122);
\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(89) <= NOT \ID_EX|DOUT\(89);
\ID_EX|ALT_INV_DOUT\(121) <= NOT \ID_EX|DOUT\(121);
\EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B19|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\;
\EXECUTE|ULA|ULA_B19|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor~combout\;
\ID_EX|ALT_INV_DOUT\(88) <= NOT \ID_EX|DOUT\(88);
\ID_EX|ALT_INV_DOUT\(120) <= NOT \ID_EX|DOUT\(120);
\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(87) <= NOT \ID_EX|DOUT\(87);
\ID_EX|ALT_INV_DOUT\(119) <= NOT \ID_EX|DOUT\(119);
\EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(86) <= NOT \ID_EX|DOUT\(86);
\ID_EX|ALT_INV_DOUT\(118) <= NOT \ID_EX|DOUT\(118);
\EXECUTE|ULA|ULA_B16|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(85) <= NOT \ID_EX|DOUT\(85);
\ID_EX|ALT_INV_DOUT\(117) <= NOT \ID_EX|DOUT\(117);
\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(84) <= NOT \ID_EX|DOUT\(84);
\ID_EX|ALT_INV_DOUT\(116) <= NOT \ID_EX|DOUT\(116);
\EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~1_combout\ <= NOT \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~1_combout\;
\EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~0_combout\;
\EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \EXECUTE|ULA|ULA_B14|SOMA_SUB|saida_xor~combout\;
\ID_EX|ALT_INV_DOUT\(83) <= NOT \ID_EX|DOUT\(83);
\ID_EX|ALT_INV_DOUT\(115) <= NOT \ID_EX|DOUT\(115);
\EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(82) <= NOT \ID_EX|DOUT\(82);
\ID_EX|ALT_INV_DOUT\(114) <= NOT \ID_EX|DOUT\(114);
\EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(81) <= NOT \ID_EX|DOUT\(81);
\ID_EX|ALT_INV_DOUT\(113) <= NOT \ID_EX|DOUT\(113);
\EXECUTE|ULA|ULA_B11|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(80) <= NOT \ID_EX|DOUT\(80);
\ID_EX|ALT_INV_DOUT\(112) <= NOT \ID_EX|DOUT\(112);
\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(79) <= NOT \ID_EX|DOUT\(79);
\ID_EX|ALT_INV_DOUT\(111) <= NOT \ID_EX|DOUT\(111);
\EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B9|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\;
\EXECUTE|ULA|ULA_B9|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor~combout\;
\ID_EX|ALT_INV_DOUT\(78) <= NOT \ID_EX|DOUT\(78);
\ID_EX|ALT_INV_DOUT\(110) <= NOT \ID_EX|DOUT\(110);
\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(77) <= NOT \ID_EX|DOUT\(77);
\ID_EX|ALT_INV_DOUT\(109) <= NOT \ID_EX|DOUT\(109);
\EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(76) <= NOT \ID_EX|DOUT\(76);
\ID_EX|ALT_INV_DOUT\(108) <= NOT \ID_EX|DOUT\(108);
\EXECUTE|ULA|ULA_B6|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\;
\EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(75) <= NOT \ID_EX|DOUT\(75);
\ID_EX|ALT_INV_DOUT\(107) <= NOT \ID_EX|DOUT\(107);
\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(74) <= NOT \ID_EX|DOUT\(74);
\ID_EX|ALT_INV_DOUT\(106) <= NOT \ID_EX|DOUT\(106);
\EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0_combout\;
\EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~0_combout\ <= NOT \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~0_combout\;
\EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_saida_xor~combout\ <= NOT \EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor~combout\;
\ID_EX|ALT_INV_DOUT\(73) <= NOT \ID_EX|DOUT\(73);
\ID_EX|ALT_INV_DOUT\(105) <= NOT \ID_EX|DOUT\(105);
\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(72) <= NOT \ID_EX|DOUT\(72);
\ID_EX|ALT_INV_DOUT\(104) <= NOT \ID_EX|DOUT\(104);
\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(71) <= NOT \ID_EX|DOUT\(71);
\ID_EX|ALT_INV_DOUT\(103) <= NOT \ID_EX|DOUT\(103);
\EXECUTE|ULA|ULA_B1|SOMA_SUB|ALT_INV_C_out~combout\ <= NOT \EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\;
\ID_EX|ALT_INV_DOUT\(70) <= NOT \ID_EX|DOUT\(70);
\ID_EX|ALT_INV_DOUT\(102) <= NOT \ID_EX|DOUT\(102);
\ID_EX|ALT_INV_DOUT\(69) <= NOT \ID_EX|DOUT\(69);
\ID_EX|ALT_INV_DOUT\(101) <= NOT \ID_EX|DOUT\(101);
\ID_EX|ALT_INV_DOUT\(181) <= NOT \ID_EX|DOUT\(181);
\EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\ <= NOT \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\;
\ID_EX|ALT_INV_DOUT\(179) <= NOT \ID_EX|DOUT\(179);
\ID_EX|ALT_INV_DOUT\(180) <= NOT \ID_EX|DOUT\(180);
\ID_EX|ALT_INV_DOUT\(184) <= NOT \ID_EX|DOUT\(184);
\ID_EX|ALT_INV_DOUT\(187) <= NOT \ID_EX|DOUT\(187);
\ID_EX|ALT_INV_DOUT\(186) <= NOT \ID_EX|DOUT\(186);
\ID_EX|ALT_INV_DOUT\(185) <= NOT \ID_EX|DOUT\(185);
\ID_EX|ALT_INV_DOUT\(189) <= NOT \ID_EX|DOUT\(189);
\ID_EX|ALT_INV_DOUT\(188) <= NOT \ID_EX|DOUT\(188);
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a1\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a2\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a3\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a4\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a5\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a6\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a7\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a8\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a10\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a11\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a11\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a12\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a12\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a13\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a13\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a14\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a14\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a15\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a15\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a16\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a16\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a17\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a17\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a18\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a18\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a19\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a19\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a20\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a20\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a21\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a21\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a22\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a22\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a23\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a23\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a24\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a24\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a25\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a25\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a26\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a26\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a27\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a27\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a28\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a28\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a29\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a29\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a30\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a30\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a31\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a31\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a9\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a1\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a1\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a2\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a2\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a3\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a3\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a4\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a4\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a5\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a5\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a6\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a6\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a7\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a7\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a8\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a8\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a10\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a10\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a11\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a11\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a12\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a12\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a13\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a13\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a14\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a14\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a15\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a15\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a16\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a16\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a17\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a17\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a18\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a18\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a19\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a19\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a20\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a20\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a21\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a21\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a22\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a22\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a23\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a23\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a24\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a24\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a25\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a25\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a26\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a26\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a27\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a27\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a28\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a28\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a29\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a29\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a30\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a30\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a31\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a31\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a9\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a9\;
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\;
\IF_ID|ALT_INV_DOUT\(35) <= NOT \IF_ID|DOUT\(35);
\IF_ID|ALT_INV_DOUT\(59) <= NOT \IF_ID|DOUT\(59);

-- Location: IOOBUF_X52_Y0_N53
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
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
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
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
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
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
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
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
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
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
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
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
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
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
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
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
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
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
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
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
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
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
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
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
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
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
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
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
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
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
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
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
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
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
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
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
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
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
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
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
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
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
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
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
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
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
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
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
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
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
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
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
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
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
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
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
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
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
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
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
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
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
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
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
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
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
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
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
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
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
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
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
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
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
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
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
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
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
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
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
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
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
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
	o => ww_HEX5(6));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXECUTE|ULA|ULA_B24|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXECUTE|ULA|ULA_B25|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXECUTE|ULA|ULA_B26|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXECUTE|ULA|ULA_B27|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXECUTE|ULA|ULA_B29|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXECUTE|ULA|ULA_B30|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EXECUTE|ULA|ULA_B31|MUX|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G5
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X41_Y6_N9
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X41_Y6_N10
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(12));

-- Location: FF_X45_Y6_N32
\IF_ID|DOUT[34]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT[34]~DUPLICATE_q\);

-- Location: MLABCELL_X45_Y6_N18
\ID_EX|DOUT[186]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ID_EX|DOUT[186]~feeder_combout\ = \IF_ID|DOUT[34]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ALT_INV_DOUT[34]~DUPLICATE_q\,
	combout => \ID_EX|DOUT[186]~feeder_combout\);

-- Location: MLABCELL_X45_Y6_N0
\INST_FETCH|SOMADOR|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|SOMADOR|Add0~9_sumout\ = SUM(( \ID_EX|DOUT\(184) ) + ( \ID_EX|DOUT\(185) ) + ( !VCC ))
-- \INST_FETCH|SOMADOR|Add0~10\ = CARRY(( \ID_EX|DOUT\(184) ) + ( \ID_EX|DOUT\(185) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT\(185),
	datac => \ID_EX|ALT_INV_DOUT\(184),
	cin => GND,
	sumout => \INST_FETCH|SOMADOR|Add0~9_sumout\,
	cout => \INST_FETCH|SOMADOR|Add0~10\);

-- Location: MLABCELL_X45_Y6_N3
\INST_FETCH|SOMADOR|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|SOMADOR|Add0~13_sumout\ = SUM(( \ID_EX|DOUT[186]~DUPLICATE_q\ ) + ( GND ) + ( \INST_FETCH|SOMADOR|Add0~10\ ))
-- \INST_FETCH|SOMADOR|Add0~14\ = CARRY(( \ID_EX|DOUT[186]~DUPLICATE_q\ ) + ( GND ) + ( \INST_FETCH|SOMADOR|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	cin => \INST_FETCH|SOMADOR|Add0~10\,
	sumout => \INST_FETCH|SOMADOR|Add0~13_sumout\,
	cout => \INST_FETCH|SOMADOR|Add0~14\);

-- Location: FF_X45_Y6_N5
\IF_ID|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|SOMADOR|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(4));

-- Location: FF_X45_Y6_N29
\ID_EX|DOUT[151]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \IF_ID|DOUT\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(151));

-- Location: FF_X45_Y6_N59
\EX_MEM|DOUT[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \ID_EX|DOUT\(151),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(68));

-- Location: MLABCELL_X45_Y6_N24
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~15_combout\ = ( !\ID_EX|DOUT[188]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & ((!\ID_EX|DOUT[186]~DUPLICATE_q\) # ((!\ID_EX|DOUT\(184) & \ID_EX|DOUT\(187))))) ) ) ) # ( !\ID_EX|DOUT[188]~DUPLICATE_q\ & 
-- ( !\ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & (((\ID_EX|DOUT\(184) & \ID_EX|DOUT\(187))) # (\ID_EX|DOUT[186]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000000000000000000000011110010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(184),
	datab => \ID_EX|ALT_INV_DOUT\(187),
	datac => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT\(189),
	datae => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(185),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~15_combout\);

-- Location: FF_X44_Y6_N8
\IF_ID|DOUT[46]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT[46]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y6_N51
\ID_EX|DOUT[189]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ID_EX|DOUT[189]~feeder_combout\ = \IF_ID|DOUT[46]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IF_ID|ALT_INV_DOUT[46]~DUPLICATE_q\,
	combout => \ID_EX|DOUT[189]~feeder_combout\);

-- Location: MLABCELL_X45_Y6_N6
\INST_FETCH|SOMADOR|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|SOMADOR|Add0~17_sumout\ = SUM(( \ID_EX|DOUT\(187) ) + ( GND ) + ( \INST_FETCH|SOMADOR|Add0~14\ ))
-- \INST_FETCH|SOMADOR|Add0~18\ = CARRY(( \ID_EX|DOUT\(187) ) + ( GND ) + ( \INST_FETCH|SOMADOR|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|ALT_INV_DOUT\(187),
	cin => \INST_FETCH|SOMADOR|Add0~14\,
	sumout => \INST_FETCH|SOMADOR|Add0~17_sumout\,
	cout => \INST_FETCH|SOMADOR|Add0~18\);

-- Location: MLABCELL_X45_Y6_N9
\INST_FETCH|SOMADOR|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|SOMADOR|Add0~1_sumout\ = SUM(( \ID_EX|DOUT[188]~DUPLICATE_q\ ) + ( GND ) + ( \INST_FETCH|SOMADOR|Add0~18\ ))
-- \INST_FETCH|SOMADOR|Add0~2\ = CARRY(( \ID_EX|DOUT[188]~DUPLICATE_q\ ) + ( GND ) + ( \INST_FETCH|SOMADOR|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	cin => \INST_FETCH|SOMADOR|Add0~18\,
	sumout => \INST_FETCH|SOMADOR|Add0~1_sumout\,
	cout => \INST_FETCH|SOMADOR|Add0~2\);

-- Location: MLABCELL_X45_Y6_N12
\INST_FETCH|SOMADOR|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|SOMADOR|Add0~5_sumout\ = SUM(( \ID_EX|DOUT\(189) ) + ( GND ) + ( \INST_FETCH|SOMADOR|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT\(189),
	cin => \INST_FETCH|SOMADOR|Add0~2\,
	sumout => \INST_FETCH|SOMADOR|Add0~5_sumout\);

-- Location: FF_X45_Y6_N13
\IF_ID|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|SOMADOR|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(7));

-- Location: FF_X45_Y6_N44
\ID_EX|DOUT[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \IF_ID|DOUT\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(154));

-- Location: FF_X45_Y6_N25
\EX_MEM|DOUT[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \ID_EX|DOUT\(154),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(71));

-- Location: FF_X44_Y6_N53
\ID_EX|DOUT[189]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[189]~feeder_combout\,
	asdata => \EX_MEM|DOUT\(71),
	sload => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(189));

-- Location: FF_X45_Y6_N20
\ID_EX|DOUT[186]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[186]~feeder_combout\,
	asdata => \EX_MEM|DOUT\(68),
	sload => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(186));

-- Location: MLABCELL_X45_Y6_N48
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~14_combout\ = ( \ID_EX|DOUT\(187) & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT[188]~DUPLICATE_q\ & ((\ID_EX|DOUT\(186)) # (\ID_EX|DOUT\(184))))) ) ) ) # ( !\ID_EX|DOUT\(187) & ( \ID_EX|DOUT\(185) & ( 
-- (\ID_EX|DOUT\(184) & (!\ID_EX|DOUT\(189) & (\ID_EX|DOUT\(186) & !\ID_EX|DOUT[188]~DUPLICATE_q\))) ) ) ) # ( \ID_EX|DOUT\(187) & ( !\ID_EX|DOUT\(185) & ( (\ID_EX|DOUT\(184) & (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT\(186) & !\ID_EX|DOUT[188]~DUPLICATE_q\))) ) ) 
-- ) # ( !\ID_EX|DOUT\(187) & ( !\ID_EX|DOUT\(185) & ( (\ID_EX|DOUT\(184) & (!\ID_EX|DOUT\(189) & (\ID_EX|DOUT\(186) & !\ID_EX|DOUT[188]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000010000000000000000000100000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(184),
	datab => \ID_EX|ALT_INV_DOUT\(189),
	datac => \ID_EX|ALT_INV_DOUT\(186),
	datad => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT\(187),
	dataf => \ID_EX|ALT_INV_DOUT\(185),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~14_combout\);

-- Location: FF_X45_Y6_N50
\IF_ID|DOUT[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(36));

-- Location: MLABCELL_X42_Y6_N33
\ID_EX|DOUT[188]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ID_EX|DOUT[188]~feeder_combout\ = \IF_ID|DOUT\(36)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(36),
	combout => \ID_EX|DOUT[188]~feeder_combout\);

-- Location: FF_X45_Y6_N10
\IF_ID|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|SOMADOR|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(6));

-- Location: FF_X45_Y6_N47
\ID_EX|DOUT[153]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \IF_ID|DOUT\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(153));

-- Location: FF_X45_Y6_N52
\EX_MEM|DOUT[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \ID_EX|DOUT\(153),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(70));

-- Location: FF_X42_Y6_N34
\ID_EX|DOUT[188]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[188]~feeder_combout\,
	asdata => \EX_MEM|DOUT\(70),
	sload => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[188]~DUPLICATE_q\);

-- Location: FF_X45_Y6_N8
\IF_ID|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|SOMADOR|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(5));

-- Location: FF_X45_Y6_N17
\ID_EX|DOUT[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \IF_ID|DOUT\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(152));

-- Location: FF_X45_Y6_N40
\EX_MEM|DOUT[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \ID_EX|DOUT\(152),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(69));

-- Location: FF_X44_Y6_N59
\ID_EX|DOUT[187]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[187]~feeder_combout\,
	asdata => \EX_MEM|DOUT\(69),
	sload => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[187]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y6_N0
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~0_combout\ = ( !\ID_EX|DOUT\(189) & ( (!\ID_EX|DOUT[186]~DUPLICATE_q\ & (!\ID_EX|DOUT\(185) & (!\ID_EX|DOUT[188]~DUPLICATE_q\ & !\ID_EX|DOUT[187]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datab => \ID_EX|ALT_INV_DOUT\(185),
	datac => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(189),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~0_combout\);

-- Location: FF_X43_Y6_N1
\IF_ID|DOUT[63]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT[63]~DUPLICATE_q\);

-- Location: FF_X43_Y7_N38
\EX_MEM|DOUT[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \ID_EX|DOUT[184]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(154));

-- Location: LABCELL_X43_Y7_N39
\ID_EX|DOUT[149]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ID_EX|DOUT[149]~0_combout\ = ( !\EX_MEM|DOUT\(154) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \EX_MEM|ALT_INV_DOUT\(154),
	combout => \ID_EX|DOUT[149]~0_combout\);

-- Location: FF_X43_Y7_N40
\ID_EX|DOUT[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[149]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(149));

-- Location: FF_X44_Y6_N47
\EX_MEM|DOUT[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \ID_EX|DOUT\(149),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(66));

-- Location: FF_X44_Y6_N41
\ID_EX|DOUT[184]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[184]~feeder_combout\,
	asdata => \EX_MEM|DOUT\(66),
	sload => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[184]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y6_N27
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~1_combout\ = ( !\ID_EX|DOUT[188]~DUPLICATE_q\ & ( \ID_EX|DOUT[187]~DUPLICATE_q\ & ( (\ID_EX|DOUT[184]~DUPLICATE_q\ & (!\ID_EX|DOUT[186]~DUPLICATE_q\ $ (\ID_EX|DOUT\(185)))) ) ) ) # ( \ID_EX|DOUT[188]~DUPLICATE_q\ & ( 
-- !\ID_EX|DOUT[187]~DUPLICATE_q\ & ( (\ID_EX|DOUT[184]~DUPLICATE_q\ & (!\ID_EX|DOUT[186]~DUPLICATE_q\ & !\ID_EX|DOUT\(185))) ) ) ) # ( !\ID_EX|DOUT[188]~DUPLICATE_q\ & ( !\ID_EX|DOUT[187]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(185) & 
-- ((!\ID_EX|DOUT[186]~DUPLICATE_q\) # (\ID_EX|DOUT[184]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011010000010000000100000001000001010000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	datab => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT\(185),
	datae => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~1_combout\);

-- Location: FF_X43_Y6_N28
\IF_ID|DOUT[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~1_combout\,
	sclr => \ID_EX|DOUT\(189),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(59));

-- Location: MLABCELL_X45_Y6_N39
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~19_combout\ = ( \ID_EX|DOUT\(187) & ( !\ID_EX|DOUT[188]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(185) & (!\ID_EX|DOUT\(189) & !\ID_EX|DOUT[186]~DUPLICATE_q\)) ) ) ) # ( !\ID_EX|DOUT\(187) & ( !\ID_EX|DOUT[188]~DUPLICATE_q\ & ( 
-- (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT[186]~DUPLICATE_q\ $ (((\ID_EX|DOUT\(185)) # (\ID_EX|DOUT\(184)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001110000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(184),
	datab => \ID_EX|ALT_INV_DOUT\(185),
	datac => \ID_EX|ALT_INV_DOUT\(189),
	datad => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT\(187),
	dataf => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~19_combout\);

-- Location: FF_X44_Y6_N38
\IF_ID|DOUT[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(61));

-- Location: LABCELL_X43_Y6_N54
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~18_combout\ = ( \ID_EX|DOUT[187]~DUPLICATE_q\ & ( \ID_EX|DOUT[184]~DUPLICATE_q\ & ( (!\ID_EX|DOUT[188]~DUPLICATE_q\ & (!\ID_EX|DOUT[186]~DUPLICATE_q\ & (!\ID_EX|DOUT\(189) & \ID_EX|DOUT\(185)))) ) ) ) # ( 
-- !\ID_EX|DOUT[187]~DUPLICATE_q\ & ( \ID_EX|DOUT[184]~DUPLICATE_q\ & ( (!\ID_EX|DOUT[188]~DUPLICATE_q\ & (\ID_EX|DOUT[186]~DUPLICATE_q\ & !\ID_EX|DOUT\(189))) ) ) ) # ( \ID_EX|DOUT[187]~DUPLICATE_q\ & ( !\ID_EX|DOUT[184]~DUPLICATE_q\ & ( 
-- (!\ID_EX|DOUT[188]~DUPLICATE_q\ & (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT[186]~DUPLICATE_q\ $ (\ID_EX|DOUT\(185))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000010000000100000001000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datab => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT\(189),
	datad => \ID_EX|ALT_INV_DOUT\(185),
	datae => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~18_combout\);

-- Location: FF_X43_Y6_N55
\IF_ID|DOUT[60]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT[60]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y6_N18
\INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\ = ( \IF_ID|DOUT[60]~DUPLICATE_q\ ) # ( !\IF_ID|DOUT[60]~DUPLICATE_q\ & ( ((!\IF_ID|DOUT\(59)) # (\IF_ID|DOUT\(61))) # (\IF_ID|DOUT[63]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ALT_INV_DOUT[63]~DUPLICATE_q\,
	datac => \IF_ID|ALT_INV_DOUT\(59),
	datad => \IF_ID|ALT_INV_DOUT\(61),
	dataf => \IF_ID|ALT_INV_DOUT[60]~DUPLICATE_q\,
	combout => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\);

-- Location: FF_X45_Y6_N19
\ID_EX|DOUT[186]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[186]~feeder_combout\,
	asdata => \EX_MEM|DOUT\(68),
	sload => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[186]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y6_N18
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~2_combout\ = ( \ID_EX|DOUT[188]~DUPLICATE_q\ & ( \ID_EX|DOUT[187]~DUPLICATE_q\ & ( (\ID_EX|DOUT[186]~DUPLICATE_q\ & (\ID_EX|DOUT\(185) & \ID_EX|DOUT[184]~DUPLICATE_q\)) ) ) ) # ( !\ID_EX|DOUT[188]~DUPLICATE_q\ & ( 
-- \ID_EX|DOUT[187]~DUPLICATE_q\ & ( (!\ID_EX|DOUT[186]~DUPLICATE_q\ & ((\ID_EX|DOUT[184]~DUPLICATE_q\))) # (\ID_EX|DOUT[186]~DUPLICATE_q\ & ((!\ID_EX|DOUT[184]~DUPLICATE_q\) # (\ID_EX|DOUT\(185)))) ) ) ) # ( !\ID_EX|DOUT[188]~DUPLICATE_q\ & ( 
-- !\ID_EX|DOUT[187]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(185) $ (((\ID_EX|DOUT[186]~DUPLICATE_q\ & !\ID_EX|DOUT[184]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110010011100000000000000000001011011010110110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datab => \ID_EX|ALT_INV_DOUT\(185),
	datac => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~2_combout\);

-- Location: FF_X43_Y6_N19
\IF_ID|DOUT[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~2_combout\,
	sclr => \ID_EX|DOUT\(189),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(35));

-- Location: LABCELL_X44_Y6_N57
\ID_EX|DOUT[187]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ID_EX|DOUT[187]~feeder_combout\ = \IF_ID|DOUT\(35)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IF_ID|ALT_INV_DOUT\(35),
	combout => \ID_EX|DOUT[187]~feeder_combout\);

-- Location: FF_X44_Y6_N58
\ID_EX|DOUT[187]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[187]~feeder_combout\,
	asdata => \EX_MEM|DOUT\(69),
	sload => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(187));

-- Location: MLABCELL_X45_Y6_N42
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~16_combout\ = ( !\ID_EX|DOUT[188]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & ((!\ID_EX|DOUT\(184) $ (\ID_EX|DOUT\(187))) # (\ID_EX|DOUT[186]~DUPLICATE_q\))) ) ) ) # ( !\ID_EX|DOUT[188]~DUPLICATE_q\ & 
-- ( !\ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT\(187) $ (((!\ID_EX|DOUT\(184)) # (!\ID_EX|DOUT[186]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000000000000000000000000010011111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(184),
	datab => \ID_EX|ALT_INV_DOUT\(187),
	datac => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT\(189),
	datae => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(185),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~16_combout\);

-- Location: FF_X44_Y6_N16
\IF_ID|DOUT[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(33));

-- Location: MLABCELL_X45_Y6_N21
\ID_EX|DOUT[185]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ID_EX|DOUT[185]~feeder_combout\ = ( \IF_ID|DOUT\(33) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \IF_ID|ALT_INV_DOUT\(33),
	combout => \ID_EX|DOUT[185]~feeder_combout\);

-- Location: FF_X45_Y6_N1
\IF_ID|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|SOMADOR|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(3));

-- Location: FF_X45_Y6_N55
\ID_EX|DOUT[150]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \IF_ID|DOUT\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(150));

-- Location: FF_X45_Y6_N35
\EX_MEM|DOUT[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \ID_EX|DOUT\(150),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(67));

-- Location: FF_X45_Y6_N22
\ID_EX|DOUT[185]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[185]~feeder_combout\,
	asdata => \EX_MEM|DOUT\(67),
	sload => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(185));

-- Location: LABCELL_X44_Y6_N24
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~12_combout\ = ( \ID_EX|DOUT\(184) & ( \ID_EX|DOUT[186]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT[188]~DUPLICATE_q\ & ((!\ID_EX|DOUT[187]~DUPLICATE_q\) # (\ID_EX|DOUT\(185))))) ) ) ) # ( !\ID_EX|DOUT\(184) & 
-- ( \ID_EX|DOUT[186]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(185) & (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT[188]~DUPLICATE_q\ & !\ID_EX|DOUT[187]~DUPLICATE_q\))) ) ) ) # ( \ID_EX|DOUT\(184) & ( !\ID_EX|DOUT[186]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(185) & 
-- (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT[188]~DUPLICATE_q\ & \ID_EX|DOUT[187]~DUPLICATE_q\))) ) ) ) # ( !\ID_EX|DOUT\(184) & ( !\ID_EX|DOUT[186]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(185) & (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT[188]~DUPLICATE_q\ & 
-- \ID_EX|DOUT[187]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000010000000000000001100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(185),
	datab => \ID_EX|ALT_INV_DOUT\(189),
	datac => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT\(184),
	dataf => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~12_combout\);

-- Location: FF_X44_Y6_N26
\IF_ID|DOUT[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(32));

-- Location: LABCELL_X44_Y6_N39
\ID_EX|DOUT[184]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ID_EX|DOUT[184]~feeder_combout\ = \IF_ID|DOUT\(32)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(32),
	combout => \ID_EX|DOUT[184]~feeder_combout\);

-- Location: FF_X44_Y6_N40
\ID_EX|DOUT[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[184]~feeder_combout\,
	asdata => \EX_MEM|DOUT\(66),
	sload => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(184));

-- Location: MLABCELL_X45_Y6_N30
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~13_combout\ = ( \ID_EX|DOUT\(187) & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT[188]~DUPLICATE_q\ & ((\ID_EX|DOUT\(186)) # (\ID_EX|DOUT\(184))))) ) ) ) # ( !\ID_EX|DOUT\(187) & ( \ID_EX|DOUT\(185) & ( 
-- (\ID_EX|DOUT\(184) & (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT\(186) & !\ID_EX|DOUT[188]~DUPLICATE_q\))) ) ) ) # ( \ID_EX|DOUT\(187) & ( !\ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT\(186) & !\ID_EX|DOUT[188]~DUPLICATE_q\)) ) ) ) # ( 
-- !\ID_EX|DOUT\(187) & ( !\ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & (\ID_EX|DOUT\(186) & !\ID_EX|DOUT[188]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000110000000000000001000000000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(184),
	datab => \ID_EX|ALT_INV_DOUT\(189),
	datac => \ID_EX|ALT_INV_DOUT\(186),
	datad => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT\(187),
	dataf => \ID_EX|ALT_INV_DOUT\(185),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~13_combout\);

-- Location: FF_X45_Y6_N31
\IF_ID|DOUT[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(34));

-- Location: FF_X44_Y6_N17
\IF_ID|DOUT[33]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT[33]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y6_N30
\INST_DECODE|UNIDADE_CONT_ULA|ULActrl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~4_combout\ = ( \IF_ID|DOUT[33]~DUPLICATE_q\ & ( (!\IF_ID|DOUT\(34) & (!\IF_ID|DOUT\(36) & (!\IF_ID|DOUT\(32) & \IF_ID|DOUT\(35)))) ) ) # ( !\IF_ID|DOUT[33]~DUPLICATE_q\ & ( (\IF_ID|DOUT\(34) & (!\IF_ID|DOUT\(36) & 
-- (\IF_ID|DOUT\(32) & !\IF_ID|DOUT\(35)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(34),
	datab => \IF_ID|ALT_INV_DOUT\(36),
	datac => \IF_ID|ALT_INV_DOUT\(32),
	datad => \IF_ID|ALT_INV_DOUT\(35),
	dataf => \IF_ID|ALT_INV_DOUT[33]~DUPLICATE_q\,
	combout => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~4_combout\);

-- Location: FF_X42_Y6_N35
\ID_EX|DOUT[188]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ID_EX|DOUT[188]~feeder_combout\,
	asdata => \EX_MEM|DOUT\(70),
	sload => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(188));

-- Location: MLABCELL_X42_Y6_N12
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~17_combout\ = ( \ID_EX|DOUT[186]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(189) & ( (!\ID_EX|DOUT\(188) & (\ID_EX|DOUT[184]~DUPLICATE_q\ & (!\ID_EX|DOUT\(185) $ (\ID_EX|DOUT[187]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\ID_EX|DOUT[186]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(189) & ( (!\ID_EX|DOUT\(188) & (!\ID_EX|DOUT\(185) $ (((\ID_EX|DOUT[187]~DUPLICATE_q\ & \ID_EX|DOUT[184]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010010000000000001001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(185),
	datab => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT\(188),
	datad => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(189),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~17_combout\);

-- Location: FF_X43_Y6_N16
\IF_ID|DOUT[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(58));

-- Location: FF_X44_Y6_N7
\IF_ID|DOUT[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(46));

-- Location: LABCELL_X44_Y6_N42
\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~8_combout\ = ( \IF_ID|DOUT\(46) & ( \IF_ID|DOUT\(59) & ( (!\IF_ID|DOUT[60]~DUPLICATE_q\ & (!\IF_ID|DOUT[63]~DUPLICATE_q\ & (\IF_ID|DOUT\(61) & !\IF_ID|DOUT\(58)))) ) ) ) # ( !\IF_ID|DOUT\(46) & ( \IF_ID|DOUT\(59) & 
-- ( (!\IF_ID|DOUT[60]~DUPLICATE_q\ & (!\IF_ID|DOUT[63]~DUPLICATE_q\ & (\IF_ID|DOUT\(61) & !\IF_ID|DOUT\(58)))) ) ) ) # ( \IF_ID|DOUT\(46) & ( !\IF_ID|DOUT\(59) & ( (!\IF_ID|DOUT[63]~DUPLICATE_q\ & ((!\IF_ID|DOUT[60]~DUPLICATE_q\ & (!\IF_ID|DOUT\(61) & 
-- !\IF_ID|DOUT\(58))) # (\IF_ID|DOUT[60]~DUPLICATE_q\ & (\IF_ID|DOUT\(61) & \IF_ID|DOUT\(58))))) ) ) ) # ( !\IF_ID|DOUT\(46) & ( !\IF_ID|DOUT\(59) & ( (\IF_ID|DOUT[60]~DUPLICATE_q\ & (!\IF_ID|DOUT[63]~DUPLICATE_q\ & (\IF_ID|DOUT\(61) & \IF_ID|DOUT\(58)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100100000000000010000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT[60]~DUPLICATE_q\,
	datab => \IF_ID|ALT_INV_DOUT[63]~DUPLICATE_q\,
	datac => \IF_ID|ALT_INV_DOUT\(61),
	datad => \IF_ID|ALT_INV_DOUT\(58),
	datae => \IF_ID|ALT_INV_DOUT\(46),
	dataf => \IF_ID|ALT_INV_DOUT\(59),
	combout => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~8_combout\);

-- Location: LABCELL_X44_Y6_N21
\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~7_combout\ = ( \IF_ID|DOUT[60]~DUPLICATE_q\ & ( (!\IF_ID|DOUT\(59) & (!\IF_ID|DOUT[63]~DUPLICATE_q\ & (\IF_ID|DOUT\(58) & \IF_ID|DOUT\(61)))) ) ) # ( !\IF_ID|DOUT[60]~DUPLICATE_q\ & ( (\IF_ID|DOUT\(59) & 
-- (!\IF_ID|DOUT[63]~DUPLICATE_q\ & (!\IF_ID|DOUT\(58) & \IF_ID|DOUT\(61)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(59),
	datab => \IF_ID|ALT_INV_DOUT[63]~DUPLICATE_q\,
	datac => \IF_ID|ALT_INV_DOUT\(58),
	datad => \IF_ID|ALT_INV_DOUT\(61),
	dataf => \IF_ID|ALT_INV_DOUT[60]~DUPLICATE_q\,
	combout => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~7_combout\);

-- Location: LABCELL_X44_Y6_N33
\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~9_combout\ = ( \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~7_combout\ & ( (!\INST_DECODE|UNIDADE_CONT_ULA|ULActrl~4_combout\) # (\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~8_combout\) ) ) # ( 
-- !\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~7_combout\ & ( (\INST_DECODE|UNIDADE_CONT_ULA|ULActrl~4_combout\ & \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl~4_combout\,
	datad => \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[0]~8_combout\,
	dataf => \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[0]~7_combout\,
	combout => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~9_combout\);

-- Location: FF_X44_Y6_N35
\ID_EX|DOUT[179]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(179));

-- Location: LABCELL_X44_Y6_N36
\INST_DECODE|UNIDADE_CONT_ULA|ULActrl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~0_combout\ = ( \IF_ID|DOUT[46]~DUPLICATE_q\ & ( (!\IF_ID|DOUT\(32) & (!\IF_ID|DOUT\(34) & !\IF_ID|DOUT\(36))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(32),
	datac => \IF_ID|ALT_INV_DOUT\(34),
	datad => \IF_ID|ALT_INV_DOUT\(36),
	dataf => \IF_ID|ALT_INV_DOUT[46]~DUPLICATE_q\,
	combout => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~0_combout\);

-- Location: LABCELL_X43_Y4_N48
\INST_DECODE|UNIDADE_CONT_ULA|ULActrl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~1_combout\ = ( \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~0_combout\ & ( (!\IF_ID|DOUT\(59) & ((!\IF_ID|DOUT\(35)) # (\IF_ID|DOUT\(33)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(35),
	datac => \IF_ID|ALT_INV_DOUT\(59),
	datad => \IF_ID|ALT_INV_DOUT\(33),
	dataf => \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl~0_combout\,
	combout => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~1_combout\);

-- Location: LABCELL_X43_Y4_N36
\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[1]~2_combout\ = ( \IF_ID|DOUT\(61) & ( \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~1_combout\ & ( (!\IF_ID|DOUT[60]~DUPLICATE_q\ & ((!\IF_ID|DOUT\(58) & ((!\IF_ID|DOUT[63]~DUPLICATE_q\))) # (\IF_ID|DOUT\(58) & 
-- (\IF_ID|DOUT\(59) & \IF_ID|DOUT[63]~DUPLICATE_q\)))) ) ) ) # ( !\IF_ID|DOUT\(61) & ( \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~1_combout\ & ( (!\IF_ID|DOUT\(59) & (!\IF_ID|DOUT[63]~DUPLICATE_q\ & ((!\IF_ID|DOUT\(58)) # (\IF_ID|DOUT[60]~DUPLICATE_q\)))) # 
-- (\IF_ID|DOUT\(59) & (!\IF_ID|DOUT[60]~DUPLICATE_q\ & (!\IF_ID|DOUT\(58) $ (\IF_ID|DOUT[63]~DUPLICATE_q\)))) ) ) ) # ( \IF_ID|DOUT\(61) & ( !\INST_DECODE|UNIDADE_CONT_ULA|ULActrl~1_combout\ & ( (!\IF_ID|DOUT[60]~DUPLICATE_q\ & ((!\IF_ID|DOUT\(58) & 
-- ((!\IF_ID|DOUT[63]~DUPLICATE_q\))) # (\IF_ID|DOUT\(58) & (\IF_ID|DOUT\(59) & \IF_ID|DOUT[63]~DUPLICATE_q\)))) ) ) ) # ( !\IF_ID|DOUT\(61) & ( !\INST_DECODE|UNIDADE_CONT_ULA|ULActrl~1_combout\ & ( (!\IF_ID|DOUT\(59) & (\IF_ID|DOUT[60]~DUPLICATE_q\ & 
-- ((!\IF_ID|DOUT[63]~DUPLICATE_q\)))) # (\IF_ID|DOUT\(59) & (!\IF_ID|DOUT[60]~DUPLICATE_q\ & (\IF_ID|DOUT\(58) & \IF_ID|DOUT[63]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000100110000000000010011100010000001001100000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(59),
	datab => \IF_ID|ALT_INV_DOUT[60]~DUPLICATE_q\,
	datac => \IF_ID|ALT_INV_DOUT\(58),
	datad => \IF_ID|ALT_INV_DOUT[63]~DUPLICATE_q\,
	datae => \IF_ID|ALT_INV_DOUT\(61),
	dataf => \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl~1_combout\,
	combout => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[1]~2_combout\);

-- Location: FF_X43_Y4_N37
\ID_EX|DOUT[180]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(180));

-- Location: MLABCELL_X45_Y4_N51
\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ = ( !\ID_EX|DOUT\(179) & ( !\ID_EX|DOUT\(180) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ID_EX|ALT_INV_DOUT\(179),
	dataf => \ID_EX|ALT_INV_DOUT\(180),
	combout => \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y4_N24
\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~5_combout\ = ( \INST_DECODE|UNIDADE_CONT_ULA|ULActrl~0_combout\ & ( (\IF_ID|DOUT\(33) & !\IF_ID|DOUT\(58)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \IF_ID|ALT_INV_DOUT\(33),
	datad => \IF_ID|ALT_INV_DOUT\(58),
	dataf => \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl~0_combout\,
	combout => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~5_combout\);

-- Location: LABCELL_X43_Y4_N12
\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~6_combout\ = ( \IF_ID|DOUT\(61) & ( \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~5_combout\ & ( (!\IF_ID|DOUT\(58) & (!\IF_ID|DOUT[63]~DUPLICATE_q\ & (\IF_ID|DOUT\(59) & !\IF_ID|DOUT[60]~DUPLICATE_q\))) ) ) ) # ( 
-- !\IF_ID|DOUT\(61) & ( \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~5_combout\ & ( (!\IF_ID|DOUT[63]~DUPLICATE_q\ & !\IF_ID|DOUT\(59)) ) ) ) # ( \IF_ID|DOUT\(61) & ( !\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~5_combout\ & ( (!\IF_ID|DOUT\(58) & 
-- (!\IF_ID|DOUT[63]~DUPLICATE_q\ & (\IF_ID|DOUT\(59) & !\IF_ID|DOUT[60]~DUPLICATE_q\))) ) ) ) # ( !\IF_ID|DOUT\(61) & ( !\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~5_combout\ & ( (!\IF_ID|DOUT[63]~DUPLICATE_q\ & (!\IF_ID|DOUT\(59) & 
-- \IF_ID|DOUT[60]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000010000000000011000000110000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(58),
	datab => \IF_ID|ALT_INV_DOUT[63]~DUPLICATE_q\,
	datac => \IF_ID|ALT_INV_DOUT\(59),
	datad => \IF_ID|ALT_INV_DOUT[60]~DUPLICATE_q\,
	datae => \IF_ID|ALT_INV_DOUT\(61),
	dataf => \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[2]~5_combout\,
	combout => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~6_combout\);

-- Location: FF_X43_Y4_N14
\ID_EX|DOUT[181]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[181]~DUPLICATE_q\);

-- Location: FF_X44_Y4_N49
\ID_EX|DOUT[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(130));

-- Location: LABCELL_X41_Y6_N54
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~11_combout\ = ( \ID_EX|DOUT[184]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & (\ID_EX|DOUT[187]~DUPLICATE_q\ & (\ID_EX|DOUT[186]~DUPLICATE_q\ & \ID_EX|DOUT[188]~DUPLICATE_q\))) ) ) ) # ( 
-- !\ID_EX|DOUT[184]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & (\ID_EX|DOUT[187]~DUPLICATE_q\ & (!\ID_EX|DOUT[186]~DUPLICATE_q\ & !\ID_EX|DOUT[188]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(189),
	datab => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(185),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~11_combout\);

-- Location: FF_X41_Y6_N16
\IF_ID|DOUT[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(55));

-- Location: MLABCELL_X45_Y6_N54
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~3_combout\ = ( \ID_EX|DOUT\(187) & ( !\ID_EX|DOUT\(189) & ( (!\ID_EX|DOUT\(185) & (!\ID_EX|DOUT[188]~DUPLICATE_q\ & (!\ID_EX|DOUT\(184) $ (!\ID_EX|DOUT[186]~DUPLICATE_q\)))) # (\ID_EX|DOUT\(185) & (\ID_EX|DOUT\(184) & 
-- (\ID_EX|DOUT[186]~DUPLICATE_q\ & \ID_EX|DOUT[188]~DUPLICATE_q\))) ) ) ) # ( !\ID_EX|DOUT\(187) & ( !\ID_EX|DOUT\(189) & ( (!\ID_EX|DOUT[188]~DUPLICATE_q\ & ((!\ID_EX|DOUT[186]~DUPLICATE_q\ & ((\ID_EX|DOUT\(185)))) # (\ID_EX|DOUT[186]~DUPLICATE_q\ & 
-- (!\ID_EX|DOUT\(184))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000000000010010000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(184),
	datab => \ID_EX|ALT_INV_DOUT\(185),
	datac => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT\(187),
	dataf => \ID_EX|ALT_INV_DOUT\(189),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~3_combout\);

-- Location: FF_X45_Y6_N37
\IF_ID|DOUT[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(53));

-- Location: LABCELL_X41_Y6_N45
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~5_combout\ = ( \ID_EX|DOUT[184]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT[188]~DUPLICATE_q\ $ (((\ID_EX|DOUT[186]~DUPLICATE_q\ & \ID_EX|DOUT[187]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\ID_EX|DOUT[184]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT[188]~DUPLICATE_q\ & !\ID_EX|DOUT\(189)) ) ) ) # ( \ID_EX|DOUT[184]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT[188]~DUPLICATE_q\ & (\ID_EX|DOUT[187]~DUPLICATE_q\ & 
-- !\ID_EX|DOUT\(189))) ) ) ) # ( !\ID_EX|DOUT[184]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT[188]~DUPLICATE_q\ & (!\ID_EX|DOUT\(189) & ((\ID_EX|DOUT[187]~DUPLICATE_q\) # (\ID_EX|DOUT[186]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000000011000000000011001100000000001100100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datab => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT\(189),
	datae => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(185),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~5_combout\);

-- Location: FF_X41_Y6_N14
\IF_ID|DOUT[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(56));

-- Location: LABCELL_X41_Y6_N51
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~4_combout\ = ( \ID_EX|DOUT[184]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (\ID_EX|DOUT[186]~DUPLICATE_q\ & (\ID_EX|DOUT[188]~DUPLICATE_q\ & (\ID_EX|DOUT[187]~DUPLICATE_q\ & !\ID_EX|DOUT\(189)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datab => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT\(189),
	datae => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(185),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~4_combout\);

-- Location: FF_X41_Y6_N35
\IF_ID|DOUT[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(57));

-- Location: LABCELL_X41_Y6_N24
\INST_DECODE|BANCO_REGISTRADORES|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ = ( !\IF_ID|DOUT\(57) & ( (!\IF_ID|DOUT\(55) & (!\IF_ID|DOUT\(53) & !\IF_ID|DOUT\(56))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ALT_INV_DOUT\(55),
	datac => \IF_ID|ALT_INV_DOUT\(53),
	datad => \IF_ID|ALT_INV_DOUT\(56),
	dataf => \IF_ID|ALT_INV_DOUT\(57),
	combout => \INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\);

-- Location: FF_X43_Y6_N2
\IF_ID|DOUT[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(63));

-- Location: FF_X43_Y6_N56
\IF_ID|DOUT[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(60));

-- Location: LABCELL_X43_Y6_N45
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~8_combout\ = ( \ID_EX|DOUT[187]~DUPLICATE_q\ & ( \ID_EX|DOUT[184]~DUPLICATE_q\ & ( (!\ID_EX|DOUT[188]~DUPLICATE_q\ & (!\ID_EX|DOUT[186]~DUPLICATE_q\ & !\ID_EX|DOUT\(189))) ) ) ) # ( !\ID_EX|DOUT[187]~DUPLICATE_q\ & ( 
-- \ID_EX|DOUT[184]~DUPLICATE_q\ & ( (!\ID_EX|DOUT[188]~DUPLICATE_q\ & (!\ID_EX|DOUT\(185) & (\ID_EX|DOUT[186]~DUPLICATE_q\ & !\ID_EX|DOUT\(189)))) ) ) ) # ( \ID_EX|DOUT[187]~DUPLICATE_q\ & ( !\ID_EX|DOUT[184]~DUPLICATE_q\ & ( (!\ID_EX|DOUT[188]~DUPLICATE_q\ 
-- & (\ID_EX|DOUT\(185) & (\ID_EX|DOUT[186]~DUPLICATE_q\ & !\ID_EX|DOUT\(189)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000001000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datab => \ID_EX|ALT_INV_DOUT\(185),
	datac => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT\(189),
	datae => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~8_combout\);

-- Location: FF_X43_Y6_N46
\IF_ID|DOUT[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(47));

-- Location: LABCELL_X43_Y6_N51
\INST_DECODE|MUX_BR|saida_MUX[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ = ( !\IF_ID|DOUT\(61) & ( \IF_ID|DOUT\(47) & ( (!\IF_ID|DOUT\(63) & (!\IF_ID|DOUT\(60) & (!\IF_ID|DOUT\(59) $ (\IF_ID|DOUT\(58))))) ) ) ) # ( !\IF_ID|DOUT\(61) & ( !\IF_ID|DOUT\(47) & ( (!\IF_ID|DOUT\(63) & 
-- (\IF_ID|DOUT\(59) & (\IF_ID|DOUT\(58) & !\IF_ID|DOUT\(60)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000010000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(63),
	datab => \IF_ID|ALT_INV_DOUT\(59),
	datac => \IF_ID|ALT_INV_DOUT\(58),
	datad => \IF_ID|ALT_INV_DOUT\(60),
	datae => \IF_ID|ALT_INV_DOUT\(61),
	dataf => \IF_ID|ALT_INV_DOUT\(47),
	combout => \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\);

-- Location: LABCELL_X41_Y6_N30
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~6_combout\ = ( \ID_EX|DOUT[184]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(189) & (\ID_EX|DOUT[187]~DUPLICATE_q\ & (!\ID_EX|DOUT[186]~DUPLICATE_q\ & !\ID_EX|DOUT[188]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(189),
	datab => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(185),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~6_combout\);

-- Location: FF_X42_Y6_N32
\IF_ID|DOUT[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(50));

-- Location: LABCELL_X43_Y6_N39
\INST_DECODE|MUX_BR|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|MUX_BR|Equal2~0_combout\ = ( \IF_ID|DOUT\(58) & ( (!\IF_ID|DOUT\(60) & (!\IF_ID|DOUT\(61) & (\IF_ID|DOUT\(59) & !\IF_ID|DOUT\(63)))) ) ) # ( !\IF_ID|DOUT\(58) & ( (!\IF_ID|DOUT\(60) & (!\IF_ID|DOUT\(61) & (!\IF_ID|DOUT\(59) & 
-- !\IF_ID|DOUT\(63)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(60),
	datab => \IF_ID|ALT_INV_DOUT\(61),
	datac => \IF_ID|ALT_INV_DOUT\(59),
	datad => \IF_ID|ALT_INV_DOUT\(63),
	dataf => \IF_ID|ALT_INV_DOUT\(58),
	combout => \INST_DECODE|MUX_BR|Equal2~0_combout\);

-- Location: MLABCELL_X42_Y6_N30
\INST_DECODE|MUX_BR|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|MUX_BR|saida_MUX[2]~3_combout\ = ( \INST_DECODE|MUX_BR|Equal2~0_combout\ & ( \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ ) ) # ( !\INST_DECODE|MUX_BR|Equal2~0_combout\ & ( (\IF_ID|DOUT\(50)) # (\INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INST_DECODE|MUX_BR|ALT_INV_saida_MUX[4]~0_combout\,
	datad => \IF_ID|ALT_INV_DOUT\(50),
	dataf => \INST_DECODE|MUX_BR|ALT_INV_Equal2~0_combout\,
	combout => \INST_DECODE|MUX_BR|saida_MUX[2]~3_combout\);

-- Location: FF_X42_Y6_N2
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|MUX_BR|saida_MUX[2]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(5));

-- Location: FF_X41_Y6_N41
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(6));

-- Location: FF_X41_Y6_N44
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(8));

-- Location: LABCELL_X44_Y6_N48
\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~3_combout\ = ( \IF_ID|DOUT[63]~DUPLICATE_q\ & ( (!\IF_ID|DOUT[60]~DUPLICATE_q\ & (\IF_ID|DOUT\(58) & \IF_ID|DOUT\(59))) ) ) # ( !\IF_ID|DOUT[63]~DUPLICATE_q\ & ( (\IF_ID|DOUT[60]~DUPLICATE_q\ & (!\IF_ID|DOUT\(58) & 
-- (!\IF_ID|DOUT\(59) & !\IF_ID|DOUT\(61)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT[60]~DUPLICATE_q\,
	datab => \IF_ID|ALT_INV_DOUT\(58),
	datac => \IF_ID|ALT_INV_DOUT\(59),
	datad => \IF_ID|ALT_INV_DOUT\(61),
	dataf => \IF_ID|ALT_INV_DOUT[63]~DUPLICATE_q\,
	combout => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~3_combout\);

-- Location: LABCELL_X44_Y6_N54
\INST_DECODE|UNIDADE_DE_CONTROLE|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_DE_CONTROLE|Equal11~0_combout\ = ( !\IF_ID|DOUT[63]~DUPLICATE_q\ & ( (!\IF_ID|DOUT\(59) & (!\IF_ID|DOUT\(58) & (!\IF_ID|DOUT[60]~DUPLICATE_q\ & !\IF_ID|DOUT\(61)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(59),
	datab => \IF_ID|ALT_INV_DOUT\(58),
	datac => \IF_ID|ALT_INV_DOUT[60]~DUPLICATE_q\,
	datad => \IF_ID|ALT_INV_DOUT\(61),
	dataf => \IF_ID|ALT_INV_DOUT[63]~DUPLICATE_q\,
	combout => \INST_DECODE|UNIDADE_DE_CONTROLE|Equal11~0_combout\);

-- Location: LABCELL_X43_Y6_N12
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~7_combout\ = ( \ID_EX|DOUT\(185) & ( \ID_EX|DOUT[184]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(189) & (!\ID_EX|DOUT[188]~DUPLICATE_q\ & ((!\ID_EX|DOUT[187]~DUPLICATE_q\) # (!\ID_EX|DOUT[186]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\ID_EX|DOUT\(185) & ( \ID_EX|DOUT[184]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(189) & !\ID_EX|DOUT[188]~DUPLICATE_q\) ) ) ) # ( \ID_EX|DOUT\(185) & ( !\ID_EX|DOUT[184]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(189) & !\ID_EX|DOUT[188]~DUPLICATE_q\) ) ) ) # ( 
-- !\ID_EX|DOUT\(185) & ( !\ID_EX|DOUT[184]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(189) & !\ID_EX|DOUT[188]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(189),
	datab => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT[188]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT\(185),
	dataf => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~7_combout\);

-- Location: FF_X44_Y6_N44
\IF_ID|DOUT[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(51));

-- Location: LABCELL_X44_Y6_N12
\INST_DECODE|MUX_BR|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|MUX_BR|saida_MUX[3]~4_combout\ = ( \INST_DECODE|UNIDADE_DE_CONTROLE|Equal11~0_combout\ & ( \IF_ID|DOUT\(51) & ( \IF_ID|DOUT[46]~DUPLICATE_q\ ) ) ) # ( !\INST_DECODE|UNIDADE_DE_CONTROLE|Equal11~0_combout\ & ( \IF_ID|DOUT\(51) ) ) # ( 
-- \INST_DECODE|UNIDADE_DE_CONTROLE|Equal11~0_combout\ & ( !\IF_ID|DOUT\(51) & ( \IF_ID|DOUT[46]~DUPLICATE_q\ ) ) ) # ( !\INST_DECODE|UNIDADE_DE_CONTROLE|Equal11~0_combout\ & ( !\IF_ID|DOUT\(51) & ( (!\INST_DECODE|UNIDADE_CONT_ULA|ULActrl[0]~3_combout\ & 
-- (!\INST_DECODE|UNIDADE_DE_CONTROLE|Equal7~0_combout\ & \IF_ID|DOUT\(58))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|UNIDADE_CONT_ULA|ALT_INV_ULActrl[0]~3_combout\,
	datab => \IF_ID|ALT_INV_DOUT[46]~DUPLICATE_q\,
	datac => \INST_DECODE|UNIDADE_DE_CONTROLE|ALT_INV_Equal7~0_combout\,
	datad => \IF_ID|ALT_INV_DOUT\(58),
	datae => \INST_DECODE|UNIDADE_DE_CONTROLE|ALT_INV_Equal11~0_combout\,
	dataf => \IF_ID|ALT_INV_DOUT\(51),
	combout => \INST_DECODE|MUX_BR|saida_MUX[3]~4_combout\);

-- Location: FF_X41_Y6_N53
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|MUX_BR|saida_MUX[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(7));

-- Location: LABCELL_X41_Y6_N15
\INST_DECODE|BANCO_REGISTRADORES|registrador~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador~39_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(7) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(8) & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(5) 
-- $ (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(6)))) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(7) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(8) & 
-- (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(5) $ (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000000001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(5),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(6),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(8),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(7),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador~39_combout\);

-- Location: FF_X41_Y6_N50
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(4));

-- Location: MLABCELL_X42_Y6_N3
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~9_combout\ = ( \ID_EX|DOUT[186]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(188) & (!\ID_EX|DOUT[184]~DUPLICATE_q\ & (!\ID_EX|DOUT\(189) & \ID_EX|DOUT[187]~DUPLICATE_q\))) ) ) ) # ( 
-- !\ID_EX|DOUT[186]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(188) & (!\ID_EX|DOUT\(189) & ((!\ID_EX|DOUT[184]~DUPLICATE_q\) # (!\ID_EX|DOUT[187]~DUPLICATE_q\)))) ) ) ) # ( \ID_EX|DOUT[186]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(185) & ( 
-- (!\ID_EX|DOUT\(188) & (!\ID_EX|DOUT\(189) & ((!\ID_EX|DOUT[184]~DUPLICATE_q\) # (\ID_EX|DOUT[187]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001010000010100000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(188),
	datab => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT\(189),
	datad => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(185),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~9_combout\);

-- Location: FF_X42_Y6_N25
\IF_ID|DOUT[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(49));

-- Location: LABCELL_X43_Y6_N6
\INST_DECODE|MUX_BR|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|MUX_BR|saida_MUX[1]~2_combout\ = ( \IF_ID|DOUT\(49) & ( \INST_DECODE|MUX_BR|Equal2~0_combout\ & ( \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ ) ) ) # ( !\IF_ID|DOUT\(49) & ( \INST_DECODE|MUX_BR|Equal2~0_combout\ & ( 
-- \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ ) ) ) # ( \IF_ID|DOUT\(49) & ( !\INST_DECODE|MUX_BR|Equal2~0_combout\ ) ) # ( !\IF_ID|DOUT\(49) & ( !\INST_DECODE|MUX_BR|Equal2~0_combout\ & ( \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INST_DECODE|MUX_BR|ALT_INV_saida_MUX[4]~0_combout\,
	datae => \IF_ID|ALT_INV_DOUT\(49),
	dataf => \INST_DECODE|MUX_BR|ALT_INV_Equal2~0_combout\,
	combout => \INST_DECODE|MUX_BR|saida_MUX[1]~2_combout\);

-- Location: FF_X41_Y6_N8
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|MUX_BR|saida_MUX[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(3));

-- Location: FF_X41_Y6_N5
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(2));

-- Location: MLABCELL_X42_Y6_N45
\INST_FETCH|MEMORIA_INSTRUCAO|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_FETCH|MEMORIA_INSTRUCAO|memROM~10_combout\ = ( \ID_EX|DOUT[186]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(188) & (!\ID_EX|DOUT[184]~DUPLICATE_q\ & (!\ID_EX|DOUT\(189) & \ID_EX|DOUT[187]~DUPLICATE_q\))) ) ) ) # ( 
-- !\ID_EX|DOUT[186]~DUPLICATE_q\ & ( \ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(188) & (\ID_EX|DOUT[184]~DUPLICATE_q\ & (!\ID_EX|DOUT\(189) & \ID_EX|DOUT[187]~DUPLICATE_q\))) ) ) ) # ( !\ID_EX|DOUT[186]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(185) & ( (!\ID_EX|DOUT\(188) 
-- & (!\ID_EX|DOUT[184]~DUPLICATE_q\ & (!\ID_EX|DOUT\(189) & !\ID_EX|DOUT[187]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000001000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(188),
	datab => \ID_EX|ALT_INV_DOUT[184]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT\(189),
	datad => \ID_EX|ALT_INV_DOUT[187]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT[186]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(185),
	combout => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~10_combout\);

-- Location: FF_X42_Y6_N53
\IF_ID|DOUT[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|DOUT\(48));

-- Location: MLABCELL_X42_Y6_N51
\INST_DECODE|MUX_BR|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|MUX_BR|saida_MUX[0]~1_combout\ = ( \IF_ID|DOUT\(48) & ( \INST_DECODE|MUX_BR|Equal2~0_combout\ & ( \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ ) ) ) # ( !\IF_ID|DOUT\(48) & ( \INST_DECODE|MUX_BR|Equal2~0_combout\ & ( 
-- \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ ) ) ) # ( \IF_ID|DOUT\(48) & ( !\INST_DECODE|MUX_BR|Equal2~0_combout\ ) ) # ( !\IF_ID|DOUT\(48) & ( !\INST_DECODE|MUX_BR|Equal2~0_combout\ & ( \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INST_DECODE|MUX_BR|ALT_INV_saida_MUX[4]~0_combout\,
	datae => \IF_ID|ALT_INV_DOUT\(48),
	dataf => \INST_DECODE|MUX_BR|ALT_INV_Equal2~0_combout\,
	combout => \INST_DECODE|MUX_BR|saida_MUX[0]~1_combout\);

-- Location: FF_X42_Y6_N29
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|MUX_BR|saida_MUX[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(1));

-- Location: LABCELL_X44_Y6_N9
\INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~0_combout\ = ( !\IF_ID|DOUT\(36) & ( !\IF_ID|DOUT\(34) & ( (!\IF_ID|DOUT\(32) & (!\IF_ID|DOUT[33]~DUPLICATE_q\ & (!\IF_ID|DOUT[46]~DUPLICATE_q\ & \IF_ID|DOUT\(35)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT\(32),
	datab => \IF_ID|ALT_INV_DOUT[33]~DUPLICATE_q\,
	datac => \IF_ID|ALT_INV_DOUT[46]~DUPLICATE_q\,
	datad => \IF_ID|ALT_INV_DOUT\(35),
	datae => \IF_ID|ALT_INV_DOUT\(36),
	dataf => \IF_ID|ALT_INV_DOUT\(34),
	combout => \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~0_combout\);

-- Location: LABCELL_X44_Y6_N0
\INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~1_combout\ = ( \IF_ID|DOUT\(61) & ( \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~0_combout\ & ( (!\IF_ID|DOUT[63]~DUPLICATE_q\ & ((!\IF_ID|DOUT[60]~DUPLICATE_q\ & ((!\IF_ID|DOUT\(58)))) # 
-- (\IF_ID|DOUT[60]~DUPLICATE_q\ & ((!\IF_ID|DOUT\(59)) # (\IF_ID|DOUT\(58)))))) ) ) ) # ( !\IF_ID|DOUT\(61) & ( \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~0_combout\ & ( (!\IF_ID|DOUT[60]~DUPLICATE_q\ & (\IF_ID|DOUT\(59) & \IF_ID|DOUT\(58))) ) ) ) # ( 
-- \IF_ID|DOUT\(61) & ( !\INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~0_combout\ & ( (!\IF_ID|DOUT[63]~DUPLICATE_q\ & ((!\IF_ID|DOUT[60]~DUPLICATE_q\ & ((!\IF_ID|DOUT\(58)))) # (\IF_ID|DOUT[60]~DUPLICATE_q\ & ((!\IF_ID|DOUT\(59)) # (\IF_ID|DOUT\(58)))))) ) ) ) 
-- # ( !\IF_ID|DOUT\(61) & ( !\INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~0_combout\ & ( (!\IF_ID|DOUT[60]~DUPLICATE_q\ & ((!\IF_ID|DOUT\(59) & (!\IF_ID|DOUT[63]~DUPLICATE_q\ & !\IF_ID|DOUT\(58))) # (\IF_ID|DOUT\(59) & ((\IF_ID|DOUT\(58)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001010110010000100010000000000000010101100100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ALT_INV_DOUT[60]~DUPLICATE_q\,
	datab => \IF_ID|ALT_INV_DOUT[63]~DUPLICATE_q\,
	datac => \IF_ID|ALT_INV_DOUT\(59),
	datad => \IF_ID|ALT_INV_DOUT\(58),
	datae => \IF_ID|ALT_INV_DOUT\(61),
	dataf => \INST_DECODE|UNIDADE_DE_CONTROLE|ALT_INV_Saida[7]~0_combout\,
	combout => \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~1_combout\);

-- Location: FF_X41_Y6_N11
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(0));

-- Location: LABCELL_X41_Y6_N18
\INST_DECODE|BANCO_REGISTRADORES|registrador~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador~38_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(0) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(4) & 
-- (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(3) & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(2) $ (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(1))))) # 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(4) & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(3) & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(2) $ 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(4),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(3),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(2),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(1),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(0),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador~38_combout\);

-- Location: FF_X41_Y6_N29
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(10));

-- Location: FF_X41_Y6_N58
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(9));

-- Location: LABCELL_X41_Y6_N36
\INST_DECODE|BANCO_REGISTRADORES|registrador~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(10) & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(9) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador~39_combout\ & 
-- \INST_DECODE|BANCO_REGISTRADORES|registrador~38_combout\) ) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(10) & ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(9) & ( 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador~39_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador~38_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~39_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~38_combout\,
	datae => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(10),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(9),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\);

-- Location: FF_X43_Y4_N13
\ID_EX|DOUT[181]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|UNIDADE_CONT_ULA|ULActrl[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(181));

-- Location: MLABCELL_X42_Y6_N24
\INST_DECODE|BANCO_REGISTRADORES|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ = ( !\IF_ID|DOUT\(49) & ( !\IF_ID|DOUT\(51) & ( (!\IF_ID|DOUT\(50) & !\IF_ID|DOUT\(48)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ALT_INV_DOUT\(50),
	datac => \IF_ID|ALT_INV_DOUT\(48),
	datae => \IF_ID|ALT_INV_DOUT\(49),
	dataf => \IF_ID|ALT_INV_DOUT\(51),
	combout => \INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\);

-- Location: FF_X42_Y6_N20
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(0));

-- Location: FF_X42_Y6_N16
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|MUX_BR|saida_MUX[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(1));

-- Location: FF_X42_Y6_N38
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|MUX_BR|saida_MUX[4]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(9));

-- Location: FF_X42_Y6_N44
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(2));

-- Location: MLABCELL_X42_Y6_N21
\INST_DECODE|BANCO_REGISTRADORES|registrador~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador~41_combout\ = ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(9) & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(2) & ( 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(0) & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(1)) ) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(9) & ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(2) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(0) & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(0),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(1),
	datae => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(9),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(2),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador~41_combout\);

-- Location: FF_X42_Y6_N50
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|MUX_BR|saida_MUX[2]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(5));

-- Location: FF_X42_Y6_N8
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|MUX_BR|saida_MUX[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(7));

-- Location: FF_X42_Y6_N14
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(6));

-- Location: LABCELL_X43_Y6_N33
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[8]~feeder_combout\ = ( \INST_FETCH|MEMORIA_INSTRUCAO|memROM~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INST_FETCH|MEMORIA_INSTRUCAO|ALT_INV_memROM~7_combout\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X43_Y6_N35
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(8));

-- Location: MLABCELL_X42_Y6_N39
\INST_DECODE|BANCO_REGISTRADORES|registrador~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador~42_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(8) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(7) & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(5) 
-- $ (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(6)))) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(8) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(7) & 
-- (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(5) $ (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(5),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(7),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(6),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(8),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador~42_combout\);

-- Location: FF_X42_Y6_N59
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_FETCH|MEMORIA_INSTRUCAO|memROM~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(4));

-- Location: FF_X42_Y6_N40
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|MUX_BR|saida_MUX[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(3));

-- Location: MLABCELL_X42_Y6_N57
\INST_DECODE|BANCO_REGISTRADORES|registrador~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(3) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador~41_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador~42_combout\ & 
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(4))) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(3) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador~41_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador~42_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~41_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~42_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(4),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(3),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\);

-- Location: MLABCELL_X37_Y5_N27
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[65]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[65]~15_combout\ = ( !\MEM_WB|DOUT\(142) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(142),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[65]~15_combout\);

-- Location: FF_X37_Y5_N29
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[65]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(65));

-- Location: LABCELL_X43_Y7_N30
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X41_Y3_N33
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[13]~0_combout\ = ( !\MEM_WB|DOUT\(116) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(116),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[13]~0_combout\);

-- Location: FF_X41_Y3_N35
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(13));

-- Location: LABCELL_X41_Y5_N30
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[15]~feeder_combout\ = ( \MEM_WB|DOUT\(117) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(117),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[15]~feeder_combout\);

-- Location: FF_X41_Y5_N31
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(15));

-- Location: LABCELL_X41_Y5_N39
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X41_Y5_N40
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(16));

-- Location: MLABCELL_X42_Y6_N54
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[18]~feeder_combout\);

-- Location: FF_X42_Y6_N56
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(18));

-- Location: LABCELL_X44_Y5_N0
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[17]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[17]~1_combout\ = ( !\MEM_WB|DOUT\(118) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MEM_WB|ALT_INV_DOUT\(118),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[17]~1_combout\);

-- Location: FF_X44_Y5_N1
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(17));

-- Location: MLABCELL_X42_Y5_N42
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X42_Y5_N44
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(20));

-- Location: FF_X42_Y5_N47
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(119),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(19));

-- Location: MLABCELL_X42_Y5_N39
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X42_Y5_N41
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(22));

-- Location: MLABCELL_X42_Y5_N0
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[21]~4_combout\ = ( !\MEM_WB|DOUT\(120) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(120),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[21]~4_combout\);

-- Location: FF_X42_Y5_N2
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(21));

-- Location: LABCELL_X40_Y2_N51
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[25]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[25]~5_combout\ = ( !\MEM_WB|DOUT\(122) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(122),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[25]~5_combout\);

-- Location: FF_X40_Y2_N52
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[25]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(25));

-- Location: LABCELL_X43_Y7_N48
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X43_Y7_N50
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(26));

-- Location: FF_X43_Y4_N32
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(123),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(27));

-- Location: MLABCELL_X45_Y4_N36
\EXECUTE|ULA|ULA_B21|MUX|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ = ( \ID_EX|DOUT\(179) & ( !\ID_EX|DOUT\(180) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ID_EX|ALT_INV_DOUT\(179),
	dataf => \ID_EX|ALT_INV_DOUT\(180),
	combout => \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\);

-- Location: LABCELL_X43_Y6_N36
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X43_Y6_N38
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(30));

-- Location: MLABCELL_X37_Y4_N18
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[29]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[29]~6_combout\ = ( !\MEM_WB|DOUT\(124) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(124),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[29]~6_combout\);

-- Location: FF_X39_Y4_N13
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[29]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(29));

-- Location: FF_X41_Y5_N29
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(125),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(31));

-- Location: MLABCELL_X37_Y4_N12
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[33]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[33]~7_combout\ = ( !\MEM_WB|DOUT\(126) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(126),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[33]~7_combout\);

-- Location: FF_X37_Y4_N14
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[33]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(33));

-- Location: LABCELL_X43_Y6_N3
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[34]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X43_Y6_N5
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(34));

-- Location: FF_X42_Y3_N58
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT[127]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(35));

-- Location: FF_X42_Y3_N53
\MEM_WB|DOUT[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(44),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(127));

-- Location: LABCELL_X43_Y7_N42
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[38]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X43_Y7_N43
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(38));

-- Location: FF_X42_Y3_N44
\MEM_WB|DOUT[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(128));

-- Location: MLABCELL_X42_Y3_N36
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[37]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[37]~8_combout\ = ( !\MEM_WB|DOUT\(128) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(128),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[37]~8_combout\);

-- Location: FF_X42_Y3_N38
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[37]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(37));

-- Location: FF_X42_Y3_N11
\MEM_WB|DOUT[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(129));

-- Location: FF_X42_Y3_N8
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(129),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(39));

-- Location: LABCELL_X43_Y5_N0
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[41]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[41]~9_combout\ = ( !\MEM_WB|DOUT\(130) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(130),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[41]~9_combout\);

-- Location: FF_X43_Y5_N2
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[41]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(41));

-- Location: LABCELL_X44_Y5_N36
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[42]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X44_Y5_N37
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(42));

-- Location: FF_X44_Y4_N44
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(131),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(43));

-- Location: FF_X43_Y4_N7
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(133),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(47));

-- Location: FF_X37_Y4_N20
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(135),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(51));

-- Location: FF_X42_Y5_N38
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(137),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(55));

-- Location: LABCELL_X39_Y5_N54
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[57]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[57]~13_combout\ = !\MEM_WB|DOUT\(138)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|ALT_INV_DOUT\(138),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[57]~13_combout\);

-- Location: FF_X39_Y5_N55
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[57]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(57));

-- Location: FF_X39_Y5_N47
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT[139]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(59));

-- Location: MLABCELL_X37_Y4_N36
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[60]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[60]~feeder_combout\);

-- Location: FF_X37_Y4_N37
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(60));

-- Location: FF_X40_Y4_N17
\MEM_WB|DOUT[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(56),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(139));

-- Location: FF_X39_Y4_N55
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(139),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(59));

-- Location: FF_X39_Y4_N29
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(141),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(63));

-- Location: FF_X37_Y5_N47
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(143),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(67));

-- Location: FF_X41_Y4_N34
\MEM_WB|DOUT[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(63),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(146));

-- Location: M10K_X38_Y4_N0
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000000000D000000000C000000000B000000000A0000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAA",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Projeto2.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Instruction_Decode:INST_DECODE|bancoRegistradores:BANCO_REGISTRADORES|altsyncram:registrador_rtl_1|altsyncram_kfo1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~1_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~inputCLKENA0_outclk\,
	clk1 => \KEY[0]~inputCLKENA0_outclk\,
	ena0 => \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~1_combout\,
	portadatain => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X37_Y4_N3
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[73]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[73]~15_combout\ = ( !\MEM_WB|DOUT\(146) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(146),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[73]~15_combout\);

-- Location: FF_X37_Y4_N5
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[73]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(73));

-- Location: MLABCELL_X37_Y4_N15
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[74]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[74]~feeder_combout\);

-- Location: FF_X37_Y4_N16
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(74));

-- Location: MLABCELL_X37_Y4_N51
\INST_DECODE|BANCO_REGISTRADORES|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[31]~31_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(74) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a31\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(73)))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(74) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(73)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000101010000010000010101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a31\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(73),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(74),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[31]~31_combout\);

-- Location: FF_X37_Y4_N52
\ID_EX|DOUT[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(132));

-- Location: MLABCELL_X37_Y5_N3
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[73]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[73]~17_combout\ = ( !\MEM_WB|DOUT[146]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT[146]~DUPLICATE_q\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[73]~17_combout\);

-- Location: FF_X37_Y5_N5
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[73]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(73));

-- Location: MLABCELL_X37_Y5_N0
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[74]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X37_Y5_N2
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(74));

-- Location: M10K_X38_Y5_N0
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000000000D000000000C000000000B000000000A0000000000000000000000000000000000000000000000000000000000000000000000000000000000AAAAAAAA",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Projeto2.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Instruction_Decode:INST_DECODE|bancoRegistradores:BANCO_REGISTRADORES|altsyncram:registrador_rtl_0|altsyncram_kfo1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~1_combout\,
	portbre => VCC,
	clk0 => \KEY[0]~inputCLKENA0_outclk\,
	clk1 => \KEY[0]~inputCLKENA0_outclk\,
	ena0 => \INST_DECODE|UNIDADE_DE_CONTROLE|Saida[7]~1_combout\,
	portadatain => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X37_Y5_N9
\INST_DECODE|BANCO_REGISTRADORES|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[31]~31_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(74) & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a31\ & ( 
-- (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\) # (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(73)))) ) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(74) & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a31\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(73)) ) ) ) # ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(74) & ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a31\ & ( 
-- (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(73))) ) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(74) 
-- & ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a31\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(73)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000010100000000010101010000000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(73),
	datae => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(74),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a31\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[31]~31_combout\);

-- Location: FF_X37_Y5_N10
\ID_EX|DOUT[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(100));

-- Location: LABCELL_X39_Y4_N39
\EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(181) & ( !\ID_EX|DOUT\(100) ) ) # ( !\ID_EX|DOUT\(181) & ( \ID_EX|DOUT\(100) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(100),
	dataf => \ID_EX|ALT_INV_DOUT\(181),
	combout => \EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: FF_X41_Y6_N37
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(145),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(71));

-- Location: LABCELL_X41_Y6_N21
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[72]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[72]~feeder_combout\);

-- Location: FF_X41_Y6_N23
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(72));

-- Location: LABCELL_X41_Y6_N0
\INST_DECODE|BANCO_REGISTRADORES|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[30]~30_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(72) & ( !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a30\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(71))) ) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(72) & ( !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(71) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(71),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a30\,
	datae => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(72),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[30]~30_combout\);

-- Location: FF_X41_Y6_N1
\ID_EX|DOUT[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(131));

-- Location: FF_X39_Y4_N52
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(143),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(67));

-- Location: MLABCELL_X37_Y4_N21
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[68]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[68]~feeder_combout\);

-- Location: FF_X37_Y4_N22
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(68));

-- Location: MLABCELL_X37_Y4_N48
\INST_DECODE|BANCO_REGISTRADORES|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[28]~28_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(68) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a28\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(67))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(68) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(67)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(67),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a28\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(68),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[28]~28_combout\);

-- Location: FF_X37_Y4_N50
\ID_EX|DOUT[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(129));

-- Location: LABCELL_X39_Y5_N36
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[69]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[69]~16_combout\ = ( !\MEM_WB|DOUT\(144) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(144),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[69]~16_combout\);

-- Location: FF_X39_Y5_N37
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[69]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(69));

-- Location: LABCELL_X39_Y5_N33
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[70]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X39_Y5_N34
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(70));

-- Location: LABCELL_X39_Y5_N39
\INST_DECODE|BANCO_REGISTRADORES|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[29]~29_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(70) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a29\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(69))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(70) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(69)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000001000000110010000100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(69),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a29\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(70),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[29]~29_combout\);

-- Location: FF_X39_Y5_N40
\ID_EX|DOUT[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(98));

-- Location: LABCELL_X44_Y4_N9
\EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(98) & ( !\ID_EX|DOUT\(181) ) ) # ( !\ID_EX|DOUT\(98) & ( \ID_EX|DOUT\(181) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(181),
	dataf => \ID_EX|ALT_INV_DOUT\(98),
	combout => \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X44_Y4_N36
\EXECUTE|ULA|ULA_B29|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B29|SOMA_SUB|saida_xor~combout\ = ( \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ID_EX|DOUT[130]~DUPLICATE_q\ ) ) # ( !\EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ID_EX|DOUT[130]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[130]~DUPLICATE_q\,
	dataf => \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B29|SOMA_SUB|saida_xor~combout\);

-- Location: FF_X37_Y4_N43
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(141),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(63));

-- Location: MLABCELL_X37_Y4_N57
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[64]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[64]~feeder_combout\);

-- Location: FF_X37_Y4_N58
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(64));

-- Location: MLABCELL_X37_Y4_N54
\INST_DECODE|BANCO_REGISTRADORES|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[26]~26_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(64) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a26\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(63)))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(64) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(63)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a26\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(63),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(64),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[26]~26_combout\);

-- Location: FF_X37_Y4_N56
\ID_EX|DOUT[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(127));

-- Location: LABCELL_X39_Y5_N24
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[61]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[61]~14_combout\ = ( !\MEM_WB|DOUT\(140) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(140),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[61]~14_combout\);

-- Location: FF_X39_Y5_N25
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[61]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(61));

-- Location: LABCELL_X44_Y5_N33
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[62]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X44_Y5_N34
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(62));

-- Location: LABCELL_X39_Y5_N15
\INST_DECODE|BANCO_REGISTRADORES|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[25]~25_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a25\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(61)) # ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(62))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a25\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(61) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(62)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001000000110000000100000011000000110010001100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(61),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(62),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a25\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[25]~25_combout\);

-- Location: FF_X39_Y5_N17
\ID_EX|DOUT[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(94));

-- Location: LABCELL_X40_Y5_N54
\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(94) & ( !\ID_EX|DOUT[181]~DUPLICATE_q\ ) ) # ( !\ID_EX|DOUT\(94) & ( \ID_EX|DOUT[181]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(94),
	combout => \EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X40_Y5_N30
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[61]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[61]~12_combout\ = ( !\MEM_WB|DOUT\(140) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(140),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[61]~12_combout\);

-- Location: FF_X40_Y5_N31
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[61]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(61));

-- Location: LABCELL_X41_Y5_N57
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[62]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[62]~feeder_combout\);

-- Location: FF_X41_Y5_N58
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(62));

-- Location: LABCELL_X41_Y5_N54
\INST_DECODE|BANCO_REGISTRADORES|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[25]~25_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(62) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a25\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(61))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(62) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(61)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(61),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a25\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(62),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[25]~25_combout\);

-- Location: FF_X41_Y5_N55
\ID_EX|DOUT[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(126));

-- Location: LABCELL_X40_Y4_N39
\EXECUTE|ULA|ULA_B24|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B24|SOMA_SUB|saida_xor~combout\ = ( \EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ID_EX|DOUT\(125) ) ) # ( !\EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ID_EX|DOUT\(125) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(125),
	dataf => \EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B24|SOMA_SUB|saida_xor~combout\);

-- Location: FF_X42_Y5_N17
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(137),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(55));

-- Location: MLABCELL_X42_Y5_N57
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[56]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X42_Y5_N58
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(56));

-- Location: MLABCELL_X42_Y5_N12
\INST_DECODE|BANCO_REGISTRADORES|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[22]~22_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(56) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a22\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(55))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(56) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(55)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000010101000100000001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(55),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a22\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(56),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[22]~22_combout\);

-- Location: FF_X42_Y5_N14
\ID_EX|DOUT[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(91));

-- Location: MLABCELL_X42_Y5_N15
\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(91) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(91) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(91),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y5_N48
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[57]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[57]~11_combout\ = !\MEM_WB|DOUT\(138)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|ALT_INV_DOUT\(138),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[57]~11_combout\);

-- Location: FF_X39_Y5_N49
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[57]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(57));

-- Location: LABCELL_X40_Y5_N57
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[58]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[58]~feeder_combout\);

-- Location: FF_X40_Y5_N58
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(58));

-- Location: LABCELL_X40_Y5_N24
\INST_DECODE|BANCO_REGISTRADORES|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[23]~23_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(58) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a23\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(57)))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(58) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(57)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000001110000001000000111000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a23\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(57),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(58),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[23]~23_combout\);

-- Location: FF_X40_Y5_N26
\ID_EX|DOUT[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(124));

-- Location: MLABCELL_X37_Y5_N36
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[53]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[53]~12_combout\ = ( !\MEM_WB|DOUT\(136) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(136),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[53]~12_combout\);

-- Location: FF_X37_Y5_N37
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[53]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(53));

-- Location: MLABCELL_X37_Y5_N24
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[54]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X37_Y5_N25
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(54));

-- Location: MLABCELL_X37_Y5_N39
\INST_DECODE|BANCO_REGISTRADORES|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[21]~21_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(54) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a21\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(53))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(54) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(53)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000001000101010000000100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(53),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a21\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(54),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[21]~21_combout\);

-- Location: FF_X37_Y5_N40
\ID_EX|DOUT[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(90));

-- Location: LABCELL_X40_Y5_N18
\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ = ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(90) ) ) # ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(90) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(90),
	combout => \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: FF_X40_Y5_N23
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(135),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(51));

-- Location: LABCELL_X40_Y5_N12
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[52]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X40_Y5_N13
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(52));

-- Location: LABCELL_X40_Y5_N42
\INST_DECODE|BANCO_REGISTRADORES|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[20]~20_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(52) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a20\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(51)))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(52) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(51)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a20\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(51),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(52),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[20]~20_combout\);

-- Location: FF_X40_Y5_N44
\ID_EX|DOUT[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(89));

-- Location: LABCELL_X40_Y5_N15
\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ = !\ID_EX|DOUT\(89) $ (!\ID_EX|DOUT[181]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(89),
	datad => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y5_N51
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[49]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[49]~11_combout\ = !\MEM_WB|DOUT\(134)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|ALT_INV_DOUT\(134),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[49]~11_combout\);

-- Location: FF_X39_Y5_N53
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[49]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(49));

-- Location: LABCELL_X39_Y5_N30
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[50]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X39_Y5_N31
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(50));

-- Location: LABCELL_X39_Y5_N12
\INST_DECODE|BANCO_REGISTRADORES|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[19]~19_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(50) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a19\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(49))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(50) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(49)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000001000000110010000100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(49),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a19\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(50),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[19]~19_combout\);

-- Location: FF_X39_Y5_N13
\ID_EX|DOUT[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(88));

-- Location: LABCELL_X40_Y5_N6
\EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor~combout\ = ( \ID_EX|DOUT\(120) & ( !\ID_EX|DOUT\(88) $ (\ID_EX|DOUT[181]~DUPLICATE_q\) ) ) # ( !\ID_EX|DOUT\(120) & ( !\ID_EX|DOUT\(88) $ (!\ID_EX|DOUT[181]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(88),
	datad => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(120),
	combout => \EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor~combout\);

-- Location: FF_X39_Y5_N5
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(133),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(47));

-- Location: LABCELL_X39_Y5_N27
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[48]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X39_Y5_N28
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(48));

-- Location: LABCELL_X39_Y5_N0
\INST_DECODE|BANCO_REGISTRADORES|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[18]~18_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(47) & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(48) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a18\) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\))) ) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(47) & ( 
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(48) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a18\)) ) ) ) # ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(47) & ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(48) & ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000101000000000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a18\,
	datae => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(47),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(48),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[18]~18_combout\);

-- Location: FF_X39_Y5_N1
\ID_EX|DOUT[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(87));

-- Location: LABCELL_X40_Y5_N48
\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\ = ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(87) ) ) # ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(87) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(87),
	combout => \EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: MLABCELL_X42_Y5_N18
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[45]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[45]~8_combout\ = !\MEM_WB|DOUT\(132)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEM_WB|ALT_INV_DOUT\(132),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[45]~8_combout\);

-- Location: FF_X42_Y5_N19
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[45]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(45));

-- Location: LABCELL_X41_Y5_N15
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[46]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[46]~feeder_combout\);

-- Location: FF_X41_Y5_N16
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(46));

-- Location: LABCELL_X41_Y5_N48
\INST_DECODE|BANCO_REGISTRADORES|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[17]~17_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a17\ & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(46) & ( 
-- (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(45)) # (!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\))) ) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a17\ & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(46) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(45) & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\)) ) ) ) # ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a17\ & ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(46) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(45) & !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\) ) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a17\ & ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(46) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(45) & 
-- !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000100000001000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(45),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datae => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a17\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(46),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[17]~17_combout\);

-- Location: FF_X41_Y5_N49
\ID_EX|DOUT[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(118));

-- Location: FF_X43_Y5_N47
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(131),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(43));

-- Location: LABCELL_X43_Y5_N24
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[44]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X43_Y5_N25
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(44));

-- Location: LABCELL_X43_Y5_N27
\INST_DECODE|BANCO_REGISTRADORES|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[16]~16_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(44) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a16\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(43))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(44) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(43)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(43),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a16\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(44),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[16]~16_combout\);

-- Location: FF_X43_Y5_N28
\ID_EX|DOUT[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(85));

-- Location: LABCELL_X43_Y5_N45
\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(85) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(85) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(85),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y5_N6
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[41]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[41]~7_combout\ = ( !\MEM_WB|DOUT\(130) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(130),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[41]~7_combout\);

-- Location: FF_X43_Y5_N8
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[41]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(41));

-- Location: LABCELL_X44_Y5_N18
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[42]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[42]~feeder_combout\);

-- Location: FF_X44_Y5_N19
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(42));

-- Location: LABCELL_X43_Y5_N42
\INST_DECODE|BANCO_REGISTRADORES|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[15]~15_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a15\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(41)) # ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(42) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a15\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(41) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(42)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010001010100010001000101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(41),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(42),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a15\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[15]~15_combout\);

-- Location: FF_X43_Y5_N44
\ID_EX|DOUT[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(116));

-- Location: FF_X42_Y3_N17
\ID_EX|DOUT[83]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[83]~DUPLICATE_q\);

-- Location: FF_X42_Y3_N5
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(129),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(39));

-- Location: MLABCELL_X42_Y7_N39
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[40]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[40]~feeder_combout\);

-- Location: FF_X42_Y7_N41
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(40));

-- Location: MLABCELL_X42_Y3_N18
\INST_DECODE|BANCO_REGISTRADORES|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[14]~14_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a14\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- (((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(40))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(39)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a14\ & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(39) & (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(40)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000100000000010100010000000001011101000000000101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(39),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(40),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a14\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[14]~14_combout\);

-- Location: FF_X42_Y3_N20
\ID_EX|DOUT[115]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[115]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N3
\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~1_combout\ = ( \ID_EX|DOUT[115]~DUPLICATE_q\ & ( !\ID_EX|DOUT[83]~DUPLICATE_q\ $ (!\ID_EX|DOUT[181]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT[83]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT[115]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~1_combout\);

-- Location: LABCELL_X41_Y5_N42
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[37]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[37]~6_combout\ = !\MEM_WB|DOUT[128]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB|ALT_INV_DOUT[128]~DUPLICATE_q\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[37]~6_combout\);

-- Location: FF_X41_Y5_N44
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[37]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(37));

-- Location: LABCELL_X44_Y4_N0
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[38]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[38]~feeder_combout\);

-- Location: FF_X44_Y4_N1
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(38));

-- Location: LABCELL_X41_Y5_N45
\INST_DECODE|BANCO_REGISTRADORES|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[13]~13_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a13\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(37)) # ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(38))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a13\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(37) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(38)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000100000101000000010000010100000101010001010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(37),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(38),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a13\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[13]~13_combout\);

-- Location: FF_X41_Y5_N46
\ID_EX|DOUT[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(114));

-- Location: FF_X42_Y3_N25
\ID_EX|DOUT[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(113));

-- Location: MLABCELL_X42_Y3_N6
\EXECUTE|ULA|ULA_B14|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B14|SOMA_SUB|saida_xor~combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT[115]~DUPLICATE_q\ $ (\ID_EX|DOUT[83]~DUPLICATE_q\) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT[115]~DUPLICATE_q\ $ 
-- (!\ID_EX|DOUT[83]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111100001111111100001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT[115]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT[83]~DUPLICATE_q\,
	datae => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B14|SOMA_SUB|saida_xor~combout\);

-- Location: FF_X42_Y3_N47
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(127),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(35));

-- Location: MLABCELL_X42_Y3_N27
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[36]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X42_Y3_N28
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(36));

-- Location: MLABCELL_X42_Y3_N48
\INST_DECODE|BANCO_REGISTRADORES|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[12]~12_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a12\ & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(36) & ( 
-- (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\) # (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(35)))) ) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a12\ & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(36) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(35) & !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\)) ) ) ) # ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a12\ & ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(36) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(35) & !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\) ) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a12\ & ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(36) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(35) & 
-- !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000010000000100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(35),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datae => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a12\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(36),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[12]~12_combout\);

-- Location: FF_X42_Y3_N50
\ID_EX|DOUT[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(81));

-- Location: MLABCELL_X42_Y3_N45
\EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ = ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(81) ) ) # ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(81) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(81),
	combout => \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y6_N30
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[32]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X43_Y6_N32
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(32));

-- Location: FF_X43_Y4_N5
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(125),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(31));

-- Location: LABCELL_X43_Y4_N27
\INST_DECODE|BANCO_REGISTRADORES|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[10]~10_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a10\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- (((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(32))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(31)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a10\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(31) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(32)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100010000000001010001000001000101010100000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(32),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(31),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[10]~10_combout\);

-- Location: FF_X43_Y4_N29
\ID_EX|DOUT[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(79));

-- Location: LABCELL_X43_Y4_N45
\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(79) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(79) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|ALT_INV_DOUT\(79),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y4_N9
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[29]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[29]~4_combout\ = !\MEM_WB|DOUT\(124)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEM_WB|ALT_INV_DOUT\(124),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[29]~4_combout\);

-- Location: FF_X39_Y4_N10
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[29]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(29));

-- Location: LABCELL_X44_Y4_N51
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[30]~feeder_combout\);

-- Location: FF_X44_Y4_N52
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(30));

-- Location: LABCELL_X43_Y4_N9
\INST_DECODE|BANCO_REGISTRADORES|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[9]~9_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a9\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(29)) # ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(30))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a9\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(29) & (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(30)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101000100000000010101110000000001010111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(29),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(30),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a9\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[9]~9_combout\);

-- Location: FF_X43_Y4_N11
\ID_EX|DOUT[110]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[110]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y4_N51
\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( (\ID_EX|DOUT[110]~DUPLICATE_q\ & !\ID_EX|DOUT\(78)) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( (\ID_EX|DOUT[110]~DUPLICATE_q\ & \ID_EX|DOUT\(78)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT[110]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT\(78),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\);

-- Location: MLABCELL_X37_Y4_N9
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[34]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[34]~feeder_combout\);

-- Location: FF_X37_Y4_N10
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(34));

-- Location: MLABCELL_X37_Y4_N45
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[33]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[33]~5_combout\ = !\MEM_WB|DOUT\(126)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|ALT_INV_DOUT\(126),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[33]~5_combout\);

-- Location: FF_X37_Y4_N47
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[33]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(33));

-- Location: MLABCELL_X37_Y4_N6
\INST_DECODE|BANCO_REGISTRADORES|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[11]~11_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a11\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(33)) # ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(34) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a11\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(33) & (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(34)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000100000001100000011010000110000001101000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(34),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(33),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a11\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[11]~11_combout\);

-- Location: FF_X42_Y4_N59
\ID_EX|DOUT[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaA[11]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(112));

-- Location: LABCELL_X41_Y3_N6
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[25]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[25]~3_combout\ = ( !\MEM_WB|DOUT\(122) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(122),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[25]~3_combout\);

-- Location: FF_X41_Y3_N7
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[25]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(25));

-- Location: LABCELL_X41_Y3_N27
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X41_Y3_N28
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(26));

-- Location: LABCELL_X41_Y3_N24
\INST_DECODE|BANCO_REGISTRADORES|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[7]~7_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(26) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a7\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(25))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(26) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(25) & !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000001100100010000000110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(25),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a7\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(26),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[7]~7_combout\);

-- Location: FF_X41_Y3_N26
\ID_EX|DOUT[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(108));

-- Location: LABCELL_X41_Y3_N18
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[28]~feeder_combout\);

-- Location: FF_X41_Y3_N19
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(28));

-- Location: FF_X41_Y3_N40
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(123),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(27));

-- Location: LABCELL_X39_Y4_N6
\INST_DECODE|BANCO_REGISTRADORES|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[8]~8_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a8\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- (((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(28) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(27)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a8\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(27) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(28)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010000000110001001100000011000100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(28),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(27),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a8\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[8]~8_combout\);

-- Location: FF_X43_Y4_N20
\ID_EX|DOUT[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaA[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(109));

-- Location: FF_X43_Y4_N10
\ID_EX|DOUT[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(110));

-- Location: LABCELL_X43_Y4_N54
\EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor~combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(110) $ (\ID_EX|DOUT\(78)) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(110) $ (!\ID_EX|DOUT\(78)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(110),
	datad => \ID_EX|ALT_INV_DOUT\(78),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor~combout\);

-- Location: LABCELL_X40_Y5_N33
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X40_Y5_N34
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(22));

-- Location: LABCELL_X41_Y5_N0
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[21]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[21]~2_combout\ = !\MEM_WB|DOUT\(120)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB|ALT_INV_DOUT\(120),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[21]~2_combout\);

-- Location: FF_X41_Y5_N2
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[21]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(21));

-- Location: LABCELL_X41_Y5_N3
\INST_DECODE|BANCO_REGISTRADORES|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[5]~5_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a5\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(21)) # ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(22))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a5\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(21) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(22)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101000100000000010101010000010001010101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(22),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(21),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a5\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[5]~5_combout\);

-- Location: FF_X41_Y5_N4
\ID_EX|DOUT[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(106));

-- Location: FF_X42_Y5_N23
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(121),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(23));

-- Location: MLABCELL_X42_Y5_N30
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X42_Y5_N31
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(24));

-- Location: MLABCELL_X42_Y5_N3
\INST_DECODE|BANCO_REGISTRADORES|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[6]~6_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(24) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a6\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(23)))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(24) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000100000011100000010000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(23),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(24),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[6]~6_combout\);

-- Location: FF_X42_Y5_N5
\ID_EX|DOUT[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(75));

-- Location: MLABCELL_X42_Y4_N0
\EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(75) & ( !\ID_EX|DOUT[181]~DUPLICATE_q\ ) ) # ( !\ID_EX|DOUT\(75) & ( \ID_EX|DOUT[181]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(75),
	combout => \EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: FF_X43_Y4_N44
\ID_EX|DOUT[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(103));

-- Location: LABCELL_X39_Y5_N6
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X39_Y5_N8
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(16));

-- Location: FF_X42_Y5_N10
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(117),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(15));

-- Location: LABCELL_X39_Y5_N42
\INST_DECODE|BANCO_REGISTRADORES|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[2]~2_combout\ = ( !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a2\ & ( 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(16) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(15)) ) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ 
-- & ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a2\ & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(15) & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(16)) # 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000000000000000110000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(16),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(15),
	datae => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[2]~2_combout\);

-- Location: FF_X42_Y4_N17
\ID_EX|DOUT[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaB[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(71));

-- Location: MLABCELL_X42_Y4_N54
\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(71) & ( !\ID_EX|DOUT[181]~DUPLICATE_q\ ) ) # ( !\ID_EX|DOUT\(71) & ( \ID_EX|DOUT[181]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(71),
	combout => \EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X40_Y5_N39
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[20]~feeder_combout\);

-- Location: FF_X40_Y5_N40
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(20));

-- Location: FF_X40_Y3_N19
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(119),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(19));

-- Location: LABCELL_X39_Y4_N57
\INST_DECODE|BANCO_REGISTRADORES|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[4]~4_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a4\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- (((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(20) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(19)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a4\ & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(19) & (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(20)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110000001000000011000001110000001100000111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(20),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(19),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a4\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[4]~4_combout\);

-- Location: FF_X42_Y4_N11
\ID_EX|DOUT[105]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaA[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[105]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N30
\EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor~combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT[105]~DUPLICATE_q\ $ (\ID_EX|DOUT\(73)) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT[105]~DUPLICATE_q\ $ (!\ID_EX|DOUT\(73)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT[105]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT\(73),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor~combout\);

-- Location: LABCELL_X43_Y5_N48
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[17]~3_combout\ = ( !\MEM_WB|DOUT\(118) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(118),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[17]~3_combout\);

-- Location: FF_X43_Y5_N50
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(17));

-- Location: LABCELL_X43_Y5_N39
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X43_Y5_N41
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(18));

-- Location: LABCELL_X43_Y5_N3
\INST_DECODE|BANCO_REGISTRADORES|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[3]~3_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a3\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(17)) # ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(18))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a3\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(17) & (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(18)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101000100000000010101110000000001010111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(17),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(18),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[3]~3_combout\);

-- Location: FF_X42_Y4_N38
\ID_EX|DOUT[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaB[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(72));

-- Location: MLABCELL_X42_Y4_N45
\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(72) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(72) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|ALT_INV_DOUT\(72),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: MLABCELL_X42_Y5_N33
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[13]~2_combout\ = !\MEM_WB|DOUT\(116)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|ALT_INV_DOUT\(116),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[13]~2_combout\);

-- Location: FF_X42_Y5_N34
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(13));

-- Location: MLABCELL_X42_Y5_N54
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X42_Y5_N56
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(14));

-- Location: MLABCELL_X42_Y5_N21
\INST_DECODE|BANCO_REGISTRADORES|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[1]~1_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a1\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(13)) # ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(14))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a1\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(13) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(14)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001000000110000000100000011000000110010001100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(13),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(14),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[1]~1_combout\);

-- Location: FF_X42_Y4_N53
\ID_EX|DOUT[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaB[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(70));

-- Location: LABCELL_X41_Y3_N51
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X41_Y3_N52
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(12));

-- Location: FF_X41_Y3_N16
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(115),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(11));

-- Location: LABCELL_X41_Y3_N12
\INST_DECODE|BANCO_REGISTRADORES|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[0]~0_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(12) & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(11) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\) # (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\))) ) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(12) & ( 
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(11) & ( !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ ) ) ) # ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(12) & ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(11) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ & 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000011001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datae => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(12),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(11),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[0]~0_combout\);

-- Location: FF_X41_Y3_N13
\ID_EX|DOUT[101]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[101]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N42
\EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\ = ( \ID_EX|DOUT[101]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(70) & (((\ID_EX|DOUT\(102) & \ID_EX|DOUT\(69))) # (\ID_EX|DOUT[181]~DUPLICATE_q\))) # (\ID_EX|DOUT\(70) & (((!\ID_EX|DOUT[181]~DUPLICATE_q\ & 
-- \ID_EX|DOUT\(69))) # (\ID_EX|DOUT\(102)))) ) ) # ( !\ID_EX|DOUT[101]~DUPLICATE_q\ & ( (!\ID_EX|DOUT\(70) & (\ID_EX|DOUT[181]~DUPLICATE_q\ & ((!\ID_EX|DOUT\(69)) # (\ID_EX|DOUT\(102))))) # (\ID_EX|DOUT\(70) & (\ID_EX|DOUT\(102) & 
-- ((!\ID_EX|DOUT[181]~DUPLICATE_q\) # (!\ID_EX|DOUT\(69))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000110001001110000011000100111011011110010011101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(70),
	datab => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT\(102),
	datad => \ID_EX|ALT_INV_DOUT\(69),
	dataf => \ID_EX|ALT_INV_DOUT[101]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\);

-- Location: MLABCELL_X42_Y4_N18
\EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~0_combout\ = ( \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor~combout\ & 
-- (((\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(103))) # (\ID_EX|DOUT\(104)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\ & ( (\ID_EX|DOUT\(104) & 
-- (\EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor~combout\ & ((\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(103))))) ) ) ) # ( \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\ & ( 
-- (\EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor~combout\ & (((\ID_EX|DOUT\(103) & \EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(104)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\ & ( (\ID_EX|DOUT\(104) & (\ID_EX|DOUT\(103) & (\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000101011100000000000101010000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(104),
	datab => \ID_EX|ALT_INV_DOUT\(103),
	datac => \EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datae => \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B1|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~0_combout\);

-- Location: MLABCELL_X42_Y4_N6
\EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(107) & (!\ID_EX|DOUT\(106) & 
-- !\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(107)) # ((!\ID_EX|DOUT\(106) & 
-- !\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(107) & ((!\ID_EX|DOUT\(106) & 
-- ((!\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0_combout\))) # (\ID_EX|DOUT\(106) & (!\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0_combout\)))) ) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(107)) # ((!\ID_EX|DOUT\(106) & ((!\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (!\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0_combout\))) # (\ID_EX|DOUT\(106) & (!\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101010101010001000000011101010111010101000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(107),
	datab => \ID_EX|ALT_INV_DOUT\(106),
	datac => \EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\);

-- Location: MLABCELL_X42_Y4_N48
\EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\ = ( \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor~combout\ & ((!\ID_EX|DOUT\(108) & (\ID_EX|DOUT\(109) & 
-- \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(108) & ((\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(109)))))) ) ) ) # ( !\EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- \EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\ & ( (\ID_EX|DOUT\(109) & (\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor~combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor~combout\ & ((\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(109)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor~combout\ & ((!\ID_EX|DOUT\(108) & (\ID_EX|DOUT\(109) & \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(108) & 
-- ((\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(109)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000011111100000000000000110000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(108),
	datab => \ID_EX|ALT_INV_DOUT\(109),
	datac => \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B9|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datae => \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B6|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\);

-- Location: MLABCELL_X42_Y4_N39
\EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(111) & 
-- !\ID_EX|DOUT\(112))) ) ) ) # ( !\EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(112)) # ((!\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(111))) ) ) ) # 
-- ( \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(112) & ((!\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ID_EX|DOUT\(111)) # 
-- (!\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\))) # (\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(111) & !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(112)) # ((!\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ID_EX|DOUT\(111)) # (!\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\))) # 
-- (\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(111) & !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111100010001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(111),
	datac => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(112),
	datae => \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B9|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\);

-- Location: MLABCELL_X42_Y4_N24
\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~0_combout\ = ( \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B14|SOMA_SUB|saida_xor~combout\ & ((!\ID_EX|DOUT\(114) & (\ID_EX|DOUT\(113) & 
-- \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(114) & ((\EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(113)))))) ) ) ) # ( !\EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- \EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\ & ( (\ID_EX|DOUT\(114) & (\EXECUTE|ULA|ULA_B14|SOMA_SUB|saida_xor~combout\ & \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B14|SOMA_SUB|saida_xor~combout\ & ((\EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(114)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B14|SOMA_SUB|saida_xor~combout\ & ((!\ID_EX|DOUT\(114) & (\ID_EX|DOUT\(113) & \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(114) & 
-- ((\EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(113)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000001010000111100000000000001010000000100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(114),
	datab => \ID_EX|ALT_INV_DOUT\(113),
	datac => \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datad => \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B11|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~0_combout\);

-- Location: MLABCELL_X42_Y4_N12
\EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~1_combout\ & ( \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ID_EX|DOUT\(117)) # 
-- ((!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(116))))) # (\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(117) & (!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(116)))) ) ) ) 
-- # ( !\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~1_combout\ & ( \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ID_EX|DOUT\(117)) # ((!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- !\ID_EX|DOUT\(116))))) # (\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(117) & (!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(116)))) ) ) ) # ( \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~1_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ID_EX|DOUT\(117)) # ((!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(116))))) # 
-- (\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(117) & (!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(116)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~1_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ID_EX|DOUT\(117)) # ((!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\ID_EX|DOUT\(116))))) # 
-- (\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(117) & ((!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\ID_EX|DOUT\(116))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(117),
	datac => \EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(116),
	datae => \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X41_Y4_N18
\EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ = ( \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor~combout\ & ((!\ID_EX|DOUT\(119) & 
-- (\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(118))) # (\ID_EX|DOUT\(119) & ((\ID_EX|DOUT\(118)) # (\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\))))) ) ) ) # ( !\EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- ( \EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\ & ( (\ID_EX|DOUT\(119) & (\EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor~combout\ & \EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor~combout\ & ((\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(119)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor~combout\ & ((!\ID_EX|DOUT\(119) & (\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(118))) # (\ID_EX|DOUT\(119) & ((\ID_EX|DOUT\(118)) # 
-- (\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000100110001001100000001000000010000000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(119),
	datab => \EXECUTE|ULA|ULA_B19|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datac => \EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(118),
	datae => \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B16|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\);

-- Location: LABCELL_X41_Y4_N6
\EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(122)) ) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ID_EX|DOUT\(122)) # (!\ID_EX|DOUT\(121)))) # 
-- (\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(122) & !\ID_EX|DOUT\(121))) ) ) ) # ( \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ID_EX|DOUT\(122)) # ((!\ID_EX|DOUT\(121) & !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\)))) # (\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(122) & 
-- (!\ID_EX|DOUT\(121) & !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\))) ) ) ) # ( !\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- ((!\ID_EX|DOUT\(122)) # ((!\ID_EX|DOUT\(121)) # (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\)))) # (\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(122) & ((!\ID_EX|DOUT\(121)) # 
-- (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000111010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(122),
	datac => \ID_EX|ALT_INV_DOUT\(121),
	datad => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B19|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X41_Y4_N30
\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ = ( \ID_EX|DOUT\(124) & ( \EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B24|SOMA_SUB|saida_xor~combout\ & (((\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(123))) 
-- # (\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\ID_EX|DOUT\(124) & ( \EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B24|SOMA_SUB|saida_xor~combout\ & (\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(123)))) ) ) ) # ( \ID_EX|DOUT\(124) & ( !\EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B24|SOMA_SUB|saida_xor~combout\ & (((\ID_EX|DOUT\(123)) # 
-- (\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\ID_EX|DOUT\(124) & ( !\EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B24|SOMA_SUB|saida_xor~combout\ & 
-- (\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\ & ((\ID_EX|DOUT\(123)) # (\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000101010101010100000000000000010000010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datab => \EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(123),
	datae => \ID_EX|ALT_INV_DOUT\(124),
	dataf => \EXECUTE|ULA|ULA_B21|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\);

-- Location: LABCELL_X41_Y4_N24
\EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ = ( \ID_EX|DOUT\(126) & ( \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(127) & !\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) ) # ( !\ID_EX|DOUT\(126) & ( 
-- \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(127) & ((!\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ID_EX|DOUT\(127) & 
-- (!\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\)) ) ) ) # ( \ID_EX|DOUT\(126) & ( !\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(127) & 
-- ((!\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\)))) # (\ID_EX|DOUT\(127) & (!\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\ 
-- & (!\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\ & !\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\ID_EX|DOUT\(126) & ( !\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(127) & 
-- ((!\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\) # (!\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ID_EX|DOUT\(127) & 
-- (!\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010101000111010101000000011101110100010001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(127),
	datab => \EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datad => \EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ID_EX|ALT_INV_DOUT\(126),
	dataf => \EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X41_Y4_N42
\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\ = ( \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B29|SOMA_SUB|saida_xor~combout\ & (((\ID_EX|DOUT\(128) & 
-- \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(129)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ & ( (\ID_EX|DOUT\(128) & 
-- (\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ID_EX|DOUT\(129) & \EXECUTE|ULA|ULA_B29|SOMA_SUB|saida_xor~combout\))) ) ) ) # ( \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ & ( 
-- (\EXECUTE|ULA|ULA_B29|SOMA_SUB|saida_xor~combout\ & (((\ID_EX|DOUT\(129)) # (\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(128)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ & ( (\ID_EX|DOUT\(129) & (\EXECUTE|ULA|ULA_B29|SOMA_SUB|saida_xor~combout\ & ((\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(128))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000111111100000000000000010000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(128),
	datab => \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(129),
	datad => \EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datae => \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B26|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\);

-- Location: LABCELL_X41_Y4_N15
\EXECUTE|ULA|ULA_B30|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B30|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(131) & !\EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) # ( !\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1_combout\ & ((!\ID_EX|DOUT\(131)) # (!\EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1_combout\ & (!\ID_EX|DOUT\(131) & 
-- !\EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(131),
	datad => \EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B30|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X41_Y4_N36
\EXECUTE|ULA|ULA_B31|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B31|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B30|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(132) & (\EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(179) $ (!\ID_EX|DOUT\(180))))) # (\ID_EX|DOUT\(132) & 
-- (!\ID_EX|DOUT\(180) $ (((!\ID_EX|DOUT\(179) & !\EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\))))) ) ) # ( !\EXECUTE|ULA|ULA_B30|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(179) & ((!\ID_EX|DOUT\(132) & (\ID_EX|DOUT\(180) & 
-- !\EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(132) & ((\EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\))))) # (\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(180) & ((\EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\ID_EX|DOUT\(132))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110001001000100111000000110011011000000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(179),
	datab => \ID_EX|ALT_INV_DOUT\(180),
	datac => \ID_EX|ALT_INV_DOUT\(132),
	datad => \EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B30|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B31|MUX|saida_MUX~0_combout\);

-- Location: FF_X41_Y4_N38
\EX_MEM|DOUT[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B31|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(63));

-- Location: FF_X41_Y4_N35
\MEM_WB|DOUT[146]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(63),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT[146]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y5_N12
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[68]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X37_Y5_N13
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(68));

-- Location: MLABCELL_X37_Y5_N15
\INST_DECODE|BANCO_REGISTRADORES|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[28]~28_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(68) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a28\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(67))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(68) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(67)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000010101000100000001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(67),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a28\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(68),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[28]~28_combout\);

-- Location: FF_X37_Y5_N17
\ID_EX|DOUT[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(97));

-- Location: MLABCELL_X37_Y5_N42
\EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(97) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(97) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT\(97),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: FF_X37_Y4_N49
\ID_EX|DOUT[129]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[129]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y4_N30
\EXECUTE|ULA|ULA_B28|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~0_combout\ = ( !\ID_EX|DOUT\(180) & ( (!\EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ID_EX|DOUT[129]~DUPLICATE_q\ & \ID_EX|DOUT\(179))) # (\EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- ((\ID_EX|DOUT\(179)) # (\ID_EX|DOUT[129]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT[129]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT\(179),
	dataf => \ID_EX|ALT_INV_DOUT\(180),
	combout => \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y4_N33
\EXECUTE|ULA|ULA_B28|SOMA_SUB|saida_xor\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B28|SOMA_SUB|saida_xor~combout\ = ( \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ID_EX|DOUT[129]~DUPLICATE_q\ ) ) # ( !\EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ID_EX|DOUT[129]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT[129]~DUPLICATE_q\,
	dataf => \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B28|SOMA_SUB|saida_xor~combout\);

-- Location: LABCELL_X40_Y4_N21
\EXECUTE|ULA|ULA_B21|MUX|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ = ( !\ID_EX|DOUT\(179) & ( \ID_EX|DOUT\(180) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(180),
	dataf => \ID_EX|ALT_INV_DOUT\(179),
	combout => \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\);

-- Location: LABCELL_X40_Y4_N54
\EXECUTE|ULA|ULA_B28|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & ( \EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ & ( (!\EXECUTE|ULA|ULA_B28|SOMA_SUB|saida_xor~combout\ $ (((!\ID_EX|DOUT\(128)) # 
-- (!\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\EXECUTE|ULA|ULA_B28|MUX|saida_MUX~0_combout\) ) ) ) # ( !\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & ( \EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ & ( 
-- \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~0_combout\ ) ) ) # ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & ( !\EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ & ( (!\EXECUTE|ULA|ULA_B28|SOMA_SUB|saida_xor~combout\ $ (((!\ID_EX|DOUT\(128) & 
-- !\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\EXECUTE|ULA|ULA_B28|MUX|saida_MUX~0_combout\) ) ) ) # ( !\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & ( !\EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ & ( 
-- \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011111111101010101010101010101010101011111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B28|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(128),
	datac => \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B28|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datae => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B26|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~1_combout\);

-- Location: FF_X40_Y4_N55
\EX_MEM|DOUT[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B28|MUX|saida_MUX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(60));

-- Location: FF_X40_Y4_N11
\MEM_WB|DOUT[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(60),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(143));

-- Location: LABCELL_X39_Y4_N27
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[64]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X39_Y4_N28
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(64));

-- Location: LABCELL_X39_Y4_N24
\INST_DECODE|BANCO_REGISTRADORES|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[26]~26_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(64) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a26\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(63))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(64) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(63) & !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000010000110100000001000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(63),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a26\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(64),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[26]~26_combout\);

-- Location: FF_X39_Y4_N26
\ID_EX|DOUT[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(95));

-- Location: LABCELL_X39_Y4_N54
\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(95) & ( !\ID_EX|DOUT\(181) ) ) # ( !\ID_EX|DOUT\(95) & ( \ID_EX|DOUT\(181) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(181),
	dataf => \ID_EX|ALT_INV_DOUT\(95),
	combout => \EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: FF_X37_Y4_N55
\ID_EX|DOUT[127]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[127]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N6
\EXECUTE|ULA|ULA_B25|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B25|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(126) & !\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) # ( !\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\ & ((!\ID_EX|DOUT\(126)) # (!\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\ & (!\ID_EX|DOUT\(126) & 
-- !\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(126),
	datad => \EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B25|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X40_Y4_N36
\EXECUTE|ULA|ULA_B26|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B26|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B25|SOMA_SUB|C_out~combout\ & ( (!\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ID_EX|DOUT[127]~DUPLICATE_q\ & (!\ID_EX|DOUT\(180) $ (!\ID_EX|DOUT\(179))))) # 
-- (\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(180) $ (((!\ID_EX|DOUT\(179) & !\ID_EX|DOUT[127]~DUPLICATE_q\))))) ) ) # ( !\EXECUTE|ULA|ULA_B25|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(179) & 
-- ((!\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ID_EX|DOUT\(180) & !\ID_EX|DOUT[127]~DUPLICATE_q\)) # (\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\ & ((\ID_EX|DOUT[127]~DUPLICATE_q\))))) # (\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(180) 
-- & ((\ID_EX|DOUT[127]~DUPLICATE_q\) # (\EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001011100001001000101110000010100011011000001010001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(180),
	datac => \ID_EX|ALT_INV_DOUT\(179),
	datad => \ID_EX|ALT_INV_DOUT[127]~DUPLICATE_q\,
	dataf => \EXECUTE|ULA|ULA_B25|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B26|MUX|saida_MUX~0_combout\);

-- Location: FF_X40_Y4_N38
\EX_MEM|DOUT[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B26|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(58));

-- Location: FF_X40_Y4_N28
\MEM_WB|DOUT[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(141));

-- Location: MLABCELL_X37_Y4_N39
\INST_DECODE|BANCO_REGISTRADORES|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[24]~24_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a24\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- (((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(60) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(59)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a24\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(59) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(60)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010000010000000101000101010000010100010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(60),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(59),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a24\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[24]~24_combout\);

-- Location: FF_X39_Y4_N8
\ID_EX|DOUT[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaA[24]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(125));

-- Location: LABCELL_X40_Y4_N30
\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\ = ( \EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ID_EX|DOUT\(125) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT\(125),
	dataf => \EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\);

-- Location: LABCELL_X40_Y4_N12
\EXECUTE|ULA|ULA_B25|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B25|MUX|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(180) & ( \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(126) $ (\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\ID_EX|DOUT\(180) 
-- & ( \EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(179) & (\ID_EX|DOUT\(126) & \EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(179) & ((\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\ID_EX|DOUT\(126)))) ) ) ) # ( \ID_EX|DOUT\(180) & ( !\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(179) & (!\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~1_combout\ $ (!\ID_EX|DOUT\(126) $ 
-- (\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) ) # ( !\ID_EX|DOUT\(180) & ( !\EXECUTE|ULA|ULA_B24|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(179) & (\ID_EX|DOUT\(126) & \EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\)) # 
-- (\ID_EX|DOUT\(179) & ((\EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(126)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111001010001000001000000101010111111010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(179),
	datab => \EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(126),
	datad => \EXECUTE|ULA|ULA_B25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ID_EX|ALT_INV_DOUT\(180),
	dataf => \EXECUTE|ULA|ULA_B24|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B25|MUX|saida_MUX~0_combout\);

-- Location: FF_X40_Y4_N14
\EX_MEM|DOUT[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B25|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(57));

-- Location: FF_X40_Y4_N58
\MEM_WB|DOUT[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(57),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(140));

-- Location: LABCELL_X39_Y5_N18
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[60]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X39_Y5_N19
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(60));

-- Location: LABCELL_X39_Y5_N21
\INST_DECODE|BANCO_REGISTRADORES|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[24]~24_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(60) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a24\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(59))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(60) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(59)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(59),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a24\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(60),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[24]~24_combout\);

-- Location: FF_X39_Y5_N22
\ID_EX|DOUT[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(93));

-- Location: LABCELL_X40_Y5_N45
\EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(93) & ( !\ID_EX|DOUT[181]~DUPLICATE_q\ ) ) # ( !\ID_EX|DOUT\(93) & ( \ID_EX|DOUT[181]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(93),
	combout => \EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X40_Y4_N18
\EXECUTE|ULA|ULA_B23|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B23|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(124) & (\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ID_EX|DOUT\(123) & 
-- \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ID_EX|DOUT\(124) & (((\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(123))) # (\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(124) & (\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\ & ((\ID_EX|DOUT\(123)) # (\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ID_EX|DOUT\(124) & 
-- (((\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(123))) # (\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101111111000101010111111100000001010101110000000101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(124),
	datab => \EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(123),
	datad => \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B21|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B23|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X40_Y4_N33
\EXECUTE|ULA|ULA_B24|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B24|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B23|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(179) & ((!\EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(125) & \ID_EX|DOUT\(180))) # 
-- (\EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ID_EX|DOUT\(125))))) # (\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(180) & ((\ID_EX|DOUT\(125)) # (\EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B23|SOMA_SUB|C_out~combout\ & ( (!\EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ID_EX|DOUT\(125) & (!\ID_EX|DOUT\(180) $ (!\ID_EX|DOUT\(179))))) # (\EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (!\ID_EX|DOUT\(180) $ (((!\ID_EX|DOUT\(125) & !\ID_EX|DOUT\(179)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011001110000000101100111000000011001011100000001100101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(125),
	datac => \ID_EX|ALT_INV_DOUT\(180),
	datad => \ID_EX|ALT_INV_DOUT\(179),
	dataf => \EXECUTE|ULA|ULA_B23|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B24|MUX|saida_MUX~0_combout\);

-- Location: FF_X40_Y4_N34
\EX_MEM|DOUT[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B24|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(56));

-- Location: FF_X40_Y4_N16
\MEM_WB|DOUT[139]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(56),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT[139]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y5_N57
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[58]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X39_Y5_N58
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(58));

-- Location: LABCELL_X39_Y5_N9
\INST_DECODE|BANCO_REGISTRADORES|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[23]~23_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(58) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a23\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(57))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(58) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(57) & !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000001000000111000000100000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(57),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a23\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(58),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[23]~23_combout\);

-- Location: FF_X39_Y5_N11
\ID_EX|DOUT[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(92));

-- Location: LABCELL_X39_Y4_N48
\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(92) & ( !\ID_EX|DOUT\(181) ) ) # ( !\ID_EX|DOUT\(92) & ( \ID_EX|DOUT\(181) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT\(181),
	dataf => \ID_EX|ALT_INV_DOUT\(92),
	combout => \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X40_Y4_N9
\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(124)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(124),
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X40_Y4_N3
\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ( (\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(124)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(124),
	datad => \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	combout => \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X40_Y4_N24
\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & ( \EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ & ( !\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ID_EX|DOUT\(124) $ (((\ID_EX|DOUT\(123) & 
-- \EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) ) # ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & ( !\EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ & ( !\EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ID_EX|DOUT\(124) $ 
-- (((\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(123))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110001000011100000000000000000001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(123),
	datab => \EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(124),
	datae => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B21|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X40_Y4_N51
\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~0_combout\ ) # ( !\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~2_combout\) # (\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\);

-- Location: FF_X40_Y4_N53
\EX_MEM|DOUT[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(55));

-- Location: FF_X40_Y4_N44
\MEM_WB|DOUT[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(55),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(138));

-- Location: LABCELL_X44_Y4_N57
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[56]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[56]~feeder_combout\);

-- Location: FF_X44_Y4_N58
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(56));

-- Location: LABCELL_X44_Y4_N54
\INST_DECODE|BANCO_REGISTRADORES|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[22]~22_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(56) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a22\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(55))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(56) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(55) & !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000100110001000000010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(55),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a22\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(56),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[22]~22_combout\);

-- Location: FF_X44_Y4_N56
\ID_EX|DOUT[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(123));

-- Location: LABCELL_X40_Y4_N0
\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(123) & (\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(179) $ (!\ID_EX|DOUT\(180))))) # (\ID_EX|DOUT\(123) & 
-- (!\ID_EX|DOUT\(180) $ (((!\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(179)))))) ) ) # ( !\EXECUTE|ULA|ULA_B21|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(179) & ((!\ID_EX|DOUT\(123) & 
-- (!\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(180))) # (\ID_EX|DOUT\(123) & (\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(180) & 
-- ((\EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(123))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011110010000000101111001000000010111011000000001011101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(123),
	datab => \EXECUTE|ULA|ULA_B22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(179),
	datad => \ID_EX|ALT_INV_DOUT\(180),
	dataf => \EXECUTE|ULA|ULA_B21|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\);

-- Location: FF_X40_Y4_N1
\EX_MEM|DOUT[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(54));

-- Location: FF_X40_Y4_N46
\MEM_WB|DOUT[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(54),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(137));

-- Location: LABCELL_X44_Y4_N27
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[53]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[53]~10_combout\ = !\MEM_WB|DOUT\(136)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|ALT_INV_DOUT\(136),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[53]~10_combout\);

-- Location: FF_X44_Y4_N29
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[53]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(53));

-- Location: LABCELL_X44_Y4_N24
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[54]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[54]~feeder_combout\);

-- Location: FF_X44_Y4_N25
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(54));

-- Location: LABCELL_X44_Y4_N3
\INST_DECODE|BANCO_REGISTRADORES|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[21]~21_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(54) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a21\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(53)))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(54) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(53)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000001001100000010000100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a21\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(53),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(54),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[21]~21_combout\);

-- Location: FF_X44_Y4_N4
\ID_EX|DOUT[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(122));

-- Location: LABCELL_X40_Y3_N30
\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & \ID_EX|DOUT\(122)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(122),
	dataf => \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X40_Y3_N45
\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(122)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(122),
	datad => \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	combout => \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X40_Y3_N48
\EXECUTE|ULA|ULA_B20|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B20|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(121)) ) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(121)) ) ) ) # ( \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(121)) ) ) ) # ( !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\ID_EX|DOUT\(121)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(121),
	datae => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B19|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B20|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X40_Y3_N15
\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B20|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & !\ID_EX|DOUT\(122)) ) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B20|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & \ID_EX|DOUT\(122)) ) ) ) # ( \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B20|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & \ID_EX|DOUT\(122)) ) ) ) # ( !\EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B20|SOMA_SUB|C_out~combout\ & ( 
-- (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & !\ID_EX|DOUT\(122)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000100010001000100010001000100010100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(122),
	datae => \EXECUTE|ULA|ULA_B21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B20|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X40_Y3_N21
\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1_combout\ ) # ( !\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~0_combout\) # (\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\);

-- Location: FF_X40_Y3_N23
\EX_MEM|DOUT[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(53));

-- Location: FF_X40_Y3_N52
\MEM_WB|DOUT[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(136));

-- Location: MLABCELL_X37_Y4_N27
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[52]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[52]~feeder_combout\);

-- Location: FF_X37_Y4_N28
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(52));

-- Location: MLABCELL_X37_Y4_N24
\INST_DECODE|BANCO_REGISTRADORES|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[20]~20_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(52) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a20\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(51))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(52) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(51)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(51),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a20\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(52),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[20]~20_combout\);

-- Location: FF_X37_Y4_N25
\ID_EX|DOUT[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(121));

-- Location: LABCELL_X40_Y3_N24
\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & \ID_EX|DOUT\(121)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(121),
	dataf => \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X40_Y3_N3
\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ( (\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(121)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(121),
	datac => \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	combout => \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X40_Y3_N33
\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ID_EX|DOUT\(121)))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B19|SOMA_SUB|C_out~0_combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\ $ (!\EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ID_EX|DOUT\(121))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001001000001100000100100001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \EXECUTE|ULA|ULA_B20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(121),
	dataf => \EXECUTE|ULA|ULA_B19|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X40_Y3_N0
\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0_combout\ ) # ( !\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~2_combout\) # (\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\);

-- Location: FF_X40_Y3_N2
\EX_MEM|DOUT[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(52));

-- Location: FF_X40_Y3_N10
\MEM_WB|DOUT[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(52),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(135));

-- Location: LABCELL_X40_Y5_N0
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[49]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[49]~9_combout\ = !\MEM_WB|DOUT\(134)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEM_WB|ALT_INV_DOUT\(134),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[49]~9_combout\);

-- Location: FF_X40_Y5_N2
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[49]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(49));

-- Location: LABCELL_X40_Y5_N27
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[50]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[50]~feeder_combout\);

-- Location: FF_X40_Y5_N28
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(50));

-- Location: LABCELL_X40_Y5_N9
\INST_DECODE|BANCO_REGISTRADORES|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[19]~19_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(50) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a19\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(49)))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(50) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(49)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000001001100000010000100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a19\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(49),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(50),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[19]~19_combout\);

-- Location: FF_X40_Y5_N11
\ID_EX|DOUT[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(120));

-- Location: LABCELL_X40_Y5_N3
\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\ = (\ID_EX|DOUT\(120) & (!\ID_EX|DOUT[181]~DUPLICATE_q\ $ (!\ID_EX|DOUT\(88))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	datac => \ID_EX|ALT_INV_DOUT\(120),
	datad => \ID_EX|ALT_INV_DOUT\(88),
	combout => \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X40_Y3_N42
\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~2_combout\ = (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X40_Y5_N36
\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ( (!\ID_EX|DOUT\(88) $ (!\ID_EX|DOUT[181]~DUPLICATE_q\)) # (\ID_EX|DOUT\(120)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(88),
	datab => \ID_EX|ALT_INV_DOUT\(120),
	datac => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	combout => \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~3_combout\);

-- Location: LABCELL_X43_Y3_N45
\EXECUTE|ULA|ULA_B17|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B17|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(118)) ) ) # ( !\EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\ & ( (\ID_EX|DOUT\(118)) # 
-- (\EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(118),
	dataf => \EXECUTE|ULA|ULA_B16|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B17|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X43_Y3_N9
\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B17|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor~combout\ $ 
-- (((!\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(119)))))) ) ) # ( !\EXECUTE|ULA|ULA_B17|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B19|SOMA_SUB|saida_xor~combout\ $ 
-- (((!\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\ID_EX|DOUT\(119)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010110000000000101011000000000011010100000000001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B19|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datab => \EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(119),
	datad => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B17|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X43_Y3_N48
\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ = ( \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1_combout\ ) # ( !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~3_combout\) # (\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\);

-- Location: FF_X43_Y3_N50
\EX_MEM|DOUT[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(51));

-- Location: FF_X43_Y3_N22
\MEM_WB|DOUT[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(51),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(134));

-- Location: LABCELL_X44_Y4_N30
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[48]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[48]~feeder_combout\);

-- Location: FF_X44_Y4_N31
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(48));

-- Location: LABCELL_X44_Y4_N33
\INST_DECODE|BANCO_REGISTRADORES|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[18]~18_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(48) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a18\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(47))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(48) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(47)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(47),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a18\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(48),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[18]~18_combout\);

-- Location: FF_X44_Y4_N34
\ID_EX|DOUT[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(119));

-- Location: LABCELL_X43_Y3_N24
\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(179) & ( (!\ID_EX|DOUT\(180) & ((\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(119)))) ) ) # ( !\ID_EX|DOUT\(179) & ( (!\ID_EX|DOUT\(180) & (\ID_EX|DOUT\(119) & 
-- ((\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ID_EX|DOUT\(180) & (!\ID_EX|DOUT\(119) $ (!\EXECUTE|ULA|ULA_B17|SOMA_SUB|C_out~combout\ $ (\EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001011001000001100101100101010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(119),
	datab => \EXECUTE|ULA|ULA_B17|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \ID_EX|ALT_INV_DOUT\(180),
	datad => \EXECUTE|ULA|ULA_B18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ID_EX|ALT_INV_DOUT\(179),
	combout => \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\);

-- Location: FF_X43_Y3_N26
\EX_MEM|DOUT[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(50));

-- Location: FF_X43_Y3_N47
\MEM_WB|DOUT[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(50),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(133));

-- Location: MLABCELL_X42_Y5_N24
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[45]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[45]~10_combout\ = ( !\MEM_WB|DOUT\(132) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(132),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[45]~10_combout\);

-- Location: FF_X42_Y5_N25
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[45]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(45));

-- Location: MLABCELL_X42_Y5_N27
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[46]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X42_Y5_N28
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(46));

-- Location: MLABCELL_X42_Y5_N51
\INST_DECODE|BANCO_REGISTRADORES|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[17]~17_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(46) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a17\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(45)))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(46) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(45) & !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000001110010000000000111001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a17\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(45),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(46),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[17]~17_combout\);

-- Location: FF_X42_Y5_N53
\ID_EX|DOUT[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(86));

-- Location: MLABCELL_X42_Y5_N48
\EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(86) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(86) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(86),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: FF_X41_Y5_N50
\ID_EX|DOUT[118]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[118]~DUPLICATE_q\);

-- Location: MLABCELL_X45_Y3_N12
\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ( (\ID_EX|DOUT[118]~DUPLICATE_q\) # (\EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT[118]~DUPLICATE_q\,
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	combout => \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~0_combout\);

-- Location: MLABCELL_X42_Y3_N21
\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~2_combout\ = ( \ID_EX|DOUT[118]~DUPLICATE_q\ & ( (\EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \ID_EX|ALT_INV_DOUT[118]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X43_Y3_N39
\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ID_EX|DOUT\(118)))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B16|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ID_EX|DOUT\(118)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	datac => \EXECUTE|ULA|ULA_B17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(118),
	dataf => \EXECUTE|ULA|ULA_B16|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X43_Y3_N12
\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~1_combout\ ) # ( !\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~2_combout\) # (\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\);

-- Location: FF_X43_Y3_N13
\EX_MEM|DOUT[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(49));

-- Location: FF_X43_Y3_N4
\MEM_WB|DOUT[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(49),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(132));

-- Location: LABCELL_X44_Y4_N12
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[44]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[44]~feeder_combout\);

-- Location: FF_X44_Y4_N13
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(44));

-- Location: LABCELL_X44_Y4_N15
\INST_DECODE|BANCO_REGISTRADORES|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[16]~16_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(44) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a16\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(43))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(44) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(43)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(43),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a16\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(44),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[16]~16_combout\);

-- Location: FF_X44_Y4_N17
\ID_EX|DOUT[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(117));

-- Location: LABCELL_X44_Y3_N39
\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (\ID_EX|DOUT\(117) & \EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(117),
	datad => \EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X44_Y3_N18
\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ( (\ID_EX|DOUT\(117)) # (\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(117),
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	combout => \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\);

-- Location: MLABCELL_X42_Y4_N33
\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~combout\ = ( !\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~0_combout\ & ( !\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X43_Y5_N12
\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~combout\ & ( \ID_EX|DOUT\(116) & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ $ 
-- (!\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ID_EX|DOUT\(117))))) ) ) ) # ( !\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~combout\ & ( \ID_EX|DOUT\(116) & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & 
-- (!\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ID_EX|DOUT\(117)))) ) ) ) # ( \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~combout\ & ( !\ID_EX|DOUT\(116) & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & 
-- (!\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ID_EX|DOUT\(117)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~combout\ & ( !\ID_EX|DOUT\(116) & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & 
-- (!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ID_EX|DOUT\(117))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001000001000001010101000001010000000001010001010001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	datab => \EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(117),
	datae => \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~combout\,
	dataf => \ID_EX|ALT_INV_DOUT\(116),
	combout => \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y5_N21
\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\ ) ) # ( !\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\ ) ) 
-- # ( \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\ & ( !\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\ ) ) # ( !\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\ & ( !\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\ & ( 
-- \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~1_combout\,
	datae => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\);

-- Location: FF_X43_Y5_N23
\EX_MEM|DOUT[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(48));

-- Location: FF_X43_Y5_N17
\MEM_WB|DOUT[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(131));

-- Location: LABCELL_X43_Y5_N9
\INST_DECODE|BANCO_REGISTRADORES|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[15]~15_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a15\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(41)) # ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(42))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a15\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(41) & (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(42)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101000100000000010101110000000001010111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(41),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(42),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a15\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[15]~15_combout\);

-- Location: FF_X43_Y5_N11
\ID_EX|DOUT[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(84));

-- Location: LABCELL_X43_Y5_N57
\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(84) & ( !\ID_EX|DOUT[181]~DUPLICATE_q\ ) ) # ( !\ID_EX|DOUT\(84) & ( \ID_EX|DOUT[181]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(84),
	combout => \EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y5_N30
\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~2_combout\ = ( \ID_EX|DOUT\(116) & ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ ) ) # ( !\ID_EX|DOUT\(116) & ( (\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	dataf => \ID_EX|ALT_INV_DOUT\(116),
	combout => \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X43_Y5_N54
\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~1_combout\ = ( \ID_EX|DOUT\(116) & ( (\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \ID_EX|ALT_INV_DOUT\(116),
	combout => \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X43_Y5_N51
\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ID_EX|DOUT\(116)))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B14|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ID_EX|DOUT\(116)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001100000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(116),
	datad => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B14|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y5_N33
\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0_combout\ ) # ( !\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~1_combout\) # (\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\);

-- Location: FF_X43_Y5_N35
\EX_MEM|DOUT[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(47));

-- Location: FF_X43_Y5_N56
\MEM_WB|DOUT[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(130));

-- Location: MLABCELL_X42_Y3_N30
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[40]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X42_Y3_N31
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(40));

-- Location: MLABCELL_X42_Y3_N15
\INST_DECODE|BANCO_REGISTRADORES|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[14]~14_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(40) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a14\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(39))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(40) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(39)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(39),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a14\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(40),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[14]~14_combout\);

-- Location: FF_X42_Y3_N16
\ID_EX|DOUT[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(83));

-- Location: FF_X42_Y3_N19
\ID_EX|DOUT[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(115));

-- Location: LABCELL_X43_Y3_N42
\EXECUTE|ULA|ULA_B12|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B12|SOMA_SUB|C_out~combout\ = ( \ID_EX|DOUT[113]~DUPLICATE_q\ & ( (!\EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\) # (\EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) # ( !\ID_EX|DOUT[113]~DUPLICATE_q\ & ( 
-- (\EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B11|SOMA_SUB|ALT_INV_C_out~combout\,
	dataf => \ID_EX|ALT_INV_DOUT[113]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B12|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X43_Y3_N51
\EXECUTE|ULA|ULA_B13|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B13|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B12|SOMA_SUB|C_out~combout\) # (\ID_EX|DOUT\(114)) ) ) # ( !\EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- (\ID_EX|DOUT\(114) & \EXECUTE|ULA|ULA_B12|SOMA_SUB|C_out~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(114),
	datac => \EXECUTE|ULA|ULA_B12|SOMA_SUB|ALT_INV_C_out~combout\,
	dataf => \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B13|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X43_Y3_N18
\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(180) & ( \EXECUTE|ULA|ULA_B13|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(83) $ (!\ID_EX|DOUT\(115) $ (!\ID_EX|DOUT[181]~DUPLICATE_q\)))) ) ) ) # ( !\ID_EX|DOUT\(180) & ( 
-- \EXECUTE|ULA|ULA_B13|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(115) & (\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(83) $ (!\ID_EX|DOUT[181]~DUPLICATE_q\)))) # (\ID_EX|DOUT\(115) & ((!\ID_EX|DOUT\(83) $ (!\ID_EX|DOUT[181]~DUPLICATE_q\)) # (\ID_EX|DOUT\(179)))) ) ) 
-- ) # ( \ID_EX|DOUT\(180) & ( !\EXECUTE|ULA|ULA_B13|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(83) $ (!\ID_EX|DOUT\(115) $ (\ID_EX|DOUT[181]~DUPLICATE_q\)))) ) ) ) # ( !\ID_EX|DOUT\(180) & ( 
-- !\EXECUTE|ULA|ULA_B13|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(115) & (\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(83) $ (!\ID_EX|DOUT[181]~DUPLICATE_q\)))) # (\ID_EX|DOUT\(115) & ((!\ID_EX|DOUT\(83) $ (!\ID_EX|DOUT[181]~DUPLICATE_q\)) # (\ID_EX|DOUT\(179)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011011010010000000000010010011110111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(83),
	datab => \ID_EX|ALT_INV_DOUT\(115),
	datac => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	datad => \ID_EX|ALT_INV_DOUT\(179),
	datae => \ID_EX|ALT_INV_DOUT\(180),
	dataf => \EXECUTE|ULA|ULA_B13|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\);

-- Location: FF_X43_Y3_N20
\EX_MEM|DOUT[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(46));

-- Location: FF_X42_Y3_N10
\MEM_WB|DOUT[129]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT[129]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N33
\INST_DECODE|BANCO_REGISTRADORES|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[13]~13_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a13\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(37)) # ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(38))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a13\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(37) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(38)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101000100000000010101010000010001010101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(38),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(37),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a13\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[13]~13_combout\);

-- Location: FF_X42_Y3_N35
\ID_EX|DOUT[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(82));

-- Location: MLABCELL_X42_Y3_N39
\EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(82) & ( !\ID_EX|DOUT[181]~DUPLICATE_q\ ) ) # ( !\ID_EX|DOUT\(82) & ( \ID_EX|DOUT[181]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(82),
	combout => \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X44_Y3_N51
\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(114)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(114),
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X43_Y3_N36
\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B12|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ID_EX|DOUT\(114)))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B12|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ID_EX|DOUT\(114)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(114),
	dataf => \EXECUTE|ULA|ULA_B12|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X43_Y3_N15
\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(114) & ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ ) ) # ( !\ID_EX|DOUT\(114) & ( (\EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	dataf => \ID_EX|ALT_INV_DOUT\(114),
	combout => \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y3_N33
\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0_combout\ ) # ( !\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~1_combout\) # (\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\);

-- Location: FF_X43_Y3_N35
\EX_MEM|DOUT[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(45));

-- Location: FF_X42_Y3_N43
\MEM_WB|DOUT[128]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT[128]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N12
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[36]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[36]~feeder_combout\);

-- Location: FF_X42_Y3_N13
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(36));

-- Location: MLABCELL_X42_Y3_N24
\INST_DECODE|BANCO_REGISTRADORES|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[12]~12_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(36) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a12\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(35))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(36) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(35) & !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000011101000000000001110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(35),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a12\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(36),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[12]~12_combout\);

-- Location: FF_X42_Y3_N26
\ID_EX|DOUT[113]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[113]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y3_N27
\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ ) ) # ( !\EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ID_EX|DOUT[113]~DUPLICATE_q\ & 
-- \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT[113]~DUPLICATE_q\,
	datad => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~2_combout\);

-- Location: MLABCELL_X42_Y3_N0
\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~1_combout\ = (\ID_EX|DOUT[113]~DUPLICATE_q\ & (\EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[113]~DUPLICATE_q\,
	datab => \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X43_Y3_N30
\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ID_EX|DOUT[113]~DUPLICATE_q\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B11|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ID_EX|DOUT[113]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010100000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT[113]~DUPLICATE_q\,
	datad => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B11|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y3_N6
\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~0_combout\ ) # ( !\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~1_combout\) # (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\);

-- Location: FF_X43_Y3_N8
\EX_MEM|DOUT[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(44));

-- Location: FF_X42_Y3_N52
\MEM_WB|DOUT[127]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(44),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT[127]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y4_N33
\INST_DECODE|BANCO_REGISTRADORES|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[11]~11_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a11\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(33)) # ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(34) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a11\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(33) & (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(34)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000100010100000000010111010000000001011101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(33),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(34),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a11\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[11]~11_combout\);

-- Location: FF_X43_Y4_N35
\ID_EX|DOUT[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(80));

-- Location: LABCELL_X43_Y4_N6
\EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(80) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(80) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(80),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y3_N18
\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~1_combout\ = (\EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ID_EX|DOUT\(112) & \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(112),
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X39_Y3_N21
\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ( (\ID_EX|DOUT\(112)) # (\EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(112),
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	combout => \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X39_Y3_N54
\EXECUTE|ULA|ULA_B10|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B10|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(111)) ) ) # ( !\EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ID_EX|DOUT\(111)) # (!\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\))) # (\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(111) & 
-- !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(111),
	datad => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B9|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B10|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X39_Y3_N15
\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B10|SOMA_SUB|C_out~combout\ & ( \ID_EX|DOUT\(112) & ( (!\EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\) ) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B10|SOMA_SUB|C_out~combout\ & ( \ID_EX|DOUT\(112) & ( (\EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\) ) ) ) # ( \EXECUTE|ULA|ULA_B10|SOMA_SUB|C_out~combout\ & ( !\ID_EX|DOUT\(112) & 
-- ( (\EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\) ) ) ) # ( !\EXECUTE|ULA|ULA_B10|SOMA_SUB|C_out~combout\ & ( !\ID_EX|DOUT\(112) & ( (!\EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000100010001000100010001000100010010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	datae => \EXECUTE|ULA|ULA_B10|SOMA_SUB|ALT_INV_C_out~combout\,
	dataf => \ID_EX|ALT_INV_DOUT\(112),
	combout => \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y3_N48
\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~0_combout\ ) # ( !\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~2_combout\) # (\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\);

-- Location: FF_X39_Y3_N49
\EX_MEM|DOUT[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(43));

-- Location: FF_X39_Y3_N34
\MEM_WB|DOUT[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(43),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(126));

-- Location: LABCELL_X41_Y5_N27
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[32]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[32]~feeder_combout\);

-- Location: FF_X41_Y5_N28
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(32));

-- Location: LABCELL_X41_Y5_N24
\INST_DECODE|BANCO_REGISTRADORES|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[10]~10_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(32) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a10\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(31))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(32) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(31),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(32),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[10]~10_combout\);

-- Location: FF_X41_Y5_N25
\ID_EX|DOUT[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(111));

-- Location: LABCELL_X39_Y3_N6
\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(180) & ( \EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(111) $ (((\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\) # 
-- (\EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\))))) ) ) ) # ( !\ID_EX|DOUT\(180) & ( \EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ID_EX|DOUT\(179)) # (\ID_EX|DOUT\(111)) ) ) ) # ( \ID_EX|DOUT\(180) & ( 
-- !\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(111) $ (((!\EXECUTE|ULA|ULA_B9|SOMA_SUB|C_out~0_combout\ & !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\))))) ) ) ) # ( !\ID_EX|DOUT\(180) & ( 
-- !\EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ID_EX|DOUT\(111) & \ID_EX|DOUT\(179)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101011010100000000001010101111111111001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(111),
	datab => \EXECUTE|ULA|ULA_B9|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datac => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(179),
	datae => \ID_EX|ALT_INV_DOUT\(180),
	dataf => \EXECUTE|ULA|ULA_B10|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\);

-- Location: FF_X39_Y3_N7
\EX_MEM|DOUT[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(42));

-- Location: FF_X39_Y3_N10
\MEM_WB|DOUT[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(42),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(125));

-- Location: LABCELL_X43_Y4_N57
\INST_DECODE|BANCO_REGISTRADORES|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[9]~9_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a9\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(29)) # ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(30) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a9\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(29) & (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(30)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000000100011000000000011011100000000001101110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(30),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(29),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[9]~9_combout\);

-- Location: FF_X43_Y4_N59
\ID_EX|DOUT[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(78));

-- Location: LABCELL_X43_Y4_N0
\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~1_combout\ = ( \ID_EX|DOUT[110]~DUPLICATE_q\ & ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ ) ) # ( !\ID_EX|DOUT[110]~DUPLICATE_q\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & (!\ID_EX|DOUT[181]~DUPLICATE_q\ $ 
-- (!\ID_EX|DOUT\(78)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	datac => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(78),
	dataf => \ID_EX|ALT_INV_DOUT[110]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X39_Y3_N36
\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~3_combout\ = (\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~3_combout\);

-- Location: FF_X41_Y3_N25
\ID_EX|DOUT[108]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[108]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N36
\EXECUTE|ULA|ULA_B7|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B7|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\ & ( \ID_EX|DOUT[108]~DUPLICATE_q\ & ( \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ ) ) ) # ( !\EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\ & ( 
-- \ID_EX|DOUT[108]~DUPLICATE_q\ ) ) # ( !\EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\ & ( !\ID_EX|DOUT[108]~DUPLICATE_q\ & ( \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B6|SOMA_SUB|ALT_INV_C_out~combout\,
	dataf => \ID_EX|ALT_INV_DOUT[108]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B7|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X41_Y3_N48
\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B7|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor~combout\ $ (((!\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- !\ID_EX|DOUT\(109)))))) ) ) # ( !\EXECUTE|ULA|ULA_B7|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B9|SOMA_SUB|saida_xor~combout\ $ (((!\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (!\ID_EX|DOUT\(109)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011110000000000001111000000000011110000000000001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(109),
	datac => \EXECUTE|ULA|ULA_B9|SOMA_SUB|ALT_INV_saida_xor~combout\,
	datad => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B7|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X39_Y3_N39
\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ = ( \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~2_combout\ ) # ( !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~2_combout\ & ( (\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~3_combout\) # (\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~2_combout\,
	combout => \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\);

-- Location: FF_X39_Y3_N40
\EX_MEM|DOUT[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(41));

-- Location: FF_X39_Y3_N4
\MEM_WB|DOUT[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(41),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(124));

-- Location: LABCELL_X43_Y4_N18
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X43_Y4_N19
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(28));

-- Location: LABCELL_X43_Y4_N21
\INST_DECODE|BANCO_REGISTRADORES|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[8]~8_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(28) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a8\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(27))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(28) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(27),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(28),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[8]~8_combout\);

-- Location: FF_X43_Y4_N23
\ID_EX|DOUT[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(77));

-- Location: LABCELL_X43_Y4_N30
\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT[181]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(77) ) ) # ( !\ID_EX|DOUT[181]~DUPLICATE_q\ & ( \ID_EX|DOUT\(77) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT\(77),
	dataf => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X41_Y3_N3
\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ( (\ID_EX|DOUT\(109)) # (\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(109),
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	combout => \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X41_Y3_N0
\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~1_combout\ = (\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ID_EX|DOUT\(109) & \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(109),
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X41_Y3_N42
\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B7|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\ID_EX|DOUT\(109) $ (\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B7|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\ID_EX|DOUT\(109) $ (!\EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT\(109),
	datac => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	datad => \EXECUTE|ULA|ULA_B8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B7|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X41_Y3_N9
\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0_combout\ ) # ( !\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~1_combout\) # (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\);

-- Location: FF_X41_Y3_N11
\EX_MEM|DOUT[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(40));

-- Location: FF_X41_Y3_N38
\MEM_WB|DOUT[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(40),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(123));

-- Location: LABCELL_X43_Y5_N36
\INST_DECODE|BANCO_REGISTRADORES|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[7]~7_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a7\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(25)) # ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(26) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a7\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(25) & (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(26)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000100000001010000010110000101000001011000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(25),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(26),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[7]~7_combout\);

-- Location: FF_X43_Y4_N41
\ID_EX|DOUT[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaB[7]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(76));

-- Location: LABCELL_X43_Y4_N3
\EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(76) & ( !\ID_EX|DOUT[181]~DUPLICATE_q\ ) ) # ( !\ID_EX|DOUT\(76) & ( \ID_EX|DOUT[181]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(76),
	combout => \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X41_Y3_N45
\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ( (\ID_EX|DOUT[108]~DUPLICATE_q\) # (\EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT[108]~DUPLICATE_q\,
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	combout => \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X41_Y3_N57
\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\ID_EX|DOUT[108]~DUPLICATE_q\ $ (!\EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\ID_EX|DOUT[108]~DUPLICATE_q\ $ (\EXECUTE|ULA|ULA_B6|SOMA_SUB|C_out~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001100000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT[108]~DUPLICATE_q\,
	datac => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	datad => \EXECUTE|ULA|ULA_B6|SOMA_SUB|ALT_INV_C_out~combout\,
	dataf => \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X41_Y3_N54
\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~1_combout\ = ( \ID_EX|DOUT[108]~DUPLICATE_q\ & ( (\EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \ID_EX|ALT_INV_DOUT[108]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~1_combout\);

-- Location: MLABCELL_X42_Y2_N0
\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~1_combout\ ) # ( !\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~0_combout\) # (\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\);

-- Location: FF_X42_Y2_N2
\EX_MEM|DOUT[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(39));

-- Location: FF_X41_Y2_N40
\MEM_WB|DOUT[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(39),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(122));

-- Location: FF_X41_Y5_N52
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(121),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(23));

-- Location: LABCELL_X41_Y5_N21
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X41_Y5_N22
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(24));

-- Location: LABCELL_X41_Y5_N18
\INST_DECODE|BANCO_REGISTRADORES|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[6]~6_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(24) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a6\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(23)))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(24) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a6\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(23),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(24),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[6]~6_combout\);

-- Location: FF_X41_Y5_N19
\ID_EX|DOUT[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(107));

-- Location: MLABCELL_X42_Y2_N30
\EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~combout\ = ( !\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~combout\);

-- Location: MLABCELL_X42_Y2_N33
\EXECUTE|ULA|ULA_B5|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B5|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(106)) ) ) # ( !\EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~combout\ & ( (\ID_EX|DOUT\(106)) # 
-- (\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(106),
	dataf => \EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B5|SOMA_SUB|C_out~combout\);

-- Location: MLABCELL_X42_Y2_N21
\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B5|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(179) & ((!\ID_EX|DOUT\(107) & (\ID_EX|DOUT\(180) & !\EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(107) & 
-- ((\EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\))))) # (\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(180) & ((\EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(107))))) ) ) # ( !\EXECUTE|ULA|ULA_B5|SOMA_SUB|C_out~combout\ & ( 
-- (!\ID_EX|DOUT\(107) & (\EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(179) $ (!\ID_EX|DOUT\(180))))) # (\ID_EX|DOUT\(107) & (!\ID_EX|DOUT\(180) $ (((!\ID_EX|DOUT\(179) & !\EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|saida_MUX~0_combout\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111000000100100111100000011000011100100001100001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(179),
	datab => \ID_EX|ALT_INV_DOUT\(107),
	datac => \ID_EX|ALT_INV_DOUT\(180),
	datad => \EXECUTE|ULA|ULA_B6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B5|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\);

-- Location: FF_X42_Y2_N23
\EX_MEM|DOUT[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(38));

-- Location: FF_X42_Y2_N40
\MEM_WB|DOUT[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(121));

-- Location: MLABCELL_X42_Y5_N36
\INST_DECODE|BANCO_REGISTRADORES|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[5]~5_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a5\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(21)) # ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(22) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a5\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(21) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(22)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000100010100000000010101010001000001010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(22),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(21),
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[5]~5_combout\);

-- Location: FF_X42_Y4_N28
\ID_EX|DOUT[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaB[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(74));

-- Location: MLABCELL_X42_Y4_N3
\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(74) & ( !\ID_EX|DOUT[181]~DUPLICATE_q\ ) ) # ( !\ID_EX|DOUT\(74) & ( \ID_EX|DOUT[181]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(74),
	combout => \EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: MLABCELL_X42_Y2_N24
\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ( (\ID_EX|DOUT\(106)) # (\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(106),
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	combout => \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~0_combout\);

-- Location: MLABCELL_X42_Y2_N27
\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(106)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(106),
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~2_combout\);

-- Location: MLABCELL_X42_Y2_N15
\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ID_EX|DOUT\(106)))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B4|SOMA_SUB|C_out~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & (!\EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ID_EX|DOUT\(106)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	datac => \EXECUTE|ULA|ULA_B5|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(106),
	dataf => \EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~1_combout\);

-- Location: MLABCELL_X42_Y2_N18
\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~1_combout\ ) # ( !\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~2_combout\) # (\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\);

-- Location: FF_X42_Y2_N19
\EX_MEM|DOUT[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(37));

-- Location: FF_X42_Y2_N32
\MEM_WB|DOUT[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(120));

-- Location: MLABCELL_X42_Y5_N9
\INST_DECODE|BANCO_REGISTRADORES|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[4]~4_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a4\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & 
-- (((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(20) & !\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(19)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a4\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(19) & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(20)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010000010000000101000101010000010100010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(20),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(19),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[4]~4_combout\);

-- Location: FF_X42_Y4_N35
\ID_EX|DOUT[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaB[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(73));

-- Location: MLABCELL_X42_Y4_N57
\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0_combout\ = ( \ID_EX|DOUT[105]~DUPLICATE_q\ & ( !\ID_EX|DOUT\(73) $ (!\ID_EX|DOUT[181]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(73),
	datac => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT[105]~DUPLICATE_q\,
	combout => \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0_combout\);

-- Location: MLABCELL_X42_Y2_N12
\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X39_Y4_N51
\EXECUTE|ULA|ULA_B2|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B2|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ID_EX|DOUT[103]~DUPLICATE_q\) # (\EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\) ) ) # ( !\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- (\EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\ & \ID_EX|DOUT[103]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B1|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \ID_EX|ALT_INV_DOUT[103]~DUPLICATE_q\,
	dataf => \EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B2|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X39_Y4_N45
\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor~combout\ & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & ((!\EXECUTE|ULA|ULA_B2|SOMA_SUB|C_out~combout\ & ((!\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\) 
-- # (!\ID_EX|DOUT\(104)))) # (\EXECUTE|ULA|ULA_B2|SOMA_SUB|C_out~combout\ & (!\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(104))))) ) ) # ( !\EXECUTE|ULA|ULA_B4|SOMA_SUB|saida_xor~combout\ & ( 
-- (\EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & ((!\EXECUTE|ULA|ULA_B2|SOMA_SUB|C_out~combout\ & (\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(104))) # (\EXECUTE|ULA|ULA_B2|SOMA_SUB|C_out~combout\ & ((\ID_EX|DOUT\(104)) # 
-- (\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011000000010001001100110010001000000011001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B2|SOMA_SUB|ALT_INV_C_out~combout\,
	datab => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(104),
	dataf => \EXECUTE|ULA|ULA_B4|SOMA_SUB|ALT_INV_saida_xor~combout\,
	combout => \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~1_combout\);

-- Location: FF_X42_Y4_N10
\ID_EX|DOUT[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaA[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(105));

-- Location: LABCELL_X44_Y4_N6
\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~3_combout\ = ( \ID_EX|DOUT\(73) & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & ((!\ID_EX|DOUT\(181)) # (\ID_EX|DOUT\(105)))) ) ) # ( !\ID_EX|DOUT\(73) & ( (\EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ & 
-- ((\ID_EX|DOUT\(105)) # (\ID_EX|DOUT\(181)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(181),
	datac => \ID_EX|ALT_INV_DOUT\(105),
	datad => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	dataf => \ID_EX|ALT_INV_DOUT\(73),
	combout => \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~3_combout\);

-- Location: MLABCELL_X42_Y2_N57
\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ = ( \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~3_combout\ ) # ( !\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~1_combout\) # (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\);

-- Location: FF_X42_Y2_N59
\EX_MEM|DOUT[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(36));

-- Location: FF_X42_Y2_N52
\MEM_WB|DOUT[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(36),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(119));

-- Location: MLABCELL_X42_Y6_N9
\INST_DECODE|BANCO_REGISTRADORES|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[3]~3_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a3\ & ( 
-- (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(17) & !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\) ) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & ( 
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a3\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(17)) # 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(18)))) ) ) ) # ( \INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a3\ & ( 
-- (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(17) & !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\) ) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a3\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(18) & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(17) & 
-- !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000110000001100000011010000110100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(18),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(17),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datae => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a3\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[3]~3_combout\);

-- Location: FF_X42_Y4_N32
\ID_EX|DOUT[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaA[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(104));

-- Location: MLABCELL_X45_Y4_N30
\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\ ) ) # ( !\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ID_EX|DOUT\(104) & 
-- \EXECUTE|ULA|ULA_B21|MUX|Equal2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT\(104),
	datac => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~3_combout\);

-- Location: MLABCELL_X45_Y4_N33
\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~2_combout\ = ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\ & \ID_EX|DOUT\(104)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(104),
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X39_Y4_N42
\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~1_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|Equal2~0_combout\ & ( !\EXECUTE|ULA|ULA_B2|SOMA_SUB|C_out~combout\ $ (!\ID_EX|DOUT\(104) $ (\EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|saida_MUX~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B2|SOMA_SUB|ALT_INV_C_out~combout\,
	datac => \ID_EX|ALT_INV_DOUT\(104),
	datad => \EXECUTE|ULA|ULA_B3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_Equal2~0_combout\,
	combout => \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~1_combout\);

-- Location: MLABCELL_X45_Y4_N18
\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ = ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~1_combout\ ) # ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~2_combout\) # (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\);

-- Location: FF_X45_Y4_N19
\EX_MEM|DOUT[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(35));

-- Location: FF_X44_Y4_N11
\MEM_WB|DOUT[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(35),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(118));

-- Location: LABCELL_X43_Y4_N42
\INST_DECODE|BANCO_REGISTRADORES|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[2]~2_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a2\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- (((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(16))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(15)))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a2\ & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(15) & (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & 
-- ((!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(16)) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000100000000010100010000000001011101000000000101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(15),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(16),
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a2\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[2]~2_combout\);

-- Location: FF_X43_Y4_N43
\ID_EX|DOUT[103]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[103]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y4_N36
\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(179) & ((!\ID_EX|DOUT[103]~DUPLICATE_q\ & (\ID_EX|DOUT\(180) & !\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\)) # 
-- (\ID_EX|DOUT[103]~DUPLICATE_q\ & ((\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\))))) # (\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(180) & ((\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT[103]~DUPLICATE_q\)))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B1|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT[103]~DUPLICATE_q\ & (\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ID_EX|DOUT\(180) $ (!\ID_EX|DOUT\(179))))) # (\ID_EX|DOUT[103]~DUPLICATE_q\ & (!\ID_EX|DOUT\(180) $ 
-- (((!\EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ID_EX|DOUT\(179)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000101010000101100010101001000011001010100100001100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(180),
	datab => \ID_EX|ALT_INV_DOUT[103]~DUPLICATE_q\,
	datac => \EXECUTE|ULA|ULA_B2|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(179),
	dataf => \EXECUTE|ULA|ULA_B1|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\);

-- Location: FF_X39_Y4_N38
\EX_MEM|DOUT[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(34));

-- Location: FF_X39_Y4_N4
\MEM_WB|DOUT[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(34),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(117));

-- Location: LABCELL_X41_Y3_N30
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[14]~feeder_combout\);

-- Location: FF_X41_Y3_N31
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(14));

-- Location: LABCELL_X41_Y3_N21
\INST_DECODE|BANCO_REGISTRADORES|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[1]~1_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(14) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a1\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(13))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(14) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(13) & !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000001100100010000000110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(13),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a1\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(14),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[1]~1_combout\);

-- Location: FF_X41_Y3_N22
\ID_EX|DOUT[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(102));

-- Location: FF_X41_Y3_N14
\ID_EX|DOUT[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(101));

-- Location: LABCELL_X39_Y4_N15
\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~combout\ = ( \ID_EX|DOUT\(101) & ( (\ID_EX|DOUT\(181)) # (\ID_EX|DOUT\(69)) ) ) # ( !\ID_EX|DOUT\(101) & ( (!\ID_EX|DOUT\(69) & \ID_EX|DOUT\(181)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(69),
	datab => \ID_EX|ALT_INV_DOUT\(181),
	dataf => \ID_EX|ALT_INV_DOUT\(101),
	combout => \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X39_Y4_N0
\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(179) & ( \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(180) & ((!\ID_EX|DOUT\(70) $ (!\ID_EX|DOUT\(181))) # (\ID_EX|DOUT\(102)))) ) ) ) # ( !\ID_EX|DOUT\(179) & ( 
-- \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(102) & (\ID_EX|DOUT\(180) & (!\ID_EX|DOUT\(70) $ (\ID_EX|DOUT\(181))))) # (\ID_EX|DOUT\(102) & ((!\ID_EX|DOUT\(70) $ (!\ID_EX|DOUT\(181))))) ) ) ) # ( \ID_EX|DOUT\(179) & ( 
-- !\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(180) & ((!\ID_EX|DOUT\(70) $ (!\ID_EX|DOUT\(181))) # (\ID_EX|DOUT\(102)))) ) ) ) # ( !\ID_EX|DOUT\(179) & ( !\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(180) & 
-- (\ID_EX|DOUT\(102) & (!\ID_EX|DOUT\(70) $ (!\ID_EX|DOUT\(181))))) # (\ID_EX|DOUT\(180) & (!\ID_EX|DOUT\(102) $ (!\ID_EX|DOUT\(70) $ (\ID_EX|DOUT\(181))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011001100001001010101010001001000011001101000010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(180),
	datab => \ID_EX|ALT_INV_DOUT\(102),
	datac => \ID_EX|ALT_INV_DOUT\(70),
	datad => \ID_EX|ALT_INV_DOUT\(181),
	datae => \ID_EX|ALT_INV_DOUT\(179),
	dataf => \EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\);

-- Location: FF_X39_Y4_N41
\EX_MEM|DOUT[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(33));

-- Location: FF_X40_Y4_N50
\MEM_WB|DOUT[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(33),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(116));

-- Location: MLABCELL_X37_Y5_N21
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[66]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X37_Y5_N22
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(66));

-- Location: MLABCELL_X37_Y5_N18
\INST_DECODE|BANCO_REGISTRADORES|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[27]~27_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(66) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a27\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(65))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(66) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(65)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(65),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a27\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(66),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[27]~27_combout\);

-- Location: FF_X37_Y5_N19
\ID_EX|DOUT[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(96));

-- Location: MLABCELL_X37_Y4_N42
\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(96) & ( !\ID_EX|DOUT\(181) ) ) # ( !\ID_EX|DOUT\(96) & ( \ID_EX|DOUT\(181) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALT_INV_DOUT\(181),
	dataf => \ID_EX|ALT_INV_DOUT\(96),
	combout => \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X41_Y4_N3
\EXECUTE|ULA|ULA_B27|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B27|MUX|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(179) & ( (!\ID_EX|DOUT\(180) & ((\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(128)))) ) ) # ( !\ID_EX|DOUT\(179) & ( (!\ID_EX|DOUT\(180) & (\ID_EX|DOUT\(128) & 
-- (\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ID_EX|DOUT\(180) & (!\ID_EX|DOUT\(128) $ (!\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110010110000100011001011001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(128),
	datab => \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B26|SOMA_SUB|ALT_INV_C_out~combout\,
	datad => \ID_EX|ALT_INV_DOUT\(180),
	dataf => \ID_EX|ALT_INV_DOUT\(179),
	combout => \EXECUTE|ULA|ULA_B27|MUX|saida_MUX~0_combout\);

-- Location: FF_X41_Y4_N4
\EX_MEM|DOUT[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B27|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(59));

-- Location: FF_X40_Y4_N41
\MEM_WB|DOUT[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(59),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(142));

-- Location: MLABCELL_X37_Y4_N33
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[65]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[65]~13_combout\ = ( !\MEM_WB|DOUT\(142) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(142),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[65]~13_combout\);

-- Location: FF_X37_Y4_N35
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[65]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(65));

-- Location: MLABCELL_X37_Y4_N30
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[66]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[66]~feeder_combout\);

-- Location: FF_X37_Y4_N31
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(66));

-- Location: MLABCELL_X37_Y4_N0
\INST_DECODE|BANCO_REGISTRADORES|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[27]~27_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(66) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a27\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(65))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(66) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(65)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(65),
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a27\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(66),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[27]~27_combout\);

-- Location: FF_X37_Y4_N2
\ID_EX|DOUT[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(128));

-- Location: LABCELL_X41_Y4_N0
\EXECUTE|ULA|ULA_B28|SOMA_SUB|C_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B28|SOMA_SUB|C_out~combout\ = ( \EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(129) & (\ID_EX|DOUT\(128) & (\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ID_EX|DOUT\(129) & (((\ID_EX|DOUT\(128) & \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B26|SOMA_SUB|C_out~combout\ & ( (!\ID_EX|DOUT\(129) & (\EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\ & ((\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ID_EX|DOUT\(128))))) # (\ID_EX|DOUT\(129) & 
-- (((\EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|saida_MUX~0_combout\) # (\EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\ID_EX|DOUT\(128)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000001110111111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(128),
	datab => \EXECUTE|ULA|ULA_B27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ID_EX|ALT_INV_DOUT\(129),
	datad => \EXECUTE|ULA|ULA_B28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B26|SOMA_SUB|ALT_INV_C_out~combout\,
	combout => \EXECUTE|ULA|ULA_B28|SOMA_SUB|C_out~combout\);

-- Location: LABCELL_X41_Y4_N39
\EXECUTE|ULA|ULA_B29|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B29|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(130) $ (((!\ID_EX|DOUT\(180)) # (\EXECUTE|ULA|ULA_B28|SOMA_SUB|C_out~combout\))))) # (\ID_EX|DOUT\(179) & 
-- (!\ID_EX|DOUT\(180))) ) ) # ( !\EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ID_EX|DOUT\(179) & (\ID_EX|DOUT\(180) & (!\ID_EX|DOUT\(130) $ (!\EXECUTE|ULA|ULA_B28|SOMA_SUB|C_out~combout\)))) # (\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(180) & 
-- (\ID_EX|DOUT\(130)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100000001100010010001101100010011100110110001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(179),
	datab => \ID_EX|ALT_INV_DOUT\(180),
	datac => \ID_EX|ALT_INV_DOUT\(130),
	datad => \EXECUTE|ULA|ULA_B28|SOMA_SUB|ALT_INV_C_out~combout\,
	dataf => \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B29|MUX|saida_MUX~0_combout\);

-- Location: FF_X41_Y4_N40
\EX_MEM|DOUT[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B29|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(61));

-- Location: FF_X41_Y4_N22
\MEM_WB|DOUT[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(61),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(144));

-- Location: LABCELL_X44_Y4_N18
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[69]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[69]~14_combout\ = !\MEM_WB|DOUT\(144)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MEM_WB|ALT_INV_DOUT\(144),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[69]~14_combout\);

-- Location: FF_X44_Y4_N20
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[69]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(69));

-- Location: LABCELL_X44_Y4_N21
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[70]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[70]~feeder_combout\);

-- Location: FF_X44_Y4_N22
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(70));

-- Location: LABCELL_X44_Y4_N48
\INST_DECODE|BANCO_REGISTRADORES|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaA[29]~29_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(70) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ram_block1a29\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~40_combout\ & (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(69))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(70) & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1_bypass\(69) & !\INST_DECODE|BANCO_REGISTRADORES|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000001000110010000000100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(69),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal1~0_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~40_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_1|auto_generated|ALT_INV_ram_block1a29\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_1_bypass\(70),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaA[29]~29_combout\);

-- Location: FF_X44_Y4_N50
\ID_EX|DOUT[130]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaA[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT[130]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y4_N39
\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1_combout\ = ( \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ID_EX|DOUT[130]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT[130]~DUPLICATE_q\,
	dataf => \EXECUTE|ULA|ULA_B29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1_combout\);

-- Location: LABCELL_X41_Y4_N54
\EXECUTE|ULA|ULA_B30|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B30|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(179) & (\ID_EX|DOUT\(131))) # (\ID_EX|DOUT\(179) & ((!\ID_EX|DOUT\(180)))) ) ) 
-- ) # ( !\EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(131) & (!\ID_EX|DOUT\(179) & \ID_EX|DOUT\(180))) # (\ID_EX|DOUT\(131) & (\ID_EX|DOUT\(179) & !\ID_EX|DOUT\(180))) ) ) ) # 
-- ( \EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(131) $ (((!\ID_EX|DOUT\(180)) # (\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1_combout\))))) # 
-- (\ID_EX|DOUT\(179) & (((!\ID_EX|DOUT\(180))))) ) ) ) # ( !\EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\ & ( (!\ID_EX|DOUT\(179) & (\ID_EX|DOUT\(180) & 
-- (!\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1_combout\ $ (!\ID_EX|DOUT\(131))))) # (\ID_EX|DOUT\(179) & (((\ID_EX|DOUT\(131) & !\ID_EX|DOUT\(180))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101100000001111111001000000000011110000000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datab => \ID_EX|ALT_INV_DOUT\(131),
	datac => \ID_EX|ALT_INV_DOUT\(179),
	datad => \ID_EX|ALT_INV_DOUT\(180),
	datae => \EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B30|MUX|saida_MUX~0_combout\);

-- Location: FF_X41_Y4_N56
\EX_MEM|DOUT[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B30|MUX|saida_MUX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(62));

-- Location: FF_X41_Y4_N46
\MEM_WB|DOUT[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(145));

-- Location: MLABCELL_X37_Y5_N54
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[71]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[71]~feeder_combout\ = ( \MEM_WB|DOUT\(145) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MEM_WB|ALT_INV_DOUT\(145),
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[71]~feeder_combout\);

-- Location: FF_X37_Y5_N56
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[71]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(71));

-- Location: MLABCELL_X37_Y5_N57
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[72]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X37_Y5_N58
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(72));

-- Location: MLABCELL_X37_Y5_N48
\INST_DECODE|BANCO_REGISTRADORES|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[30]~30_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(72) & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((!\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & 
-- ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a30\))) # (\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(71))))) ) ) # ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(72) & ( (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(71) & !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000010000110100000001000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(71),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datad => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a30\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(72),
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[30]~30_combout\);

-- Location: FF_X37_Y5_N50
\ID_EX|DOUT[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \INST_DECODE|BANCO_REGISTRADORES|saidaB[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(99));

-- Location: MLABCELL_X37_Y5_N51
\EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \ID_EX|DOUT\(99) & ( !\ID_EX|DOUT[181]~DUPLICATE_q\ ) ) # ( !\ID_EX|DOUT\(99) & ( \ID_EX|DOUT[181]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|ALT_INV_DOUT[181]~DUPLICATE_q\,
	dataf => \ID_EX|ALT_INV_DOUT\(99),
	combout => \EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X40_Y4_N48
\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~0_combout\ = ( \EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ID_EX|DOUT\(180) $ (\ID_EX|DOUT\(179)) ) ) # ( !\EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ID_EX|DOUT\(132) & 
-- (!\ID_EX|DOUT\(180) $ (\ID_EX|DOUT\(179)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(132),
	datab => \ID_EX|ALT_INV_DOUT\(180),
	datac => \ID_EX|ALT_INV_DOUT\(179),
	dataf => \EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y4_N18
\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~1_combout\ = ( \ID_EX|DOUT\(69) & ( (!\ID_EX|DOUT\(180) & (\ID_EX|DOUT\(179) & ((!\ID_EX|DOUT\(181)) # (\ID_EX|DOUT\(101))))) # (\ID_EX|DOUT\(180) & (!\ID_EX|DOUT\(179) & (!\ID_EX|DOUT\(101)))) ) ) # ( !\ID_EX|DOUT\(69) & 
-- ( (!\ID_EX|DOUT\(180) & (\ID_EX|DOUT\(179) & ((\ID_EX|DOUT\(181)) # (\ID_EX|DOUT\(101))))) # (\ID_EX|DOUT\(180) & (!\ID_EX|DOUT\(179) & (\ID_EX|DOUT\(101)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100110000001100010011001100010010000100110001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(180),
	datab => \ID_EX|ALT_INV_DOUT\(179),
	datac => \ID_EX|ALT_INV_DOUT\(101),
	datad => \ID_EX|ALT_INV_DOUT\(181),
	dataf => \ID_EX|ALT_INV_DOUT\(69),
	combout => \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~1_combout\);

-- Location: LABCELL_X39_Y4_N21
\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~2_combout\ = ( !\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~1_combout\ & ( (!\EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ID_EX|DOUT\(132)) # (!\ID_EX|DOUT\(180) $ (!\ID_EX|DOUT\(179)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110110111111111111011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(180),
	datab => \ID_EX|ALT_INV_DOUT\(179),
	datac => \EXECUTE|ULA|ULA_B31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(132),
	dataf => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~2_combout\);

-- Location: LABCELL_X41_Y4_N48
\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ = ( \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\ & ( ((!\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~0_combout\) # (\ID_EX|DOUT\(131))) # 
-- (\EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) ) # ( \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~2_combout\ & ( !\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~0_combout\ & ( (!\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~0_combout\) # 
-- ((!\EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & (\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1_combout\ & \ID_EX|DOUT\(131))) # (\EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|saida_MUX~0_combout\ & ((\ID_EX|DOUT\(131)) # 
-- (\EXECUTE|ULA|ULA_B29|SOMA_SUB|C_out~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011011101111100000000000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_C_out~1_combout\,
	datad => \ID_EX|ALT_INV_DOUT\(131),
	datae => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B29|SOMA_SUB|ALT_INV_C_out~0_combout\,
	combout => \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\);

-- Location: LABCELL_X41_Y4_N12
\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4_combout\ = ( \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\) ) ) # ( !\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\) # (\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4_combout\);

-- Location: FF_X41_Y4_N14
\EX_MEM|DOUT[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|DOUT\(32));

-- Location: FF_X41_Y4_N28
\MEM_WB|DOUT[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \EX_MEM|DOUT\(32),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|DOUT\(115));

-- Location: FF_X44_Y3_N58
\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MEM_WB|DOUT\(115),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(11));

-- Location: MLABCELL_X42_Y3_N54
\INST_DECODE|BANCO_REGISTRADORES|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INST_DECODE|BANCO_REGISTRADORES|saidaB[0]~0_combout\ = ( \INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & ( \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(11) & !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\) ) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & ( 
-- \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\ & ((\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(11)) # 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(12)))) ) ) ) # ( \INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & ( !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( 
-- (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(11) & !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\) ) ) ) # ( !\INST_DECODE|BANCO_REGISTRADORES|registrador~43_combout\ & ( 
-- !\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ( (!\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(12) & (\INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0_bypass\(11) & 
-- !\INST_DECODE|BANCO_REGISTRADORES|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001100000011000001110000011100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(12),
	datab => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador_rtl_0_bypass\(11),
	datac => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_Equal0~0_combout\,
	datae => \INST_DECODE|BANCO_REGISTRADORES|ALT_INV_registrador~43_combout\,
	dataf => \INST_DECODE|BANCO_REGISTRADORES|registrador_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \INST_DECODE|BANCO_REGISTRADORES|saidaB[0]~0_combout\);

-- Location: FF_X42_Y4_N23
\ID_EX|DOUT[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \INST_DECODE|BANCO_REGISTRADORES|saidaB[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|DOUT\(69));

-- Location: LABCELL_X39_Y4_N12
\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ = ( \ID_EX|DOUT\(101) & ( !\ID_EX|DOUT\(69) $ (!\ID_EX|DOUT\(181)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALT_INV_DOUT\(69),
	datab => \ID_EX|ALT_INV_DOUT\(181),
	dataf => \ID_EX|ALT_INV_DOUT\(101),
	combout => \EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\);

-- Location: MLABCELL_X45_Y4_N24
\DECOD_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[0]~0_combout\ = ( \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ & (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & 
-- !\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ & (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & 
-- \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) # (\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ & (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ $ (\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\))) ) ) ) # ( \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & !\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ $ (\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\))) # (\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & 
-- (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000111100000011000000000001010000101001010000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~4_combout\,
	datad => \EXECUTE|ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y4_N6
\DECOD_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[1]~1_combout\ = ( \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ & ((\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\))) # 
-- (\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ & (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ & 
-- (!\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ $ (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\))) ) ) ) # ( \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ 
-- & (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\)) # (\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & ((\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\))) ) ) ) # ( !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ 
-- & ( (\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ $ (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000011000011111100000000010110100000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~4_combout\,
	datad => \EXECUTE|ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X45_Y4_N0
\DECOD_HEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[2]~2_combout\ = ( \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & (!\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ & 
-- !\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) # (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & ((\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\))) ) ) ) # ( !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & 
-- ( (!\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ & (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & (\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) # (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & ((\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100000000111100000000000010101010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~4_combout\,
	datad => \EXECUTE|ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X45_Y4_N21
\DECOD_HEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[3]~3_combout\ = ( \EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\)) # 
-- (\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ & ((\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\))) ) ) # ( !\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & (\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ & 
-- !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\)) # (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & (!\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~4_combout\,
	datac => \EXECUTE|ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~4_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X45_Y4_N42
\DECOD_HEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[4]~4_combout\ = ( \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ & !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\) ) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ & (\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\)) # (\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ & 
-- ((!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\))) ) ) ) # ( \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\) 
-- ) ) ) # ( !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\)) # (\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ 
-- & ((!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011110000110000001100000001010101111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~4_combout\,
	datad => \EXECUTE|ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X45_Y4_N12
\DECOD_HEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[5]~5_combout\ = ( !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4_combout\ & \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\) ) ) ) # ( 
-- \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~1_combout\ & (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~2_combout\ & ((!\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\) # 
-- (\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4_combout\)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~4_combout\ & (!\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\ 
-- $ (((\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~2_combout\) # (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010011101000000010000000000000001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~4_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X45_Y4_N54
\DECOD_HEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX0|rascSaida7seg[6]~6_combout\ = ( \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ & (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & 
-- \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & ((!\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\))) 
-- # (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & (!\EXECUTE|ULA|ULA_B0|SOMA_SUB|C_out~0_combout\ & \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B1|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~0_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & ((!\EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\))) # (\EXECUTE|ULA|ULA_B3|MUX|saida_MUX~4_combout\ & (\EXECUTE|ULA|ULA_B0|MUX|saida_MUX~3_combout\ & \EXECUTE|ULA|ULA_B2|MUX|saida_MUX~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011000000001100000011110000000010100000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B0|SOMA_SUB|ALT_INV_C_out~0_combout\,
	datab => \EXECUTE|ULA|ULA_B0|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~4_combout\,
	datad => \EXECUTE|ULA|ULA_B2|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B1|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B3|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX0|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y2_N36
\DECOD_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[0]~0_combout\ = ( \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & 
-- !\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & 
-- !\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~2_combout\ & ( !\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & 
-- !\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~2_combout\ & ( !\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~1_combout\ & 
-- (!\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ $ (!\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\)))) # (\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & (!\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~1_combout\ $ 
-- (!\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110000100000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~1_combout\,
	datac => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~4_combout\,
	datad => \EXECUTE|ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y2_N3
\DECOD_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[1]~1_combout\ = ( \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\)) # 
-- (\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & ((\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\))) ) ) # ( !\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & ( (\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ & ((\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\) # 
-- (\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~4_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X42_Y2_N6
\DECOD_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[2]~2_combout\ = ( \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & ( (\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\)) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ & (\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\)) # (\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ & 
-- ((\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~4_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X42_Y2_N9
\DECOD_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[3]~3_combout\ = ( \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\)) # 
-- (\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\)) ) ) # ( !\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ & 
-- !\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\)) # (\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~4_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X42_Y2_N48
\DECOD_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[4]~4_combout\ = ( \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ & ( \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~2_combout\ & ( (!\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\) ) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ & ( \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~2_combout\ ) ) # ( \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ & ( !\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~2_combout\ & ( (!\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & 
-- (!\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ & ((\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~1_combout\) # (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~3_combout\)))) ) ) ) # ( !\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ & ( !\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~2_combout\ 
-- & ( (((!\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & \EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\)) # (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~1_combout\)) # (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111110111011100000000000011111111111111111111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~1_combout\,
	datac => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~2_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X42_Y2_N42
\DECOD_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[5]~5_combout\ = ( !\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~2_combout\ & (!\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~1_combout\ & 
-- ((!\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\) # (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\)))) ) ) ) # ( \EXECUTE|ULA|ULA_B7|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ 
-- & \EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\) ) ) ) # ( !\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & (!\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ $ 
-- (((\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~1_combout\) # (\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000111000000000000111110001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~1_combout\,
	datac => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~4_combout\,
	datad => \EXECUTE|ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X42_Y2_N54
\DECOD_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX1|rascSaida7seg[6]~6_combout\ = ( \EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\ $ (\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B4|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B5|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B7|MUX|saida_MUX~3_combout\ $ (\EXECUTE|ULA|ULA_B6|MUX|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B7|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B6|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B5|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B4|MUX|ALT_INV_saida_MUX~4_combout\,
	combout => \DECOD_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X39_Y3_N0
\DECOD_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[0]~0_combout\ = ( !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~3_combout\ & ( \EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~2_combout\ & (!\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~1_combout\ & 
-- (!\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ $ (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\)))) ) ) ) # ( \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~3_combout\ & ( !\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & ( 
-- (\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\) ) ) ) # ( !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~3_combout\ & ( !\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\ & 
-- (!\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ $ (((\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~1_combout\) # (\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000111000000000000111110000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~1_combout\,
	datac => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~3_combout\,
	datae => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X39_Y3_N51
\DECOD_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[1]~1_combout\ = ( \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\)) # 
-- (\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & ((\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\))) ) ) # ( !\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & ((\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\) # 
-- (\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~4_combout\,
	dataf => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X39_Y3_N42
\DECOD_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[2]~2_combout\ = ( \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\)) # 
-- (\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\)) ) ) # ( !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & ( (\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & 
-- !\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~4_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X39_Y3_N45
\DECOD_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[3]~3_combout\ = ( \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & (!\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ $ (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\)) # (\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & 
-- (!\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ $ (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~4_combout\,
	datad => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X39_Y3_N24
\DECOD_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[4]~4_combout\ = ( \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & ( !\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ ) ) ) # ( !\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0_combout\ & ( 
-- \EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & ((\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~2_combout\) # (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~1_combout\))) ) ) ) # ( \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0_combout\ & 
-- ( !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\) # (!\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\) ) ) ) # ( !\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & ( (!\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & (((\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~2_combout\)) # (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~1_combout\))) # (\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & 
-- (((!\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010011111100111111001111110001010000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \EXECUTE|ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~2_combout\,
	datae => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~4_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X39_Y3_N30
\DECOD_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[5]~5_combout\ = ( \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\) ) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ $ (((!\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~0_combout\ & 
-- !\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~1_combout\))))) ) ) ) # ( !\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~2_combout\ & ( !\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~0_combout\ & 
-- (!\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~1_combout\ & ((\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\) # (\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000000000000000000000010101010000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~1_combout\,
	datad => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~4_combout\,
	datae => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X39_Y3_N57
\DECOD_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX2|rascSaida7seg[6]~6_combout\ = ( \EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & (\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\)) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B11|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & (!\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\)) # (\EXECUTE|ULA|ULA_B9|MUX|saida_MUX~4_combout\ & (\EXECUTE|ULA|ULA_B10|MUX|saida_MUX~0_combout\ & 
-- \EXECUTE|ULA|ULA_B8|MUX|saida_MUX~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000011110000001100001100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \EXECUTE|ULA|ULA_B9|MUX|ALT_INV_saida_MUX~4_combout\,
	datac => \EXECUTE|ULA|ULA_B10|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B8|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B11|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y3_N0
\DECOD_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[0]~0_combout\ = ( \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~1_combout\ & ( \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & (\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & 
-- \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~1_combout\ & ( \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & (\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ 
-- & \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~1_combout\ & ( !\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & 
-- (\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~1_combout\ & ( !\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~0_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~2_combout\ $ (\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\)))) # (\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & 
-- (!\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~2_combout\ & (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ $ (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000110000000000000101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~2_combout\,
	datac => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~3_combout\,
	datae => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y3_N6
\DECOD_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[1]~1_combout\ = (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ $ (!\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\)))) # 
-- (\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & ((!\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\)) # (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ & ((\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000110101000100100011010100010010001101010001001000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y3_N9
\DECOD_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[2]~2_combout\ = (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & (\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\))) # 
-- (\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & ((!\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\) # (\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y3_N48
\DECOD_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[3]~3_combout\ = ( \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ $ (\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & !\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\)) # (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ & 
-- (!\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ $ (\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y3_N54
\DECOD_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[4]~4_combout\ = ( \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~1_combout\ & ( \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & ( !\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ ) ) ) # ( !\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~1_combout\ & ( 
-- \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & ((\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~2_combout\) # (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~0_combout\))) ) ) ) # ( 
-- \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~1_combout\ & ( !\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\) # (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\) ) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~1_combout\ & ( !\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & (((\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~2_combout\)) # (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~0_combout\))) 
-- # (\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & (((!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010011111100111111001111110001010000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \EXECUTE|ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~2_combout\,
	datae => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~1_combout\,
	dataf => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y3_N12
\DECOD_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[5]~5_combout\ = ( \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & ( \EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~1_combout\ & 
-- (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~2_combout\ & !\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0_combout\))) ) ) ) # ( !\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & ( \EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & ( 
-- (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ & (((\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0_combout\) # (\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~2_combout\)) # (\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~1_combout\))) ) ) ) # ( 
-- \EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & ( !\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~1_combout\ & (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~2_combout\ & !\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0_combout\)) ) ) ) 
-- # ( !\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & ( !\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~1_combout\ & (!\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~2_combout\ & 
-- !\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000110000000000000000010101010101010100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~1_combout\,
	datac => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y3_N21
\DECOD_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX3|rascSaida7seg[6]~6_combout\ = ( \EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\)) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B15|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\)) # (\EXECUTE|ULA|ULA_B14|MUX|saida_MUX~0_combout\ & (\EXECUTE|ULA|ULA_B13|MUX|saida_MUX~3_combout\ & 
-- \EXECUTE|ULA|ULA_B12|MUX|saida_MUX~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010011001100010001001100101000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B14|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \EXECUTE|ULA|ULA_B13|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B12|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B15|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X44_Y3_N42
\DECOD_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[0]~0_combout\ = ( \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ & ( \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ & !\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\) ) ) ) # ( 
-- \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ & ( !\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~1_combout\ & ( (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ & (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~2_combout\ & (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~0_combout\ & 
-- !\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\))) # (\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ & (!\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ $ (((!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~2_combout\ & !\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~0_combout\))))) 
-- ) ) ) # ( !\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ & ( !\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~1_combout\ & ( (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~2_combout\ & (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ & 
-- (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000100100110010000000000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~4_combout\,
	datac => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y3_N0
\DECOD_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[1]~1_combout\ = ( \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ $ (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\))) # 
-- (\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & ((!\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\) # (\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\))) ) ) # ( !\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( 
-- (\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ & \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110110111010110011011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~4_combout\,
	dataf => \EXECUTE|ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y3_N3
\DECOD_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[2]~2_combout\ = ( \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ & ((!\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\) # (\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~4_combout\,
	dataf => \EXECUTE|ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y3_N54
\DECOD_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[3]~3_combout\ = ( \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\)) # 
-- (\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\)) ) ) # ( !\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ & 
-- !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\)) # (\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ & \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~4_combout\,
	dataf => \EXECUTE|ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y3_N24
\DECOD_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[4]~4_combout\ = ( \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & ( \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ & (((\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~1_combout\) # 
-- (\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\)) # (\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\))) ) ) ) # ( !\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & ( \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ ) ) ) # ( \EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & ( !\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ & 
-- (((\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~1_combout\) # (\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\)) # (\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\))) ) ) ) # ( !\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( ((\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~1_combout\) # (\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~2_combout\)) # (\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010011001100110011001100110011000100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~4_combout\,
	datac => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~2_combout\,
	datad => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~1_combout\,
	datae => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y3_N30
\DECOD_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[5]~5_combout\ = ( \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & 
-- \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ 
-- & \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B19|MUX|saida_MUX~2_combout\ & ( !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & 
-- (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~2_combout\ & ( !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~1_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~3_combout\ & ((\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\) # (\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\)))) # (\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & 
-- (\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~3_combout\ $ (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011010000000000011000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\,
	datac => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~3_combout\,
	datae => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y3_N57
\DECOD_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX4|rascSaida7seg[6]~6_combout\ = ( \EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ & !\EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\)) # 
-- (\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\ & \EXECUTE|ULA|ULA_B16|MUX|saida_MUX~3_combout\)) ) ) # ( !\EXECUTE|ULA|ULA_B18|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B17|MUX|saida_MUX~3_combout\ & 
-- !\EXECUTE|ULA|ULA_B19|MUX|saida_MUX~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000100100001001000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B17|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B19|MUX|ALT_INV_saida_MUX~4_combout\,
	datac => \EXECUTE|ULA|ULA_B16|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B18|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y3_N6
\DECOD_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[0]~0_combout\ = ( \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & 
-- \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ 
-- & \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B21|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1_combout\ & ( (\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & 
-- (!\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~1_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~2_combout\ & (!\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ $ (!\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\)))) # (\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & 
-- (\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~2_combout\ $ (!\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010010100000000000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~2_combout\,
	datac => \EXECUTE|ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\,
	datad => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~3_combout\,
	datae => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~1_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X40_Y3_N27
\DECOD_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[1]~1_combout\ = ( \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\)) # (\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\ & 
-- ((\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\))) ) ) # ( !\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & ( (\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & (!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ $ 
-- (!\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X40_Y3_N54
\DECOD_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[2]~2_combout\ = ( \EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & ((!\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\) # (\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~3_combout\,
	datab => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X40_Y3_N57
\DECOD_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[3]~3_combout\ = ( \EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\)) # 
-- (\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & ((\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\))) ) ) # ( !\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & 
-- (!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\)) # (\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X40_Y3_N36
\DECOD_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[4]~4_combout\ = ( \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\) # ((!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & 
-- !\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~2_combout\ & ( \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\) # 
-- ((!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\)) ) ) ) # ( \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~2_combout\ & ( !\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0_combout\ & ( 
-- (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\) # ((!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\)) ) ) ) # ( !\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~2_combout\ & ( 
-- !\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & ((!\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & (\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~1_combout\)) # (\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & 
-- ((!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\))))) # (\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & (\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~1_combout\ & (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010011010000111111001111000011111100111100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~1_combout\,
	datab => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\,
	datae => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~2_combout\,
	dataf => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X40_Y4_N42
\DECOD_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[5]~5_combout\ = ( \EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & ( \EXECUTE|ULA|ULA_B23|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\ & !\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\) ) ) ) # ( 
-- \EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~0_combout\ & ( (\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ $ (((!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~2_combout\ & 
-- !\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~1_combout\))))) ) ) ) # ( !\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ & ( !\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~0_combout\ & ( (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~2_combout\ & 
-- (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~1_combout\ & ((\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\) # (\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000001110000100000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~2_combout\,
	datab => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~1_combout\,
	datac => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~3_combout\,
	datad => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~3_combout\,
	datae => \EXECUTE|ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\,
	dataf => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~0_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X40_Y3_N18
\DECOD_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECOD_HEX5|rascSaida7seg[6]~6_combout\ = ( \EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ $ (\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\))) ) ) # ( 
-- !\EXECUTE|ULA|ULA_B20|MUX|saida_MUX~3_combout\ & ( (!\EXECUTE|ULA|ULA_B21|MUX|saida_MUX~3_combout\ & (!\EXECUTE|ULA|ULA_B22|MUX|saida_MUX~0_combout\ $ (\EXECUTE|ULA|ULA_B23|MUX|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXECUTE|ULA|ULA_B22|MUX|ALT_INV_saida_MUX~0_combout\,
	datab => \EXECUTE|ULA|ULA_B21|MUX|ALT_INV_saida_MUX~3_combout\,
	datac => \EXECUTE|ULA|ULA_B23|MUX|ALT_INV_saida_MUX~3_combout\,
	dataf => \EXECUTE|ULA|ULA_B20|MUX|ALT_INV_saida_MUX~3_combout\,
	combout => \DECOD_HEX5|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);
END structure;


