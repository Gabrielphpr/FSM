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
-- Generated on "11/28/2024 16:00:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          elevadorEsquematico
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY elevadorEsquematico_vhd_vec_tst IS
END elevadorEsquematico_vhd_vec_tst;
ARCHITECTURE elevadorEsquematico_arch OF elevadorEsquematico_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ANDARATUALU : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ANDARREQD : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ANDARREQU : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ANDATUALD : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ANDREQ : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL C : STD_LOGIC;
SIGNAL CLKFPGA : STD_LOGIC;
SIGNAL ESTADO : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL R : STD_LOGIC;
COMPONENT elevadorEsquematico
	PORT (
	ANDARATUALU : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ANDARREQD : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ANDARREQU : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ANDATUALD : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ANDREQ : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	C : IN STD_LOGIC;
	CLKFPGA : IN STD_LOGIC;
	ESTADO : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	R : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : elevadorEsquematico
	PORT MAP (
-- list connections between master ports and signals
	ANDARATUALU => ANDARATUALU,
	ANDARREQD => ANDARREQD,
	ANDARREQU => ANDARREQU,
	ANDATUALD => ANDATUALD,
	ANDREQ => ANDREQ,
	C => C,
	CLKFPGA => CLKFPGA,
	ESTADO => ESTADO,
	R => R
	);

-- C
t_prcs_C: PROCESS
BEGIN
LOOP
	C <= '0';
	WAIT FOR 500000 ps;
	C <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 50000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_C;
-- ANDREQ[3]
t_prcs_ANDREQ_3: PROCESS
BEGIN
	ANDREQ(3) <= '1';
	WAIT FOR 6000000 ps;
	ANDREQ(3) <= '0';
	WAIT FOR 3000000 ps;
	ANDREQ(3) <= '1';
	WAIT FOR 3000000 ps;
	ANDREQ(3) <= '0';
	WAIT FOR 3000000 ps;
	ANDREQ(3) <= '1';
	WAIT FOR 12000000 ps;
	ANDREQ(3) <= '0';
	WAIT FOR 12000000 ps;
	ANDREQ(3) <= '1';
	WAIT FOR 6000000 ps;
	ANDREQ(3) <= '0';
	WAIT FOR 3000000 ps;
	ANDREQ(3) <= '1';
WAIT;
END PROCESS t_prcs_ANDREQ_3;
-- ANDREQ[2]
t_prcs_ANDREQ_2: PROCESS
BEGIN
	ANDREQ(2) <= '1';
	WAIT FOR 3000000 ps;
	ANDREQ(2) <= '0';
	WAIT FOR 15000000 ps;
	ANDREQ(2) <= '1';
	WAIT FOR 6000000 ps;
	ANDREQ(2) <= '0';
	WAIT FOR 3000000 ps;
	ANDREQ(2) <= '1';
	WAIT FOR 3000000 ps;
	ANDREQ(2) <= '0';
	WAIT FOR 9000000 ps;
	ANDREQ(2) <= '1';
	WAIT FOR 9000000 ps;
	ANDREQ(2) <= '0';
WAIT;
END PROCESS t_prcs_ANDREQ_2;
-- ANDREQ[1]
t_prcs_ANDREQ_1: PROCESS
BEGIN
	ANDREQ(1) <= '0';
	WAIT FOR 3000000 ps;
	ANDREQ(1) <= '1';
	WAIT FOR 3000000 ps;
	ANDREQ(1) <= '0';
	WAIT FOR 3000000 ps;
	ANDREQ(1) <= '1';
	WAIT FOR 6000000 ps;
	ANDREQ(1) <= '0';
	WAIT FOR 3000000 ps;
	ANDREQ(1) <= '1';
	WAIT FOR 18000000 ps;
	ANDREQ(1) <= '0';
	WAIT FOR 12000000 ps;
	ANDREQ(1) <= '1';
WAIT;
END PROCESS t_prcs_ANDREQ_1;
-- ANDREQ[0]
t_prcs_ANDREQ_0: PROCESS
BEGIN
	ANDREQ(0) <= '1';
	WAIT FOR 15000000 ps;
	ANDREQ(0) <= '0';
	WAIT FOR 3000000 ps;
	ANDREQ(0) <= '1';
	WAIT FOR 12000000 ps;
	ANDREQ(0) <= '0';
	WAIT FOR 3000000 ps;
	ANDREQ(0) <= '1';
WAIT;
END PROCESS t_prcs_ANDREQ_0;

-- R
t_prcs_R: PROCESS
BEGIN
	R <= '0';
	WAIT FOR 40000000 ps;
	R <= '1';
	WAIT FOR 1000000 ps;
	R <= '0';
WAIT;
END PROCESS t_prcs_R;
END elevadorEsquematico_arch;
