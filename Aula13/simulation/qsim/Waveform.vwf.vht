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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/19/2021 11:26:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula13
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula13_vhd_vec_tst IS
END Aula13_vhd_vec_tst;
ARCHITECTURE Aula13_arch OF Aula13_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL ESCRITA_REG_RD : STD_LOGIC;
SIGNAL OPERACAO_ULA : STD_LOGIC;
SIGNAL REG_RS : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL REG_RT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RESULTADO : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT Aula13
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	ESCRITA_REG_RD : IN STD_LOGIC;
	OPERACAO_ULA : IN STD_LOGIC;
	REG_RS : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	REG_RT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	RESULTADO : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula13
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	ESCRITA_REG_RD => ESCRITA_REG_RD,
	OPERACAO_ULA => OPERACAO_ULA,
	REG_RS => REG_RS,
	REG_RT => REG_RT,
	RESULTADO => RESULTADO
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;

-- ESCRITA_REG_RD
t_prcs_ESCRITA_REG_RD: PROCESS
BEGIN
	ESCRITA_REG_RD <= '1';
	WAIT FOR 20000 ps;
	ESCRITA_REG_RD <= '0';
WAIT;
END PROCESS t_prcs_ESCRITA_REG_RD;

-- OPERACAO_ULA
t_prcs_OPERACAO_ULA: PROCESS
BEGIN
	OPERACAO_ULA <= '1';
	WAIT FOR 160000 ps;
	OPERACAO_ULA <= '0';
WAIT;
END PROCESS t_prcs_OPERACAO_ULA;
END Aula13_arch;
