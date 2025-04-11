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
-- Generated on "10/31/2024 16:24:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          elevador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY elevador_vhd_vec_tst IS
END elevador_vhd_vec_tst;
ARCHITECTURE elevador_arch OF elevador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL andarAtualD : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL andarAtualU : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL andarReq : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL estadoAtual : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT elevador
	PORT (
	andarAtualD : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	andarAtualU : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	andarReq : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	estadoAtual : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : elevador
	PORT MAP (
-- list connections between master ports and signals
	andarAtualD => andarAtualD,
	andarAtualU => andarAtualU,
	andarReq => andarReq,
	clk => clk,
	estadoAtual => estadoAtual,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500000 ps;
	clk <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 70000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- andarReq[3]
t_prcs_andarReq_3: PROCESS
BEGIN
	andarReq(3) <= '1';
	WAIT FOR 5000000 ps;
	andarReq(3) <= '0';
	WAIT FOR 25000000 ps;
	andarReq(3) <= '1';
	WAIT FOR 10000000 ps;
	andarReq(3) <= '0';
	WAIT FOR 5000000 ps;
	andarReq(3) <= '1';
	WAIT FOR 5000000 ps;
	andarReq(3) <= '0';
	WAIT FOR 5000000 ps;
	andarReq(3) <= '1';
	WAIT FOR 5000000 ps;
	andarReq(3) <= '0';
WAIT;
END PROCESS t_prcs_andarReq_3;
-- andarReq[2]
t_prcs_andarReq_2: PROCESS
BEGIN
	andarReq(2) <= '0';
	WAIT FOR 30000000 ps;
	andarReq(2) <= '1';
	WAIT FOR 10000000 ps;
	andarReq(2) <= '0';
	WAIT FOR 5000000 ps;
	andarReq(2) <= '1';
	WAIT FOR 5000000 ps;
	andarReq(2) <= '0';
	WAIT FOR 10000000 ps;
	andarReq(2) <= '1';
WAIT;
END PROCESS t_prcs_andarReq_2;
-- andarReq[1]
t_prcs_andarReq_1: PROCESS
BEGIN
	andarReq(1) <= '1';
	WAIT FOR 5000000 ps;
	andarReq(1) <= '0';
	WAIT FOR 5000000 ps;
	andarReq(1) <= '1';
	WAIT FOR 5000000 ps;
	andarReq(1) <= '0';
	WAIT FOR 5000000 ps;
	andarReq(1) <= '1';
	WAIT FOR 10000000 ps;
	andarReq(1) <= '0';
	WAIT FOR 10000000 ps;
	andarReq(1) <= '1';
	WAIT FOR 20000000 ps;
	andarReq(1) <= '0';
	WAIT FOR 5000000 ps;
	andarReq(1) <= '1';
WAIT;
END PROCESS t_prcs_andarReq_1;
-- andarReq[0]
t_prcs_andarReq_0: PROCESS
BEGIN
	andarReq(0) <= '1';
	WAIT FOR 20000000 ps;
	andarReq(0) <= '0';
	WAIT FOR 5000000 ps;
	andarReq(0) <= '1';
	WAIT FOR 10000000 ps;
	andarReq(0) <= '0';
	WAIT FOR 10000000 ps;
	andarReq(0) <= '1';
	WAIT FOR 10000000 ps;
	andarReq(0) <= '0';
	WAIT FOR 5000000 ps;
	andarReq(0) <= '1';
WAIT;
END PROCESS t_prcs_andarReq_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END elevador_arch;
