-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- Generated on "10/23/2024 17:46:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          maquinaDeVendas
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY maquinaDeVendas_vhd_vec_tst IS
END maquinaDeVendas_vhd_vec_tst;
ARCHITECTURE maquinaDeVendas_arch OF maquinaDeVendas_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BT : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL CEN : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL DEZ : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ESTADO : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL M : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL R : STD_LOGIC;
SIGNAL UNI : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT maquinaDeVendas
	PORT (
	BT : IN STD_LOGIC;
	C : IN STD_LOGIC;
	CEN : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	DEZ : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ESTADO : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	M : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	R : IN STD_LOGIC;
	UNI : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : maquinaDeVendas
	PORT MAP (
-- list connections between master ports and signals
	BT => BT,
	C => C,
	CEN => CEN,
	DEZ => DEZ,
	ESTADO => ESTADO,
	M => M,
	R => R,
	UNI => UNI
	);

-- C
t_prcs_C: PROCESS
BEGIN
LOOP
	C <= '0';
	WAIT FOR 500000 ps;
	C <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 70000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_C;

-- BT
t_prcs_BT: PROCESS
BEGIN
	BT <= '0';
	WAIT FOR 1000000 ps;
	BT <= '1';
	WAIT FOR 1000000 ps;
	BT <= '0';
WAIT;
END PROCESS t_prcs_BT;
-- M[2]
t_prcs_M_2: PROCESS
BEGIN
	M(2) <= '0';
WAIT;
END PROCESS t_prcs_M_2;
-- M[1]
t_prcs_M_1: PROCESS
BEGIN
	M(1) <= '1';
	WAIT FOR 1000000 ps;
	M(1) <= '0';
WAIT;
END PROCESS t_prcs_M_1;
-- M[0]
t_prcs_M_0: PROCESS
BEGIN
	M(0) <= '1';
	WAIT FOR 1000000 ps;
	M(0) <= '0';
WAIT;
END PROCESS t_prcs_M_0;

-- R
t_prcs_R: PROCESS
BEGIN
	R <= '0';
WAIT;
END PROCESS t_prcs_R;
END maquinaDeVendas_arch;
