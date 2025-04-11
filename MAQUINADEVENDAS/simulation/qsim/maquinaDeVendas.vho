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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "12/05/2024 16:19:50"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	maquinaDeVendas IS
    PORT (
	CEN : OUT std_logic_vector(6 DOWNTO 0);
	C : IN std_logic;
	R : IN std_logic;
	BT : IN std_logic;
	M : IN std_logic_vector(3 DOWNTO 0);
	DEZ : OUT std_logic_vector(6 DOWNTO 0);
	ESTADO : OUT std_logic_vector(2 DOWNTO 0);
	UNI : OUT std_logic_vector(6 DOWNTO 0)
	);
END maquinaDeVendas;

-- Design Ports Information
-- CEN[6]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEN[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEN[4]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEN[3]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEN[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEN[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEN[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEZ[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEZ[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEZ[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEZ[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEZ[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEZ[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEZ[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNI[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNI[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNI[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNI[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNI[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNI[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNI[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BT	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF maquinaDeVendas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CEN : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_BT : std_logic;
SIGNAL ww_M : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DEZ : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ESTADO : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_UNI : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \BT~input_o\ : std_logic;
SIGNAL \inst|estado.init~6_combout\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \C~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|estado~1_combout\ : std_logic;
SIGNAL \inst|estado.init~1_combout\ : std_logic;
SIGNAL \M[0]~input_o\ : std_logic;
SIGNAL \M[2]~input_o\ : std_logic;
SIGNAL \M[1]~input_o\ : std_logic;
SIGNAL \M[3]~input_o\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|atual~58_combout\ : std_logic;
SIGNAL \inst|atual[4]~29_combout\ : std_logic;
SIGNAL \inst|atual~56_combout\ : std_logic;
SIGNAL \inst|atual[3]~13_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Add2~17_sumout\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst|atual~49_combout\ : std_logic;
SIGNAL \inst|atual[0]~1_combout\ : std_logic;
SIGNAL \inst|Add1~17_sumout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|atual~48_combout\ : std_logic;
SIGNAL \inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Add3~1_combout\ : std_logic;
SIGNAL \inst|Add2~18\ : std_logic;
SIGNAL \inst|Add2~14\ : std_logic;
SIGNAL \inst|Add2~6\ : std_logic;
SIGNAL \inst|Add2~9_sumout\ : std_logic;
SIGNAL \inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Add1~22\ : std_logic;
SIGNAL \inst|Add1~14\ : std_logic;
SIGNAL \inst|Add1~6\ : std_logic;
SIGNAL \inst|Add1~9_sumout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Add2~5_sumout\ : std_logic;
SIGNAL \inst|Add1~5_sumout\ : std_logic;
SIGNAL \inst|Mux4~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|atual~53_combout\ : std_logic;
SIGNAL \inst|atual~62_combout\ : std_logic;
SIGNAL \inst|atual[6]~21_combout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add3~3_combout\ : std_logic;
SIGNAL \inst|Add1~10\ : std_logic;
SIGNAL \inst|Add1~26\ : std_logic;
SIGNAL \inst|Add1~29_sumout\ : std_logic;
SIGNAL \inst|Add2~10\ : std_logic;
SIGNAL \inst|Add2~22\ : std_logic;
SIGNAL \inst|Add2~25_sumout\ : std_logic;
SIGNAL \inst|Mux1~5_combout\ : std_logic;
SIGNAL \inst|atual~61_combout\ : std_logic;
SIGNAL \inst|atual[6]~23_combout\ : std_logic;
SIGNAL \inst|estado.recebe~0_combout\ : std_logic;
SIGNAL \inst|atual[6]~_emulated_q\ : std_logic;
SIGNAL \inst|atual[6]~22_combout\ : std_logic;
SIGNAL \inst|atual~64_combout\ : std_logic;
SIGNAL \inst|atual[5]~25_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add2~21_sumout\ : std_logic;
SIGNAL \inst|Add1~25_sumout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|atual~63_combout\ : std_logic;
SIGNAL \inst|atual[5]~27_combout\ : std_logic;
SIGNAL \inst|atual[5]~_emulated_q\ : std_logic;
SIGNAL \inst|atual[5]~26_combout\ : std_logic;
SIGNAL \inst|Mux1~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Add1~30\ : std_logic;
SIGNAL \inst|Add1~1_sumout\ : std_logic;
SIGNAL \inst|Add2~26\ : std_logic;
SIGNAL \inst|Add2~1_sumout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|atual[0]~3_combout\ : std_logic;
SIGNAL \inst|atual[0]~_emulated_q\ : std_logic;
SIGNAL \inst|atual[0]~2_combout\ : std_logic;
SIGNAL \inst|Add1~18\ : std_logic;
SIGNAL \inst|Add1~21_sumout\ : std_logic;
SIGNAL \inst|Mux6~3_combout\ : std_logic;
SIGNAL \inst|atual~50_combout\ : std_logic;
SIGNAL \inst|atual~51_combout\ : std_logic;
SIGNAL \inst|atual[1]~5_combout\ : std_logic;
SIGNAL \inst|atual[1]~7_combout\ : std_logic;
SIGNAL \inst|atual[1]~_emulated_q\ : std_logic;
SIGNAL \inst|atual[1]~6_combout\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|atual~55_combout\ : std_logic;
SIGNAL \inst|atual[3]~15_combout\ : std_logic;
SIGNAL \inst|atual[3]~_emulated_q\ : std_logic;
SIGNAL \inst|atual[3]~14_combout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|atual~57_combout\ : std_logic;
SIGNAL \inst|atual[4]~31_combout\ : std_logic;
SIGNAL \inst|atual[4]~_emulated_q\ : std_logic;
SIGNAL \inst|atual[4]~30_combout\ : std_logic;
SIGNAL \inst|atual~54_combout\ : std_logic;
SIGNAL \inst|atual[2]~9_combout\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|Add2~13_sumout\ : std_logic;
SIGNAL \inst|Add1~13_sumout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|atual~52_combout\ : std_logic;
SIGNAL \inst|atual[2]~11_combout\ : std_logic;
SIGNAL \inst|atual[2]~_emulated_q\ : std_logic;
SIGNAL \inst|atual[2]~10_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|estado~0_combout\ : std_logic;
SIGNAL \inst|estado.init~3_combout\ : std_logic;
SIGNAL \inst|estado.init~_emulated_q\ : std_logic;
SIGNAL \inst|estado.init~2_combout\ : std_logic;
SIGNAL \inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|estado.recebe~q\ : std_logic;
SIGNAL \inst|atual~60_combout\ : std_logic;
SIGNAL \inst|atual[7]~17_combout\ : std_logic;
SIGNAL \inst|atual~59_combout\ : std_logic;
SIGNAL \inst|atual[7]~19_combout\ : std_logic;
SIGNAL \inst|atual[7]~_emulated_q\ : std_logic;
SIGNAL \inst|atual[7]~18_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \inst|comb~0_combout\ : std_logic;
SIGNAL \inst|button_pressed~combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[53]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[53]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[51]~3_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[49]~5_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[49]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|op_8~34_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|op_8~30_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|op_8~14_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|op_8~10_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~17_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[51]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[49]~16_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[49]~17_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[63]~9_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[63]~10_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[17]~11_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[61]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[61]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[15]~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[50]~12_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[50]~13_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[59]~11_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[17]~7_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[17]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[22]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[22]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[21]~2_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[20]~9_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[58]~15_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[58]~18_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[27]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[26]~10_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[25]~12_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[57]~19_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[57]~22_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_8~14_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_8~10_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|estado~3_combout\ : std_logic;
SIGNAL \inst|estado.retorna~1_combout\ : std_logic;
SIGNAL \inst|estado~2_combout\ : std_logic;
SIGNAL \inst|estado.retorna~3_combout\ : std_logic;
SIGNAL \inst|estado.retorna~_emulated_q\ : std_logic;
SIGNAL \inst|estado.retorna~2_combout\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|estado~4_combout\ : std_logic;
SIGNAL \inst|estado.refri~1_combout\ : std_logic;
SIGNAL \inst|estado.refri~3_combout\ : std_logic;
SIGNAL \inst|estado.refri~_emulated_q\ : std_logic;
SIGNAL \inst|estado.refri~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~10\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~11\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[27]~14_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[27]~15_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[25]~27_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[25]~26_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[26]~20_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[26]~21_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[25]~28_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[36]~13_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[36]~16_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[35]~22_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[34]~25_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[34]~29_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[33]~9_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[40]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[45]~12_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[45]~17_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[44]~19_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[44]~23_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[42]~7_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[42]~10_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[41]~5_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[62]~24_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \inst|Mux28~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[60]~11_combout\ : std_logic;
SIGNAL \inst|Mux28~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|Mux26~0_combout\ : std_logic;
SIGNAL \inst|Mux27~0_combout\ : std_logic;
SIGNAL \inst|Mux28~1_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~9_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~9_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~17_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~17_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[58]~3_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[45]~17_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[40]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[34]~25_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[43]~30_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~27_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[63]~18_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~28_combout\ : std_logic;
SIGNAL \inst|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[60]~11_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[27]~15_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[27]~14_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[36]~16_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[41]~5_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[42]~7_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[33]~9_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[44]~19_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[26]~20_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[35]~22_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[44]~23_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[57]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~24_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~26_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado.recebe~q\ : std_logic;
SIGNAL \inst|ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[45]~12_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[26]~21_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[34]~29_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[36]~13_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[42]~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[27]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[2]~10_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[22]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[15]~1_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[22]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[7]~18_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~9_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado.init~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_estado.init~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[1]~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[4]~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[4]~30_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[7]~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_atual[0]~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[6]~22_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[5]~26_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~1_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[27]~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[2]~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[3]~_emulated_q\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado.recebe~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[0]~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[1]~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[6]~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_atual[5]~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[3]~14_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[21]~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~64_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~13_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~12_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado.retorna~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_atual~55_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~54_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~49_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~58_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~14_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado.init~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~50_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[20]~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~16_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~17_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado.retorna~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~53_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado.refri~_emulated_q\ : std_logic;
SIGNAL \inst|ALT_INV_atual~56_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[26]~10_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~51_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~60_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~63_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~59_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~52_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~62_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~15_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~48_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~57_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual~61_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[25]~12_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~3_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~19_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado.refri~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~21_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[0]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado.retorna~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_estado.refri~1_combout\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \ALT_INV_R~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_estado.init~1_combout\ : std_logic;
SIGNAL \ALT_INV_BT~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_atual[1]~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[7]~17_combout\ : std_logic;
SIGNAL \ALT_INV_M[2]~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_atual[6]~21_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[3]~13_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[5]~25_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~20_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~22_combout\ : std_logic;
SIGNAL \ALT_INV_M[0]~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_button_pressed~combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[4]~29_combout\ : std_logic;
SIGNAL \inst|ALT_INV_atual[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_M[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_M[3]~input_o\ : std_logic;

BEGIN

CEN <= ww_CEN;
ww_C <= C;
ww_R <= R;
ww_BT <= BT;
ww_M <= M;
DEZ <= ww_DEZ;
ESTADO <= ww_ESTADO;
UNI <= ww_UNI;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_6~5_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_8~21_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_8~25_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_8~29_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_8~1_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_6~1_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_8~13_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_5~5_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_7~13_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_7~1_sumout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \inst|Div0|auto_generated|divider|divider|op_8~1_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_8~5_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_7~5_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_8~9_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_7~9_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_6~9_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_8~17_sumout\;
\inst|ALT_INV_Add1~1_sumout\ <= NOT \inst|Add1~1_sumout\;
\inst|ALT_INV_Add0~9_sumout\ <= NOT \inst|Add0~9_sumout\;
\inst|ALT_INV_Add1~9_sumout\ <= NOT \inst|Add1~9_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_5~9_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_6~13_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_5~21_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_6~17_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_6~21_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_7~29_sumout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\;
\inst|ALT_INV_Add0~1_sumout\ <= NOT \inst|Add0~1_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_7~25_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\inst|ALT_INV_Add0~5_sumout\ <= NOT \inst|Add0~5_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_5~13_sumout\;
\inst|ALT_INV_Add2~1_sumout\ <= NOT \inst|Add2~1_sumout\;
\inst|ALT_INV_Add2~9_sumout\ <= NOT \inst|Add2~9_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_7~17_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_4~5_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~9_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_5~17_sumout\;
\inst|ALT_INV_Add1~5_sumout\ <= NOT \inst|Add1~5_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_7~21_sumout\;
\inst|ALT_INV_Add2~5_sumout\ <= NOT \inst|Add2~5_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_6~25_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \inst|Mod1|auto_generated|divider|divider|op_8~33_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_4~13_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_6~13_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|op_8~13_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_4~17_sumout\;
\inst|ALT_INV_Add2~13_sumout\ <= NOT \inst|Add2~13_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~9_sumout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_sumout\;
\inst|ALT_INV_Add0~17_sumout\ <= NOT \inst|Add0~17_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_4~9_sumout\;
\inst|ALT_INV_Add1~21_sumout\ <= NOT \inst|Add1~21_sumout\;
\inst|ALT_INV_Add2~21_sumout\ <= NOT \inst|Add2~21_sumout\;
\inst|ALT_INV_Add2~25_sumout\ <= NOT \inst|Add2~25_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_6~9_sumout\;
\inst|ALT_INV_Add1~29_sumout\ <= NOT \inst|Add1~29_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_7~9_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|op_8~9_sumout\;
\inst|ALT_INV_Add0~25_sumout\ <= NOT \inst|Add0~25_sumout\;
\inst|ALT_INV_Add1~17_sumout\ <= NOT \inst|Add1~17_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\;
\inst|ALT_INV_Add1~25_sumout\ <= NOT \inst|Add1~25_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~9_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_5~9_sumout\;
\inst|ALT_INV_Add0~13_sumout\ <= NOT \inst|Add0~13_sumout\;
\inst|ALT_INV_Add0~21_sumout\ <= NOT \inst|Add0~21_sumout\;
\inst|ALT_INV_Add2~17_sumout\ <= NOT \inst|Add2~17_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|op_8~5_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_5~13_sumout\;
\inst|ALT_INV_Add1~13_sumout\ <= NOT \inst|Add1~13_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|op_8~29_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|op_8~33_sumout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~17_sumout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_7~13_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_5~17_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_6~17_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~17_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~17_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|op_8~21_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_5~21_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|op_8~25_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\ <= NOT \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_6~21_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_7~17_sumout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \inst|Div1|auto_generated|divider|divider|op_7~21_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[58]~3_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[45]~17_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[45]~17_combout\;
\inst|ALT_INV_Mux4~2_combout\ <= NOT \inst|Mux4~2_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[40]~2_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[40]~2_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[34]~25_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[34]~25_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[43]~30_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~27_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[25]~27_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[63]~18_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~28_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[25]~28_combout\;
\inst|ALT_INV_comb~0_combout\ <= NOT \inst|comb~0_combout\;
\inst|ALT_INV_Equal1~0_combout\ <= NOT \inst|Equal1~0_combout\;
\inst|ALT_INV_Mux1~0_combout\ <= NOT \inst|Mux1~0_combout\;
\inst|ALT_INV_Mux28~0_combout\ <= NOT \inst|Mux28~0_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[60]~11_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[60]~11_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[27]~15_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[27]~15_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[27]~14_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[27]~14_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[36]~16_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[36]~16_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\;
\inst|ALT_INV_Mux10~0_combout\ <= NOT \inst|Mux10~0_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~4_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[41]~5_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[41]~5_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[42]~7_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[42]~7_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[33]~9_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[33]~9_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[44]~19_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[44]~19_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[26]~20_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[26]~20_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[35]~22_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[35]~22_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[44]~23_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[44]~23_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[57]~1_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\ <= NOT \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~24_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[62]~24_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~26_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[25]~26_combout\;
\inst|ALT_INV_Mux8~0_combout\ <= NOT \inst|Mux8~0_combout\;
\inst|ALT_INV_estado.recebe~q\ <= NOT \inst|estado.recebe~q\;
\inst|ALT_INV_Mux28~2_combout\ <= NOT \inst|Mux28~2_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[45]~12_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[45]~12_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[26]~21_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[26]~21_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[34]~29_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[34]~29_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[36]~13_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[36]~13_combout\;
\inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[42]~10_combout\ <= NOT \inst|Mod1|auto_generated|divider|divider|StageOut[42]~10_combout\;
\inst|ALT_INV_Mux5~0_combout\ <= NOT \inst|Mux5~0_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[27]~0_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[27]~0_combout\;
\inst|ALT_INV_Mux3~0_combout\ <= NOT \inst|Mux3~0_combout\;
\inst|ALT_INV_atual[2]~10_combout\ <= NOT \inst|atual[2]~10_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~0_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[22]~4_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[22]~4_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~4_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[61]~4_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~5_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[52]~5_combout\;
\inst|ALT_INV_Mux6~0_combout\ <= NOT \inst|Mux6~0_combout\;
\inst|ALT_INV_Mux5~1_combout\ <= NOT \inst|Mux5~1_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~6_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[61]~6_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[15]~1_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[15]~1_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[22]~6_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[22]~6_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[16]~5_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~7_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[17]~7_combout\;
\inst|ALT_INV_Mux1~4_combout\ <= NOT \inst|Mux1~4_combout\;
\inst|ALT_INV_atual[7]~18_combout\ <= NOT \inst|atual[7]~18_combout\;
\inst|ALT_INV_Mux6~2_combout\ <= NOT \inst|Mux6~2_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\;
\inst|ALT_INV_Mux1~2_combout\ <= NOT \inst|Mux1~2_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~8_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[17]~8_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~9_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[63]~9_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~10_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[63]~10_combout\;
\inst|ALT_INV_estado.init~_emulated_q\ <= NOT \inst|estado.init~_emulated_q\;
\inst|ALT_INV_estado.init~2_combout\ <= NOT \inst|estado.init~2_combout\;
\inst|ALT_INV_atual[1]~6_combout\ <= NOT \inst|atual[1]~6_combout\;
\inst|ALT_INV_Mux4~1_combout\ <= NOT \inst|Mux4~1_combout\;
\inst|ALT_INV_atual[4]~_emulated_q\ <= NOT \inst|atual[4]~_emulated_q\;
\inst|ALT_INV_Add3~1_combout\ <= NOT \inst|Add3~1_combout\;
\inst|ALT_INV_Mux6~1_combout\ <= NOT \inst|Mux6~1_combout\;
\inst|ALT_INV_Mux4~0_combout\ <= NOT \inst|Mux4~0_combout\;
\inst|ALT_INV_atual[4]~30_combout\ <= NOT \inst|atual[4]~30_combout\;
\inst|ALT_INV_atual[7]~_emulated_q\ <= NOT \inst|atual[7]~_emulated_q\;
\inst|ALT_INV_atual[0]~2_combout\ <= NOT \inst|atual[0]~2_combout\;
\inst|ALT_INV_atual[6]~22_combout\ <= NOT \inst|atual[6]~22_combout\;
\inst|ALT_INV_atual[5]~26_combout\ <= NOT \inst|atual[5]~26_combout\;
\inst|ALT_INV_Mux0~1_combout\ <= NOT \inst|Mux0~1_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~1_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[54]~1_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[27]~3_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\;
\inst|ALT_INV_Mux1~1_combout\ <= NOT \inst|Mux1~1_combout\;
\inst|ALT_INV_Mux1~3_combout\ <= NOT \inst|Mux1~3_combout\;
\inst|ALT_INV_LessThan0~0_combout\ <= NOT \inst|LessThan0~0_combout\;
\inst|ALT_INV_Add3~2_combout\ <= NOT \inst|Add3~2_combout\;
\inst|ALT_INV_atual[2]~_emulated_q\ <= NOT \inst|atual[2]~_emulated_q\;
\inst|ALT_INV_Add3~0_combout\ <= NOT \inst|Add3~0_combout\;
\inst|ALT_INV_atual[3]~_emulated_q\ <= NOT \inst|atual[3]~_emulated_q\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~3_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\;
\inst|ALT_INV_estado.recebe~0_combout\ <= NOT \inst|estado.recebe~0_combout\;
\inst|ALT_INV_Mux2~1_combout\ <= NOT \inst|Mux2~1_combout\;
\inst|ALT_INV_LessThan0~1_combout\ <= NOT \inst|LessThan0~1_combout\;
\inst|ALT_INV_atual[0]~_emulated_q\ <= NOT \inst|atual[0]~_emulated_q\;
\inst|ALT_INV_Mux0~0_combout\ <= NOT \inst|Mux0~0_combout\;
\inst|ALT_INV_atual[1]~_emulated_q\ <= NOT \inst|atual[1]~_emulated_q\;
\inst|ALT_INV_Mux7~0_combout\ <= NOT \inst|Mux7~0_combout\;
\inst|ALT_INV_Add3~3_combout\ <= NOT \inst|Add3~3_combout\;
\inst|ALT_INV_atual[6]~_emulated_q\ <= NOT \inst|atual[6]~_emulated_q\;
\inst|ALT_INV_atual[5]~_emulated_q\ <= NOT \inst|atual[5]~_emulated_q\;
\inst|ALT_INV_Mux2~0_combout\ <= NOT \inst|Mux2~0_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[51]~2_combout\;
\inst|ALT_INV_atual[3]~14_combout\ <= NOT \inst|atual[3]~14_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[21]~2_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[21]~2_combout\;
\inst|ALT_INV_LessThan0~2_combout\ <= NOT \inst|LessThan0~2_combout\;
\inst|ALT_INV_Mux1~5_combout\ <= NOT \inst|Mux1~5_combout\;
\inst|ALT_INV_atual~64_combout\ <= NOT \inst|atual~64_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~13_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[50]~13_combout\;
\inst|ALT_INV_LessThan0~3_combout\ <= NOT \inst|LessThan0~3_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~12_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[50]~12_combout\;
\inst|ALT_INV_estado~3_combout\ <= NOT \inst|estado~3_combout\;
\inst|ALT_INV_estado.retorna~_emulated_q\ <= NOT \inst|estado.retorna~_emulated_q\;
\inst|ALT_INV_atual~55_combout\ <= NOT \inst|atual~55_combout\;
\inst|ALT_INV_atual~54_combout\ <= NOT \inst|atual~54_combout\;
\inst|ALT_INV_atual~49_combout\ <= NOT \inst|atual~49_combout\;
\inst|ALT_INV_atual~58_combout\ <= NOT \inst|atual~58_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~14_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\;
\inst|ALT_INV_estado.init~6_combout\ <= NOT \inst|estado.init~6_combout\;
\inst|ALT_INV_atual~50_combout\ <= NOT \inst|atual~50_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[20]~9_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[20]~9_combout\;
\inst|ALT_INV_Selector1~1_combout\ <= NOT \inst|Selector1~1_combout\;
\inst|ALT_INV_Mux3~1_combout\ <= NOT \inst|Mux3~1_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~16_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[49]~16_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~17_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[49]~17_combout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\ <= NOT \inst|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\;
\inst|ALT_INV_estado.retorna~2_combout\ <= NOT \inst|estado.retorna~2_combout\;
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst|ALT_INV_atual~53_combout\ <= NOT \inst|atual~53_combout\;
\inst|ALT_INV_estado.refri~_emulated_q\ <= NOT \inst|estado.refri~_emulated_q\;
\inst|ALT_INV_atual~56_combout\ <= NOT \inst|atual~56_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[26]~10_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[26]~10_combout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~1_combout\ <= NOT \inst|Div0|auto_generated|divider|divider|StageOut[53]~1_combout\;
\inst|ALT_INV_Selector3~0_combout\ <= NOT \inst|Selector3~0_combout\;
\inst|ALT_INV_atual~51_combout\ <= NOT \inst|atual~51_combout\;
\inst|ALT_INV_atual~60_combout\ <= NOT \inst|atual~60_combout\;
\inst|ALT_INV_atual~63_combout\ <= NOT \inst|atual~63_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~11_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[59]~11_combout\;
\inst|ALT_INV_estado~2_combout\ <= NOT \inst|estado~2_combout\;
\inst|ALT_INV_Selector3~1_combout\ <= NOT \inst|Selector3~1_combout\;
\inst|ALT_INV_atual~59_combout\ <= NOT \inst|atual~59_combout\;
\inst|ALT_INV_atual~52_combout\ <= NOT \inst|atual~52_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~11_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[17]~11_combout\;
\inst|ALT_INV_estado~0_combout\ <= NOT \inst|estado~0_combout\;
\inst|ALT_INV_estado~4_combout\ <= NOT \inst|estado~4_combout\;
\inst|ALT_INV_atual~62_combout\ <= NOT \inst|atual~62_combout\;
\inst|ALT_INV_Selector0~0_combout\ <= NOT \inst|Selector0~0_combout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~0_combout\ <= NOT \inst|Div0|auto_generated|divider|divider|StageOut[53]~0_combout\;
\inst|ALT_INV_Mux6~3_combout\ <= NOT \inst|Mux6~3_combout\;
\inst|ALT_INV_estado~1_combout\ <= NOT \inst|estado~1_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~15_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[58]~15_combout\;
\inst|ALT_INV_atual~48_combout\ <= NOT \inst|atual~48_combout\;
\inst|ALT_INV_atual~57_combout\ <= NOT \inst|atual~57_combout\;
\inst|ALT_INV_atual~61_combout\ <= NOT \inst|atual~61_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[58]~18_combout\;
\inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[25]~12_combout\ <= NOT \inst|Div1|auto_generated|divider|divider|StageOut[25]~12_combout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~3_combout\ <= NOT \inst|Div0|auto_generated|divider|divider|StageOut[51]~3_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~19_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[57]~19_combout\;
\inst|ALT_INV_estado.refri~2_combout\ <= NOT \inst|estado.refri~2_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~21_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\ <= NOT \inst|Div0|auto_generated|divider|divider|StageOut[49]~5_combout\;
\inst|ALT_INV_atual[0]~1_combout\ <= NOT \inst|atual[0]~1_combout\;
\inst|ALT_INV_estado.retorna~1_combout\ <= NOT \inst|estado.retorna~1_combout\;
\inst|ALT_INV_estado.refri~1_combout\ <= NOT \inst|estado.refri~1_combout\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\ALT_INV_R~input_o\ <= NOT \R~input_o\;
\inst|ALT_INV_estado.init~1_combout\ <= NOT \inst|estado.init~1_combout\;
\ALT_INV_BT~input_o\ <= NOT \BT~input_o\;
\inst|ALT_INV_atual[1]~5_combout\ <= NOT \inst|atual[1]~5_combout\;
\inst|ALT_INV_atual[7]~17_combout\ <= NOT \inst|atual[7]~17_combout\;
\ALT_INV_M[2]~input_o\ <= NOT \M[2]~input_o\;
\inst|ALT_INV_atual[6]~21_combout\ <= NOT \inst|atual[6]~21_combout\;
\inst|ALT_INV_atual[3]~13_combout\ <= NOT \inst|atual[3]~13_combout\;
\inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\ <= NOT \inst|Div0|auto_generated|divider|divider|StageOut[49]~4_combout\;
\inst|ALT_INV_atual[5]~25_combout\ <= NOT \inst|atual[5]~25_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~20_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\;
\inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~22_combout\ <= NOT \inst|Mod0|auto_generated|divider|divider|StageOut[57]~22_combout\;
\ALT_INV_M[0]~input_o\ <= NOT \M[0]~input_o\;
\inst|ALT_INV_button_pressed~combout\ <= NOT \inst|button_pressed~combout\;
\inst|ALT_INV_atual[4]~29_combout\ <= NOT \inst|atual[4]~29_combout\;
\inst|ALT_INV_atual[2]~9_combout\ <= NOT \inst|atual[2]~9_combout\;
\ALT_INV_M[1]~input_o\ <= NOT \M[1]~input_o\;
\ALT_INV_M[3]~input_o\ <= NOT \M[3]~input_o\;

-- Location: IOOBUF_X54_Y16_N22
\CEN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux8~1_combout\,
	devoe => ww_devoe,
	o => ww_CEN(6));

-- Location: IOOBUF_X48_Y0_N42
\CEN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_CEN(5));

-- Location: IOOBUF_X54_Y20_N22
\CEN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux10~1_combout\,
	devoe => ww_devoe,
	o => ww_CEN(4));

-- Location: IOOBUF_X54_Y14_N62
\CEN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux8~1_combout\,
	devoe => ww_devoe,
	o => ww_CEN(3));

-- Location: IOOBUF_X54_Y21_N39
\CEN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_CEN(2));

-- Location: IOOBUF_X52_Y0_N36
\CEN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_CEN(1));

-- Location: IOOBUF_X54_Y17_N56
\CEN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_CEN(0));

-- Location: IOOBUF_X52_Y45_N53
\DEZ[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_DEZ(6));

-- Location: IOOBUF_X54_Y15_N5
\DEZ[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_DEZ(5));

-- Location: IOOBUF_X52_Y0_N53
\DEZ[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_DEZ(4));

-- Location: IOOBUF_X54_Y14_N79
\DEZ[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_DEZ(3));

-- Location: IOOBUF_X54_Y15_N56
\DEZ[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_DEZ(2));

-- Location: IOOBUF_X54_Y15_N22
\DEZ[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_DEZ(1));

-- Location: IOOBUF_X54_Y15_N39
\DEZ[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_DEZ(0));

-- Location: IOOBUF_X54_Y20_N56
\ESTADO[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|estado.recebe~q\,
	devoe => ww_devoe,
	o => ww_ESTADO(2));

-- Location: IOOBUF_X54_Y19_N56
\ESTADO[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|estado.retorna~2_combout\,
	devoe => ww_devoe,
	o => ww_ESTADO(1));

-- Location: IOOBUF_X54_Y19_N5
\ESTADO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|estado.refri~2_combout\,
	devoe => ww_devoe,
	o => ww_ESTADO(0));

-- Location: IOOBUF_X54_Y17_N22
\UNI[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_UNI(6));

-- Location: IOOBUF_X54_Y17_N5
\UNI[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux23~0_combout\,
	devoe => ww_devoe,
	o => ww_UNI(5));

-- Location: IOOBUF_X54_Y17_N39
\UNI[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_UNI(4));

-- Location: IOOBUF_X54_Y16_N56
\UNI[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux25~0_combout\,
	devoe => ww_devoe,
	o => ww_UNI(3));

-- Location: IOOBUF_X54_Y16_N5
\UNI[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_UNI(2));

-- Location: IOOBUF_X54_Y21_N22
\UNI[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_UNI(1));

-- Location: IOOBUF_X54_Y21_N5
\UNI[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux28~1_combout\,
	devoe => ww_devoe,
	o => ww_UNI(0));

-- Location: IOIBUF_X54_Y19_N38
\R~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: IOIBUF_X54_Y19_N21
\BT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BT,
	o => \BT~input_o\);

-- Location: LABCELL_X53_Y19_N39
\inst|estado.init~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.init~6_combout\ = ( \BT~input_o\ & ( !\R~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_R~input_o\,
	dataf => \ALT_INV_BT~input_o\,
	combout => \inst|estado.init~6_combout\);

-- Location: IOIBUF_X54_Y18_N61
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: CLKCTRL_G10
\C~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \C~input_o\,
	outclk => \C~inputCLKENA0_outclk\);

-- Location: LABCELL_X50_Y19_N54
\inst|estado~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado~1_combout\ = ( \inst|estado.recebe~q\ & ( \inst|estado.init~2_combout\ ) ) # ( !\inst|estado.recebe~q\ & ( \inst|estado.init~2_combout\ ) ) # ( \inst|estado.recebe~q\ & ( !\inst|estado.init~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_estado.recebe~q\,
	dataf => \inst|ALT_INV_estado.init~2_combout\,
	combout => \inst|estado~1_combout\);

-- Location: LABCELL_X50_Y19_N18
\inst|estado.init~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.init~1_combout\ = ( \inst|estado.init~1_combout\ & ( (!\R~input_o\ & ((!\inst|estado.init~6_combout\) # (\inst|estado~1_combout\))) ) ) # ( !\inst|estado.init~1_combout\ & ( (\inst|estado~1_combout\ & (!\R~input_o\ & 
-- \inst|estado.init~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_estado~1_combout\,
	datac => \ALT_INV_R~input_o\,
	datad => \inst|ALT_INV_estado.init~6_combout\,
	dataf => \inst|ALT_INV_estado.init~1_combout\,
	combout => \inst|estado.init~1_combout\);

-- Location: IOIBUF_X54_Y18_N44
\M[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(0),
	o => \M[0]~input_o\);

-- Location: IOIBUF_X54_Y16_N38
\M[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(2),
	o => \M[2]~input_o\);

-- Location: IOIBUF_X54_Y18_N78
\M[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(1),
	o => \M[1]~input_o\);

-- Location: IOIBUF_X54_Y18_N95
\M[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(3),
	o => \M[3]~input_o\);

-- Location: LABCELL_X50_Y18_N0
\inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = ( !\M[3]~input_o\ & ( (!\M[0]~input_o\ & (!\M[2]~input_o\ & !\M[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[0]~input_o\,
	datab => \ALT_INV_M[2]~input_o\,
	datac => \ALT_INV_M[1]~input_o\,
	dataf => \ALT_INV_M[3]~input_o\,
	combout => \inst|Equal1~0_combout\);

-- Location: MLABCELL_X49_Y19_N15
\inst|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = ( !\inst|estado.init~2_combout\ & ( !\inst|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	dataf => \inst|ALT_INV_estado.init~2_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LABCELL_X50_Y18_N12
\inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = ( \M[3]~input_o\ & ( (!\M[0]~input_o\ & (!\M[2]~input_o\ & !\M[1]~input_o\)) ) ) # ( !\M[3]~input_o\ & ( (!\M[0]~input_o\ & (!\M[2]~input_o\ $ (!\M[1]~input_o\))) # (\M[0]~input_o\ & (!\M[2]~input_o\ & !\M[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100001101000011010000110100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[0]~input_o\,
	datab => \ALT_INV_M[2]~input_o\,
	datac => \ALT_INV_M[1]~input_o\,
	dataf => \ALT_INV_M[3]~input_o\,
	combout => \inst|Mux1~0_combout\);

-- Location: MLABCELL_X49_Y19_N51
\inst|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = ( !\M[3]~input_o\ & ( (!\M[2]~input_o\ & !\M[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[2]~input_o\,
	datac => \ALT_INV_M[1]~input_o\,
	dataf => \ALT_INV_M[3]~input_o\,
	combout => \inst|Mux1~1_combout\);

-- Location: LABCELL_X52_Y19_N54
\inst|atual~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~58_combout\ = ( !\inst|estado.recebe~q\ & ( \inst|atual[4]~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[4]~30_combout\,
	dataf => \inst|ALT_INV_estado.recebe~q\,
	combout => \inst|atual~58_combout\);

-- Location: LABCELL_X52_Y19_N45
\inst|atual[4]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[4]~29_combout\ = ( \inst|estado.init~6_combout\ & ( (\inst|atual~58_combout\ & !\R~input_o\) ) ) # ( !\inst|estado.init~6_combout\ & ( (!\R~input_o\ & \inst|atual[4]~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual~58_combout\,
	datac => \ALT_INV_R~input_o\,
	datad => \inst|ALT_INV_atual[4]~29_combout\,
	dataf => \inst|ALT_INV_estado.init~6_combout\,
	combout => \inst|atual[4]~29_combout\);

-- Location: LABCELL_X52_Y19_N57
\inst|atual~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~56_combout\ = ( !\inst|estado.recebe~q\ & ( \inst|atual[3]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[3]~14_combout\,
	dataf => \inst|ALT_INV_estado.recebe~q\,
	combout => \inst|atual~56_combout\);

-- Location: LABCELL_X53_Y19_N15
\inst|atual[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[3]~13_combout\ = ( \inst|atual~56_combout\ & ( (!\R~input_o\ & ((\inst|atual[3]~13_combout\) # (\inst|estado.init~6_combout\))) ) ) # ( !\inst|atual~56_combout\ & ( (!\R~input_o\ & (!\inst|estado.init~6_combout\ & \inst|atual[3]~13_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_R~input_o\,
	datac => \inst|ALT_INV_estado.init~6_combout\,
	datad => \inst|ALT_INV_atual[3]~13_combout\,
	dataf => \inst|ALT_INV_atual~56_combout\,
	combout => \inst|atual[3]~13_combout\);

-- Location: LABCELL_X50_Y18_N6
\inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = ( \M[1]~input_o\ & ( \M[3]~input_o\ & ( \inst|atual[1]~6_combout\ ) ) ) # ( !\M[1]~input_o\ & ( \M[3]~input_o\ & ( \inst|atual[1]~6_combout\ ) ) ) # ( \M[1]~input_o\ & ( !\M[3]~input_o\ & ( (\inst|atual[1]~6_combout\ & 
-- ((\M[2]~input_o\) # (\M[0]~input_o\))) ) ) ) # ( !\M[1]~input_o\ & ( !\M[3]~input_o\ & ( (\inst|atual[1]~6_combout\ & (!\M[0]~input_o\ $ (\M[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[0]~input_o\,
	datab => \ALT_INV_M[2]~input_o\,
	datac => \inst|ALT_INV_atual[1]~6_combout\,
	datae => \ALT_INV_M[1]~input_o\,
	dataf => \ALT_INV_M[3]~input_o\,
	combout => \inst|Mux6~0_combout\);

-- Location: LABCELL_X47_Y19_N0
\inst|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~17_sumout\ = SUM(( \inst|atual[1]~6_combout\ ) + ( VCC ) + ( !VCC ))
-- \inst|Add2~18\ = CARRY(( \inst|atual[1]~6_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_atual[1]~6_combout\,
	cin => GND,
	sumout => \inst|Add2~17_sumout\,
	cout => \inst|Add2~18\);

-- Location: LABCELL_X47_Y19_N30
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst|atual[1]~6_combout\ ) + ( VCC ) + ( !VCC ))
-- \inst|Add0~18\ = CARRY(( \inst|atual[1]~6_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[1]~6_combout\,
	cin => GND,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: LABCELL_X50_Y18_N21
\inst|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = ( \inst|Add0~17_sumout\ & ( (!\M[1]~input_o\ & ((!\M[0]~input_o\ & (\M[2]~input_o\ & \inst|Add2~17_sumout\)) # (\M[0]~input_o\ & (!\M[2]~input_o\)))) ) ) # ( !\inst|Add0~17_sumout\ & ( (!\M[0]~input_o\ & (\M[2]~input_o\ & 
-- (!\M[1]~input_o\ & \inst|Add2~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000001000000011000000100000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[0]~input_o\,
	datab => \ALT_INV_M[2]~input_o\,
	datac => \ALT_INV_M[1]~input_o\,
	datad => \inst|ALT_INV_Add2~17_sumout\,
	dataf => \inst|ALT_INV_Add0~17_sumout\,
	combout => \inst|Mux6~1_combout\);

-- Location: LABCELL_X52_Y19_N42
\inst|atual~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~49_combout\ = ( !\inst|estado.recebe~q\ & ( \inst|atual[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_atual[0]~2_combout\,
	dataf => \inst|ALT_INV_estado.recebe~q\,
	combout => \inst|atual~49_combout\);

-- Location: LABCELL_X53_Y19_N42
\inst|atual[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[0]~1_combout\ = ( \inst|atual~49_combout\ & ( (!\R~input_o\ & ((\inst|estado.init~6_combout\) # (\inst|atual[0]~1_combout\))) ) ) # ( !\inst|atual~49_combout\ & ( (!\R~input_o\ & (\inst|atual[0]~1_combout\ & !\inst|estado.init~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datac => \inst|ALT_INV_atual[0]~1_combout\,
	datad => \inst|ALT_INV_estado.init~6_combout\,
	dataf => \inst|ALT_INV_atual~49_combout\,
	combout => \inst|atual[0]~1_combout\);

-- Location: LABCELL_X48_Y18_N0
\inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~17_sumout\ = SUM(( \inst|atual[0]~2_combout\ ) + ( VCC ) + ( !VCC ))
-- \inst|Add1~18\ = CARRY(( \inst|atual[0]~2_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_atual[0]~2_combout\,
	cin => GND,
	sumout => \inst|Add1~17_sumout\,
	cout => \inst|Add1~18\);

-- Location: LABCELL_X52_Y18_N42
\inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = ( \M[3]~input_o\ & ( \inst|Add1~17_sumout\ & ( \inst|atual[0]~2_combout\ ) ) ) # ( !\M[3]~input_o\ & ( \inst|Add1~17_sumout\ & ( ((!\M[0]~input_o\ & (!\M[2]~input_o\ & \M[1]~input_o\))) # (\inst|atual[0]~2_combout\) ) ) ) # ( 
-- \M[3]~input_o\ & ( !\inst|Add1~17_sumout\ & ( \inst|atual[0]~2_combout\ ) ) ) # ( !\M[3]~input_o\ & ( !\inst|Add1~17_sumout\ & ( (\inst|atual[0]~2_combout\ & (((!\M[1]~input_o\) # (\M[2]~input_o\)) # (\M[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101010101010101010101010101110101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[0]~2_combout\,
	datab => \ALT_INV_M[0]~input_o\,
	datac => \ALT_INV_M[2]~input_o\,
	datad => \ALT_INV_M[1]~input_o\,
	datae => \ALT_INV_M[3]~input_o\,
	dataf => \inst|ALT_INV_Add1~17_sumout\,
	combout => \inst|Mux7~0_combout\);

-- Location: LABCELL_X52_Y18_N33
\inst|atual~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~48_combout\ = ( \inst|Mux7~0_combout\ & ( (!\inst|Equal1~0_combout\) # (\inst|atual[0]~2_combout\) ) ) # ( !\inst|Mux7~0_combout\ & ( (\inst|Equal1~0_combout\ & \inst|atual[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_atual[0]~2_combout\,
	dataf => \inst|ALT_INV_Mux7~0_combout\,
	combout => \inst|atual~48_combout\);

-- Location: LABCELL_X50_Y18_N48
\inst|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~2_combout\ = ( !\M[0]~input_o\ & ( (\M[1]~input_o\ & !\M[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[1]~input_o\,
	datab => \ALT_INV_M[2]~input_o\,
	dataf => \ALT_INV_M[0]~input_o\,
	combout => \inst|Mux6~2_combout\);

-- Location: LABCELL_X50_Y18_N24
\inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ( \inst|Mux6~1_combout\ & ( !\inst|Mux7~0_combout\ & ( (\M[3]~input_o\ & !\inst|Mux6~0_combout\) ) ) ) # ( !\inst|Mux6~1_combout\ & ( !\inst|Mux7~0_combout\ & ( (!\inst|Mux6~0_combout\ & ((!\inst|Add1~21_sumout\) # 
-- ((!\inst|Mux6~2_combout\) # (\M[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~21_sumout\,
	datab => \ALT_INV_M[3]~input_o\,
	datac => \inst|ALT_INV_Mux6~2_combout\,
	datad => \inst|ALT_INV_Mux6~0_combout\,
	datae => \inst|ALT_INV_Mux6~1_combout\,
	dataf => \inst|ALT_INV_Mux7~0_combout\,
	combout => \inst|LessThan0~0_combout\);

-- Location: LABCELL_X48_Y19_N39
\inst|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~1_combout\ = ( \inst|atual[2]~10_combout\ & ( !\inst|atual[3]~14_combout\ $ (!\inst|atual[4]~30_combout\) ) ) # ( !\inst|atual[2]~10_combout\ & ( \inst|atual[4]~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[3]~14_combout\,
	datad => \inst|ALT_INV_atual[4]~30_combout\,
	dataf => \inst|ALT_INV_atual[2]~10_combout\,
	combout => \inst|Add3~1_combout\);

-- Location: LABCELL_X47_Y19_N3
\inst|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~13_sumout\ = SUM(( \inst|atual[2]~10_combout\ ) + ( GND ) + ( \inst|Add2~18\ ))
-- \inst|Add2~14\ = CARRY(( \inst|atual[2]~10_combout\ ) + ( GND ) + ( \inst|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_atual[2]~10_combout\,
	cin => \inst|Add2~18\,
	sumout => \inst|Add2~13_sumout\,
	cout => \inst|Add2~14\);

-- Location: LABCELL_X47_Y19_N6
\inst|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~5_sumout\ = SUM(( \inst|atual[3]~14_combout\ ) + ( GND ) + ( \inst|Add2~14\ ))
-- \inst|Add2~6\ = CARRY(( \inst|atual[3]~14_combout\ ) + ( GND ) + ( \inst|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[3]~14_combout\,
	cin => \inst|Add2~14\,
	sumout => \inst|Add2~5_sumout\,
	cout => \inst|Add2~6\);

-- Location: LABCELL_X47_Y19_N9
\inst|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~9_sumout\ = SUM(( \inst|atual[4]~30_combout\ ) + ( VCC ) + ( \inst|Add2~6\ ))
-- \inst|Add2~10\ = CARRY(( \inst|atual[4]~30_combout\ ) + ( VCC ) + ( \inst|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[4]~30_combout\,
	cin => \inst|Add2~6\,
	sumout => \inst|Add2~9_sumout\,
	cout => \inst|Add2~10\);

-- Location: LABCELL_X52_Y17_N42
\inst|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~3_combout\ = ( !\M[3]~input_o\ & ( !\M[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_M[2]~input_o\,
	dataf => \ALT_INV_M[3]~input_o\,
	combout => \inst|Mux1~3_combout\);

-- Location: LABCELL_X52_Y19_N6
\inst|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = ( \M[2]~input_o\ & ( !\M[3]~input_o\ ) ) # ( !\M[2]~input_o\ & ( (\M[1]~input_o\ & !\M[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_M[1]~input_o\,
	datad => \ALT_INV_M[3]~input_o\,
	dataf => \ALT_INV_M[2]~input_o\,
	combout => \inst|Mux1~2_combout\);

-- Location: LABCELL_X48_Y18_N3
\inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~21_sumout\ = SUM(( \inst|atual[1]~6_combout\ ) + ( GND ) + ( \inst|Add1~18\ ))
-- \inst|Add1~22\ = CARRY(( \inst|atual[1]~6_combout\ ) + ( GND ) + ( \inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[1]~6_combout\,
	cin => \inst|Add1~18\,
	sumout => \inst|Add1~21_sumout\,
	cout => \inst|Add1~22\);

-- Location: LABCELL_X48_Y18_N6
\inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~13_sumout\ = SUM(( \inst|atual[2]~10_combout\ ) + ( GND ) + ( \inst|Add1~22\ ))
-- \inst|Add1~14\ = CARRY(( \inst|atual[2]~10_combout\ ) + ( GND ) + ( \inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_atual[2]~10_combout\,
	cin => \inst|Add1~22\,
	sumout => \inst|Add1~13_sumout\,
	cout => \inst|Add1~14\);

-- Location: LABCELL_X48_Y18_N9
\inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~5_sumout\ = SUM(( \inst|atual[3]~14_combout\ ) + ( VCC ) + ( \inst|Add1~14\ ))
-- \inst|Add1~6\ = CARRY(( \inst|atual[3]~14_combout\ ) + ( VCC ) + ( \inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[3]~14_combout\,
	cin => \inst|Add1~14\,
	sumout => \inst|Add1~5_sumout\,
	cout => \inst|Add1~6\);

-- Location: LABCELL_X48_Y18_N12
\inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~9_sumout\ = SUM(( \inst|atual[4]~30_combout\ ) + ( VCC ) + ( \inst|Add1~6\ ))
-- \inst|Add1~10\ = CARRY(( \inst|atual[4]~30_combout\ ) + ( VCC ) + ( \inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[4]~30_combout\,
	cin => \inst|Add1~6\,
	sumout => \inst|Add1~9_sumout\,
	cout => \inst|Add1~10\);

-- Location: MLABCELL_X49_Y19_N42
\inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = ( \inst|Mux1~2_combout\ & ( \inst|Add1~9_sumout\ & ( (\inst|Mux1~3_combout\) # (\inst|Add2~9_sumout\) ) ) ) # ( !\inst|Mux1~2_combout\ & ( \inst|Add1~9_sumout\ & ( (!\inst|Mux1~3_combout\ & (\inst|Add3~1_combout\)) # 
-- (\inst|Mux1~3_combout\ & ((\inst|Add0~9_sumout\))) ) ) ) # ( \inst|Mux1~2_combout\ & ( !\inst|Add1~9_sumout\ & ( (\inst|Add2~9_sumout\ & !\inst|Mux1~3_combout\) ) ) ) # ( !\inst|Mux1~2_combout\ & ( !\inst|Add1~9_sumout\ & ( (!\inst|Mux1~3_combout\ & 
-- (\inst|Add3~1_combout\)) # (\inst|Mux1~3_combout\ & ((\inst|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add3~1_combout\,
	datab => \inst|ALT_INV_Add2~9_sumout\,
	datac => \inst|ALT_INV_Add0~9_sumout\,
	datad => \inst|ALT_INV_Mux1~3_combout\,
	datae => \inst|ALT_INV_Mux1~2_combout\,
	dataf => \inst|ALT_INV_Add1~9_sumout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LABCELL_X48_Y19_N24
\inst|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~2_combout\ = ( !\M[2]~input_o\ & ( (!\M[3]~input_o\ & ((((\inst|Add1~5_sumout\ & \M[1]~input_o\))))) # (\M[3]~input_o\ & (!\inst|atual[2]~10_combout\ $ ((!\inst|atual[3]~14_combout\)))) ) ) # ( \M[2]~input_o\ & ( (!\M[3]~input_o\ & 
-- ((((\inst|Add2~5_sumout\))))) # (\M[3]~input_o\ & (!\inst|atual[2]~10_combout\ $ ((!\inst|atual[3]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001100110000011110110011000001111011001100000111101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[2]~10_combout\,
	datab => \inst|ALT_INV_atual[3]~14_combout\,
	datac => \inst|ALT_INV_Add2~5_sumout\,
	datad => \ALT_INV_M[3]~input_o\,
	datae => \ALT_INV_M[2]~input_o\,
	dataf => \ALT_INV_M[1]~input_o\,
	datag => \inst|ALT_INV_Add1~5_sumout\,
	combout => \inst|Mux4~2_combout\);

-- Location: MLABCELL_X49_Y19_N30
\inst|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = ( \inst|Mux3~0_combout\ & ( \inst|Mux4~2_combout\ & ( (!\inst|Mux1~0_combout\ & (!\inst|atual[4]~30_combout\ & !\inst|atual[3]~14_combout\)) ) ) ) # ( !\inst|Mux3~0_combout\ & ( \inst|Mux4~2_combout\ & ( 
-- (!\inst|Mux1~0_combout\ & (!\inst|atual[4]~30_combout\ & !\inst|atual[3]~14_combout\)) ) ) ) # ( \inst|Mux3~0_combout\ & ( !\inst|Mux4~2_combout\ & ( (!\inst|Mux1~0_combout\ & (!\inst|atual[4]~30_combout\ & !\inst|atual[3]~14_combout\)) ) ) ) # ( 
-- !\inst|Mux3~0_combout\ & ( !\inst|Mux4~2_combout\ & ( (!\inst|Mux1~0_combout\ & (((!\inst|atual[4]~30_combout\ & !\inst|atual[3]~14_combout\)))) # (\inst|Mux1~0_combout\ & (!\inst|Mux4~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010001000100101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux1~0_combout\,
	datab => \inst|ALT_INV_Mux4~0_combout\,
	datac => \inst|ALT_INV_atual[4]~30_combout\,
	datad => \inst|ALT_INV_atual[3]~14_combout\,
	datae => \inst|ALT_INV_Mux3~0_combout\,
	dataf => \inst|ALT_INV_Mux4~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LABCELL_X53_Y19_N36
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( !\inst|atual[3]~14_combout\ & ( (!\inst|atual[1]~6_combout\ & (!\inst|atual[7]~18_combout\ & (!\inst|atual[0]~2_combout\ & \inst|atual[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[1]~6_combout\,
	datab => \inst|ALT_INV_atual[7]~18_combout\,
	datac => \inst|ALT_INV_atual[0]~2_combout\,
	datad => \inst|ALT_INV_atual[2]~10_combout\,
	dataf => \inst|ALT_INV_atual[3]~14_combout\,
	combout => \inst|Equal0~0_combout\);

-- Location: LABCELL_X53_Y19_N3
\inst|atual~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~53_combout\ = ( \inst|estado.recebe~q\ & ( (!\inst|atual[5]~26_combout\) # (((!\inst|atual[6]~22_combout\) # (!\inst|Equal0~0_combout\)) # (\inst|atual[4]~30_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[5]~26_combout\,
	datab => \inst|ALT_INV_atual[4]~30_combout\,
	datac => \inst|ALT_INV_atual[6]~22_combout\,
	datad => \inst|ALT_INV_Equal0~0_combout\,
	dataf => \inst|ALT_INV_estado.recebe~q\,
	combout => \inst|atual~53_combout\);

-- Location: LABCELL_X52_Y19_N33
\inst|atual~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~62_combout\ = ( \inst|atual[6]~22_combout\ & ( !\inst|atual~53_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_atual[6]~22_combout\,
	dataf => \inst|ALT_INV_atual~53_combout\,
	combout => \inst|atual~62_combout\);

-- Location: LABCELL_X52_Y19_N12
\inst|atual[6]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[6]~21_combout\ = ( \inst|atual~62_combout\ & ( (!\R~input_o\ & ((\inst|estado.init~6_combout\) # (\inst|atual[6]~21_combout\))) ) ) # ( !\inst|atual~62_combout\ & ( (\inst|atual[6]~21_combout\ & (!\inst|estado.init~6_combout\ & !\R~input_o\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[6]~21_combout\,
	datac => \inst|ALT_INV_estado.init~6_combout\,
	datad => \ALT_INV_R~input_o\,
	dataf => \inst|ALT_INV_atual~62_combout\,
	combout => \inst|atual[6]~21_combout\);

-- Location: LABCELL_X47_Y19_N39
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst|atual[4]~30_combout\ ) + ( GND ) + ( \inst|Add0~6\ ))
-- \inst|Add0~10\ = CARRY(( \inst|atual[4]~30_combout\ ) + ( GND ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[4]~30_combout\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: LABCELL_X47_Y19_N42
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \inst|atual[5]~26_combout\ ) + ( GND ) + ( \inst|Add0~10\ ))
-- \inst|Add0~22\ = CARRY(( \inst|atual[5]~26_combout\ ) + ( GND ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_atual[5]~26_combout\,
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: LABCELL_X47_Y19_N45
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst|atual[6]~22_combout\ ) + ( GND ) + ( \inst|Add0~22\ ))
-- \inst|Add0~26\ = CARRY(( \inst|atual[6]~22_combout\ ) + ( GND ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[6]~22_combout\,
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: LABCELL_X48_Y19_N33
\inst|Add3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~3_combout\ = ( \inst|atual[6]~22_combout\ & ( (!\inst|atual[5]~26_combout\ & ((!\inst|atual[2]~10_combout\) # ((!\inst|atual[3]~14_combout\) # (!\inst|atual[4]~30_combout\)))) ) ) # ( !\inst|atual[6]~22_combout\ & ( ((\inst|atual[2]~10_combout\ 
-- & (\inst|atual[3]~14_combout\ & \inst|atual[4]~30_combout\))) # (\inst|atual[5]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111111111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[2]~10_combout\,
	datab => \inst|ALT_INV_atual[3]~14_combout\,
	datac => \inst|ALT_INV_atual[4]~30_combout\,
	datad => \inst|ALT_INV_atual[5]~26_combout\,
	dataf => \inst|ALT_INV_atual[6]~22_combout\,
	combout => \inst|Add3~3_combout\);

-- Location: LABCELL_X48_Y18_N15
\inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~25_sumout\ = SUM(( \inst|atual[5]~26_combout\ ) + ( GND ) + ( \inst|Add1~10\ ))
-- \inst|Add1~26\ = CARRY(( \inst|atual[5]~26_combout\ ) + ( GND ) + ( \inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[5]~26_combout\,
	cin => \inst|Add1~10\,
	sumout => \inst|Add1~25_sumout\,
	cout => \inst|Add1~26\);

-- Location: LABCELL_X48_Y18_N18
\inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~29_sumout\ = SUM(( \inst|atual[6]~22_combout\ ) + ( GND ) + ( \inst|Add1~26\ ))
-- \inst|Add1~30\ = CARRY(( \inst|atual[6]~22_combout\ ) + ( GND ) + ( \inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[6]~22_combout\,
	cin => \inst|Add1~26\,
	sumout => \inst|Add1~29_sumout\,
	cout => \inst|Add1~30\);

-- Location: LABCELL_X47_Y19_N12
\inst|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~21_sumout\ = SUM(( \inst|atual[5]~26_combout\ ) + ( VCC ) + ( \inst|Add2~10\ ))
-- \inst|Add2~22\ = CARRY(( \inst|atual[5]~26_combout\ ) + ( VCC ) + ( \inst|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_atual[5]~26_combout\,
	cin => \inst|Add2~10\,
	sumout => \inst|Add2~21_sumout\,
	cout => \inst|Add2~22\);

-- Location: LABCELL_X47_Y19_N15
\inst|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~25_sumout\ = SUM(( \inst|atual[6]~22_combout\ ) + ( GND ) + ( \inst|Add2~22\ ))
-- \inst|Add2~26\ = CARRY(( \inst|atual[6]~22_combout\ ) + ( GND ) + ( \inst|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_atual[6]~22_combout\,
	cin => \inst|Add2~22\,
	sumout => \inst|Add2~25_sumout\,
	cout => \inst|Add2~26\);

-- Location: LABCELL_X47_Y19_N24
\inst|Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~5_combout\ = ( \inst|Add1~29_sumout\ & ( \inst|Add2~25_sumout\ & ( (!\M[3]~input_o\ & (((\M[1]~input_o\)) # (\M[2]~input_o\))) # (\M[3]~input_o\ & (((!\inst|Add3~3_combout\)))) ) ) ) # ( !\inst|Add1~29_sumout\ & ( \inst|Add2~25_sumout\ & ( 
-- (!\M[3]~input_o\ & (\M[2]~input_o\)) # (\M[3]~input_o\ & ((!\inst|Add3~3_combout\))) ) ) ) # ( \inst|Add1~29_sumout\ & ( !\inst|Add2~25_sumout\ & ( (!\M[3]~input_o\ & (!\M[2]~input_o\ & ((\M[1]~input_o\)))) # (\M[3]~input_o\ & 
-- (((!\inst|Add3~3_combout\)))) ) ) ) # ( !\inst|Add1~29_sumout\ & ( !\inst|Add2~25_sumout\ & ( (\M[3]~input_o\ & !\inst|Add3~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100001011100001110100011101000111010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[2]~input_o\,
	datab => \ALT_INV_M[3]~input_o\,
	datac => \inst|ALT_INV_Add3~3_combout\,
	datad => \ALT_INV_M[1]~input_o\,
	datae => \inst|ALT_INV_Add1~29_sumout\,
	dataf => \inst|ALT_INV_Add2~25_sumout\,
	combout => \inst|Mux1~5_combout\);

-- Location: LABCELL_X48_Y19_N18
\inst|atual~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~61_combout\ = ( !\inst|Mux1~5_combout\ & ( \inst|atual[6]~22_combout\ & ( (\inst|Mux1~0_combout\ & (!\inst|Equal1~0_combout\ & ((!\inst|Add0~25_sumout\) # (!\inst|Mux1~1_combout\)))) ) ) ) # ( \inst|Mux1~5_combout\ & ( 
-- !\inst|atual[6]~22_combout\ & ( (!\inst|Mux1~0_combout\) # (\inst|Equal1~0_combout\) ) ) ) # ( !\inst|Mux1~5_combout\ & ( !\inst|atual[6]~22_combout\ & ( (!\inst|Add0~25_sumout\) # ((!\inst|Mux1~0_combout\) # ((!\inst|Mux1~1_combout\) # 
-- (\inst|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111110011111100111100110000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~25_sumout\,
	datab => \inst|ALT_INV_Mux1~0_combout\,
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst|ALT_INV_Mux1~1_combout\,
	datae => \inst|ALT_INV_Mux1~5_combout\,
	dataf => \inst|ALT_INV_atual[6]~22_combout\,
	combout => \inst|atual~61_combout\);

-- Location: LABCELL_X48_Y19_N0
\inst|atual[6]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[6]~23_combout\ = ( \inst|Selector1~1_combout\ & ( !\inst|atual[6]~21_combout\ $ (\inst|atual~61_combout\) ) ) # ( !\inst|Selector1~1_combout\ & ( !\inst|atual[6]~21_combout\ $ (((\inst|estado.init~2_combout\) # (\inst|atual~61_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101010101101001010101010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[6]~21_combout\,
	datac => \inst|ALT_INV_atual~61_combout\,
	datad => \inst|ALT_INV_estado.init~2_combout\,
	dataf => \inst|ALT_INV_Selector1~1_combout\,
	combout => \inst|atual[6]~23_combout\);

-- Location: LABCELL_X53_Y19_N54
\inst|estado.recebe~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.recebe~0_combout\ = ( \inst|estado.init~6_combout\ ) # ( !\inst|estado.init~6_combout\ & ( \R~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_R~input_o\,
	dataf => \inst|ALT_INV_estado.init~6_combout\,
	combout => \inst|estado.recebe~0_combout\);

-- Location: FF_X48_Y19_N2
\inst|atual[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|atual[6]~23_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|atual[6]~_emulated_q\);

-- Location: LABCELL_X48_Y19_N3
\inst|atual[6]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[6]~22_combout\ = ( \inst|atual~62_combout\ & ( (!\R~input_o\ & ((!\inst|atual[6]~21_combout\ $ (!\inst|atual[6]~_emulated_q\)) # (\inst|estado.init~6_combout\))) ) ) # ( !\inst|atual~62_combout\ & ( (!\inst|estado.init~6_combout\ & 
-- (!\R~input_o\ & (!\inst|atual[6]~21_combout\ $ (!\inst|atual[6]~_emulated_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000000010000001000000001110000101100000111000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[6]~21_combout\,
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datac => \ALT_INV_R~input_o\,
	datad => \inst|ALT_INV_atual[6]~_emulated_q\,
	dataf => \inst|ALT_INV_atual~62_combout\,
	combout => \inst|atual[6]~22_combout\);

-- Location: LABCELL_X53_Y19_N0
\inst|atual~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~64_combout\ = ( \inst|estado.recebe~q\ & ( (\inst|atual[5]~26_combout\ & (!\inst|atual[4]~30_combout\ & (\inst|Equal0~0_combout\ & \inst|atual[6]~22_combout\))) ) ) # ( !\inst|estado.recebe~q\ & ( \inst|atual[5]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[5]~26_combout\,
	datab => \inst|ALT_INV_atual[4]~30_combout\,
	datac => \inst|ALT_INV_Equal0~0_combout\,
	datad => \inst|ALT_INV_atual[6]~22_combout\,
	dataf => \inst|ALT_INV_estado.recebe~q\,
	combout => \inst|atual~64_combout\);

-- Location: LABCELL_X53_Y19_N30
\inst|atual[5]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[5]~25_combout\ = ( \inst|atual~64_combout\ & ( (!\R~input_o\ & ((\inst|atual[5]~25_combout\) # (\inst|estado.init~6_combout\))) ) ) # ( !\inst|atual~64_combout\ & ( (!\inst|estado.init~6_combout\ & (!\R~input_o\ & \inst|atual[5]~25_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datac => \ALT_INV_R~input_o\,
	datad => \inst|ALT_INV_atual[5]~25_combout\,
	dataf => \inst|ALT_INV_atual~64_combout\,
	combout => \inst|atual[5]~25_combout\);

-- Location: LABCELL_X48_Y19_N30
\inst|Add3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = !\inst|atual[5]~26_combout\ $ (((!\inst|atual[2]~10_combout\) # ((!\inst|atual[3]~14_combout\) # (!\inst|atual[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[2]~10_combout\,
	datab => \inst|ALT_INV_atual[3]~14_combout\,
	datac => \inst|ALT_INV_atual[4]~30_combout\,
	datad => \inst|ALT_INV_atual[5]~26_combout\,
	combout => \inst|Add3~2_combout\);

-- Location: LABCELL_X48_Y19_N6
\inst|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = ( \inst|Add2~21_sumout\ & ( \inst|Add1~25_sumout\ & ( (!\M[3]~input_o\ & (((\M[2]~input_o\)) # (\M[1]~input_o\))) # (\M[3]~input_o\ & (((!\inst|Add3~2_combout\)))) ) ) ) # ( !\inst|Add2~21_sumout\ & ( \inst|Add1~25_sumout\ & ( 
-- (!\M[3]~input_o\ & (\M[1]~input_o\ & (!\M[2]~input_o\))) # (\M[3]~input_o\ & (((!\inst|Add3~2_combout\)))) ) ) ) # ( \inst|Add2~21_sumout\ & ( !\inst|Add1~25_sumout\ & ( (!\M[3]~input_o\ & (\M[2]~input_o\)) # (\M[3]~input_o\ & ((!\inst|Add3~2_combout\))) 
-- ) ) ) # ( !\inst|Add2~21_sumout\ & ( !\inst|Add1~25_sumout\ & ( (\M[3]~input_o\ & !\inst|Add3~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010111110000101001110101001000000111111100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[3]~input_o\,
	datab => \ALT_INV_M[1]~input_o\,
	datac => \ALT_INV_M[2]~input_o\,
	datad => \inst|ALT_INV_Add3~2_combout\,
	datae => \inst|ALT_INV_Add2~21_sumout\,
	dataf => \inst|ALT_INV_Add1~25_sumout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LABCELL_X48_Y19_N48
\inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = ( \inst|Add0~21_sumout\ & ( (!\M[3]~input_o\ & (!\M[1]~input_o\ & !\M[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_M[3]~input_o\,
	datac => \ALT_INV_M[1]~input_o\,
	datad => \ALT_INV_M[2]~input_o\,
	dataf => \inst|ALT_INV_Add0~21_sumout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LABCELL_X48_Y19_N36
\inst|atual~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~63_combout\ = ( \inst|Mux2~0_combout\ & ( (!\inst|atual[5]~26_combout\ & ((!\inst|Mux1~0_combout\) # (\inst|Equal1~0_combout\))) ) ) # ( !\inst|Mux2~0_combout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux1~0_combout\ & 
-- ((!\inst|atual[5]~26_combout\))) # (\inst|Mux1~0_combout\ & (!\inst|Mux2~1_combout\)))) # (\inst|Equal1~0_combout\ & (((!\inst|atual[5]~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011011000111100001101100011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux2~1_combout\,
	datac => \inst|ALT_INV_atual[5]~26_combout\,
	datad => \inst|ALT_INV_Mux1~0_combout\,
	dataf => \inst|ALT_INV_Mux2~0_combout\,
	combout => \inst|atual~63_combout\);

-- Location: LABCELL_X48_Y19_N51
\inst|atual[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[5]~27_combout\ = ( \inst|Selector1~1_combout\ & ( !\inst|atual[5]~25_combout\ $ (\inst|atual~63_combout\) ) ) # ( !\inst|Selector1~1_combout\ & ( !\inst|atual[5]~25_combout\ $ (((\inst|atual~63_combout\) # (\inst|estado.init~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101010101101001010101010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[5]~25_combout\,
	datac => \inst|ALT_INV_estado.init~2_combout\,
	datad => \inst|ALT_INV_atual~63_combout\,
	dataf => \inst|ALT_INV_Selector1~1_combout\,
	combout => \inst|atual[5]~27_combout\);

-- Location: FF_X48_Y19_N52
\inst|atual[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|atual[5]~27_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|atual[5]~_emulated_q\);

-- Location: LABCELL_X47_Y19_N57
\inst|atual[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[5]~26_combout\ = ( \inst|atual[5]~25_combout\ & ( (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & ((!\inst|atual[5]~_emulated_q\))) # (\inst|estado.init~6_combout\ & (\inst|atual~64_combout\)))) ) ) # ( !\inst|atual[5]~25_combout\ & ( 
-- (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & ((\inst|atual[5]~_emulated_q\))) # (\inst|estado.init~6_combout\ & (\inst|atual~64_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101010001010000000101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datac => \inst|ALT_INV_atual~64_combout\,
	datad => \inst|ALT_INV_atual[5]~_emulated_q\,
	dataf => \inst|ALT_INV_atual[5]~25_combout\,
	combout => \inst|atual[5]~26_combout\);

-- Location: LABCELL_X48_Y19_N54
\inst|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~4_combout\ = ( \inst|Mux1~2_combout\ & ( \inst|Add1~29_sumout\ & ( (\inst|Add2~25_sumout\) # (\inst|Mux1~3_combout\) ) ) ) # ( !\inst|Mux1~2_combout\ & ( \inst|Add1~29_sumout\ & ( (!\inst|Mux1~3_combout\ & (!\inst|Add3~3_combout\)) # 
-- (\inst|Mux1~3_combout\ & ((\inst|Add0~25_sumout\))) ) ) ) # ( \inst|Mux1~2_combout\ & ( !\inst|Add1~29_sumout\ & ( (!\inst|Mux1~3_combout\ & \inst|Add2~25_sumout\) ) ) ) # ( !\inst|Mux1~2_combout\ & ( !\inst|Add1~29_sumout\ & ( (!\inst|Mux1~3_combout\ & 
-- (!\inst|Add3~3_combout\)) # (\inst|Mux1~3_combout\ & ((\inst|Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110001011000000001100110010001011100010110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add3~3_combout\,
	datab => \inst|ALT_INV_Mux1~3_combout\,
	datac => \inst|ALT_INV_Add0~25_sumout\,
	datad => \inst|ALT_INV_Add2~25_sumout\,
	datae => \inst|ALT_INV_Mux1~2_combout\,
	dataf => \inst|ALT_INV_Add1~29_sumout\,
	combout => \inst|Mux1~4_combout\);

-- Location: MLABCELL_X49_Y19_N36
\inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = ( \inst|Mux2~1_combout\ & ( \inst|Mux1~4_combout\ & ( ((\inst|atual[5]~26_combout\ & \inst|atual[6]~22_combout\)) # (\inst|Mux1~0_combout\) ) ) ) # ( !\inst|Mux2~1_combout\ & ( \inst|Mux1~4_combout\ & ( (!\inst|Mux1~0_combout\ 
-- & (\inst|atual[5]~26_combout\ & (\inst|atual[6]~22_combout\))) # (\inst|Mux1~0_combout\ & (((\inst|Mux2~0_combout\)))) ) ) ) # ( \inst|Mux2~1_combout\ & ( !\inst|Mux1~4_combout\ & ( (\inst|atual[5]~26_combout\ & (!\inst|Mux1~0_combout\ & 
-- \inst|atual[6]~22_combout\)) ) ) ) # ( !\inst|Mux2~1_combout\ & ( !\inst|Mux1~4_combout\ & ( (\inst|atual[5]~26_combout\ & (!\inst|Mux1~0_combout\ & \inst|atual[6]~22_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[5]~26_combout\,
	datab => \inst|ALT_INV_Mux1~0_combout\,
	datac => \inst|ALT_INV_atual[6]~22_combout\,
	datad => \inst|ALT_INV_Mux2~0_combout\,
	datae => \inst|ALT_INV_Mux2~1_combout\,
	dataf => \inst|ALT_INV_Mux1~4_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LABCELL_X47_Y19_N48
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( \inst|atual[7]~18_combout\ ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[7]~18_combout\,
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~1_sumout\);

-- Location: LABCELL_X48_Y18_N54
\inst|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = ( \inst|atual[4]~30_combout\ & ( \inst|atual[6]~22_combout\ & ( !\inst|atual[7]~18_combout\ ) ) ) # ( !\inst|atual[4]~30_combout\ & ( \inst|atual[6]~22_combout\ & ( !\inst|atual[7]~18_combout\ ) ) ) # ( \inst|atual[4]~30_combout\ & 
-- ( !\inst|atual[6]~22_combout\ & ( !\inst|atual[7]~18_combout\ $ (((!\inst|atual[5]~26_combout\ & ((!\inst|atual[3]~14_combout\) # (!\inst|atual[2]~10_combout\))))) ) ) ) # ( !\inst|atual[4]~30_combout\ & ( !\inst|atual[6]~22_combout\ & ( 
-- !\inst|atual[7]~18_combout\ $ (!\inst|atual[5]~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001101101100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[3]~14_combout\,
	datab => \inst|ALT_INV_atual[7]~18_combout\,
	datac => \inst|ALT_INV_atual[2]~10_combout\,
	datad => \inst|ALT_INV_atual[5]~26_combout\,
	datae => \inst|ALT_INV_atual[4]~30_combout\,
	dataf => \inst|ALT_INV_atual[6]~22_combout\,
	combout => \inst|Add3~0_combout\);

-- Location: LABCELL_X48_Y18_N21
\inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~1_sumout\ = SUM(( \inst|atual[7]~18_combout\ ) + ( GND ) + ( \inst|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[7]~18_combout\,
	cin => \inst|Add1~30\,
	sumout => \inst|Add1~1_sumout\);

-- Location: LABCELL_X47_Y19_N18
\inst|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~1_sumout\ = SUM(( \inst|atual[7]~18_combout\ ) + ( GND ) + ( \inst|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[7]~18_combout\,
	cin => \inst|Add2~26\,
	sumout => \inst|Add2~1_sumout\);

-- Location: LABCELL_X48_Y18_N24
\inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = ( \inst|Add1~1_sumout\ & ( \inst|Add2~1_sumout\ & ( (!\M[3]~input_o\ & (((\M[1]~input_o\)) # (\M[2]~input_o\))) # (\M[3]~input_o\ & (((\inst|Add3~0_combout\)))) ) ) ) # ( !\inst|Add1~1_sumout\ & ( \inst|Add2~1_sumout\ & ( 
-- (!\M[3]~input_o\ & (\M[2]~input_o\)) # (\M[3]~input_o\ & ((\inst|Add3~0_combout\))) ) ) ) # ( \inst|Add1~1_sumout\ & ( !\inst|Add2~1_sumout\ & ( (!\M[3]~input_o\ & (!\M[2]~input_o\ & ((\M[1]~input_o\)))) # (\M[3]~input_o\ & (((\inst|Add3~0_combout\)))) ) 
-- ) ) # ( !\inst|Add1~1_sumout\ & ( !\inst|Add2~1_sumout\ & ( (\M[3]~input_o\ & \inst|Add3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011000110100100111001001110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[3]~input_o\,
	datab => \ALT_INV_M[2]~input_o\,
	datac => \inst|ALT_INV_Add3~0_combout\,
	datad => \ALT_INV_M[1]~input_o\,
	datae => \inst|ALT_INV_Add1~1_sumout\,
	dataf => \inst|ALT_INV_Add2~1_sumout\,
	combout => \inst|Mux0~0_combout\);

-- Location: MLABCELL_X49_Y19_N24
\inst|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = ( \inst|Mux0~0_combout\ & ( (!\inst|Mux1~0_combout\ & !\inst|atual[7]~18_combout\) ) ) # ( !\inst|Mux0~0_combout\ & ( (!\inst|Mux1~0_combout\ & (((!\inst|atual[7]~18_combout\)))) # (\inst|Mux1~0_combout\ & ((!\inst|Mux1~1_combout\) 
-- # ((!\inst|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111100100111101011110010010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux1~0_combout\,
	datab => \inst|ALT_INV_Mux1~1_combout\,
	datac => \inst|ALT_INV_atual[7]~18_combout\,
	datad => \inst|ALT_INV_Add0~1_sumout\,
	dataf => \inst|ALT_INV_Mux0~0_combout\,
	combout => \inst|Mux0~1_combout\);

-- Location: MLABCELL_X49_Y19_N18
\inst|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = ( \inst|LessThan0~2_combout\ & ( \inst|Mux0~1_combout\ & ( (\inst|estado.recebe~q\ & (\inst|LessThan0~3_combout\ & ((!\inst|Mux5~1_combout\) # (\inst|LessThan0~0_combout\)))) ) ) ) # ( !\inst|LessThan0~2_combout\ & ( 
-- \inst|Mux0~1_combout\ & ( \inst|estado.recebe~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_estado.recebe~q\,
	datab => \inst|ALT_INV_LessThan0~0_combout\,
	datac => \inst|ALT_INV_Mux5~1_combout\,
	datad => \inst|ALT_INV_LessThan0~3_combout\,
	datae => \inst|ALT_INV_LessThan0~2_combout\,
	dataf => \inst|ALT_INV_Mux0~1_combout\,
	combout => \inst|Selector1~1_combout\);

-- Location: LABCELL_X50_Y19_N45
\inst|atual[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[0]~3_combout\ = ( \inst|Selector1~1_combout\ & ( !\inst|atual[0]~1_combout\ $ (!\inst|atual~48_combout\) ) ) # ( !\inst|Selector1~1_combout\ & ( !\inst|atual[0]~1_combout\ $ (((!\inst|atual~48_combout\) # (\inst|estado.init~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101010101011010010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[0]~1_combout\,
	datac => \inst|ALT_INV_estado.init~2_combout\,
	datad => \inst|ALT_INV_atual~48_combout\,
	dataf => \inst|ALT_INV_Selector1~1_combout\,
	combout => \inst|atual[0]~3_combout\);

-- Location: FF_X50_Y19_N46
\inst|atual[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|atual[0]~3_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|atual[0]~_emulated_q\);

-- Location: LABCELL_X53_Y19_N57
\inst|atual[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[0]~2_combout\ = ( \inst|atual[0]~1_combout\ & ( (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & ((!\inst|atual[0]~_emulated_q\))) # (\inst|estado.init~6_combout\ & (\inst|atual~49_combout\)))) ) ) # ( !\inst|atual[0]~1_combout\ & ( 
-- (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & ((\inst|atual[0]~_emulated_q\))) # (\inst|estado.init~6_combout\ & (\inst|atual~49_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110010001100000001001000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_estado.init~6_combout\,
	datab => \ALT_INV_R~input_o\,
	datac => \inst|ALT_INV_atual~49_combout\,
	datad => \inst|ALT_INV_atual[0]~_emulated_q\,
	dataf => \inst|ALT_INV_atual[0]~1_combout\,
	combout => \inst|atual[0]~2_combout\);

-- Location: LABCELL_X50_Y18_N51
\inst|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~3_combout\ = ( !\M[0]~input_o\ & ( (\M[1]~input_o\ & (!\M[2]~input_o\ & \inst|Add1~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[1]~input_o\,
	datab => \ALT_INV_M[2]~input_o\,
	datad => \inst|ALT_INV_Add1~21_sumout\,
	dataf => \ALT_INV_M[0]~input_o\,
	combout => \inst|Mux6~3_combout\);

-- Location: LABCELL_X50_Y18_N54
\inst|atual~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~50_combout\ = ( \inst|Mux6~1_combout\ & ( \inst|Mux6~3_combout\ & ( (!\inst|Equal1~0_combout\ & (\M[3]~input_o\ & ((!\inst|Mux6~0_combout\)))) # (\inst|Equal1~0_combout\ & (((!\inst|atual[1]~6_combout\)))) ) ) ) # ( !\inst|Mux6~1_combout\ & ( 
-- \inst|Mux6~3_combout\ & ( (!\inst|Equal1~0_combout\ & (\M[3]~input_o\ & ((!\inst|Mux6~0_combout\)))) # (\inst|Equal1~0_combout\ & (((!\inst|atual[1]~6_combout\)))) ) ) ) # ( \inst|Mux6~1_combout\ & ( !\inst|Mux6~3_combout\ & ( (!\inst|Equal1~0_combout\ & 
-- (\M[3]~input_o\ & ((!\inst|Mux6~0_combout\)))) # (\inst|Equal1~0_combout\ & (((!\inst|atual[1]~6_combout\)))) ) ) ) # ( !\inst|Mux6~1_combout\ & ( !\inst|Mux6~3_combout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux6~0_combout\))) # 
-- (\inst|Equal1~0_combout\ & (!\inst|atual[1]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001010000011100100101000001110010010100000111001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_M[3]~input_o\,
	datac => \inst|ALT_INV_atual[1]~6_combout\,
	datad => \inst|ALT_INV_Mux6~0_combout\,
	datae => \inst|ALT_INV_Mux6~1_combout\,
	dataf => \inst|ALT_INV_Mux6~3_combout\,
	combout => \inst|atual~50_combout\);

-- Location: LABCELL_X52_Y19_N36
\inst|atual~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~51_combout\ = ( !\inst|estado.recebe~q\ & ( \inst|atual[1]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[1]~6_combout\,
	dataf => \inst|ALT_INV_estado.recebe~q\,
	combout => \inst|atual~51_combout\);

-- Location: LABCELL_X53_Y19_N33
\inst|atual[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[1]~5_combout\ = ( \inst|atual~51_combout\ & ( (!\R~input_o\ & ((\inst|estado.init~6_combout\) # (\inst|atual[1]~5_combout\))) ) ) # ( !\inst|atual~51_combout\ & ( (\inst|atual[1]~5_combout\ & (!\inst|estado.init~6_combout\ & !\R~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[1]~5_combout\,
	datac => \inst|ALT_INV_estado.init~6_combout\,
	datad => \ALT_INV_R~input_o\,
	dataf => \inst|ALT_INV_atual~51_combout\,
	combout => \inst|atual[1]~5_combout\);

-- Location: LABCELL_X53_Y19_N18
\inst|atual[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[1]~7_combout\ = ( \inst|Selector1~1_combout\ & ( !\inst|atual~50_combout\ $ (\inst|atual[1]~5_combout\) ) ) # ( !\inst|Selector1~1_combout\ & ( !\inst|atual[1]~5_combout\ $ (((\inst|atual~50_combout\) # (\inst|estado.init~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000111111110000000011111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_estado.init~2_combout\,
	datac => \inst|ALT_INV_atual~50_combout\,
	datad => \inst|ALT_INV_atual[1]~5_combout\,
	dataf => \inst|ALT_INV_Selector1~1_combout\,
	combout => \inst|atual[1]~7_combout\);

-- Location: FF_X53_Y19_N20
\inst|atual[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|atual[1]~7_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|atual[1]~_emulated_q\);

-- Location: LABCELL_X53_Y19_N6
\inst|atual[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[1]~6_combout\ = ( \inst|atual[1]~5_combout\ & ( (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & (!\inst|atual[1]~_emulated_q\)) # (\inst|estado.init~6_combout\ & ((\inst|atual~51_combout\))))) ) ) # ( !\inst|atual[1]~5_combout\ & ( 
-- (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & (\inst|atual[1]~_emulated_q\)) # (\inst|estado.init~6_combout\ & ((\inst|atual~51_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101010000000101000101000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datac => \inst|ALT_INV_atual[1]~_emulated_q\,
	datad => \inst|ALT_INV_atual~51_combout\,
	dataf => \inst|ALT_INV_atual[1]~5_combout\,
	combout => \inst|atual[1]~6_combout\);

-- Location: LABCELL_X47_Y19_N33
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst|atual[2]~10_combout\ ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( \inst|atual[2]~10_combout\ ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_atual[2]~10_combout\,
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: LABCELL_X47_Y19_N36
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \inst|atual[3]~14_combout\ ) + ( VCC ) + ( \inst|Add0~14\ ))
-- \inst|Add0~6\ = CARRY(( \inst|atual[3]~14_combout\ ) + ( VCC ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[3]~14_combout\,
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: LABCELL_X48_Y19_N42
\inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = ( \inst|Add0~5_sumout\ & ( (!\M[2]~input_o\ & (!\M[1]~input_o\ & !\M[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[2]~input_o\,
	datac => \ALT_INV_M[1]~input_o\,
	datad => \ALT_INV_M[3]~input_o\,
	dataf => \inst|ALT_INV_Add0~5_sumout\,
	combout => \inst|Mux4~0_combout\);

-- Location: MLABCELL_X49_Y19_N12
\inst|atual~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~55_combout\ = ( \inst|Mux4~2_combout\ & ( (!\inst|atual[3]~14_combout\ & ((!\inst|Mux1~0_combout\) # (\inst|Equal1~0_combout\))) ) ) # ( !\inst|Mux4~2_combout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux1~0_combout\ & 
-- (!\inst|atual[3]~14_combout\)) # (\inst|Mux1~0_combout\ & ((!\inst|Mux4~0_combout\))))) # (\inst|Equal1~0_combout\ & (!\inst|atual[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011000100110011101100010011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_atual[3]~14_combout\,
	datac => \inst|ALT_INV_Mux1~0_combout\,
	datad => \inst|ALT_INV_Mux4~0_combout\,
	dataf => \inst|ALT_INV_Mux4~2_combout\,
	combout => \inst|atual~55_combout\);

-- Location: LABCELL_X50_Y19_N36
\inst|atual[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[3]~15_combout\ = ( \inst|atual~55_combout\ & ( \inst|Selector1~1_combout\ & ( \inst|atual[3]~13_combout\ ) ) ) # ( !\inst|atual~55_combout\ & ( \inst|Selector1~1_combout\ & ( !\inst|atual[3]~13_combout\ ) ) ) # ( \inst|atual~55_combout\ & ( 
-- !\inst|Selector1~1_combout\ & ( \inst|atual[3]~13_combout\ ) ) ) # ( !\inst|atual~55_combout\ & ( !\inst|Selector1~1_combout\ & ( !\inst|atual[3]~13_combout\ $ (\inst|estado.init~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001010101010101010110101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[3]~13_combout\,
	datab => \inst|ALT_INV_estado.init~2_combout\,
	datae => \inst|ALT_INV_atual~55_combout\,
	dataf => \inst|ALT_INV_Selector1~1_combout\,
	combout => \inst|atual[3]~15_combout\);

-- Location: FF_X50_Y19_N37
\inst|atual[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|atual[3]~15_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|atual[3]~_emulated_q\);

-- Location: LABCELL_X53_Y19_N45
\inst|atual[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[3]~14_combout\ = ( \inst|atual[3]~13_combout\ & ( (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & ((!\inst|atual[3]~_emulated_q\))) # (\inst|estado.init~6_combout\ & (\inst|atual~56_combout\)))) ) ) # ( !\inst|atual[3]~13_combout\ & ( 
-- (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & ((\inst|atual[3]~_emulated_q\))) # (\inst|estado.init~6_combout\ & (\inst|atual~56_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101010001010000000101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datac => \inst|ALT_INV_atual~56_combout\,
	datad => \inst|ALT_INV_atual[3]~_emulated_q\,
	dataf => \inst|ALT_INV_atual[3]~13_combout\,
	combout => \inst|atual[3]~14_combout\);

-- Location: MLABCELL_X49_Y19_N54
\inst|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = ( \M[1]~input_o\ & ( \inst|Add1~9_sumout\ & ( (!\M[3]~input_o\ & (((!\M[2]~input_o\) # (\inst|Add2~9_sumout\)))) # (\M[3]~input_o\ & (\inst|Add3~1_combout\)) ) ) ) # ( !\M[1]~input_o\ & ( \inst|Add1~9_sumout\ & ( (!\M[3]~input_o\ & 
-- (((\inst|Add2~9_sumout\ & \M[2]~input_o\)))) # (\M[3]~input_o\ & (\inst|Add3~1_combout\)) ) ) ) # ( \M[1]~input_o\ & ( !\inst|Add1~9_sumout\ & ( (!\M[3]~input_o\ & (((\inst|Add2~9_sumout\ & \M[2]~input_o\)))) # (\M[3]~input_o\ & (\inst|Add3~1_combout\)) ) 
-- ) ) # ( !\M[1]~input_o\ & ( !\inst|Add1~9_sumout\ & ( (!\M[3]~input_o\ & (((\inst|Add2~9_sumout\ & \M[2]~input_o\)))) # (\M[3]~input_o\ & (\inst|Add3~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010100000011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add3~1_combout\,
	datab => \inst|ALT_INV_Add2~9_sumout\,
	datac => \ALT_INV_M[2]~input_o\,
	datad => \ALT_INV_M[3]~input_o\,
	datae => \ALT_INV_M[1]~input_o\,
	dataf => \inst|ALT_INV_Add1~9_sumout\,
	combout => \inst|Mux3~1_combout\);

-- Location: LABCELL_X50_Y19_N12
\inst|atual~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~57_combout\ = ( \inst|Add0~9_sumout\ & ( \inst|Mux3~1_combout\ & ( (!\inst|atual[4]~30_combout\ & ((!\inst|Mux1~0_combout\) # (\inst|Equal1~0_combout\))) ) ) ) # ( !\inst|Add0~9_sumout\ & ( \inst|Mux3~1_combout\ & ( 
-- (!\inst|atual[4]~30_combout\ & ((!\inst|Mux1~0_combout\) # (\inst|Equal1~0_combout\))) ) ) ) # ( \inst|Add0~9_sumout\ & ( !\inst|Mux3~1_combout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux1~0_combout\ & (!\inst|atual[4]~30_combout\)) # 
-- (\inst|Mux1~0_combout\ & ((!\inst|Mux1~1_combout\))))) # (\inst|Equal1~0_combout\ & (!\inst|atual[4]~30_combout\)) ) ) ) # ( !\inst|Add0~9_sumout\ & ( !\inst|Mux3~1_combout\ & ( (!\inst|atual[4]~30_combout\) # ((!\inst|Equal1~0_combout\ & 
-- \inst|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011001110110011101100010011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_atual[4]~30_combout\,
	datac => \inst|ALT_INV_Mux1~0_combout\,
	datad => \inst|ALT_INV_Mux1~1_combout\,
	datae => \inst|ALT_INV_Add0~9_sumout\,
	dataf => \inst|ALT_INV_Mux3~1_combout\,
	combout => \inst|atual~57_combout\);

-- Location: LABCELL_X50_Y19_N27
\inst|atual[4]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[4]~31_combout\ = ( \inst|Selector1~1_combout\ & ( !\inst|atual[4]~29_combout\ $ (\inst|atual~57_combout\) ) ) # ( !\inst|Selector1~1_combout\ & ( !\inst|atual[4]~29_combout\ $ (((\inst|atual~57_combout\) # (\inst|estado.init~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010110010101100101011001010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[4]~29_combout\,
	datab => \inst|ALT_INV_estado.init~2_combout\,
	datac => \inst|ALT_INV_atual~57_combout\,
	dataf => \inst|ALT_INV_Selector1~1_combout\,
	combout => \inst|atual[4]~31_combout\);

-- Location: FF_X50_Y19_N28
\inst|atual[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|atual[4]~31_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|atual[4]~_emulated_q\);

-- Location: LABCELL_X53_Y19_N9
\inst|atual[4]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[4]~30_combout\ = ( \inst|atual[4]~29_combout\ & ( (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & ((!\inst|atual[4]~_emulated_q\))) # (\inst|estado.init~6_combout\ & (\inst|atual~58_combout\)))) ) ) # ( !\inst|atual[4]~29_combout\ & ( 
-- (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & ((\inst|atual[4]~_emulated_q\))) # (\inst|estado.init~6_combout\ & (\inst|atual~58_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101010001010000000101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datac => \inst|ALT_INV_atual~58_combout\,
	datad => \inst|ALT_INV_atual[4]~_emulated_q\,
	dataf => \inst|ALT_INV_atual[4]~29_combout\,
	combout => \inst|atual[4]~30_combout\);

-- Location: LABCELL_X53_Y19_N24
\inst|atual~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~54_combout\ = ( \inst|atual[6]~22_combout\ & ( \inst|estado.recebe~q\ & ( (\inst|atual[2]~10_combout\ & (!\inst|atual[4]~30_combout\ & (\inst|Equal0~0_combout\ & \inst|atual[5]~26_combout\))) ) ) ) # ( \inst|atual[6]~22_combout\ & ( 
-- !\inst|estado.recebe~q\ & ( \inst|atual[2]~10_combout\ ) ) ) # ( !\inst|atual[6]~22_combout\ & ( !\inst|estado.recebe~q\ & ( \inst|atual[2]~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[2]~10_combout\,
	datab => \inst|ALT_INV_atual[4]~30_combout\,
	datac => \inst|ALT_INV_Equal0~0_combout\,
	datad => \inst|ALT_INV_atual[5]~26_combout\,
	datae => \inst|ALT_INV_atual[6]~22_combout\,
	dataf => \inst|ALT_INV_estado.recebe~q\,
	combout => \inst|atual~54_combout\);

-- Location: LABCELL_X53_Y19_N48
\inst|atual[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[2]~9_combout\ = ( \inst|atual~54_combout\ & ( (!\R~input_o\ & ((\inst|atual[2]~9_combout\) # (\inst|estado.init~6_combout\))) ) ) # ( !\inst|atual~54_combout\ & ( (!\R~input_o\ & (!\inst|estado.init~6_combout\ & \inst|atual[2]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datac => \inst|ALT_INV_atual[2]~9_combout\,
	dataf => \inst|ALT_INV_atual~54_combout\,
	combout => \inst|atual[2]~9_combout\);

-- Location: MLABCELL_X49_Y19_N48
\inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = ( \inst|Add1~13_sumout\ & ( (!\M[3]~input_o\ & ((!\M[2]~input_o\) # ((\inst|Add2~13_sumout\)))) # (\M[3]~input_o\ & (((!\inst|atual[2]~10_combout\)))) ) ) # ( !\inst|Add1~13_sumout\ & ( (!\M[3]~input_o\ & (\M[2]~input_o\ & 
-- ((\inst|Add2~13_sumout\)))) # (\M[3]~input_o\ & (((!\inst|atual[2]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001100000001011100110010101111110011001010111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M[2]~input_o\,
	datab => \inst|ALT_INV_atual[2]~10_combout\,
	datac => \inst|ALT_INV_Add2~13_sumout\,
	datad => \ALT_INV_M[3]~input_o\,
	dataf => \inst|ALT_INV_Add1~13_sumout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LABCELL_X50_Y19_N6
\inst|atual~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~52_combout\ = ( \inst|Mux5~0_combout\ & ( \inst|atual[2]~10_combout\ & ( (!\inst|Mux1~0_combout\) # (((!\inst|Mux1~1_combout\) # (\inst|Equal1~0_combout\)) # (\inst|Add0~13_sumout\)) ) ) ) # ( !\inst|Mux5~0_combout\ & ( 
-- \inst|atual[2]~10_combout\ & ( (!\inst|Mux1~0_combout\) # (((\inst|Add0~13_sumout\ & \inst|Mux1~1_combout\)) # (\inst|Equal1~0_combout\)) ) ) ) # ( \inst|Mux5~0_combout\ & ( !\inst|atual[2]~10_combout\ & ( (\inst|Mux1~0_combout\ & 
-- (!\inst|Equal1~0_combout\ & ((!\inst|Mux1~1_combout\) # (\inst|Add0~13_sumout\)))) ) ) ) # ( !\inst|Mux5~0_combout\ & ( !\inst|atual[2]~10_combout\ & ( (\inst|Mux1~0_combout\ & (\inst|Add0~13_sumout\ & (!\inst|Equal1~0_combout\ & \inst|Mux1~1_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000010100000001000010101111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux1~0_combout\,
	datab => \inst|ALT_INV_Add0~13_sumout\,
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst|ALT_INV_Mux1~1_combout\,
	datae => \inst|ALT_INV_Mux5~0_combout\,
	dataf => \inst|ALT_INV_atual[2]~10_combout\,
	combout => \inst|atual~52_combout\);

-- Location: LABCELL_X50_Y19_N3
\inst|atual[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[2]~11_combout\ = ( \inst|atual~52_combout\ & ( \inst|Selector1~1_combout\ & ( !\inst|atual[2]~9_combout\ ) ) ) # ( !\inst|atual~52_combout\ & ( \inst|Selector1~1_combout\ & ( \inst|atual[2]~9_combout\ ) ) ) # ( \inst|atual~52_combout\ & ( 
-- !\inst|Selector1~1_combout\ & ( !\inst|atual[2]~9_combout\ $ (\inst|estado.init~2_combout\) ) ) ) # ( !\inst|atual~52_combout\ & ( !\inst|Selector1~1_combout\ & ( \inst|atual[2]~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101100110011001100101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[2]~9_combout\,
	datab => \inst|ALT_INV_estado.init~2_combout\,
	datae => \inst|ALT_INV_atual~52_combout\,
	dataf => \inst|ALT_INV_Selector1~1_combout\,
	combout => \inst|atual[2]~11_combout\);

-- Location: FF_X50_Y19_N4
\inst|atual[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|atual[2]~11_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|atual[2]~_emulated_q\);

-- Location: LABCELL_X47_Y19_N54
\inst|atual[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[2]~10_combout\ = ( \inst|atual[2]~9_combout\ & ( (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & (!\inst|atual[2]~_emulated_q\)) # (\inst|estado.init~6_combout\ & ((\inst|atual~54_combout\))))) ) ) # ( !\inst|atual[2]~9_combout\ & ( 
-- (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & (\inst|atual[2]~_emulated_q\)) # (\inst|estado.init~6_combout\ & ((\inst|atual~54_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101010000000101000101000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datac => \inst|ALT_INV_atual[2]~_emulated_q\,
	datad => \inst|ALT_INV_atual~54_combout\,
	dataf => \inst|ALT_INV_atual[2]~9_combout\,
	combout => \inst|atual[2]~10_combout\);

-- Location: MLABCELL_X49_Y19_N27
\inst|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = ( \inst|Mux5~0_combout\ & ( (!\inst|Mux1~0_combout\ & (((\inst|atual[2]~10_combout\)))) # (\inst|Mux1~0_combout\ & ((!\inst|Mux1~1_combout\) # ((\inst|Add0~13_sumout\)))) ) ) # ( !\inst|Mux5~0_combout\ & ( (!\inst|Mux1~0_combout\ & 
-- (((\inst|atual[2]~10_combout\)))) # (\inst|Mux1~0_combout\ & (\inst|Mux1~1_combout\ & ((\inst|Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux1~0_combout\,
	datab => \inst|ALT_INV_Mux1~1_combout\,
	datac => \inst|ALT_INV_atual[2]~10_combout\,
	datad => \inst|ALT_INV_Add0~13_sumout\,
	dataf => \inst|ALT_INV_Mux5~0_combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: MLABCELL_X49_Y19_N9
\inst|estado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado~0_combout\ = ( \inst|LessThan0~2_combout\ & ( !\inst|estado.init~2_combout\ & ( (\inst|LessThan0~3_combout\ & (\inst|Mux0~1_combout\ & ((!\inst|Mux5~1_combout\) # (\inst|LessThan0~0_combout\)))) ) ) ) # ( !\inst|LessThan0~2_combout\ & ( 
-- !\inst|estado.init~2_combout\ & ( \inst|Mux0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux5~1_combout\,
	datab => \inst|ALT_INV_LessThan0~0_combout\,
	datac => \inst|ALT_INV_LessThan0~3_combout\,
	datad => \inst|ALT_INV_Mux0~1_combout\,
	datae => \inst|ALT_INV_LessThan0~2_combout\,
	dataf => \inst|ALT_INV_estado.init~2_combout\,
	combout => \inst|estado~0_combout\);

-- Location: MLABCELL_X49_Y19_N3
\inst|estado.init~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.init~3_combout\ = ( \inst|estado~0_combout\ & ( !\inst|estado.init~1_combout\ $ (!\inst|Selector0~0_combout\) ) ) # ( !\inst|estado~0_combout\ & ( !\inst|estado.init~1_combout\ $ (((!\inst|estado.recebe~q\ & !\inst|Selector0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110001101100011011000110110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_estado.recebe~q\,
	datab => \inst|ALT_INV_estado.init~1_combout\,
	datac => \inst|ALT_INV_Selector0~0_combout\,
	dataf => \inst|ALT_INV_estado~0_combout\,
	combout => \inst|estado.init~3_combout\);

-- Location: FF_X49_Y19_N4
\inst|estado.init~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|estado.init~3_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.init~_emulated_q\);

-- Location: LABCELL_X50_Y19_N33
\inst|estado.init~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.init~2_combout\ = ( \inst|estado.init~1_combout\ & ( (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & (!\inst|estado.init~_emulated_q\)) # (\inst|estado.init~6_combout\ & ((\inst|estado~1_combout\))))) ) ) # ( !\inst|estado.init~1_combout\ & 
-- ( (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & (\inst|estado.init~_emulated_q\)) # (\inst|estado.init~6_combout\ & ((\inst|estado~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101010000000101000101000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datac => \inst|ALT_INV_estado.init~_emulated_q\,
	datad => \inst|ALT_INV_estado~1_combout\,
	dataf => \inst|ALT_INV_estado.init~1_combout\,
	combout => \inst|estado.init~2_combout\);

-- Location: LABCELL_X52_Y19_N39
\inst|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~1_combout\ = ( \inst|Mux4~2_combout\ & ( (!\inst|Mux1~0_combout\ & !\inst|atual[3]~14_combout\) ) ) # ( !\inst|Mux4~2_combout\ & ( (!\inst|Mux1~0_combout\ & (!\inst|atual[3]~14_combout\)) # (\inst|Mux1~0_combout\ & ((!\inst|Mux4~0_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110110001000110111011000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux1~0_combout\,
	datab => \inst|ALT_INV_atual[3]~14_combout\,
	datad => \inst|ALT_INV_Mux4~0_combout\,
	dataf => \inst|ALT_INV_Mux4~2_combout\,
	combout => \inst|Mux4~1_combout\);

-- Location: LABCELL_X52_Y19_N24
\inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ( \inst|Mux5~1_combout\ & ( \inst|Mux4~1_combout\ & ( (\inst|LessThan0~0_combout\ & ((!\inst|Mux1~0_combout\ & (!\inst|atual[4]~30_combout\)) # (\inst|Mux1~0_combout\ & ((!\inst|Mux3~0_combout\))))) ) ) ) # ( 
-- !\inst|Mux5~1_combout\ & ( \inst|Mux4~1_combout\ & ( (!\inst|Mux1~0_combout\ & (!\inst|atual[4]~30_combout\)) # (\inst|Mux1~0_combout\ & ((!\inst|Mux3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110000000100010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~0_combout\,
	datab => \inst|ALT_INV_atual[4]~30_combout\,
	datac => \inst|ALT_INV_Mux1~0_combout\,
	datad => \inst|ALT_INV_Mux3~0_combout\,
	datae => \inst|ALT_INV_Mux5~1_combout\,
	dataf => \inst|ALT_INV_Mux4~1_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LABCELL_X52_Y19_N48
\inst|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = ( \inst|estado.recebe~q\ & ( \inst|LessThan0~1_combout\ & ( (!\inst|estado.init~2_combout\) # (\inst|Mux0~1_combout\) ) ) ) # ( !\inst|estado.recebe~q\ & ( \inst|LessThan0~1_combout\ & ( (!\inst|estado.init~2_combout\ & 
-- !\inst|Equal1~0_combout\) ) ) ) # ( \inst|estado.recebe~q\ & ( !\inst|LessThan0~1_combout\ & ( (!\inst|estado.init~2_combout\) # ((\inst|Mux0~1_combout\ & !\inst|LessThan0~2_combout\)) ) ) ) # ( !\inst|estado.recebe~q\ & ( !\inst|LessThan0~1_combout\ & ( 
-- (!\inst|estado.init~2_combout\ & !\inst|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000101011111010101010001000100010001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_estado.init~2_combout\,
	datab => \inst|ALT_INV_Equal1~0_combout\,
	datac => \inst|ALT_INV_Mux0~1_combout\,
	datad => \inst|ALT_INV_LessThan0~2_combout\,
	datae => \inst|ALT_INV_estado.recebe~q\,
	dataf => \inst|ALT_INV_LessThan0~1_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X52_Y19_N50
\inst|estado.recebe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|Selector1~0_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.recebe~q\);

-- Location: LABCELL_X52_Y19_N0
\inst|atual~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~60_combout\ = ( \inst|atual[7]~18_combout\ & ( !\inst|estado.recebe~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_atual[7]~18_combout\,
	dataf => \inst|ALT_INV_estado.recebe~q\,
	combout => \inst|atual~60_combout\);

-- Location: LABCELL_X53_Y19_N51
\inst|atual[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[7]~17_combout\ = ( \inst|atual~60_combout\ & ( (!\R~input_o\ & ((\inst|atual[7]~17_combout\) # (\inst|estado.init~6_combout\))) ) ) # ( !\inst|atual~60_combout\ & ( (!\R~input_o\ & (!\inst|estado.init~6_combout\ & \inst|atual[7]~17_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datad => \inst|ALT_INV_atual[7]~17_combout\,
	dataf => \inst|ALT_INV_atual~60_combout\,
	combout => \inst|atual[7]~17_combout\);

-- Location: LABCELL_X52_Y18_N36
\inst|atual~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual~59_combout\ = ( \inst|Add0~1_sumout\ & ( \inst|Mux0~0_combout\ & ( (!\inst|atual[7]~18_combout\ & ((!\inst|Mux1~0_combout\) # (\inst|Equal1~0_combout\))) ) ) ) # ( !\inst|Add0~1_sumout\ & ( \inst|Mux0~0_combout\ & ( 
-- (!\inst|atual[7]~18_combout\ & ((!\inst|Mux1~0_combout\) # (\inst|Equal1~0_combout\))) ) ) ) # ( \inst|Add0~1_sumout\ & ( !\inst|Mux0~0_combout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux1~0_combout\ & ((!\inst|atual[7]~18_combout\))) # 
-- (\inst|Mux1~0_combout\ & (!\inst|Mux1~1_combout\)))) # (\inst|Equal1~0_combout\ & (((!\inst|atual[7]~18_combout\)))) ) ) ) # ( !\inst|Add0~1_sumout\ & ( !\inst|Mux0~0_combout\ & ( (!\inst|atual[7]~18_combout\) # ((!\inst|Equal1~0_combout\ & 
-- \inst|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111100110011001010110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux1~1_combout\,
	datab => \inst|ALT_INV_atual[7]~18_combout\,
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst|ALT_INV_Mux1~0_combout\,
	datae => \inst|ALT_INV_Add0~1_sumout\,
	dataf => \inst|ALT_INV_Mux0~0_combout\,
	combout => \inst|atual~59_combout\);

-- Location: LABCELL_X53_Y19_N21
\inst|atual[7]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[7]~19_combout\ = ( \inst|Selector1~1_combout\ & ( !\inst|atual[7]~17_combout\ $ (\inst|atual~59_combout\) ) ) # ( !\inst|Selector1~1_combout\ & ( !\inst|atual[7]~17_combout\ $ (((\inst|atual~59_combout\) # (\inst|estado.init~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010110010101100101011001010110100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[7]~17_combout\,
	datab => \inst|ALT_INV_estado.init~2_combout\,
	datac => \inst|ALT_INV_atual~59_combout\,
	dataf => \inst|ALT_INV_Selector1~1_combout\,
	combout => \inst|atual[7]~19_combout\);

-- Location: FF_X53_Y19_N23
\inst|atual[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|atual[7]~19_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|atual[7]~_emulated_q\);

-- Location: LABCELL_X53_Y19_N12
\inst|atual[7]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|atual[7]~18_combout\ = ( \inst|atual[7]~17_combout\ & ( (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & ((!\inst|atual[7]~_emulated_q\))) # (\inst|estado.init~6_combout\ & (\inst|atual~60_combout\)))) ) ) # ( !\inst|atual[7]~17_combout\ & ( 
-- (!\R~input_o\ & ((!\inst|estado.init~6_combout\ & ((\inst|atual[7]~_emulated_q\))) # (\inst|estado.init~6_combout\ & (\inst|atual~60_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110010001100000001001000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_estado.init~6_combout\,
	datab => \ALT_INV_R~input_o\,
	datac => \inst|ALT_INV_atual~60_combout\,
	datad => \inst|ALT_INV_atual[7]~_emulated_q\,
	dataf => \inst|ALT_INV_atual[7]~17_combout\,
	combout => \inst|atual[7]~18_combout\);

-- Location: LABCELL_X48_Y18_N30
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\ = SUM(( \inst|atual[1]~6_combout\ ) + ( !VCC ) + ( !VCC ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ = CARRY(( \inst|atual[1]~6_combout\ ) + ( !VCC ) + ( !VCC ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[1]~6_combout\,
	cin => GND,
	sharein => GND,
	sumout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\,
	shareout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\);

-- Location: LABCELL_X48_Y18_N33
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ = SUM(( !\inst|atual[2]~10_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ = CARRY(( !\inst|atual[2]~10_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ = SHARE(\inst|atual[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[2]~10_combout\,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\,
	sharein => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\,
	sumout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\,
	shareout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\);

-- Location: LABCELL_X48_Y18_N36
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ = SUM(( \inst|atual[3]~14_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ = CARRY(( \inst|atual[3]~14_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[3]~14_combout\,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\,
	sharein => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\,
	sumout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\,
	shareout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\);

-- Location: LABCELL_X48_Y18_N39
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\ = SUM(( !\inst|atual[4]~30_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\ = CARRY(( !\inst|atual[4]~30_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\ = SHARE(\inst|atual[4]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[4]~30_combout\,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\,
	sharein => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\,
	sumout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\,
	shareout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\);

-- Location: LABCELL_X48_Y18_N42
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\ = SUM(( !\inst|atual[5]~26_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ = CARRY(( !\inst|atual[5]~26_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ = SHARE(\inst|atual[5]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[5]~26_combout\,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\,
	sharein => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\,
	sumout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\,
	shareout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\);

-- Location: LABCELL_X48_Y18_N45
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_sumout\ = SUM(( \inst|atual[6]~22_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ = CARRY(( \inst|atual[6]~22_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[6]~22_combout\,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\,
	sharein => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\,
	sumout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_sumout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\,
	shareout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LABCELL_X48_Y18_N48
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\ = SUM(( \inst|atual[7]~18_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ = CARRY(( \inst|atual[7]~18_combout\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ ) + ( 
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ ))
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[7]~18_combout\,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\,
	sharein => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	sumout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\,
	shareout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\);

-- Location: LABCELL_X48_Y18_N51
\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ = SUM(( VCC ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ ) + ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\,
	sharein => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\,
	sumout => \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\);

-- Location: MLABCELL_X49_Y18_N27
\inst|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|comb~0_combout\ = ( !\BT~input_o\ & ( \C~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_BT~input_o\,
	dataf => \ALT_INV_C~input_o\,
	combout => \inst|comb~0_combout\);

-- Location: MLABCELL_X49_Y18_N12
\inst|button_pressed\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|button_pressed~combout\ = ( !\inst|comb~0_combout\ & ( \inst|button_pressed~combout\ ) ) # ( !\inst|comb~0_combout\ & ( !\inst|button_pressed~combout\ & ( \BT~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BT~input_o\,
	datae => \inst|ALT_INV_comb~0_combout\,
	dataf => \inst|ALT_INV_button_pressed~combout\,
	combout => \inst|button_pressed~combout\);

-- Location: MLABCELL_X49_Y18_N18
\inst|Div0|auto_generated|divider|divider|StageOut[53]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[53]~0_combout\ = ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_sumout\ & ( !\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~9_sumout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[53]~0_combout\);

-- Location: MLABCELL_X49_Y18_N0
\inst|Div0|auto_generated|divider|divider|StageOut[53]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[53]~1_combout\ = ( \inst|atual[6]~22_combout\ & ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|ALT_INV_atual[6]~22_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[53]~1_combout\);

-- Location: MLABCELL_X49_Y18_N21
\inst|Div0|auto_generated|divider|divider|StageOut[51]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\ = ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\ & ( !\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~17_sumout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\);

-- Location: MLABCELL_X49_Y18_N3
\inst|Div0|auto_generated|divider|divider|StageOut[51]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[51]~3_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \inst|atual[4]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst|ALT_INV_atual[4]~30_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[51]~3_combout\);

-- Location: MLABCELL_X49_Y18_N9
\inst|Div0|auto_generated|divider|divider|StageOut[49]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[49]~5_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \inst|atual[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datac => \inst|ALT_INV_atual[2]~10_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[49]~5_combout\);

-- Location: MLABCELL_X49_Y18_N6
\inst|Div0|auto_generated|divider|divider|StageOut[49]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[49]~4_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[49]~4_combout\);

-- Location: MLABCELL_X49_Y18_N30
\inst|Div0|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Div0|auto_generated|divider|divider|op_8~38_cout\);

-- Location: MLABCELL_X49_Y18_N33
\inst|Div0|auto_generated|divider|divider|op_8~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|op_8~34_cout\ = CARRY(( \inst|atual[0]~2_combout\ ) + ( VCC ) + ( \inst|Div0|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[0]~2_combout\,
	cin => \inst|Div0|auto_generated|divider|divider|op_8~38_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|op_8~34_cout\);

-- Location: MLABCELL_X49_Y18_N36
\inst|Div0|auto_generated|divider|divider|op_8~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|op_8~30_cout\ = CARRY(( (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\))) # 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|atual[1]~6_combout\)) ) + ( VCC ) + ( \inst|Div0|auto_generated|divider|divider|op_8~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[1]~6_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\,
	cin => \inst|Div0|auto_generated|divider|divider|op_8~34_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|op_8~30_cout\);

-- Location: MLABCELL_X49_Y18_N39
\inst|Div0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( (\inst|Div0|auto_generated|divider|divider|StageOut[49]~4_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[49]~5_combout\) ) + ( GND ) + ( 
-- \inst|Div0|auto_generated|divider|divider|op_8~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~5_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~4_combout\,
	cin => \inst|Div0|auto_generated|divider|divider|op_8~30_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|op_8~26_cout\);

-- Location: MLABCELL_X49_Y18_N42
\inst|Div0|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( VCC ) + ( (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\))) # 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|atual[3]~14_combout\)) ) + ( \inst|Div0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[3]~14_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\,
	cin => \inst|Div0|auto_generated|divider|divider|op_8~26_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|op_8~22_cout\);

-- Location: MLABCELL_X49_Y18_N45
\inst|Div0|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( (\inst|Div0|auto_generated|divider|divider|StageOut[51]~3_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[51]~2_combout\) ) + ( VCC ) + ( 
-- \inst|Div0|auto_generated|divider|divider|op_8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~3_combout\,
	cin => \inst|Div0|auto_generated|divider|divider|op_8~22_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|op_8~18_cout\);

-- Location: MLABCELL_X49_Y18_N48
\inst|Div0|auto_generated|divider|divider|op_8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|op_8~14_cout\ = CARRY(( (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\))) # 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|atual[5]~26_combout\)) ) + ( GND ) + ( \inst|Div0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datac => \inst|ALT_INV_atual[5]~26_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\,
	cin => \inst|Div0|auto_generated|divider|divider|op_8~18_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|op_8~14_cout\);

-- Location: MLABCELL_X49_Y18_N51
\inst|Div0|auto_generated|divider|divider|op_8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|op_8~10_cout\ = CARRY(( (\inst|Div0|auto_generated|divider|divider|StageOut[53]~1_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[53]~0_combout\) ) + ( GND ) + ( 
-- \inst|Div0|auto_generated|divider|divider|op_8~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~1_combout\,
	cin => \inst|Div0|auto_generated|divider|divider|op_8~14_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|op_8~10_cout\);

-- Location: MLABCELL_X49_Y18_N54
\inst|Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (!\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\))) # 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|atual[7]~18_combout\)) ) + ( VCC ) + ( \inst|Div0|auto_generated|divider|divider|op_8~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[7]~18_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\,
	cin => \inst|Div0|auto_generated|divider|divider|op_8~10_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|op_8~6_cout\);

-- Location: MLABCELL_X49_Y18_N57
\inst|Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Div0|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \inst|Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X53_Y17_N27
\inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (!\inst|button_pressed~combout\ & !\inst|Div0|auto_generated|divider|divider|op_8~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_button_pressed~combout\,
	datab => \inst|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \inst|Mux8~0_combout\);

-- Location: LABCELL_X53_Y17_N54
\inst|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~1_combout\ = ( \inst|Mux8~0_combout\ & ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|ALT_INV_Mux8~0_combout\,
	combout => \inst|Mux8~1_combout\);

-- Location: LABCELL_X53_Y17_N57
\inst|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = ( !\inst|button_pressed~combout\ & ( !\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|ALT_INV_button_pressed~combout\,
	combout => \inst|Mux10~0_combout\);

-- Location: LABCELL_X53_Y17_N36
\inst|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux10~1_combout\ = ( \inst|Mux10~0_combout\ & ( \inst|Div0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst|ALT_INV_Mux10~0_combout\,
	combout => \inst|Mux10~1_combout\);

-- Location: LABCELL_X53_Y17_N24
\inst|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = ( \inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( (!\inst|button_pressed~combout\ & !\inst|Div0|auto_generated|divider|divider|op_8~1_sumout\) ) ) # ( 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( !\inst|button_pressed~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_button_pressed~combout\,
	datab => \inst|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \inst|Mux13~0_combout\);

-- Location: MLABCELL_X49_Y15_N0
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\ = SUM(( \inst|atual[1]~6_combout\ ) + ( !VCC ) + ( !VCC ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ = CARRY(( \inst|atual[1]~6_combout\ ) + ( !VCC ) + ( !VCC ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[1]~6_combout\,
	cin => GND,
	sharein => GND,
	sumout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\,
	shareout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\);

-- Location: MLABCELL_X49_Y15_N3
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ = SUM(( !\inst|atual[2]~10_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ = CARRY(( !\inst|atual[2]~10_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ = SHARE(\inst|atual[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[2]~10_combout\,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\,
	sharein => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\,
	sumout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\,
	shareout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\);

-- Location: MLABCELL_X49_Y15_N6
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ = SUM(( \inst|atual[3]~14_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ = CARRY(( \inst|atual[3]~14_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[3]~14_combout\,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\,
	sharein => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\,
	sumout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\,
	shareout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\);

-- Location: MLABCELL_X49_Y15_N9
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\ = SUM(( !\inst|atual[4]~30_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\ = CARRY(( !\inst|atual[4]~30_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\ = SHARE(\inst|atual[4]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[4]~30_combout\,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\,
	sharein => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\,
	sumout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\,
	shareout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\);

-- Location: MLABCELL_X49_Y15_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\ = SUM(( !\inst|atual[5]~26_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ = CARRY(( !\inst|atual[5]~26_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ = SHARE(\inst|atual[5]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[5]~26_combout\,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~10\,
	sharein => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~11\,
	sumout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\,
	shareout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\);

-- Location: MLABCELL_X49_Y15_N15
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~17_sumout\ = SUM(( \inst|atual[6]~22_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\ = CARRY(( \inst|atual[6]~22_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[6]~22_combout\,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\,
	sharein => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\,
	sumout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~17_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\,
	shareout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\);

-- Location: MLABCELL_X49_Y15_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\ = SUM(( \inst|atual[7]~18_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ = CARRY(( \inst|atual[7]~18_combout\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\ ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\ ))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[7]~18_combout\,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~18\,
	sharein => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~19\,
	sumout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\,
	shareout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\);

-- Location: MLABCELL_X49_Y15_N21
\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ = SUM(( VCC ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ ) + ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\,
	sharein => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\,
	sumout => \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\);

-- Location: MLABCELL_X49_Y15_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[54]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\ = ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: MLABCELL_X49_Y15_N27
\inst|Mod0|auto_generated|divider|divider|StageOut[53]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\ = ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~17_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~17_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\);

-- Location: MLABCELL_X49_Y15_N48
\inst|Mod0|auto_generated|divider|divider|StageOut[53]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \inst|atual[6]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datac => \inst|ALT_INV_atual[6]~22_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\);

-- Location: MLABCELL_X49_Y15_N57
\inst|Mod0|auto_generated|divider|divider|StageOut[51]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[51]~2_combout\ = ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~9_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~9_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[51]~2_combout\);

-- Location: MLABCELL_X49_Y15_N36
\inst|Mod0|auto_generated|divider|divider|StageOut[51]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \inst|atual[4]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst|ALT_INV_atual[4]~30_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\);

-- Location: MLABCELL_X49_Y15_N33
\inst|Mod0|auto_generated|divider|divider|StageOut[49]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[49]~16_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[49]~16_combout\);

-- Location: MLABCELL_X49_Y15_N54
\inst|Mod0|auto_generated|divider|divider|StageOut[49]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[49]~17_combout\ = ( \inst|atual[2]~10_combout\ & ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|ALT_INV_atual[2]~10_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[49]~17_combout\);

-- Location: MLABCELL_X49_Y16_N6
\inst|Mod0|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Mod0|auto_generated|divider|divider|op_8~38_cout\);

-- Location: MLABCELL_X49_Y16_N9
\inst|Mod0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( \inst|atual[0]~2_combout\ ) + ( VCC ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~38_cout\ ))
-- \inst|Mod0|auto_generated|divider|divider|op_8~34\ = CARRY(( \inst|atual[0]~2_combout\ ) + ( VCC ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[0]~2_combout\,
	cin => \inst|Mod0|auto_generated|divider|divider|op_8~38_cout\,
	sumout => \inst|Mod0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_8~34\);

-- Location: MLABCELL_X49_Y16_N12
\inst|Mod0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\))) # 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|atual[1]~6_combout\)) ) + ( VCC ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~34\ ))
-- \inst|Mod0|auto_generated|divider|divider|op_8~30\ = CARRY(( (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\))) # 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|atual[1]~6_combout\)) ) + ( VCC ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[1]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\,
	cin => \inst|Mod0|auto_generated|divider|divider|op_8~34\,
	sumout => \inst|Mod0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_8~30\);

-- Location: MLABCELL_X49_Y16_N15
\inst|Mod0|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( GND ) + ( (\inst|Mod0|auto_generated|divider|divider|StageOut[49]~17_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[49]~16_combout\) ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|op_8~30\ ))
-- \inst|Mod0|auto_generated|divider|divider|op_8~26\ = CARRY(( GND ) + ( (\inst|Mod0|auto_generated|divider|divider|StageOut[49]~17_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[49]~16_combout\) ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~16_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~17_combout\,
	cin => \inst|Mod0|auto_generated|divider|divider|op_8~30\,
	sumout => \inst|Mod0|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_8~26\);

-- Location: MLABCELL_X49_Y16_N18
\inst|Mod0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( VCC ) + ( (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\))) # 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|atual[3]~14_combout\)) ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~26\ ))
-- \inst|Mod0|auto_generated|divider|divider|op_8~22\ = CARRY(( VCC ) + ( (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\))) # 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|atual[3]~14_combout\)) ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[3]~14_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\,
	cin => \inst|Mod0|auto_generated|divider|divider|op_8~26\,
	sumout => \inst|Mod0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_8~22\);

-- Location: MLABCELL_X49_Y16_N21
\inst|Mod0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( VCC ) + ( (\inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[51]~2_combout\) ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|op_8~22\ ))
-- \inst|Mod0|auto_generated|divider|divider|op_8~10\ = CARRY(( VCC ) + ( (\inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[51]~2_combout\) ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~3_combout\,
	cin => \inst|Mod0|auto_generated|divider|divider|op_8~22\,
	sumout => \inst|Mod0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_8~10\);

-- Location: MLABCELL_X49_Y16_N24
\inst|Mod0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( GND ) + ( (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\))) # 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|atual[5]~26_combout\)) ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~10\ ))
-- \inst|Mod0|auto_generated|divider|divider|op_8~14\ = CARRY(( GND ) + ( (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\))) # 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|atual[5]~26_combout\)) ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[5]~26_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\,
	cin => \inst|Mod0|auto_generated|divider|divider|op_8~10\,
	sumout => \inst|Mod0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_8~14\);

-- Location: MLABCELL_X49_Y16_N27
\inst|Mod0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (\inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\) ) + ( GND ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|op_8~14\ ))
-- \inst|Mod0|auto_generated|divider|divider|op_8~18\ = CARRY(( (\inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\) ) + ( GND ) + ( 
-- \inst|Mod0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	cin => \inst|Mod0|auto_generated|divider|divider|op_8~14\,
	sumout => \inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_8~18\);

-- Location: MLABCELL_X49_Y16_N30
\inst|Mod0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\)) # 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|atual[7]~18_combout\))) ) + ( VCC ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~18\ ))
-- \inst|Mod0|auto_generated|divider|divider|op_8~6\ = CARRY(( (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\)) # 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|atual[7]~18_combout\))) ) + ( VCC ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\,
	datab => \inst|ALT_INV_atual[7]~18_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	cin => \inst|Mod0|auto_generated|divider|divider|op_8~18\,
	sumout => \inst|Mod0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \inst|Mod0|auto_generated|divider|divider|op_8~6\);

-- Location: MLABCELL_X49_Y16_N33
\inst|Mod0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Mod0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|op_8~6\,
	sumout => \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X50_Y16_N51
\inst|Mod0|auto_generated|divider|divider|StageOut[54]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[54]~1_combout\ = ( \inst|atual[7]~18_combout\ & ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|ALT_INV_atual[7]~18_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: MLABCELL_X49_Y15_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[52]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\)) # 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\inst|atual[5]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\,
	datac => \inst|ALT_INV_atual[5]~26_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: MLABCELL_X49_Y16_N36
\inst|Div1|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Div1|auto_generated|divider|divider|op_4~22_cout\);

-- Location: MLABCELL_X49_Y16_N39
\inst|Div1|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( VCC ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|op_8~9_sumout\)) # 
-- (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[51]~2_combout\)))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_4~22_cout\ ))
-- \inst|Div1|auto_generated|divider|divider|op_4~14\ = CARRY(( VCC ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|op_8~9_sumout\)) # (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[51]~2_combout\)))) ) + ( \inst|Div1|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~3_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_4~14\);

-- Location: MLABCELL_X49_Y16_N42
\inst|Div1|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( GND ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|op_8~13_sumout\))) # 
-- (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[52]~5_combout\)) ) + ( \inst|Div1|auto_generated|divider|divider|op_4~14\ ))
-- \inst|Div1|auto_generated|divider|divider|op_4~18\ = CARRY(( GND ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|op_8~13_sumout\))) # (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ 
-- & (\inst|Mod0|auto_generated|divider|divider|StageOut[52]~5_combout\)) ) + ( \inst|Div1|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~5_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_4~14\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_4~18\);

-- Location: MLABCELL_X49_Y16_N45
\inst|Div1|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\)))) # (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\)) # (\inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\))) ) + ( VCC ) + ( \inst|Div1|auto_generated|divider|divider|op_4~18\ ))
-- \inst|Div1|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\)))) # (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\)) # (\inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\))) ) + ( VCC ) + ( \inst|Div1|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_4~18\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_4~10\);

-- Location: MLABCELL_X49_Y16_N48
\inst|Div1|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( GND ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|op_8~5_sumout\)))) # 
-- (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[54]~1_combout\)) # (\inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_4~10\ ))
-- \inst|Div1|auto_generated|divider|divider|op_4~6\ = CARRY(( GND ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|op_8~5_sumout\)))) # (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ 
-- & (((\inst|Mod0|auto_generated|divider|divider|StageOut[54]~1_combout\)) # (\inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\))) ) + ( \inst|Div1|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010101100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~1_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_4~10\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_4~6\);

-- Location: MLABCELL_X49_Y16_N51
\inst|Div1|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|op_4~6\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: LABCELL_X50_Y16_N27
\inst|Mod0|auto_generated|divider|divider|StageOut[63]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[63]~9_combout\ = ( \inst|Mod0|auto_generated|divider|divider|op_8~5_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[63]~9_combout\);

-- Location: LABCELL_X50_Y16_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[63]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[63]~10_combout\ = ( \inst|Mod0|auto_generated|divider|divider|StageOut[54]~1_combout\ & ( \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) ) # ( 
-- !\inst|Mod0|auto_generated|divider|divider|StageOut[54]~1_combout\ & ( (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \inst|Mod0|auto_generated|divider|divider|StageOut[54]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~0_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~1_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[63]~10_combout\);

-- Location: MLABCELL_X49_Y16_N54
\inst|Div1|auto_generated|divider|divider|StageOut[17]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[17]~11_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_4~9_sumout\ & ( \inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\ & ( 
-- ((!\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\) # (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\)) # (\inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\) ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_4~9_sumout\ & 
-- ( \inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\ & ( (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\) # (\inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\))) 
-- ) ) ) # ( \inst|Div1|auto_generated|divider|divider|op_4~9_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\ & ( (!\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\) # 
-- ((!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\))) # (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\))) ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_4~9_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\ & ( 
-- (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ((!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\))) # (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100111111010100000011000011111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[17]~11_combout\);

-- Location: LABCELL_X50_Y16_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[61]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[61]~4_combout\ = ( !\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \inst|Mod0|auto_generated|divider|divider|op_8~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[61]~4_combout\);

-- Location: LABCELL_X50_Y16_N39
\inst|Mod0|auto_generated|divider|divider|StageOut[61]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[61]~6_combout\ = ( \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \inst|Mod0|auto_generated|divider|divider|StageOut[52]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~5_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[61]~6_combout\);

-- Location: MLABCELL_X49_Y16_N0
\inst|Div1|auto_generated|divider|divider|StageOut[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[15]~1_combout\ = ( \inst|Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( \inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ & ( 
-- (\inst|Div1|auto_generated|divider|divider|op_4~13_sumout\) # (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\) ) ) ) # ( !\inst|Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( 
-- \inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ & ( (!\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_4~13_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\))) ) ) ) # ( \inst|Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ & ( 
-- (!\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_4~13_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & (((!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[51]~2_combout\)))) ) ) ) # ( !\inst|Mod0|auto_generated|divider|divider|op_8~9_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|StageOut[51]~3_combout\ & ( 
-- (!\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_4~13_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- \inst|Mod0|auto_generated|divider|divider|StageOut[51]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111011100100111011100100111001001110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~2_combout\,
	datae => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~3_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[15]~1_combout\);

-- Location: MLABCELL_X49_Y15_N51
\inst|Mod0|auto_generated|divider|divider|StageOut[50]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[50]~12_combout\ = ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[50]~12_combout\);

-- Location: LABCELL_X50_Y16_N48
\inst|Mod0|auto_generated|divider|divider|StageOut[50]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[50]~13_combout\ = ( \inst|atual[3]~14_combout\ & ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|ALT_INV_atual[3]~14_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[50]~13_combout\);

-- Location: LABCELL_X50_Y16_N0
\inst|Div1|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Div1|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X50_Y16_N3
\inst|Div1|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( VCC ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|op_8~21_sumout\)))) # 
-- (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[50]~13_combout\)) # (\inst|Mod0|auto_generated|divider|divider|StageOut[50]~12_combout\))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_5~26_cout\ ))
-- \inst|Div1|auto_generated|divider|divider|op_5~22\ = CARRY(( VCC ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|op_8~21_sumout\)))) # 
-- (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[50]~13_combout\)) # (\inst|Mod0|auto_generated|divider|divider|StageOut[50]~12_combout\))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~12_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~13_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X50_Y16_N6
\inst|Div1|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( GND ) + ( \inst|Div1|auto_generated|divider|divider|StageOut[15]~1_combout\ ) + ( \inst|Div1|auto_generated|divider|divider|op_5~22\ ))
-- \inst|Div1|auto_generated|divider|divider|op_5~10\ = CARRY(( GND ) + ( \inst|Div1|auto_generated|divider|divider|StageOut[15]~1_combout\ ) + ( \inst|Div1|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[15]~1_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_5~22\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X50_Y16_N9
\inst|Div1|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( VCC ) + ( (!\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_4~17_sumout\)) # 
-- (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[61]~6_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[61]~4_combout\)))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_5~10\ ))
-- \inst|Div1|auto_generated|divider|divider|op_5~14\ = CARRY(( VCC ) + ( (!\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_4~17_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\inst|Mod0|auto_generated|divider|divider|StageOut[61]~6_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[61]~4_combout\)))) ) + ( \inst|Div1|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~4_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~6_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_5~10\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X50_Y16_N12
\inst|Div1|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( \inst|Div1|auto_generated|divider|divider|StageOut[17]~11_combout\ ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_5~14\ ))
-- \inst|Div1|auto_generated|divider|divider|op_5~18\ = CARRY(( \inst|Div1|auto_generated|divider|divider|StageOut[17]~11_combout\ ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~11_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_5~14\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X50_Y16_N15
\inst|Div1|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( VCC ) + ( (!\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_4~5_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ 
-- & (((\inst|Mod0|auto_generated|divider|divider|StageOut[63]~10_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[63]~9_combout\)))) ) + ( \inst|Div1|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~9_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~10_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_5~18\,
	cout => \inst|Div1|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X50_Y16_N18
\inst|Div1|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X50_Y16_N36
\inst|Div1|auto_generated|divider|divider|StageOut[16]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[16]~5_combout\ = ( \inst|Mod0|auto_generated|divider|divider|StageOut[61]~4_combout\ & ( (\inst|Div1|auto_generated|divider|divider|op_4~17_sumout\) # 
-- (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\) ) ) # ( !\inst|Mod0|auto_generated|divider|divider|StageOut[61]~4_combout\ & ( (!\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\inst|Div1|auto_generated|divider|divider|op_4~17_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[61]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~6_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~4_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LABCELL_X50_Y16_N45
\inst|Mod0|auto_generated|divider|divider|StageOut[59]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[59]~11_combout\ = ( !\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \inst|Mod0|auto_generated|divider|divider|op_8~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[59]~11_combout\);

-- Location: LABCELL_X52_Y16_N3
\inst|Mod0|auto_generated|divider|divider|StageOut[59]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\ = ( \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\inst|Mod0|auto_generated|divider|divider|StageOut[50]~13_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[50]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~12_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~13_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\);

-- Location: LABCELL_X52_Y16_N24
\inst|Div1|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Div1|auto_generated|divider|divider|op_6~26_cout\);

-- Location: LABCELL_X52_Y16_N27
\inst|Div1|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( VCC ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|op_8~25_sumout\)))) # 
-- (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[49]~17_combout\)) # (\inst|Mod0|auto_generated|divider|divider|StageOut[49]~16_combout\))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_6~26_cout\ ))
-- \inst|Div1|auto_generated|divider|divider|op_6~22\ = CARRY(( VCC ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|op_8~25_sumout\)))) # 
-- (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[49]~17_combout\)) # (\inst|Mod0|auto_generated|divider|divider|StageOut[49]~16_combout\))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~16_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~17_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X52_Y16_N30
\inst|Div1|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_5~21_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[59]~11_combout\)))) ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_6~22\ ))
-- \inst|Div1|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_5~21_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[59]~11_combout\)))) ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~11_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~14_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_6~22\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X52_Y16_N33
\inst|Div1|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_5~9_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[15]~1_combout\)) ) + ( VCC ) + ( \inst|Div1|auto_generated|divider|divider|op_6~18\ ))
-- \inst|Div1|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_5~9_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[15]~1_combout\)) ) + ( VCC ) + ( \inst|Div1|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[15]~1_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_6~18\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X52_Y16_N36
\inst|Div1|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( GND ) + ( (!\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|StageOut[16]~5_combout\)) ) + ( \inst|Div1|auto_generated|divider|divider|op_6~10\ ))
-- \inst|Div1|auto_generated|divider|divider|op_6~14\ = CARRY(( GND ) + ( (!\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_5~13_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ 
-- & (\inst|Div1|auto_generated|divider|divider|StageOut[16]~5_combout\)) ) + ( \inst|Div1|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_6~10\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X52_Y16_N0
\inst|Div1|auto_generated|divider|divider|StageOut[17]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[17]~7_combout\ = ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[17]~7_combout\);

-- Location: LABCELL_X50_Y16_N57
\inst|Div1|auto_generated|divider|divider|StageOut[17]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[17]~8_combout\ = ( \inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\ & ( \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\))) ) ) ) # ( !\inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\ & ( 
-- \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[53]~8_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[53]~7_combout\))) ) ) ) # ( \inst|Mod0|auto_generated|divider|divider|op_8~17_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~7_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~8_combout\,
	datae => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[17]~8_combout\);

-- Location: LABCELL_X52_Y16_N39
\inst|Div1|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( VCC ) + ( (!\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & (((\inst|Div1|auto_generated|divider|divider|op_5~17_sumout\)))) # 
-- (\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[17]~8_combout\)) # (\inst|Div1|auto_generated|divider|divider|StageOut[17]~7_combout\))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~7_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~8_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_6~14\,
	cout => \inst|Div1|auto_generated|divider|divider|op_6~6_cout\);

-- Location: LABCELL_X52_Y16_N42
\inst|Div1|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X52_Y16_N21
\inst|Div1|auto_generated|divider|divider|StageOut[22]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[22]~4_combout\ = ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_5~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datae => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[22]~4_combout\);

-- Location: LABCELL_X50_Y16_N33
\inst|Div1|auto_generated|divider|divider|StageOut[22]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[22]~6_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|StageOut[16]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[22]~6_combout\);

-- Location: LABCELL_X52_Y16_N51
\inst|Div1|auto_generated|divider|divider|StageOut[21]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[21]~2_combout\ = (!\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_5~9_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[15]~1_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[21]~2_combout\);

-- Location: LABCELL_X52_Y16_N9
\inst|Div1|auto_generated|divider|divider|StageOut[20]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[20]~9_combout\ = ( \inst|Mod0|auto_generated|divider|divider|StageOut[59]~11_combout\ & ( (\inst|Div1|auto_generated|divider|divider|op_5~21_sumout\) # 
-- (\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( !\inst|Mod0|auto_generated|divider|divider|StageOut[59]~11_combout\ & ( (!\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\inst|Div1|auto_generated|divider|divider|op_5~21_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[59]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~14_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[59]~11_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[20]~9_combout\);

-- Location: LABCELL_X52_Y16_N15
\inst|Mod0|auto_generated|divider|divider|StageOut[58]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[58]~15_combout\ = ( !\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \inst|Mod0|auto_generated|divider|divider|op_8~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[58]~15_combout\);

-- Location: LABCELL_X52_Y16_N57
\inst|Mod0|auto_generated|divider|divider|StageOut[58]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[58]~18_combout\ = ( \inst|Mod0|auto_generated|divider|divider|StageOut[49]~16_combout\ & ( \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) ) # ( 
-- !\inst|Mod0|auto_generated|divider|divider|StageOut[49]~16_combout\ & ( \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ( \inst|Mod0|auto_generated|divider|divider|StageOut[49]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~17_combout\,
	datae => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[49]~16_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[58]~18_combout\);

-- Location: MLABCELL_X49_Y15_N39
\inst|Mod0|auto_generated|divider|divider|StageOut[48]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\ = (!\inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\);

-- Location: MLABCELL_X49_Y15_N45
\inst|Mod0|auto_generated|divider|divider|StageOut[48]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\ = ( \inst|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \inst|atual[1]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \inst|ALT_INV_atual[1]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\);

-- Location: LABCELL_X53_Y16_N36
\inst|Div1|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Div1|auto_generated|divider|divider|op_7~26_cout\);

-- Location: LABCELL_X53_Y16_N39
\inst|Div1|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( VCC ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|op_8~29_sumout\)) # 
-- (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\)))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_7~26_cout\ ))
-- \inst|Div1|auto_generated|divider|divider|op_7~22\ = CARRY(( VCC ) + ( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|op_8~29_sumout\)) # (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\inst|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\)))) ) + ( \inst|Div1|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~20_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~21_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_7~26_cout\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X53_Y16_N42
\inst|Div1|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( GND ) + ( (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_6~21_sumout\)) # 
-- (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[58]~18_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[58]~15_combout\)))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_7~22\ ))
-- \inst|Div1|auto_generated|divider|divider|op_7~18\ = CARRY(( GND ) + ( (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_6~21_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst|Mod0|auto_generated|divider|divider|StageOut[58]~18_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[58]~15_combout\)))) ) + ( \inst|Div1|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~15_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_7~22\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X53_Y16_N45
\inst|Div1|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( VCC ) + ( (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|StageOut[20]~9_combout\)) ) + ( \inst|Div1|auto_generated|divider|divider|op_7~18\ ))
-- \inst|Div1|auto_generated|divider|divider|op_7~14\ = CARRY(( VCC ) + ( (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_6~17_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ 
-- & (\inst|Div1|auto_generated|divider|divider|StageOut[20]~9_combout\)) ) + ( \inst|Div1|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[20]~9_combout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_7~18\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X53_Y16_N48
\inst|Div1|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_6~9_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[21]~2_combout\)) ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_7~14\ ))
-- \inst|Div1|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_6~9_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[21]~2_combout\)) ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[21]~2_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_7~14\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X53_Y16_N51
\inst|Div1|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( VCC ) + ( (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_6~13_sumout\)) # 
-- (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[22]~6_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[22]~4_combout\)))) ) + ( 
-- \inst|Div1|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[22]~4_combout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[22]~6_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_7~10\,
	cout => \inst|Div1|auto_generated|divider|divider|op_7~6_cout\);

-- Location: LABCELL_X53_Y16_N54
\inst|Div1|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X53_Y16_N3
\inst|Div1|auto_generated|divider|divider|StageOut[27]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[27]~0_combout\ = (\inst|Div1|auto_generated|divider|divider|op_6~9_sumout\ & !\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[27]~0_combout\);

-- Location: LABCELL_X52_Y16_N48
\inst|Div1|auto_generated|divider|divider|StageOut[27]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|StageOut[21]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[21]~2_combout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\);

-- Location: LABCELL_X52_Y16_N6
\inst|Div1|auto_generated|divider|divider|StageOut[26]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[26]~10_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|StageOut[20]~9_combout\ ) ) # ( 
-- !\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_6~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[20]~9_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[26]~10_combout\);

-- Location: LABCELL_X53_Y16_N9
\inst|Div1|auto_generated|divider|divider|StageOut[25]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[25]~12_combout\ = ( \inst|Mod0|auto_generated|divider|divider|StageOut[58]~18_combout\ & ( (\inst|Div1|auto_generated|divider|divider|op_6~21_sumout\) # 
-- (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\) ) ) # ( !\inst|Mod0|auto_generated|divider|divider|StageOut[58]~18_combout\ & ( (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\inst|Div1|auto_generated|divider|divider|op_6~21_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[58]~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~15_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[58]~18_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[25]~12_combout\);

-- Location: LABCELL_X53_Y16_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[57]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[57]~19_combout\ = ( \inst|Mod0|auto_generated|divider|divider|op_8~29_sumout\ & ( !\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[57]~19_combout\);

-- Location: LABCELL_X53_Y16_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[57]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[57]~22_combout\ = ( \inst|Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\ & ( \inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ ) ) # ( 
-- !\inst|Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\ & ( (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \inst|Mod0|auto_generated|divider|divider|StageOut[48]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~21_combout\,
	dataf => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[48]~20_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[57]~22_combout\);

-- Location: LABCELL_X53_Y16_N12
\inst|Div1|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Div1|auto_generated|divider|divider|op_8~26_cout\);

-- Location: LABCELL_X53_Y16_N15
\inst|Div1|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( (!\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\inst|Mod0|auto_generated|divider|divider|op_8~33_sumout\))) # (\inst|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\inst|atual[0]~2_combout\)) ) + ( VCC ) + ( \inst|Div1|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \inst|ALT_INV_atual[0]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_8~26_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_8~22_cout\);

-- Location: LABCELL_X53_Y16_N18
\inst|Div1|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( (!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_7~21_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\inst|Mod0|auto_generated|divider|divider|StageOut[57]~22_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[57]~19_combout\)))) ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	datac => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~19_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[57]~22_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_8~22_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_8~18_cout\);

-- Location: LABCELL_X53_Y16_N21
\inst|Div1|auto_generated|divider|divider|op_8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_8~14_cout\ = CARRY(( VCC ) + ( (!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_7~17_sumout\))) # 
-- (\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|StageOut[25]~12_combout\)) ) + ( \inst|Div1|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[25]~12_combout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_8~18_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_8~14_cout\);

-- Location: LABCELL_X53_Y16_N24
\inst|Div1|auto_generated|divider|divider|op_8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_8~10_cout\ = CARRY(( (!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Div1|auto_generated|divider|divider|op_7~13_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[26]~10_combout\)) ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_8~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[26]~10_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_8~14_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_8~10_cout\);

-- Location: LABCELL_X53_Y16_N27
\inst|Div1|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_7~9_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\inst|Div1|auto_generated|divider|divider|StageOut[27]~3_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[27]~0_combout\)))) ) + ( VCC ) + ( \inst|Div1|auto_generated|divider|divider|op_8~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[27]~0_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_StageOut[27]~3_combout\,
	cin => \inst|Div1|auto_generated|divider|divider|op_8~10_cout\,
	cout => \inst|Div1|auto_generated|divider|divider|op_8~6_cout\);

-- Location: LABCELL_X53_Y16_N30
\inst|Div1|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Div1|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \inst|Div1|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X52_Y17_N12
\inst|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\inst|button_pressed~combout\ & (\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ $ (!\inst|Div1|auto_generated|divider|divider|op_8~1_sumout\)))) ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ( (!\inst|button_pressed~combout\ & ((!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\) # (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\))) ) ) ) # ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( !\inst|button_pressed~combout\ ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- !\inst|button_pressed~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000101010000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_button_pressed~combout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst|Mux15~0_combout\);

-- Location: LABCELL_X52_Y17_N30
\inst|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\inst|button_pressed~combout\ & (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ $ (!\inst|Div1|auto_generated|divider|divider|op_8~1_sumout\)))) ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ( (!\inst|button_pressed~combout\ & ((!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\) # (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\))) ) ) ) # ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( !\inst|button_pressed~combout\ ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- !\inst|button_pressed~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000101010000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_button_pressed~combout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst|Mux16~0_combout\);

-- Location: LABCELL_X52_Y17_N24
\inst|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\inst|button_pressed~combout\ & (!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & \inst|Div1|auto_generated|divider|divider|op_8~1_sumout\))) ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- (!\inst|button_pressed~combout\ & ((!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\) # (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\))) ) ) ) # ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( !\inst|button_pressed~combout\ ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- !\inst|button_pressed~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000101010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_button_pressed~combout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst|Mux17~0_combout\);

-- Location: LABCELL_X52_Y17_N54
\inst|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\inst|button_pressed~combout\ & ((!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & !\inst|Div1|auto_generated|divider|divider|op_8~1_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ $ 
-- (!\inst|Div1|auto_generated|divider|divider|op_8~1_sumout\))))) ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\inst|button_pressed~combout\ & 
-- ((!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\) # (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\))) ) ) ) # ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ( !\inst|button_pressed~combout\ ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( !\inst|button_pressed~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000101010001000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_button_pressed~combout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst|Mux18~0_combout\);

-- Location: LABCELL_X52_Y17_N36
\inst|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\inst|button_pressed~combout\ & ((!\inst|Div1|auto_generated|divider|divider|op_8~1_sumout\) # 
-- ((\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & !\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\)))) ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- (!\inst|button_pressed~combout\ & ((!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\) # ((!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\) # (!\inst|Div1|auto_generated|divider|divider|op_8~1_sumout\)))) ) ) ) # ( 
-- \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( !\inst|button_pressed~combout\ ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( !\inst|button_pressed~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010001010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_button_pressed~combout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst|Mux19~0_combout\);

-- Location: LABCELL_X52_Y17_N6
\inst|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\inst|button_pressed~combout\ & ((!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((!\inst|Div1|auto_generated|divider|divider|op_8~1_sumout\) # (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\))) # (\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- !\inst|Div1|auto_generated|divider|divider|op_8~1_sumout\)))) ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\inst|button_pressed~combout\ & 
-- ((!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\) # (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\))) ) ) ) # ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ( !\inst|button_pressed~combout\ ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( !\inst|button_pressed~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000101010001000101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_button_pressed~combout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst|Mux20~0_combout\);

-- Location: LABCELL_X52_Y17_N0
\inst|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux21~0_combout\ = ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( ((!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\ & !\inst|Div1|auto_generated|divider|divider|op_8~1_sumout\)) # (\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\))) # 
-- (\inst|button_pressed~combout\) ) ) ) # ( !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ & ( ((!\inst|Div1|auto_generated|divider|divider|op_7~1_sumout\) # 
-- (!\inst|Div1|auto_generated|divider|divider|op_6~1_sumout\)) # (\inst|button_pressed~combout\) ) ) ) # ( \inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ ) ) # ( 
-- !\inst|Div1|auto_generated|divider|divider|op_5~1_sumout\ & ( !\inst|Div1|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111101111111011101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_button_pressed~combout\,
	datab => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst|Div1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \inst|Mux21~0_combout\);

-- Location: LABCELL_X50_Y19_N21
\inst|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = ( !\inst|estado.init~2_combout\ & ( (\inst|estado.retorna~2_combout\ & \inst|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_estado.retorna~2_combout\,
	datad => \inst|ALT_INV_Equal1~0_combout\,
	dataf => \inst|ALT_INV_estado.init~2_combout\,
	combout => \inst|Selector3~0_combout\);

-- Location: LABCELL_X52_Y19_N18
\inst|estado~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado~3_combout\ = ( \inst|atual~53_combout\ ) # ( !\inst|atual~53_combout\ & ( (!\inst|estado.recebe~q\ & \inst|estado.retorna~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_estado.recebe~q\,
	datac => \inst|ALT_INV_estado.retorna~2_combout\,
	dataf => \inst|ALT_INV_atual~53_combout\,
	combout => \inst|estado~3_combout\);

-- Location: LABCELL_X52_Y19_N9
\inst|estado.retorna~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.retorna~1_combout\ = ( \inst|estado.init~6_combout\ & ( (\inst|estado~3_combout\ & !\R~input_o\) ) ) # ( !\inst|estado.init~6_combout\ & ( (\inst|estado.retorna~1_combout\ & !\R~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_estado~3_combout\,
	datac => \inst|ALT_INV_estado.retorna~1_combout\,
	datad => \ALT_INV_R~input_o\,
	dataf => \inst|ALT_INV_estado.init~6_combout\,
	combout => \inst|estado.retorna~1_combout\);

-- Location: MLABCELL_X49_Y19_N6
\inst|estado~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado~2_combout\ = ( \inst|LessThan0~2_combout\ & ( !\inst|estado.retorna~2_combout\ & ( (\inst|Mux0~1_combout\ & (\inst|LessThan0~3_combout\ & ((!\inst|Mux5~1_combout\) # (\inst|LessThan0~0_combout\)))) ) ) ) # ( !\inst|LessThan0~2_combout\ & ( 
-- !\inst|estado.retorna~2_combout\ & ( \inst|Mux0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux5~1_combout\,
	datab => \inst|ALT_INV_LessThan0~0_combout\,
	datac => \inst|ALT_INV_Mux0~1_combout\,
	datad => \inst|ALT_INV_LessThan0~3_combout\,
	datae => \inst|ALT_INV_LessThan0~2_combout\,
	dataf => \inst|ALT_INV_estado.retorna~2_combout\,
	combout => \inst|estado~2_combout\);

-- Location: MLABCELL_X49_Y19_N0
\inst|estado.retorna~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.retorna~3_combout\ = ( \inst|estado~2_combout\ & ( !\inst|Selector3~0_combout\ $ (!\inst|estado.retorna~1_combout\) ) ) # ( !\inst|estado~2_combout\ & ( !\inst|estado.retorna~1_combout\ $ (((!\inst|estado.recebe~q\ & 
-- !\inst|Selector3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_estado.recebe~q\,
	datac => \inst|ALT_INV_Selector3~0_combout\,
	datad => \inst|ALT_INV_estado.retorna~1_combout\,
	dataf => \inst|ALT_INV_estado~2_combout\,
	combout => \inst|estado.retorna~3_combout\);

-- Location: FF_X49_Y19_N2
\inst|estado.retorna~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|estado.retorna~3_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.retorna~_emulated_q\);

-- Location: LABCELL_X50_Y19_N30
\inst|estado.retorna~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.retorna~2_combout\ = ( \inst|estado~3_combout\ & ( (!\R~input_o\ & ((!\inst|estado.retorna~_emulated_q\ $ (!\inst|estado.retorna~1_combout\)) # (\inst|estado.init~6_combout\))) ) ) # ( !\inst|estado~3_combout\ & ( (!\R~input_o\ & 
-- (!\inst|estado.init~6_combout\ & (!\inst|estado.retorna~_emulated_q\ $ (!\inst|estado.retorna~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000000101010101000100010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datab => \inst|ALT_INV_estado.init~6_combout\,
	datac => \inst|ALT_INV_estado.retorna~_emulated_q\,
	datad => \inst|ALT_INV_estado.retorna~1_combout\,
	dataf => \inst|ALT_INV_estado~3_combout\,
	combout => \inst|estado.retorna~2_combout\);

-- Location: LABCELL_X50_Y19_N48
\inst|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = ( !\inst|estado.init~2_combout\ & ( \inst|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Equal1~0_combout\,
	dataf => \inst|ALT_INV_estado.init~2_combout\,
	combout => \inst|Selector3~1_combout\);

-- Location: LABCELL_X48_Y19_N12
\inst|estado~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado~4_combout\ = ( \inst|estado.refri~2_combout\ & ( \inst|Equal0~0_combout\ & ( (!\inst|estado.recebe~q\) # ((\inst|atual[6]~22_combout\ & (\inst|atual[5]~26_combout\ & !\inst|atual[4]~30_combout\))) ) ) ) # ( !\inst|estado.refri~2_combout\ & ( 
-- \inst|Equal0~0_combout\ & ( (\inst|atual[6]~22_combout\ & (\inst|atual[5]~26_combout\ & (!\inst|atual[4]~30_combout\ & \inst|estado.recebe~q\))) ) ) ) # ( \inst|estado.refri~2_combout\ & ( !\inst|Equal0~0_combout\ & ( !\inst|estado.recebe~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000100001111111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[6]~22_combout\,
	datab => \inst|ALT_INV_atual[5]~26_combout\,
	datac => \inst|ALT_INV_atual[4]~30_combout\,
	datad => \inst|ALT_INV_estado.recebe~q\,
	datae => \inst|ALT_INV_estado.refri~2_combout\,
	dataf => \inst|ALT_INV_Equal0~0_combout\,
	combout => \inst|estado~4_combout\);

-- Location: LABCELL_X48_Y19_N45
\inst|estado.refri~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.refri~1_combout\ = ( \inst|estado~4_combout\ & ( (!\R~input_o\ & ((\inst|estado.refri~1_combout\) # (\inst|estado.init~6_combout\))) ) ) # ( !\inst|estado~4_combout\ & ( (!\R~input_o\ & (!\inst|estado.init~6_combout\ & 
-- \inst|estado.refri~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_R~input_o\,
	datac => \inst|ALT_INV_estado.init~6_combout\,
	datad => \inst|ALT_INV_estado.refri~1_combout\,
	dataf => \inst|ALT_INV_estado~4_combout\,
	combout => \inst|estado.refri~1_combout\);

-- Location: LABCELL_X50_Y19_N42
\inst|estado.refri~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.refri~3_combout\ = ( \inst|Selector1~1_combout\ & ( !\inst|estado.refri~2_combout\ $ (!\inst|estado.refri~1_combout\) ) ) # ( !\inst|Selector1~1_combout\ & ( !\inst|estado.refri~1_combout\ $ (((!\inst|estado.refri~2_combout\) # 
-- (!\inst|Selector3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_estado.refri~2_combout\,
	datac => \inst|ALT_INV_Selector3~1_combout\,
	datad => \inst|ALT_INV_estado.refri~1_combout\,
	dataf => \inst|ALT_INV_Selector1~1_combout\,
	combout => \inst|estado.refri~3_combout\);

-- Location: FF_X50_Y19_N44
\inst|estado.refri~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C~inputCLKENA0_outclk\,
	d => \inst|estado.refri~3_combout\,
	clrn => \inst|ALT_INV_estado.recebe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.refri~_emulated_q\);

-- Location: LABCELL_X50_Y19_N51
\inst|estado.refri~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|estado.refri~2_combout\ = ( \inst|estado~4_combout\ & ( (!\R~input_o\ & ((!\inst|estado.refri~_emulated_q\ $ (!\inst|estado.refri~1_combout\)) # (\inst|estado.init~6_combout\))) ) ) # ( !\inst|estado~4_combout\ & ( (!\R~input_o\ & 
-- (!\inst|estado.init~6_combout\ & (!\inst|estado.refri~_emulated_q\ $ (!\inst|estado.refri~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000101010100010100010101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R~input_o\,
	datab => \inst|ALT_INV_estado.refri~_emulated_q\,
	datac => \inst|ALT_INV_estado.init~6_combout\,
	datad => \inst|ALT_INV_estado.refri~1_combout\,
	dataf => \inst|ALT_INV_estado~4_combout\,
	combout => \inst|estado.refri~2_combout\);

-- Location: LABCELL_X50_Y18_N30
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( \inst|atual[4]~30_combout\ ) + ( !VCC ) + ( !VCC ))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( \inst|atual[4]~30_combout\ ) + ( !VCC ) + ( !VCC ))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[4]~30_combout\,
	cin => GND,
	sharein => GND,
	sumout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: LABCELL_X50_Y18_N33
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ = SUM(( \inst|atual[5]~26_combout\ ) + ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ = CARRY(( \inst|atual[5]~26_combout\ ) + ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[5]~26_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~18\,
	shareout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~19\);

-- Location: LABCELL_X50_Y18_N36
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !\inst|atual[6]~22_combout\ ) + ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ ))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !\inst|atual[6]~22_combout\ ) + ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ ))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(\inst|atual[6]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[6]~22_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~18\,
	sharein => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~19\,
	sumout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: LABCELL_X50_Y18_N39
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\ = SUM(( \inst|atual[7]~18_combout\ ) + ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~10\ = CARRY(( \inst|atual[7]~18_combout\ ) + ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[7]~18_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~10\,
	shareout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~11\);

-- Location: LABCELL_X50_Y18_N42
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~11\ ) + ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~10\,
	sharein => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~11\,
	sumout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X50_Y18_N18
\inst|Mod1|auto_generated|divider|divider|StageOut[27]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[27]~14_combout\ = ( !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~9_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[27]~14_combout\);

-- Location: LABCELL_X52_Y18_N48
\inst|Mod1|auto_generated|divider|divider|StageOut[27]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[27]~15_combout\ = ( \inst|atual[7]~18_combout\ & ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_atual[7]~18_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[27]~15_combout\);

-- Location: LABCELL_X52_Y17_N18
\inst|Mod1|auto_generated|divider|divider|StageOut[25]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[25]~27_combout\ = ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \inst|atual[5]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[5]~26_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[25]~27_combout\);

-- Location: LABCELL_X50_Y18_N3
\inst|Mod1|auto_generated|divider|divider|StageOut[25]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[25]~26_combout\ = ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ & ( !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[25]~26_combout\);

-- Location: LABCELL_X50_Y17_N24
\inst|Mod1|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Mod1|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X50_Y17_N27
\inst|Mod1|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( \inst|atual[3]~14_combout\ ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_5~26_cout\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_5~6\ = CARRY(( \inst|atual[3]~14_combout\ ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[3]~14_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X50_Y17_N30
\inst|Mod1|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( GND ) + ( (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst|atual[4]~30_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_5~6\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_5~10\ = CARRY(( GND ) + ( (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst|atual[4]~30_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[4]~30_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_5~6\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X50_Y17_N33
\inst|Mod1|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (\inst|Mod1|auto_generated|divider|divider|StageOut[25]~26_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[25]~27_combout\) ) + ( VCC ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_5~10\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_5~22\ = CARRY(( (\inst|Mod1|auto_generated|divider|divider|StageOut[25]~26_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[25]~27_combout\) ) + ( VCC ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~27_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~26_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_5~10\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X50_Y17_N36
\inst|Mod1|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( GND ) + ( (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst|atual[6]~22_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_5~22\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_5~18\ = CARRY(( GND ) + ( (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\inst|atual[6]~22_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_atual[6]~22_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_5~22\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X50_Y17_N39
\inst|Mod1|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\inst|Mod1|auto_generated|divider|divider|StageOut[27]~15_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[27]~14_combout\) ) + ( VCC ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_5~18\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_5~14\ = CARRY(( (\inst|Mod1|auto_generated|divider|divider|StageOut[27]~15_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[27]~14_combout\) ) + ( VCC ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[27]~14_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[27]~15_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_5~18\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X50_Y17_N42
\inst|Mod1|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Mod1|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|op_5~14\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X50_Y19_N24
\inst|Mod1|auto_generated|divider|divider|StageOut[26]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[26]~20_combout\ = ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ & ( !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[26]~20_combout\);

-- Location: LABCELL_X52_Y19_N15
\inst|Mod1|auto_generated|divider|divider|StageOut[26]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[26]~21_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \inst|atual[6]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \inst|ALT_INV_atual[6]~22_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[26]~21_combout\);

-- Location: LABCELL_X52_Y17_N51
\inst|Mod1|auto_generated|divider|divider|StageOut[25]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[25]~28_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[25]~27_combout\ ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[25]~27_combout\ & ( 
-- \inst|Mod1|auto_generated|divider|divider|StageOut[25]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~26_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~27_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[25]~28_combout\);

-- Location: LABCELL_X50_Y18_N15
\inst|Mod1|auto_generated|divider|divider|StageOut[24]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\ = ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \inst|atual[4]~30_combout\ ) ) # ( 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	datad => \inst|ALT_INV_atual[4]~30_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\);

-- Location: LABCELL_X50_Y17_N0
\inst|Mod1|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Mod1|auto_generated|divider|divider|op_6~30_cout\);

-- Location: LABCELL_X50_Y17_N3
\inst|Mod1|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( \inst|atual[2]~10_combout\ ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_6~30_cout\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_6~6\ = CARRY(( \inst|atual[2]~10_combout\ ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[2]~10_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X50_Y17_N6
\inst|Mod1|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_5~5_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\inst|atual[3]~14_combout\)) ) + ( GND ) + ( \inst|Mod1|auto_generated|divider|divider|op_6~6\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_5~5_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\inst|atual[3]~14_combout\)) ) + ( GND ) + ( \inst|Mod1|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[3]~14_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_6~6\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X50_Y17_N9
\inst|Mod1|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_6~10\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_6~14\ = CARRY(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_5~9_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_6~10\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X50_Y17_N12
\inst|Mod1|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( GND ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|StageOut[25]~28_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_6~14\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_6~26\ = CARRY(( GND ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_5~21_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ 
-- & (\inst|Mod1|auto_generated|divider|divider|StageOut[25]~28_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~28_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_6~14\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X50_Y17_N15
\inst|Mod1|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|op_5~17_sumout\)) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[26]~21_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[26]~20_combout\)))) ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_6~26\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_6~22\ = CARRY(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|op_5~17_sumout\)) # (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\inst|Mod1|auto_generated|divider|divider|StageOut[26]~21_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[26]~20_combout\)))) ) + ( \inst|Mod1|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[26]~20_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[26]~21_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_6~26\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X50_Y17_N18
\inst|Mod1|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_5~13_sumout\)))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[27]~15_combout\)) # (\inst|Mod1|auto_generated|divider|divider|StageOut[27]~14_combout\))) ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_6~22\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_6~18\ = CARRY(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_5~13_sumout\)))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[27]~15_combout\)) # (\inst|Mod1|auto_generated|divider|divider|StageOut[27]~14_combout\))) ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[27]~14_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[27]~15_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_6~22\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X50_Y17_N21
\inst|Mod1|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Mod1|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|op_6~18\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: MLABCELL_X49_Y17_N30
\inst|Mod1|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Mod1|auto_generated|divider|divider|op_7~34_cout\);

-- Location: MLABCELL_X49_Y17_N33
\inst|Mod1|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( \inst|atual[1]~6_combout\ ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~34_cout\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_7~6\ = CARRY(( \inst|atual[1]~6_combout\ ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[1]~6_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_7~6\);

-- Location: MLABCELL_X49_Y17_N36
\inst|Mod1|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|atual[2]~10_combout\)) ) + ( GND ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~6\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|atual[2]~10_combout\)) ) + ( GND ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|ALT_INV_atual[2]~10_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_7~6\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X52_Y17_N21
\inst|Mod1|auto_generated|divider|divider|StageOut[36]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[36]~13_combout\ = ( !\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ( \inst|Mod1|auto_generated|divider|divider|op_5~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[36]~13_combout\);

-- Location: LABCELL_X50_Y17_N57
\inst|Mod1|auto_generated|divider|divider|StageOut[36]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[36]~16_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[27]~14_combout\ & ( \inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ ) ) # ( 
-- !\inst|Mod1|auto_generated|divider|divider|StageOut[27]~14_combout\ & ( (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & \inst|Mod1|auto_generated|divider|divider|StageOut[27]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[27]~15_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[27]~14_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[36]~16_combout\);

-- Location: LABCELL_X50_Y17_N54
\inst|Mod1|auto_generated|divider|divider|StageOut[35]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[35]~22_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[26]~21_combout\ & ( (\inst|Mod1|auto_generated|divider|divider|op_5~17_sumout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[26]~21_combout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|op_5~17_sumout\)) # (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[26]~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[26]~20_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[26]~21_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[35]~22_combout\);

-- Location: MLABCELL_X49_Y17_N15
\inst|Mod1|auto_generated|divider|divider|StageOut[34]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[34]~25_combout\ = (\inst|Mod1|auto_generated|divider|divider|op_5~21_sumout\ & !\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[34]~25_combout\);

-- Location: LABCELL_X52_Y17_N48
\inst|Mod1|auto_generated|divider|divider|StageOut[34]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[34]~29_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[25]~28_combout\ & ( \inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~28_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[34]~29_combout\);

-- Location: LABCELL_X50_Y17_N48
\inst|Mod1|auto_generated|divider|divider|StageOut[33]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[33]~9_combout\ = ( \inst|Mod1|auto_generated|divider|divider|op_5~9_sumout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|op_5~9_sumout\ & ( (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- \inst|Mod1|auto_generated|divider|divider|StageOut[24]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[33]~9_combout\);

-- Location: LABCELL_X50_Y17_N51
\inst|Mod1|auto_generated|divider|divider|StageOut[32]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\ = ( \inst|atual[3]~14_combout\ & ( (\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\) # (\inst|Mod1|auto_generated|divider|divider|op_5~5_sumout\) ) ) # ( 
-- !\inst|atual[3]~14_combout\ & ( (\inst|Mod1|auto_generated|divider|divider|op_5~5_sumout\ & !\inst|Mod1|auto_generated|divider|divider|op_5~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \inst|ALT_INV_atual[3]~14_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\);

-- Location: MLABCELL_X49_Y17_N39
\inst|Mod1|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_6~9_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\)) ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~10\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_6~9_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\)) ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~4_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_7~10\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_7~14\);

-- Location: MLABCELL_X49_Y17_N42
\inst|Mod1|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_6~13_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[33]~9_combout\)) ) + ( GND ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~14\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_6~13_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[33]~9_combout\)) ) + ( GND ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[33]~9_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_7~14\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_7~18\);

-- Location: MLABCELL_X49_Y17_N45
\inst|Mod1|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_6~25_sumout\)))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[34]~29_combout\)) # (\inst|Mod1|auto_generated|divider|divider|StageOut[34]~25_combout\))) ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_7~18\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_7~30\ = CARRY(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_6~25_sumout\)))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[34]~29_combout\)) # (\inst|Mod1|auto_generated|divider|divider|StageOut[34]~25_combout\))) ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[34]~25_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[34]~29_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_7~18\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_7~30\);

-- Location: MLABCELL_X49_Y17_N48
\inst|Mod1|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_6~21_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[35]~22_combout\)) ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~30\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_6~21_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[35]~22_combout\)) ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[35]~22_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_7~30\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_7~26\);

-- Location: MLABCELL_X49_Y17_N51
\inst|Mod1|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|op_6~17_sumout\)) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst|Mod1|auto_generated|divider|divider|StageOut[36]~16_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[36]~13_combout\)))) ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~26\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_7~22\ = CARRY(( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|op_6~17_sumout\)) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\inst|Mod1|auto_generated|divider|divider|StageOut[36]~16_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[36]~13_combout\)))) ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[36]~13_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[36]~16_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_7~26\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_7~22\);

-- Location: MLABCELL_X49_Y17_N54
\inst|Mod1|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Mod1|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|op_7~22\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: MLABCELL_X49_Y17_N24
\inst|Mod1|auto_generated|divider|divider|StageOut[40]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[40]~2_combout\ = ( \inst|atual[2]~10_combout\ & ( (\inst|Mod1|auto_generated|divider|divider|op_6~5_sumout\) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\) ) ) # ( 
-- !\inst|atual[2]~10_combout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & \inst|Mod1|auto_generated|divider|divider|op_6~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \inst|ALT_INV_atual[2]~10_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[40]~2_combout\);

-- Location: LABCELL_X48_Y17_N0
\inst|Mod1|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \inst|Mod1|auto_generated|divider|divider|op_8~38_cout\);

-- Location: LABCELL_X48_Y17_N3
\inst|Mod1|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( \inst|atual[0]~2_combout\ ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~38_cout\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_8~6\ = CARRY(( \inst|atual[0]~2_combout\ ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_atual[0]~2_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_8~38_cout\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_8~6\);

-- Location: LABCELL_X48_Y17_N6
\inst|Mod1|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( GND ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_7~5_sumout\))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|atual[1]~6_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~6\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_8~10\ = CARRY(( GND ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_7~5_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\inst|atual[1]~6_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|ALT_INV_atual[1]~6_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_8~6\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X48_Y17_N9
\inst|Mod1|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_7~9_sumout\))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|StageOut[40]~2_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~10\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_8~14\ = CARRY(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_7~9_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[40]~2_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[40]~2_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_8~10\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_8~14\);

-- Location: MLABCELL_X49_Y17_N21
\inst|Mod1|auto_generated|divider|divider|StageOut[45]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[45]~12_combout\ = (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & \inst|Mod1|auto_generated|divider|divider|op_6~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[45]~12_combout\);

-- Location: MLABCELL_X49_Y17_N18
\inst|Mod1|auto_generated|divider|divider|StageOut[45]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[45]~17_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[36]~13_combout\ & ( \inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( 
-- !\inst|Mod1|auto_generated|divider|divider|StageOut[36]~13_combout\ & ( (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & \inst|Mod1|auto_generated|divider|divider|StageOut[36]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[36]~16_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[36]~13_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[45]~17_combout\);

-- Location: MLABCELL_X49_Y17_N3
\inst|Mod1|auto_generated|divider|divider|StageOut[44]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[44]~19_combout\ = (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & \inst|Mod1|auto_generated|divider|divider|op_6~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[44]~19_combout\);

-- Location: MLABCELL_X49_Y17_N12
\inst|Mod1|auto_generated|divider|divider|StageOut[44]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[44]~23_combout\ = (\inst|Mod1|auto_generated|divider|divider|StageOut[35]~22_combout\ & \inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[35]~22_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[44]~23_combout\);

-- Location: MLABCELL_X49_Y17_N6
\inst|Mod1|auto_generated|divider|divider|StageOut[43]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\ = ( \inst|Mod1|auto_generated|divider|divider|op_6~25_sumout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\) # 
-- ((\inst|Mod1|auto_generated|divider|divider|StageOut[34]~29_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[34]~25_combout\)) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|op_6~25_sumout\ & ( 
-- (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[34]~29_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[34]~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[34]~25_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[34]~29_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\);

-- Location: MLABCELL_X49_Y17_N0
\inst|Mod1|auto_generated|divider|divider|StageOut[42]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[42]~7_combout\ = (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & \inst|Mod1|auto_generated|divider|divider|op_6~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[42]~7_combout\);

-- Location: MLABCELL_X49_Y17_N27
\inst|Mod1|auto_generated|divider|divider|StageOut[42]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[42]~10_combout\ = (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & \inst|Mod1|auto_generated|divider|divider|StageOut[33]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[33]~9_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[42]~10_combout\);

-- Location: MLABCELL_X49_Y17_N9
\inst|Mod1|auto_generated|divider|divider|StageOut[41]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[41]~5_combout\ = (!\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_6~9_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[32]~4_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[41]~5_combout\);

-- Location: LABCELL_X48_Y17_N12
\inst|Mod1|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( GND ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|StageOut[41]~5_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~14\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_8~18\ = CARRY(( GND ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_7~13_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ 
-- & (\inst|Mod1|auto_generated|divider|divider|StageOut[41]~5_combout\)) ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[41]~5_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_8~14\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_8~18\);

-- Location: LABCELL_X48_Y17_N15
\inst|Mod1|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_7~17_sumout\)))) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\inst|Mod1|auto_generated|divider|divider|StageOut[42]~10_combout\)) # (\inst|Mod1|auto_generated|divider|divider|StageOut[42]~7_combout\))) ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~18\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_8~30\ = CARRY(( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_7~17_sumout\)))) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\inst|Mod1|auto_generated|divider|divider|StageOut[42]~10_combout\)) # (\inst|Mod1|auto_generated|divider|divider|StageOut[42]~7_combout\))) ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[42]~7_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[42]~10_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_8~18\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X48_Y17_N18
\inst|Mod1|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_7~29_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\)) ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~30\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_8~26\ = CARRY(( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|op_7~29_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\)) ) + ( VCC ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[43]~30_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_8~30\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X48_Y17_N21
\inst|Mod1|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_7~25_sumout\)))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[44]~23_combout\)) # (\inst|Mod1|auto_generated|divider|divider|StageOut[44]~19_combout\))) ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_8~26\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_8~22\ = CARRY(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_7~25_sumout\)))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[44]~23_combout\)) # (\inst|Mod1|auto_generated|divider|divider|StageOut[44]~19_combout\))) ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[44]~19_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[44]~23_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_8~26\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_8~22\);

-- Location: LABCELL_X48_Y17_N24
\inst|Mod1|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|op_7~21_sumout\)) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[45]~17_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[45]~12_combout\)))) ) + ( 
-- \inst|Mod1|auto_generated|divider|divider|op_8~22\ ))
-- \inst|Mod1|auto_generated|divider|divider|op_8~34\ = CARRY(( VCC ) + ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|op_7~21_sumout\)) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\inst|Mod1|auto_generated|divider|divider|StageOut[45]~17_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[45]~12_combout\)))) ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[45]~12_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[45]~17_combout\,
	cin => \inst|Mod1|auto_generated|divider|divider|op_8~22\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \inst|Mod1|auto_generated|divider|divider|op_8~34\);

-- Location: LABCELL_X48_Y17_N27
\inst|Mod1|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \inst|Mod1|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|op_8~34\,
	sumout => \inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X48_Y17_N57
\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[40]~2_combout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\inst|Mod1|auto_generated|divider|divider|op_8~13_sumout\)))) # (\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\)) # (\inst|Mod1|auto_generated|divider|divider|op_7~9_sumout\))) ) ) 
-- # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[40]~2_combout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_8~13_sumout\)))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|op_7~9_sumout\ & (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101000100000011110100010000001111011101110000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[40]~2_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\);

-- Location: LABCELL_X48_Y17_N54
\inst|Mod1|auto_generated|divider|divider|StageOut[62]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[62]~24_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[44]~23_combout\ & ( (\inst|Mod1|auto_generated|divider|divider|op_7~25_sumout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[44]~23_combout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\inst|Mod1|auto_generated|divider|divider|op_7~25_sumout\))) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|StageOut[44]~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[44]~19_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[44]~23_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[62]~24_combout\);

-- Location: LABCELL_X48_Y17_N39
\inst|Mod1|auto_generated|divider|divider|StageOut[63]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\ = ( \inst|Mod1|auto_generated|divider|divider|op_7~21_sumout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\) # 
-- ((\inst|Mod1|auto_generated|divider|divider|StageOut[45]~12_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[45]~17_combout\)) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|op_7~21_sumout\ & ( 
-- (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[45]~12_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[45]~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[45]~17_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[45]~12_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\);

-- Location: LABCELL_X48_Y17_N30
\inst|Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~2_combout\ = ( !\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((((!\inst|Mod1|auto_generated|divider|divider|op_8~33_sumout\))))) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[62]~24_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|op_7~29_sumout\)))) ) ) # ( \inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- ((((!\inst|Mod1|auto_generated|divider|divider|op_8~33_sumout\))))) # (\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[62]~24_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[63]~18_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111110000000111111111000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~24_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[63]~18_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[43]~30_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	datag => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	combout => \inst|Mux28~2_combout\);

-- Location: LABCELL_X48_Y17_N36
\inst|Mod1|auto_generated|divider|divider|StageOut[60]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[60]~11_combout\ = (!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((!\inst|Mod1|auto_generated|divider|divider|op_7~17_sumout\)))) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ 
-- & (!\inst|Mod1|auto_generated|divider|divider|StageOut[42]~10_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[42]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000100000111011000010000011101100001000001110110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[42]~10_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[42]~7_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[60]~11_combout\);

-- Location: LABCELL_X48_Y17_N42
\inst|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~0_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[60]~11_combout\ & ( \inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ( \inst|Mux28~2_combout\ ) ) ) # ( 
-- \inst|Mod1|auto_generated|divider|divider|StageOut[60]~11_combout\ & ( !\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_8~21_sumout\ & (\inst|Mux28~2_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|op_8~25_sumout\ & !\inst|Mod1|auto_generated|divider|divider|op_8~29_sumout\))) ) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[60]~11_combout\ & ( 
-- !\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_8~21_sumout\ & (\inst|Mux28~2_combout\ & (!\inst|Mod1|auto_generated|divider|divider|op_8~25_sumout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|op_8~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	datab => \inst|ALT_INV_Mux28~2_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	datae => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[60]~11_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \inst|Mux28~0_combout\);

-- Location: LABCELL_X48_Y17_N51
\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\ = ( \inst|Mod1|auto_generated|divider|divider|op_7~5_sumout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_8~9_sumout\)))) 
-- # (\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\) # ((\inst|atual[1]~6_combout\)))) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|op_7~5_sumout\ & ( 
-- (!\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\inst|Mod1|auto_generated|divider|divider|op_8~9_sumout\)))) # (\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\inst|atual[1]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101001110010111110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	datad => \inst|ALT_INV_atual[1]~6_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\);

-- Location: LABCELL_X53_Y17_N39
\inst|Mod1|auto_generated|divider|divider|StageOut[56]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\ = ( \inst|Mod1|auto_generated|divider|divider|op_8~5_sumout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\) # (\inst|atual[0]~2_combout\) ) ) # ( 
-- !\inst|Mod1|auto_generated|divider|divider|op_8~5_sumout\ & ( (\inst|atual[0]~2_combout\ & \inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_atual[0]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\);

-- Location: LABCELL_X48_Y17_N48
\inst|Mod1|auto_generated|divider|divider|StageOut[59]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ = ( \inst|Mod1|auto_generated|divider|divider|op_8~17_sumout\ & ( (!\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\) # ((!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|op_7~13_sumout\)) # (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[41]~5_combout\)))) ) ) # ( 
-- !\inst|Mod1|auto_generated|divider|divider|op_8~17_sumout\ & ( (\inst|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((!\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\inst|Mod1|auto_generated|divider|divider|op_7~13_sumout\)) # 
-- (\inst|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[41]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[41]~5_combout\,
	dataf => \inst|Mod1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\);

-- Location: LABCELL_X53_Y17_N42
\inst|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( ((!\inst|Mux28~0_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\)) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\) ) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( (!\inst|Mux28~0_combout\) # 
-- ((!\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ $ (!\inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011101100110111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[58]~3_combout\,
	datab => \inst|ALT_INV_Mux28~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[57]~1_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datae => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	dataf => \inst|ALT_INV_button_pressed~combout\,
	combout => \inst|Mux22~0_combout\);

-- Location: LABCELL_X53_Y17_N0
\inst|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( ((!\inst|Mux28~0_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\)) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\) ) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( (!\inst|Mux28~0_combout\) # 
-- ((\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\ $ (!\inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111011100110111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[58]~3_combout\,
	datab => \inst|ALT_INV_Mux28~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[57]~1_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datae => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	dataf => \inst|ALT_INV_button_pressed~combout\,
	combout => \inst|Mux23~0_combout\);

-- Location: LABCELL_X53_Y17_N18
\inst|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux24~0_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( ((!\inst|Mux28~0_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\)) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\) ) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( (!\inst|Mux28~0_combout\) # 
-- ((!\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ & (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\ & !\inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011001100110111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[58]~3_combout\,
	datab => \inst|ALT_INV_Mux28~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[57]~1_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datae => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	dataf => \inst|ALT_INV_button_pressed~combout\,
	combout => \inst|Mux24~0_combout\);

-- Location: LABCELL_X53_Y17_N48
\inst|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( ((!\inst|Mux28~0_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\)) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\) ) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( (!\inst|Mux28~0_combout\) # 
-- ((!\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\ & \inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\)) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\ $ (\inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011101101110111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[58]~3_combout\,
	datab => \inst|ALT_INV_Mux28~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[57]~1_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datae => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	dataf => \inst|ALT_INV_button_pressed~combout\,
	combout => \inst|Mux25~0_combout\);

-- Location: LABCELL_X53_Y17_N6
\inst|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~0_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( ((!\inst|Mux28~0_combout\) # ((\inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\))) # (\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\) ) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( 
-- (!\inst|Mux28~0_combout\) # (((\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ & !\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\)) # (\inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011111111110111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[58]~3_combout\,
	datab => \inst|ALT_INV_Mux28~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[57]~1_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datae => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	dataf => \inst|ALT_INV_button_pressed~combout\,
	combout => \inst|Mux26~0_combout\);

-- Location: LABCELL_X53_Y17_N12
\inst|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~0_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( ((!\inst|Mux28~0_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\)) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\) ) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( (!\inst|Mux28~0_combout\) # 
-- ((!\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\))) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ & (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\ & \inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011101111110111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[58]~3_combout\,
	datab => \inst|ALT_INV_Mux28~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[57]~1_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datae => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	dataf => \inst|ALT_INV_button_pressed~combout\,
	combout => \inst|Mux27~0_combout\);

-- Location: LABCELL_X53_Y17_N30
\inst|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~1_combout\ = ( \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( \inst|button_pressed~combout\ ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( \inst|button_pressed~combout\ ) ) # ( 
-- \inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( ((!\inst|Mux28~0_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\)) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\) ) ) ) # ( !\inst|Mod1|auto_generated|divider|divider|StageOut[59]~6_combout\ & ( !\inst|button_pressed~combout\ & ( (!\inst|Mux28~0_combout\) # 
-- ((!\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\)) # (\inst|Mod1|auto_generated|divider|divider|StageOut[58]~3_combout\ & 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[57]~1_combout\ & \inst|Mod1|auto_generated|divider|divider|StageOut[56]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101101110111111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[58]~3_combout\,
	datab => \inst|ALT_INV_Mux28~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[57]~1_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[56]~0_combout\,
	datae => \inst|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[59]~6_combout\,
	dataf => \inst|ALT_INV_button_pressed~combout\,
	combout => \inst|Mux28~1_combout\);

-- Location: LABCELL_X39_Y36_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


