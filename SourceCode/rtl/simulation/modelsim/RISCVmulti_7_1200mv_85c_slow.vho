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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/04/2026 09:36:44"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ExecUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	LogicFN : IN std_logic_vector(1 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	FuncClass : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic;
	AddNSub : IN std_logic;
	Y : OUT std_logic_vector(63 DOWNTO 0);
	Zero : OUT std_logic;
	AltB : OUT std_logic;
	AltBu : OUT std_logic
	);
END ExecUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddNSub	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ExecUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_LogicFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_FuncClass : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_AddNSub : std_logic;
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \AddNSub~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[31]~0_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[30]~1_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[29]~31_combout\ : std_logic;
SIGNAL \Adder0|P[59]~1_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[28]~30_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]~5_combout\ : std_logic;
SIGNAL \Adder0|P[57]~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[23]~6_combout\ : std_logic;
SIGNAL \Adder0|P[47]~5_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[22]~7_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~0_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[21]~9_combout\ : std_logic;
SIGNAL \Adder0|P[43]~7_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[20]~8_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]~2_combout\ : std_logic;
SIGNAL \Adder0|P[45]~6_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~1_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[18]~11_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \Adder0|P[39]~9_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[19]~10_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~2_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[17]~12_combout\ : std_logic;
SIGNAL \Adder0|P[35]~11_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[16]~13_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|G_in_half~0_combout\ : std_logic;
SIGNAL \Adder0|P[37]~10_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~4_combout\ : std_logic;
SIGNAL \Adder0|P[41]~8_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~2_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[14]~15_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~10_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[15]~14_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|G_in_half~1_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|G_out~3_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[12]~17_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[13]~16_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~1_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[7]~18_combout\ : std_logic;
SIGNAL \Adder0|P[15]~22_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~15_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[4]~19_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Adder0|P[13]~20_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Adder0|P[11]~21_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~8_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[6]~20_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[5]~21_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \Adder0|P[19]~14_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Adder0|P[23]~13_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Adder0|P[21]~12_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~5_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|G_out~2_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\ : std_logic;
SIGNAL \Adder0|P[9]~19_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[2]~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Adder0|P[3]~17_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[0]~25_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[1]~24_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Adder0|P[7]~16_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[2]~23_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[3]~22_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[0]~6_combout\ : std_logic;
SIGNAL \Adder0|P[5]~15_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[0]~7_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out~0_combout\ : std_logic;
SIGNAL \Adder0|P[25]~23_combout\ : std_logic;
SIGNAL \Adder0|P[27]~24_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[9]~28_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[8]~29_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~8_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[10]~27_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[11]~26_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~7_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|G_out~1_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[4]~5_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|P_out[2]~0_combout\ : std_logic;
SIGNAL \Adder0|P[1]~18_combout\ : std_logic;
SIGNAL \Adder0|Carries~8_combout\ : std_logic;
SIGNAL \Adder0|Carries~9_combout\ : std_logic;
SIGNAL \Adder0|Carries~10_combout\ : std_logic;
SIGNAL \Adder0|Cout~0_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \Adder0|P[55]~4_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \Adder0|P[53]~2_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~12_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \Adder0|P[51]~3_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|G_out~4_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~13_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[25]~5_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[24]~4_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]~1_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[26]~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_in_half[27]~2_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~1_combout\ : std_logic;
SIGNAL \Adder0|Cout~1_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|G_out~0_combout\ : std_logic;
SIGNAL \Adder0|Cout~2_combout\ : std_logic;
SIGNAL \Adder0|P[63]~25_combout\ : std_logic;
SIGNAL \Adder0|Cout~3_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \ShiftUnit0|shamt[5]~0_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftUnit0|Equal2~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[37]~55_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_input[63]~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[37]~56_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[39]~53_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[39]~54_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~30_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[38]~57_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[38]~58_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[36]~59_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[36]~60_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~31_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~32_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[44]~51_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[44]~52_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[46]~49_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[46]~50_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~28_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[47]~45_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[47]~46_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[45]~47_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[45]~48_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~27_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~29_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~5_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[35]~69_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[35]~70_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[34]~71_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[34]~72_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~36_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_input[32]~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~37_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[33]~73_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[33]~74_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~38_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~39_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[43]~61_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[43]~62_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[41]~63_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[41]~64_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~33_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[42]~65_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[42]~66_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[40]~67_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[40]~68_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~34_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~35_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~6_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~7_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[1]~83_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_input[63]~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~9_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~10_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[3]~84_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[2]~85_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~46_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~11_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[6]~87_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[7]~86_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~47_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[4]~89_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[5]~88_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~48_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~49_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~12_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[15]~75_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[13]~76_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~40_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[12]~78_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[14]~77_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~41_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~42_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[9]~80_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[11]~79_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~43_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[8]~82_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[10]~81_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~44_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~45_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~8_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~13_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[26]~35_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[24]~36_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~19_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[27]~33_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[25]~34_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~18_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~20_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~15_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[30]~32_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~16_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[29]~30_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[28]~31_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~14_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~17_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[18]~43_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[16]~44_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~25_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[19]~41_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[17]~42_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~24_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~26_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[22]~39_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[20]~40_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~22_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[23]~37_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[21]~38_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~21_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~23_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux47~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[61]~16_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[61]~17_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[60]~18_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[60]~19_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~6_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~7_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[62]~20_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[62]~21_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~8_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~9_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[59]~22_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[59]~23_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[57]~24_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[57]~25_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~10_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[58]~26_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[58]~27_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[56]~28_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[56]~29_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~11_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~12_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~13_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[52]~6_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[52]~7_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[54]~4_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[54]~5_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[53]~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[53]~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[55]~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[55]~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[49]~10_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[49]~11_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[51]~8_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[51]~9_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[48]~14_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[48]~15_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[50]~12_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_in[50]~13_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~4_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~5_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~4_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~14_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux64~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux64~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux0~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux64~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux64~3_combout\ : std_logic;
SIGNAL \Y_arthmetic[0]~0_combout\ : std_logic;
SIGNAL \Y_arthmetic[0]~1_combout\ : std_logic;
SIGNAL \Y_arthmetic[0]~2_combout\ : std_logic;
SIGNAL \Adder0|P[31]~28_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[6]~7_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[30]~1_combout\ : std_logic;
SIGNAL \Adder0|P[29]~27_combout\ : std_logic;
SIGNAL \Adder0|Carries~13_combout\ : std_logic;
SIGNAL \Adder0|Carries~14_combout\ : std_logic;
SIGNAL \Adder0|Carries~11_combout\ : std_logic;
SIGNAL \Adder0|P[61]~26_combout\ : std_logic;
SIGNAL \Adder0|Carries~12_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~6_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[62]~0_combout\ : std_logic;
SIGNAL \Y_adder[63]~2_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LogicUnit0|Mux63~0_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~58_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~59_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~55_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~56_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~54_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~57_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux6~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~50_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~51_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~52_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~53_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~15_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~16_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~65_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~66_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~67_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~68_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux46~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~60_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~61_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~62_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~63_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~64_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~17_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~18_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux126~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~69_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~70_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~71_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~72_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~19_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~73_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~74_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~75_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~76_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~77_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~20_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux126~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~84_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~85_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~82_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~83_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux54~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~78_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux126~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux126~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~79_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~80_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~81_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux126~4_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux126~5_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux126~6_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|shift_ext~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux1~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux65~0_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux62~2_combout\ : std_logic;
SIGNAL \Mux62~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux5~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~90_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~91_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux5~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~88_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~89_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~86_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~87_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~21_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~22_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~96_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~97_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~94_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~95_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux45~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux33~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~92_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~93_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux37~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux109~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux125~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux125~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux125~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~106_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~107_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~108_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~111_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~112_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~109_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~110_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux53~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux125~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~102_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~103_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~104_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~105_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~24_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~100_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~101_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~98_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~99_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~23_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~25_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux125~4_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux125~5_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux66~0_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~117_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~118_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~119_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~120_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~28_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~121_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~122_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux44~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~29_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~126_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~125_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~31_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~124_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~123_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~30_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~32_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~129_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~128_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux52~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~127_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux124~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux124~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux124~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux4~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux4~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~115_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~116_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux4~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~113_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux7~114_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~26_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~27_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux124~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux67~0_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[2]~2_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Mux60~3_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux68~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux64~4_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux123~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux123~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux51~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~37_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux43~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~38_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux123~4_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~35_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~36_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~33_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~34_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux91~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux123~5_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux59~2_combout\ : std_logic;
SIGNAL \Mux59~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux69~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~43_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux42~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~44_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux50~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux122~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux122~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~39_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~40_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~41_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~42_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux90~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux122~4_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Adder0|Carries~15_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[4]~3_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \Adder0|Carries~30_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux33~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux41~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~49_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux49~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux121~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux121~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~45_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~46_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~47_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~48_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux89~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux121~4_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux70~0_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux71~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux48~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux120~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~54_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux40~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~55_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux120~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~53_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~50_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~51_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux0~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~52_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux88~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux120~4_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[6]~4_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~59_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~60_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~61_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~62_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~57_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~56_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~58_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux117~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux55~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux117~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux119~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux119~1_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux104~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux72~2_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[8]~5_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux73~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~64_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~63_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~65_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux118~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~67_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~68_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~66_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~69_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux118~1_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux117~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~70_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~71_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~73_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~74_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~72_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~75_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux117~3_combout\ : std_logic;
SIGNAL \Adder0|Carries~16_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux74~0_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux75~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~79_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~80_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~81_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~82_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~77_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~76_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~78_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux116~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux116~1_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[10]~6_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9_combout\ : std_logic;
SIGNAL \Adder0|Carries~17_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux115~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~83_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~84_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~85_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~86_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~87_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux115~1_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux76~0_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[12]~7_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~89_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~90_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~91_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~92_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~88_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux114~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux114~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux77~0_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux78~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~95_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~96_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~97_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~98_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~93_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~94_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux113~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux113~1_combout\ : std_logic;
SIGNAL \Adder0|Carries~18_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~99_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux112~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~100_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~101_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~102_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~103_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~104_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux112~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux79~0_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[14]~8_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \Adder0|Carries~19_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux111~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux111~1_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux80~2_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \Mux47~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux81~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux127~105_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux110~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux110~1_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~7_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[16]~9_combout\ : std_logic;
SIGNAL \Adder0|P[17]~29_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux82~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux109~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux109~2_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux83~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux108~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux108~1_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[18]~10_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~14_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11_combout\ : std_logic;
SIGNAL \Adder0|Carries~20_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux107~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux107~1_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux84~2_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux106~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux106~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux85~2_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[20]~11_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux86~2_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Adder0|Carries~21_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux105~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux105~1_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux87~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux104~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux104~4_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[22]~12_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux88~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux103~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux103~1_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[24]~13_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux102~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux102~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux89~3_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Adder0|Carries~22_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux101~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux101~1_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux90~3_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux100~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux100~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux91~3_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[26]~14_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux99~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux99~1_combout\ : std_logic;
SIGNAL \Adder0|Carries~23_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux92~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux92~3_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[28]~15_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux98~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux98~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux93~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux93~3_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux94~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux94~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux97~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux97~1_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \LogicUnit0|Mux32~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux95~2_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux95~3_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux96~0_combout\ : std_logic;
SIGNAL \ShiftUnit0|Mux96~1_combout\ : std_logic;
SIGNAL \ShiftUnit0|raw_result[31]~2_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Y_adder[32]~3_combout\ : std_logic;
SIGNAL \Y_adder[32]~4_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Adder0|P[33]~30_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[32]~16_combout\ : std_logic;
SIGNAL \Y_adder[33]~5_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Y_adder[34]~6_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[34]~17_combout\ : std_logic;
SIGNAL \Y_adder[35]~7_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Adder0|Carries~31_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\ : std_logic;
SIGNAL \Y_adder[36]~8_combout\ : std_logic;
SIGNAL \Y_adder[36]~9_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[36]~18_combout\ : std_logic;
SIGNAL \Y_adder[37]~10_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Adder0|Carries~24_combout\ : std_logic;
SIGNAL \Y_adder[38]~11_combout\ : std_logic;
SIGNAL \Y_adder[38]~12_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Adder0|Carries~32_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[38]~19_combout\ : std_logic;
SIGNAL \Y_adder[39]~14_combout\ : std_logic;
SIGNAL \Y_adder[39]~46_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Adder0|Carries~25_combout\ : std_logic;
SIGNAL \Y_adder[40]~15_combout\ : std_logic;
SIGNAL \Y_adder[40]~16_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Adder0|Carries~26_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[40]~20_combout\ : std_logic;
SIGNAL \Y_adder[41]~17_combout\ : std_logic;
SIGNAL \Y_adder[41]~18_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Y_adder[42]~19_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[42]~21_combout\ : std_logic;
SIGNAL \Y_adder[43]~20_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Y_adder[44]~21_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[44]~22_combout\ : std_logic;
SIGNAL \Y_adder[45]~22_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Adder0|Carries~27_combout\ : std_logic;
SIGNAL \Y_adder[46]~23_combout\ : std_logic;
SIGNAL \Y_adder[46]~24_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[46]~23_combout\ : std_logic;
SIGNAL \Y_adder[47]~25_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Adder0|Carries~33_combout\ : std_logic;
SIGNAL \Y_adder[48]~26_combout\ : std_logic;
SIGNAL \Y_adder[48]~27_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[48]~24_combout\ : std_logic;
SIGNAL \Adder0|P[49]~31_combout\ : std_logic;
SIGNAL \Y_adder[49]~28_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Y_adder[50]~29_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[50]~25_combout\ : std_logic;
SIGNAL \Y_adder[51]~30_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\ : std_logic;
SIGNAL \Y_adder[52]~31_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[52]~26_combout\ : std_logic;
SIGNAL \Y_adder[53]~32_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Adder0|Carries~28_combout\ : std_logic;
SIGNAL \Y_adder[54]~33_combout\ : std_logic;
SIGNAL \Y_adder[54]~34_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[54]~27_combout\ : std_logic;
SIGNAL \Y_adder[55]~35_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Y_adder[56]~36_combout\ : std_logic;
SIGNAL \Y_adder[56]~37_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[56]~28_combout\ : std_logic;
SIGNAL \Y_adder[57]~38_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Adder0|Carries~29_combout\ : std_logic;
SIGNAL \Y_adder[58]~39_combout\ : std_logic;
SIGNAL \Y_adder[58]~40_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[58]~29_combout\ : std_logic;
SIGNAL \Y_adder[59]~41_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Y_adder[60]~42_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Adder0|BLAN1|G_out[60]~30_combout\ : std_logic;
SIGNAL \Y_adder[61]~43_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Y_adder[62]~44_combout\ : std_logic;
SIGNAL \Y_adder[62]~45_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Equal0~21_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Y_adder[63]~13_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~22_combout\ : std_logic;
SIGNAL \Equal0~23_combout\ : std_logic;
SIGNAL \Adder0|G\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Adder0|P\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Adder0|BLAN1|recurse:inner|G_in_half\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Adder0|Carries\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \Adder0|BLAN1|recurse:inner|G_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Adder0|S\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Adder0|ALT_INV_Cout~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_LogicFN <= LogicFN;
ww_ShiftFN <= ShiftFN;
ww_FuncClass <= FuncClass;
ww_ExtWord <= ExtWord;
ww_AddNSub <= AddNSub;
Y <= ww_Y;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Adder0|ALT_INV_Cout~3_combout\ <= NOT \Adder0|Cout~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y42_N16
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~3_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~3_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~3_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~3_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~3_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~3_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~3_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~3_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~3_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~3_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~3_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~3_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~3_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~3_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~3_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~3_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~3_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~3_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~3_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~3_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~3_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~3_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~3_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~3_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~3_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~3_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~3_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~3_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~5_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~3_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~1_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~3_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~3_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~3_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~3_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~3_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~3_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~3_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~3_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~3_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~3_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~3_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~3_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~3_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~3_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~3_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~3_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~3_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~5_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~3_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~3_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~3_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~3_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~3_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~3_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~3_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~3_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~3_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~3_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~3_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~23_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AltB~0_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder0|ALT_INV_Cout~3_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X74_Y73_N15
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\AddNSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddNSub,
	o => \AddNSub~input_o\);

-- Location: IOIBUF_X115_Y54_N15
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X63_Y46_N0
\Adder0|G[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(62) = (\A[62]~input_o\ & (\AddNSub~input_o\ $ (\B[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[62]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[62]~input_o\,
	combout => \Adder0|G\(62));

-- Location: LCCOMB_X63_Y46_N10
\Adder0|BLAN1|G_in_half[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[31]~0_combout\ = (\A[63]~input_o\ & ((\Adder0|G\(62)) # (\B[63]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[63]~input_o\ & (\Adder0|G\(62) & (\B[63]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \A[63]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \Adder0|G\(62),
	combout => \Adder0|BLAN1|G_in_half[31]~0_combout\);

-- Location: LCCOMB_X63_Y46_N16
\Adder0|P[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(62) = \A[62]~input_o\ $ (\AddNSub~input_o\ $ (\B[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[62]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[62]~input_o\,
	combout => \Adder0|P\(62));

-- Location: IOIBUF_X102_Y73_N1
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X63_Y47_N16
\Adder0|G[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(60) = (\A[60]~input_o\ & (\AddNSub~input_o\ $ (\B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \Adder0|G\(60));

-- Location: IOIBUF_X115_Y53_N15
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X62_Y45_N0
\Adder0|BLAN1|G_in_half[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[30]~1_combout\ = (\Adder0|G\(60) & ((\A[61]~input_o\) # (\AddNSub~input_o\ $ (\B[61]~input_o\)))) # (!\Adder0|G\(60) & (\A[61]~input_o\ & (\AddNSub~input_o\ $ (\B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|G\(60),
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[30]~1_combout\);

-- Location: IOIBUF_X89_Y73_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X62_Y47_N8
\Adder0|P[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(58) = \AddNSub~input_o\ $ (\B[58]~input_o\ $ (\A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Adder0|P\(58));

-- Location: LCCOMB_X62_Y47_N0
\Adder0|G[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(58) = (\A[58]~input_o\ & (\AddNSub~input_o\ $ (\B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Adder0|G\(58));

-- Location: IOIBUF_X81_Y73_N8
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X62_Y47_N18
\Adder0|BLAN1|G_in_half[29]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[29]~31_combout\ = (\Adder0|G\(58) & ((\A[59]~input_o\) # (\AddNSub~input_o\ $ (\B[59]~input_o\)))) # (!\Adder0|G\(58) & (\A[59]~input_o\ & (\AddNSub~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|G\(58),
	datac => \B[59]~input_o\,
	datad => \A[59]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[29]~31_combout\);

-- Location: LCCOMB_X62_Y47_N2
\Adder0|P[59]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[59]~1_combout\ = \AddNSub~input_o\ $ (\A[59]~input_o\ $ (\B[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[59]~input_o\,
	datad => \B[59]~input_o\,
	combout => \Adder0|P[59]~1_combout\);

-- Location: IOIBUF_X67_Y0_N8
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X63_Y45_N28
\Adder0|G[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(56) = (\A[56]~input_o\ & (\AddNSub~input_o\ $ (\B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \Adder0|G\(56));

-- Location: IOIBUF_X67_Y0_N15
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X63_Y45_N14
\Adder0|BLAN1|G_in_half[28]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[28]~30_combout\ = (\A[57]~input_o\ & ((\Adder0|G\(56)) # (\AddNSub~input_o\ $ (\B[57]~input_o\)))) # (!\A[57]~input_o\ & (\Adder0|G\(56) & (\AddNSub~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \Adder0|G\(56),
	datac => \AddNSub~input_o\,
	datad => \B[57]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[28]~30_combout\);

-- Location: LCCOMB_X63_Y47_N6
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]~5_combout\ = (!\Adder0|BLAN1|G_in_half[29]~31_combout\ & (((!\Adder0|BLAN1|G_in_half[28]~30_combout\) # (!\Adder0|P[59]~1_combout\)) # (!\Adder0|P\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(58),
	datab => \Adder0|BLAN1|G_in_half[29]~31_combout\,
	datac => \Adder0|P[59]~1_combout\,
	datad => \Adder0|BLAN1|G_in_half[28]~30_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]~5_combout\);

-- Location: LCCOMB_X63_Y45_N24
\Adder0|P[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(56) = \AddNSub~input_o\ $ (\A[56]~input_o\ $ (\B[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \Adder0|P\(56));

-- Location: LCCOMB_X63_Y45_N10
\Adder0|P[57]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[57]~0_combout\ = \A[57]~input_o\ $ (\AddNSub~input_o\ $ (\B[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[57]~input_o\,
	combout => \Adder0|P[57]~0_combout\);

-- Location: LCCOMB_X63_Y47_N20
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\ = (\Adder0|P\(58) & (\Adder0|P[59]~1_combout\ & (\Adder0|P\(56) & \Adder0|P[57]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(58),
	datab => \Adder0|P[59]~1_combout\,
	datac => \Adder0|P\(56),
	datad => \Adder0|P[57]~0_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\);

-- Location: IOIBUF_X69_Y0_N1
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X59_Y47_N0
\Adder0|G[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(46) = (\A[46]~input_o\ & (\AddNSub~input_o\ $ (\B[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[46]~input_o\,
	datad => \B[46]~input_o\,
	combout => \Adder0|G\(46));

-- Location: IOIBUF_X38_Y73_N8
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X59_Y47_N10
\Adder0|BLAN1|G_in_half[23]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[23]~6_combout\ = (\Adder0|G\(46) & ((\A[47]~input_o\) # (\AddNSub~input_o\ $ (\B[47]~input_o\)))) # (!\Adder0|G\(46) & (\A[47]~input_o\ & (\AddNSub~input_o\ $ (\B[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|G\(46),
	datac => \B[47]~input_o\,
	datad => \A[47]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[23]~6_combout\);

-- Location: LCCOMB_X59_Y47_N20
\Adder0|P[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(46) = \AddNSub~input_o\ $ (\A[46]~input_o\ $ (\B[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[46]~input_o\,
	datad => \B[46]~input_o\,
	combout => \Adder0|P\(46));

-- Location: LCCOMB_X59_Y47_N14
\Adder0|P[47]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[47]~5_combout\ = \A[47]~input_o\ $ (\B[47]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[47]~input_o\,
	datac => \B[47]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P[47]~5_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X62_Y47_N12
\Adder0|G[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(44) = (\A[44]~input_o\ & (\B[44]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datac => \B[44]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|G\(44));

-- Location: IOIBUF_X31_Y73_N8
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X59_Y47_N24
\Adder0|BLAN1|G_in_half[22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[22]~7_combout\ = (\A[45]~input_o\ & ((\Adder0|G\(44)) # (\AddNSub~input_o\ $ (\B[45]~input_o\)))) # (!\A[45]~input_o\ & (\Adder0|G\(44) & (\AddNSub~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[45]~input_o\,
	datac => \Adder0|G\(44),
	datad => \B[45]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[22]~7_combout\);

-- Location: LCCOMB_X59_Y47_N2
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~0_combout\ = (\Adder0|BLAN1|G_in_half[23]~6_combout\) # ((\Adder0|P\(46) & (\Adder0|P[47]~5_combout\ & \Adder0|BLAN1|G_in_half[22]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[23]~6_combout\,
	datab => \Adder0|P\(46),
	datac => \Adder0|P[47]~5_combout\,
	datad => \Adder0|BLAN1|G_in_half[22]~7_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~0_combout\);

-- Location: IOIBUF_X0_Y35_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X58_Y48_N20
\Adder0|G[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(42) = (\A[42]~input_o\ & (\AddNSub~input_o\ $ (\B[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[42]~input_o\,
	datac => \B[42]~input_o\,
	combout => \Adder0|G\(42));

-- Location: IOIBUF_X58_Y73_N1
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X58_Y48_N30
\Adder0|BLAN1|G_in_half[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[21]~9_combout\ = (\A[43]~input_o\ & ((\Adder0|G\(42)) # (\B[43]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[43]~input_o\ & (\Adder0|G\(42) & (\B[43]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \Adder0|G\(42),
	datac => \B[43]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_in_half[21]~9_combout\);

-- Location: LCCOMB_X58_Y48_N26
\Adder0|P[43]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[43]~7_combout\ = \AddNSub~input_o\ $ (\B[43]~input_o\ $ (\A[43]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[43]~input_o\,
	datac => \A[43]~input_o\,
	combout => \Adder0|P[43]~7_combout\);

-- Location: IOIBUF_X0_Y49_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X59_Y50_N8
\Adder0|G[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(40) = (\A[40]~input_o\ & (\AddNSub~input_o\ $ (\B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Adder0|G\(40));

-- Location: IOIBUF_X67_Y73_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X59_Y50_N10
\Adder0|BLAN1|G_in_half[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[20]~8_combout\ = (\A[41]~input_o\ & ((\Adder0|G\(40)) # (\AddNSub~input_o\ $ (\B[41]~input_o\)))) # (!\A[41]~input_o\ & (\Adder0|G\(40) & (\AddNSub~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[41]~input_o\,
	datac => \Adder0|G\(40),
	datad => \B[41]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[20]~8_combout\);

-- Location: LCCOMB_X58_Y48_N24
\Adder0|P[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(42) = \AddNSub~input_o\ $ (\A[42]~input_o\ $ (\B[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[42]~input_o\,
	datac => \B[42]~input_o\,
	combout => \Adder0|P\(42));

-- Location: LCCOMB_X58_Y47_N0
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]~2_combout\ = (!\Adder0|BLAN1|G_in_half[21]~9_combout\ & (((!\Adder0|P\(42)) # (!\Adder0|BLAN1|G_in_half[20]~8_combout\)) # (!\Adder0|P[43]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[21]~9_combout\,
	datab => \Adder0|P[43]~7_combout\,
	datac => \Adder0|BLAN1|G_in_half[20]~8_combout\,
	datad => \Adder0|P\(42),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]~2_combout\);

-- Location: LCCOMB_X59_Y47_N12
\Adder0|P[45]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[45]~6_combout\ = \AddNSub~input_o\ $ (\A[45]~input_o\ $ (\B[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[45]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Adder0|P[45]~6_combout\);

-- Location: LCCOMB_X62_Y47_N22
\Adder0|P[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(44) = \A[44]~input_o\ $ (\B[44]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datac => \B[44]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P\(44));

-- Location: LCCOMB_X59_Y47_N22
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\ = (\Adder0|P[45]~6_combout\ & (\Adder0|P[47]~5_combout\ & (\Adder0|P\(44) & \Adder0|P\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[45]~6_combout\,
	datab => \Adder0|P[47]~5_combout\,
	datac => \Adder0|P\(44),
	datad => \Adder0|P\(46),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\);

-- Location: LCCOMB_X58_Y47_N10
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~1_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~0_combout\) # ((!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]~2_combout\ & 
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~0_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]~2_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~1_combout\);

-- Location: IOIBUF_X47_Y73_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X55_Y47_N6
\Adder0|G[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(36) = (\A[36]~input_o\ & (\B[36]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datac => \B[36]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|G\(36));

-- Location: LCCOMB_X55_Y47_N0
\Adder0|BLAN1|G_in_half[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[18]~11_combout\ = (\A[37]~input_o\ & ((\Adder0|G\(36)) # (\AddNSub~input_o\ $ (\B[37]~input_o\)))) # (!\A[37]~input_o\ & (\Adder0|G\(36) & (\AddNSub~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[37]~input_o\,
	datac => \A[37]~input_o\,
	datad => \Adder0|G\(36),
	combout => \Adder0|BLAN1|G_in_half[18]~11_combout\);

-- Location: IOIBUF_X0_Y43_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X56_Y44_N24
\Adder0|P[39]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[39]~9_combout\ = \A[39]~input_o\ $ (\B[39]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datac => \B[39]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P[39]~9_combout\);

-- Location: IOIBUF_X23_Y73_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X55_Y47_N4
\Adder0|P[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(38) = \AddNSub~input_o\ $ (\A[38]~input_o\ $ (\B[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \Adder0|P\(38));

-- Location: LCCOMB_X55_Y47_N8
\Adder0|G[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(38) = (\A[38]~input_o\ & (\AddNSub~input_o\ $ (\B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \Adder0|G\(38));

-- Location: LCCOMB_X55_Y47_N10
\Adder0|BLAN1|G_in_half[19]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[19]~10_combout\ = (\Adder0|G\(38) & ((\A[39]~input_o\) # (\B[39]~input_o\ $ (\AddNSub~input_o\)))) # (!\Adder0|G\(38) & (\A[39]~input_o\ & (\B[39]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \Adder0|G\(38),
	datac => \A[39]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_in_half[19]~10_combout\);

-- Location: LCCOMB_X56_Y47_N16
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~2_combout\ = (\Adder0|BLAN1|G_in_half[19]~10_combout\) # ((\Adder0|BLAN1|G_in_half[18]~11_combout\ & (\Adder0|P[39]~9_combout\ & \Adder0|P\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[18]~11_combout\,
	datab => \Adder0|P[39]~9_combout\,
	datac => \Adder0|P\(38),
	datad => \Adder0|BLAN1|G_in_half[19]~10_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~2_combout\);

-- Location: IOIBUF_X0_Y44_N8
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X56_Y44_N26
\Adder0|G[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(34) = (\A[34]~input_o\ & (\B[34]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|G\(34));

-- Location: IOIBUF_X56_Y0_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X56_Y47_N28
\Adder0|BLAN1|G_in_half[17]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[17]~12_combout\ = (\Adder0|G\(34) & ((\A[35]~input_o\) # (\AddNSub~input_o\ $ (\B[35]~input_o\)))) # (!\Adder0|G\(34) & (\A[35]~input_o\ & (\AddNSub~input_o\ $ (\B[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|G\(34),
	datab => \A[35]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[35]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[17]~12_combout\);

-- Location: LCCOMB_X56_Y47_N6
\Adder0|P[35]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[35]~11_combout\ = \B[35]~input_o\ $ (\A[35]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \A[35]~input_o\,
	datac => \AddNSub~input_o\,
	combout => \Adder0|P[35]~11_combout\);

-- Location: LCCOMB_X56_Y44_N20
\Adder0|P[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(34) = \A[34]~input_o\ $ (\B[34]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P\(34));

-- Location: IOIBUF_X74_Y73_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X56_Y73_N1
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X56_Y73_N8
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X60_Y45_N0
\Adder0|G[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(32) = (\A[32]~input_o\ & (\AddNSub~input_o\ $ (\B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \AddNSub~input_o\,
	datad => \B[32]~input_o\,
	combout => \Adder0|G\(32));

-- Location: LCCOMB_X60_Y45_N10
\Adder0|BLAN1|G_in_half[16]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[16]~13_combout\ = (\A[33]~input_o\ & ((\Adder0|G\(32)) # (\B[33]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[33]~input_o\ & (\Adder0|G\(32) & (\B[33]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \A[33]~input_o\,
	datad => \Adder0|G\(32),
	combout => \Adder0|BLAN1|G_in_half[16]~13_combout\);

-- Location: LCCOMB_X56_Y47_N8
\Adder0|BLAN1|recurse:inner|G_in_half~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_in_half~0_combout\ = (\Adder0|P[35]~11_combout\ & (\Adder0|P\(34) & \Adder0|BLAN1|G_in_half[16]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[35]~11_combout\,
	datab => \Adder0|P\(34),
	datad => \Adder0|BLAN1|G_in_half[16]~13_combout\,
	combout => \Adder0|BLAN1|recurse:inner|G_in_half~0_combout\);

-- Location: LCCOMB_X55_Y47_N2
\Adder0|P[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(36) = \A[36]~input_o\ $ (\B[36]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datac => \B[36]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P\(36));

-- Location: LCCOMB_X55_Y47_N12
\Adder0|P[37]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[37]~10_combout\ = \A[37]~input_o\ $ (\B[37]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \B[37]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P[37]~10_combout\);

-- Location: LCCOMB_X56_Y47_N2
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\ = (\Adder0|P\(36) & (\Adder0|P[39]~9_combout\ & (\Adder0|P\(38) & \Adder0|P[37]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(36),
	datab => \Adder0|P[39]~9_combout\,
	datac => \Adder0|P\(38),
	datad => \Adder0|P[37]~10_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\);

-- Location: LCCOMB_X56_Y47_N26
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~4_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~2_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\ & ((\Adder0|BLAN1|G_in_half[17]~12_combout\) # 
-- (\Adder0|BLAN1|recurse:inner|G_in_half~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~2_combout\,
	datab => \Adder0|BLAN1|G_in_half[17]~12_combout\,
	datac => \Adder0|BLAN1|recurse:inner|G_in_half~0_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~4_combout\);

-- Location: LCCOMB_X59_Y50_N6
\Adder0|P[41]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[41]~8_combout\ = \AddNSub~input_o\ $ (\A[41]~input_o\ $ (\B[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[41]~input_o\,
	datad => \B[41]~input_o\,
	combout => \Adder0|P[41]~8_combout\);

-- Location: LCCOMB_X59_Y50_N20
\Adder0|P[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(40) = \AddNSub~input_o\ $ (\B[40]~input_o\ $ (\A[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Adder0|P\(40));

-- Location: LCCOMB_X58_Y47_N12
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\ = (\Adder0|P[41]~8_combout\ & (\Adder0|P\(42) & (\Adder0|P[43]~7_combout\ & \Adder0|P\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[41]~8_combout\,
	datab => \Adder0|P\(42),
	datac => \Adder0|P[43]~7_combout\,
	datad => \Adder0|P\(40),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\);

-- Location: LCCOMB_X58_Y47_N6
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~2_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~1_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\ & 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~4_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~1_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~4_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~2_combout\);

-- Location: IOIBUF_X20_Y73_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X55_Y44_N20
\Adder0|G[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(28) = (\A[28]~input_o\ & (\B[28]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|G\(28));

-- Location: LCCOMB_X55_Y44_N30
\Adder0|BLAN1|G_in_half[14]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[14]~15_combout\ = (\A[29]~input_o\ & ((\Adder0|G\(28)) # (\AddNSub~input_o\ $ (\B[29]~input_o\)))) # (!\A[29]~input_o\ & (\Adder0|G\(28) & (\AddNSub~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \Adder0|G\(28),
	combout => \Adder0|BLAN1|G_in_half[14]~15_combout\);

-- Location: IOIBUF_X23_Y73_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X57_Y45_N16
\Adder0|P[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(30) = \B[30]~input_o\ $ (\A[30]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P\(30));

-- Location: IOIBUF_X0_Y44_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X57_Y45_N18
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~10_combout\ = (\Adder0|P\(30) & (\AddNSub~input_o\ $ (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|P\(30),
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~10_combout\);

-- Location: LCCOMB_X57_Y45_N20
\Adder0|G[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(30) = (\A[30]~input_o\ & (\B[30]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|G\(30));

-- Location: LCCOMB_X57_Y45_N30
\Adder0|BLAN1|G_in_half[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[15]~14_combout\ = (\Adder0|G\(30) & ((\A[31]~input_o\) # (\AddNSub~input_o\ $ (\B[31]~input_o\)))) # (!\Adder0|G\(30) & (\A[31]~input_o\ & (\AddNSub~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|G\(30),
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[15]~14_combout\);

-- Location: IOIBUF_X60_Y0_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X61_Y44_N18
\Adder0|P[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(26) = \AddNSub~input_o\ $ (\A[26]~input_o\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddNSub~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Adder0|P\(26));

-- Location: LCCOMB_X61_Y44_N12
\Adder0|BLAN1|recurse:inner|G_in_half~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_in_half~1_combout\ = (\Adder0|P\(26) & (\B[27]~input_o\ $ (\A[27]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \Adder0|P\(26),
	combout => \Adder0|BLAN1|recurse:inner|G_in_half~1_combout\);

-- Location: LCCOMB_X55_Y44_N24
\Adder0|P[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(28) = \B[28]~input_o\ $ (\A[28]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P\(28));

-- Location: LCCOMB_X55_Y44_N2
\Adder0|BLAN1|recurse:inner|G_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out~3_combout\ = (\Adder0|P\(28) & (\AddNSub~input_o\ $ (\B[29]~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \Adder0|P\(28),
	combout => \Adder0|BLAN1|recurse:inner|G_out~3_combout\);

-- Location: IOIBUF_X0_Y44_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X65_Y44_N6
\Adder0|G[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(24) = (\A[24]~input_o\ & (\B[24]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|G\(24));

-- Location: LCCOMB_X65_Y44_N24
\Adder0|BLAN1|G_in_half[12]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[12]~17_combout\ = (\A[25]~input_o\ & ((\Adder0|G\(24)) # (\AddNSub~input_o\ $ (\B[25]~input_o\)))) # (!\A[25]~input_o\ & (\Adder0|G\(24) & (\AddNSub~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \B[25]~input_o\,
	datad => \Adder0|G\(24),
	combout => \Adder0|BLAN1|G_in_half[12]~17_combout\);

-- Location: LCCOMB_X61_Y44_N0
\Adder0|G[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(26) = (\A[26]~input_o\ & (\AddNSub~input_o\ $ (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddNSub~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Adder0|G\(26));

-- Location: LCCOMB_X61_Y44_N2
\Adder0|BLAN1|G_in_half[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[13]~16_combout\ = (\A[27]~input_o\ & ((\Adder0|G\(26)) # (\B[27]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[27]~input_o\ & (\Adder0|G\(26) & (\B[27]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \Adder0|G\(26),
	combout => \Adder0|BLAN1|G_in_half[13]~16_combout\);

-- Location: LCCOMB_X62_Y44_N12
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~0_combout\ = (\Adder0|BLAN1|recurse:inner|G_out~3_combout\ & ((\Adder0|BLAN1|G_in_half[13]~16_combout\) # ((\Adder0|BLAN1|recurse:inner|G_in_half~1_combout\ & 
-- \Adder0|BLAN1|G_in_half[12]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_in_half~1_combout\,
	datab => \Adder0|BLAN1|recurse:inner|G_out~3_combout\,
	datac => \Adder0|BLAN1|G_in_half[12]~17_combout\,
	datad => \Adder0|BLAN1|G_in_half[13]~16_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~0_combout\);

-- Location: LCCOMB_X62_Y44_N30
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~1_combout\ = (\Adder0|BLAN1|G_in_half[15]~14_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~10_combout\ & ((\Adder0|BLAN1|G_in_half[14]~15_combout\) # 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[14]~15_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~10_combout\,
	datac => \Adder0|BLAN1|G_in_half[15]~14_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~0_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~1_combout\);

-- Location: IOIBUF_X60_Y0_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X62_Y43_N16
\Adder0|G[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(14) = (\A[14]~input_o\ & (\AddNSub~input_o\ $ (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	combout => \Adder0|G\(14));

-- Location: LCCOMB_X62_Y43_N10
\Adder0|BLAN1|G_in_half[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[7]~18_combout\ = (\A[15]~input_o\ & ((\Adder0|G\(14)) # (\B[15]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[15]~input_o\ & (\Adder0|G\(14) & (\B[15]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \Adder0|G\(14),
	combout => \Adder0|BLAN1|G_in_half[7]~18_combout\);

-- Location: LCCOMB_X62_Y43_N20
\Adder0|P[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[15]~22_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \AddNSub~input_o\,
	combout => \Adder0|P[15]~22_combout\);

-- Location: LCCOMB_X62_Y43_N14
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~15_combout\ = (\Adder0|P[15]~22_combout\ & (\AddNSub~input_o\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \Adder0|P[15]~22_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~15_combout\);

-- Location: IOIBUF_X69_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X65_Y45_N14
\Adder0|G[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(8) = (\A[8]~input_o\ & (\AddNSub~input_o\ $ (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	combout => \Adder0|G\(8));

-- Location: IOIBUF_X115_Y45_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X65_Y45_N8
\Adder0|BLAN1|G_in_half[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[4]~19_combout\ = (\A[9]~input_o\ & ((\Adder0|G\(8)) # (\AddNSub~input_o\ $ (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\Adder0|G\(8) & (\AddNSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Adder0|G\(8),
	datac => \AddNSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[4]~19_combout\);

-- Location: IOIBUF_X85_Y73_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X63_Y43_N0
\Adder0|P[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(10) = \B[10]~input_o\ $ (\AddNSub~input_o\ $ (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \A[10]~input_o\,
	combout => \Adder0|P\(10));

-- Location: IOIBUF_X67_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X63_Y43_N4
\Adder0|P[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[13]~20_combout\ = \AddNSub~input_o\ $ (\B[13]~input_o\ $ (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	combout => \Adder0|P[13]~20_combout\);

-- Location: IOIBUF_X60_Y0_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X65_Y44_N0
\Adder0|P[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[11]~21_combout\ = \A[11]~input_o\ $ (\AddNSub~input_o\ $ (\B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \B[11]~input_o\,
	combout => \Adder0|P[11]~21_combout\);

-- Location: IOIBUF_X115_Y35_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X63_Y43_N18
\Adder0|P[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(12) = \A[12]~input_o\ $ (\AddNSub~input_o\ $ (\B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \Adder0|P\(12));

-- Location: LCCOMB_X62_Y43_N24
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~8_combout\ = (\Adder0|P[13]~20_combout\ & (\Adder0|P[11]~21_combout\ & \Adder0|P\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[13]~20_combout\,
	datab => \Adder0|P[11]~21_combout\,
	datad => \Adder0|P\(12),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~8_combout\);

-- Location: LCCOMB_X62_Y43_N4
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\ = (\Adder0|BLAN1|G_in_half[4]~19_combout\ & (\Adder0|P\(10) & \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[4]~19_combout\,
	datac => \Adder0|P\(10),
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~8_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\);

-- Location: LCCOMB_X63_Y43_N30
\Adder0|G[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(12) = (\A[12]~input_o\ & (\AddNSub~input_o\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \Adder0|G\(12));

-- Location: LCCOMB_X63_Y43_N24
\Adder0|BLAN1|G_in_half[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[6]~20_combout\ = (\A[13]~input_o\ & ((\Adder0|G\(12)) # (\B[13]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[13]~input_o\ & (\Adder0|G\(12) & (\B[13]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \B[13]~input_o\,
	datac => \Adder0|G\(12),
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_in_half[6]~20_combout\);

-- Location: LCCOMB_X65_Y44_N2
\Adder0|G[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(10) = (\A[10]~input_o\ & (\AddNSub~input_o\ $ (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \B[10]~input_o\,
	combout => \Adder0|G\(10));

-- Location: LCCOMB_X65_Y44_N28
\Adder0|BLAN1|G_in_half[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[5]~21_combout\ = (\A[11]~input_o\ & ((\Adder0|G\(10)) # (\AddNSub~input_o\ $ (\B[11]~input_o\)))) # (!\A[11]~input_o\ & (\Adder0|G\(10) & (\AddNSub~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \B[11]~input_o\,
	datad => \Adder0|G\(10),
	combout => \Adder0|BLAN1|G_in_half[5]~21_combout\);

-- Location: LCCOMB_X63_Y43_N2
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\ = (\Adder0|BLAN1|G_in_half[6]~20_combout\) # ((\Adder0|BLAN1|G_in_half[5]~21_combout\ & (\Adder0|P[13]~20_combout\ & \Adder0|P\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[6]~20_combout\,
	datab => \Adder0|BLAN1|G_in_half[5]~21_combout\,
	datac => \Adder0|P[13]~20_combout\,
	datad => \Adder0|P\(12),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\);

-- Location: LCCOMB_X62_Y43_N30
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\ = (\Adder0|BLAN1|G_in_half[7]~18_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~15_combout\ & 
-- ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[7]~18_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~15_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\);

-- Location: IOIBUF_X38_Y73_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X59_Y44_N2
\Adder0|P[19]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[19]~14_combout\ = \B[19]~input_o\ $ (\AddNSub~input_o\ $ (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \A[19]~input_o\,
	combout => \Adder0|P[19]~14_combout\);

-- Location: IOIBUF_X38_Y0_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X58_Y44_N8
\Adder0|P[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(18) = \A[18]~input_o\ $ (\AddNSub~input_o\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[18]~input_o\,
	combout => \Adder0|P\(18));

-- Location: IOIBUF_X29_Y73_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X60_Y44_N16
\Adder0|P[23]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[23]~13_combout\ = \AddNSub~input_o\ $ (\B[23]~input_o\ $ (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Adder0|P[23]~13_combout\);

-- Location: IOIBUF_X0_Y35_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X60_Y45_N8
\Adder0|P[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(20) = \A[20]~input_o\ $ (\B[20]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P\(20));

-- Location: IOIBUF_X56_Y73_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X59_Y48_N26
\Adder0|P[21]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[21]~12_combout\ = \A[21]~input_o\ $ (\B[21]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datac => \B[21]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P[21]~12_combout\);

-- Location: IOIBUF_X89_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X61_Y44_N24
\Adder0|P[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(22) = \B[22]~input_o\ $ (\A[22]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \AddNSub~input_o\,
	combout => \Adder0|P\(22));

-- Location: LCCOMB_X60_Y44_N26
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~5_combout\ = (\Adder0|P[23]~13_combout\ & (\Adder0|P\(20) & (\Adder0|P[21]~12_combout\ & \Adder0|P\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[23]~13_combout\,
	datab => \Adder0|P\(20),
	datac => \Adder0|P[21]~12_combout\,
	datad => \Adder0|P\(22),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~5_combout\);

-- Location: IOIBUF_X52_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X56_Y44_N22
\Adder0|P[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(16) = \A[16]~input_o\ $ (\B[16]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P\(16));

-- Location: LCCOMB_X59_Y44_N24
\Adder0|BLAN1|recurse:inner|G_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out~2_combout\ = (\Adder0|P\(16) & (\AddNSub~input_o\ $ (\B[17]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \Adder0|P\(16),
	combout => \Adder0|BLAN1|recurse:inner|G_out~2_combout\);

-- Location: LCCOMB_X60_Y44_N28
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\ = (\Adder0|P[19]~14_combout\ & (\Adder0|P\(18) & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~5_combout\ & \Adder0|BLAN1|recurse:inner|G_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[19]~14_combout\,
	datab => \Adder0|P\(18),
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~5_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out~2_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\);

-- Location: LCCOMB_X65_Y45_N24
\Adder0|P[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(8) = \AddNSub~input_o\ $ (\A[8]~input_o\ $ (\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	combout => \Adder0|P\(8));

-- Location: LCCOMB_X65_Y45_N10
\Adder0|P[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[9]~19_combout\ = \A[9]~input_o\ $ (\AddNSub~input_o\ $ (\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Adder0|P[9]~19_combout\);

-- Location: LCCOMB_X65_Y45_N28
\Adder0|BLAN1|recurse:inner|recurse:inner|P_out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[2]~0_combout\ = (\Adder0|P\(10) & (\Adder0|P\(8) & \Adder0|P[9]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(10),
	datab => \Adder0|P\(8),
	datad => \Adder0|P[9]~19_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[2]~0_combout\);

-- Location: LCCOMB_X62_Y43_N2
\Adder0|P[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(14) = \AddNSub~input_o\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	combout => \Adder0|P\(14));

-- Location: LCCOMB_X62_Y43_N22
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|P_out[2]~0_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~8_combout\ & (\Adder0|P\(14) & \Adder0|P[15]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[2]~0_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~8_combout\,
	datac => \Adder0|P\(14),
	datad => \Adder0|P[15]~22_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\);

-- Location: IOIBUF_X115_Y36_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X63_Y40_N10
\Adder0|P[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[3]~17_combout\ = \AddNSub~input_o\ $ (\A[3]~input_o\ $ (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Adder0|P[3]~17_combout\);

-- Location: IOIBUF_X49_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X63_Y40_N0
\Adder0|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(2) = \AddNSub~input_o\ $ (\A[2]~input_o\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Adder0|P\(2));

-- Location: IOIBUF_X54_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X65_Y42_N22
\Adder0|G[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(0) = (\A[0]~input_o\ & (\B[0]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|G\(0));

-- Location: IOIBUF_X74_Y0_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X65_Y42_N24
\Adder0|BLAN1|G_in_half[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[0]~25_combout\ = (\Adder0|G\(0) & ((\A[1]~input_o\) # (\B[1]~input_o\ $ (\AddNSub~input_o\)))) # (!\Adder0|G\(0) & (\A[1]~input_o\ & (\B[1]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|G\(0),
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_in_half[0]~25_combout\);

-- Location: LCCOMB_X63_Y40_N22
\Adder0|G[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(2) = (\A[2]~input_o\ & (\AddNSub~input_o\ $ (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Adder0|G\(2));

-- Location: LCCOMB_X63_Y40_N24
\Adder0|BLAN1|G_in_half[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[1]~24_combout\ = (\A[3]~input_o\ & ((\Adder0|G\(2)) # (\AddNSub~input_o\ $ (\B[3]~input_o\)))) # (!\A[3]~input_o\ & (\Adder0|G\(2) & (\AddNSub~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[3]~input_o\,
	datac => \Adder0|G\(2),
	datad => \B[3]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[1]~24_combout\);

-- Location: LCCOMB_X63_Y40_N2
\Adder0|BLAN1|recurse:inner|G_in_half[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_in_half\(0) = (\Adder0|BLAN1|G_in_half[1]~24_combout\) # ((\Adder0|P[3]~17_combout\ & (\Adder0|P\(2) & \Adder0|BLAN1|G_in_half[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[3]~17_combout\,
	datab => \Adder0|P\(2),
	datac => \Adder0|BLAN1|G_in_half[0]~25_combout\,
	datad => \Adder0|BLAN1|G_in_half[1]~24_combout\,
	combout => \Adder0|BLAN1|recurse:inner|G_in_half\(0));

-- Location: IOIBUF_X0_Y50_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X63_Y44_N22
\Adder0|P[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[7]~16_combout\ = \A[7]~input_o\ $ (\AddNSub~input_o\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[7]~input_o\,
	combout => \Adder0|P[7]~16_combout\);

-- Location: IOIBUF_X62_Y73_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X63_Y44_N20
\Adder0|P[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(6) = \AddNSub~input_o\ $ (\B[6]~input_o\ $ (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddNSub~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Adder0|P\(6));

-- Location: IOIBUF_X115_Y46_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X57_Y44_N8
\Adder0|G[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(4) = (\A[4]~input_o\ & (\AddNSub~input_o\ $ (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \B[4]~input_o\,
	combout => \Adder0|G\(4));

-- Location: IOIBUF_X85_Y73_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X63_Y44_N30
\Adder0|BLAN1|G_in_half[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[2]~23_combout\ = (\Adder0|G\(4) & ((\A[5]~input_o\) # (\B[5]~input_o\ $ (\AddNSub~input_o\)))) # (!\Adder0|G\(4) & (\A[5]~input_o\ & (\B[5]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Adder0|G\(4),
	datac => \AddNSub~input_o\,
	datad => \A[5]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[2]~23_combout\);

-- Location: LCCOMB_X63_Y44_N26
\Adder0|G[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(6) = (\A[6]~input_o\ & (\AddNSub~input_o\ $ (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddNSub~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Adder0|G\(6));

-- Location: LCCOMB_X63_Y44_N28
\Adder0|BLAN1|G_in_half[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[3]~22_combout\ = (\Adder0|G\(6) & ((\A[7]~input_o\) # (\AddNSub~input_o\ $ (\B[7]~input_o\)))) # (!\Adder0|G\(6) & (\A[7]~input_o\ & (\AddNSub~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|G\(6),
	datab => \A[7]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[7]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[3]~22_combout\);

-- Location: LCCOMB_X63_Y44_N0
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[0]~6_combout\ = (\Adder0|BLAN1|G_in_half[3]~22_combout\) # ((\Adder0|P[7]~16_combout\ & (\Adder0|P\(6) & \Adder0|BLAN1|G_in_half[2]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[7]~16_combout\,
	datab => \Adder0|P\(6),
	datac => \Adder0|BLAN1|G_in_half[2]~23_combout\,
	datad => \Adder0|BLAN1|G_in_half[3]~22_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[0]~6_combout\);

-- Location: LCCOMB_X63_Y44_N18
\Adder0|P[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[5]~15_combout\ = \AddNSub~input_o\ $ (\B[5]~input_o\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddNSub~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Adder0|P[5]~15_combout\);

-- Location: LCCOMB_X63_Y44_N16
\Adder0|P[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(4) = \A[4]~input_o\ $ (\AddNSub~input_o\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[4]~input_o\,
	combout => \Adder0|P\(4));

-- Location: LCCOMB_X63_Y44_N24
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[0]~7_combout\ = (\Adder0|P\(6) & (\Adder0|P[5]~15_combout\ & (\Adder0|P[7]~16_combout\ & \Adder0|P\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(6),
	datab => \Adder0|P[5]~15_combout\,
	datac => \Adder0|P[7]~16_combout\,
	datad => \Adder0|P\(4),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[0]~7_combout\);

-- Location: LCCOMB_X62_Y44_N0
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0) = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[0]~6_combout\) # ((\Adder0|BLAN1|recurse:inner|G_in_half\(0) & \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_in_half\(0),
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[0]~6_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[0]~7_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0));

-- Location: LCCOMB_X62_Y44_N18
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out~0_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\) # 
-- ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out~0_combout\);

-- Location: LCCOMB_X65_Y44_N4
\Adder0|P[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[25]~23_combout\ = \AddNSub~input_o\ $ (\B[25]~input_o\ $ (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddNSub~input_o\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Adder0|P[25]~23_combout\);

-- Location: LCCOMB_X61_Y44_N28
\Adder0|P[27]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[27]~24_combout\ = \B[27]~input_o\ $ (\AddNSub~input_o\ $ (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \A[27]~input_o\,
	combout => \Adder0|P[27]~24_combout\);

-- Location: LCCOMB_X65_Y44_N26
\Adder0|P[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(24) = \A[24]~input_o\ $ (\B[24]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P\(24));

-- Location: LCCOMB_X61_Y44_N6
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\ = (\Adder0|P[25]~23_combout\ & (\Adder0|P\(26) & (\Adder0|P[27]~24_combout\ & \Adder0|P\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[25]~23_combout\,
	datab => \Adder0|P\(26),
	datac => \Adder0|P[27]~24_combout\,
	datad => \Adder0|P\(24),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\);

-- Location: LCCOMB_X62_Y44_N8
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\ = (\Adder0|BLAN1|recurse:inner|G_out~3_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out~3_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~10_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\);

-- Location: LCCOMB_X58_Y44_N2
\Adder0|G[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(18) = (\A[18]~input_o\ & (\AddNSub~input_o\ $ (\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[18]~input_o\,
	combout => \Adder0|G\(18));

-- Location: LCCOMB_X59_Y44_N12
\Adder0|BLAN1|G_in_half[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[9]~28_combout\ = (\A[19]~input_o\ & ((\Adder0|G\(18)) # (\B[19]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[19]~input_o\ & (\Adder0|G\(18) & (\B[19]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[19]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \Adder0|G\(18),
	combout => \Adder0|BLAN1|G_in_half[9]~28_combout\);

-- Location: LCCOMB_X56_Y44_N8
\Adder0|G[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(16) = (\A[16]~input_o\ & (\B[16]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|G\(16));

-- Location: LCCOMB_X59_Y44_N14
\Adder0|BLAN1|G_in_half[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[8]~29_combout\ = (\Adder0|G\(16) & ((\A[17]~input_o\) # (\AddNSub~input_o\ $ (\B[17]~input_o\)))) # (!\Adder0|G\(16) & (\A[17]~input_o\ & (\AddNSub~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|G\(16),
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[8]~29_combout\);

-- Location: LCCOMB_X60_Y44_N18
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~8_combout\ = (\Adder0|BLAN1|G_in_half[8]~29_combout\ & (\Adder0|P\(18) & \Adder0|P[19]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[8]~29_combout\,
	datac => \Adder0|P\(18),
	datad => \Adder0|P[19]~14_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~8_combout\);

-- Location: LCCOMB_X60_Y45_N26
\Adder0|G[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(20) = (\A[20]~input_o\ & (\B[20]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|G\(20));

-- Location: LCCOMB_X60_Y45_N20
\Adder0|BLAN1|G_in_half[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[10]~27_combout\ = (\A[21]~input_o\ & ((\Adder0|G\(20)) # (\B[21]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[21]~input_o\ & (\Adder0|G\(20) & (\B[21]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \Adder0|G\(20),
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_in_half[10]~27_combout\);

-- Location: LCCOMB_X61_Y44_N22
\Adder0|G[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(22) = (\A[22]~input_o\ & (\B[22]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \AddNSub~input_o\,
	combout => \Adder0|G\(22));

-- Location: LCCOMB_X60_Y44_N22
\Adder0|BLAN1|G_in_half[11]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[11]~26_combout\ = (\Adder0|G\(22) & ((\A[23]~input_o\) # (\AddNSub~input_o\ $ (\B[23]~input_o\)))) # (!\Adder0|G\(22) & (\A[23]~input_o\ & (\AddNSub~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|G\(22),
	datac => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[11]~26_combout\);

-- Location: LCCOMB_X60_Y44_N24
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~7_combout\ = (\Adder0|BLAN1|G_in_half[11]~26_combout\) # ((\Adder0|BLAN1|G_in_half[10]~27_combout\ & (\Adder0|P[23]~13_combout\ & \Adder0|P\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[10]~27_combout\,
	datab => \Adder0|P[23]~13_combout\,
	datac => \Adder0|BLAN1|G_in_half[11]~26_combout\,
	datad => \Adder0|P\(22),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~7_combout\);

-- Location: LCCOMB_X60_Y44_N20
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~7_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~5_combout\ & ((\Adder0|BLAN1|G_in_half[9]~28_combout\) # 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[9]~28_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~8_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~5_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~7_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\);

-- Location: LCCOMB_X62_Y44_N4
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~1_combout\) # 
-- ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out~0_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~1_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out~0_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\);

-- Location: LCCOMB_X60_Y45_N12
\Adder0|P[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(32) = \A[32]~input_o\ $ (\AddNSub~input_o\ $ (\B[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \AddNSub~input_o\,
	datad => \B[32]~input_o\,
	combout => \Adder0|P\(32));

-- Location: LCCOMB_X60_Y45_N22
\Adder0|BLAN1|recurse:inner|G_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out~1_combout\ = (\Adder0|P\(32) & (\A[33]~input_o\ $ (\B[33]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(32),
	datab => \A[33]~input_o\,
	datac => \B[33]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|recurse:inner|G_out~1_combout\);

-- Location: LCCOMB_X56_Y47_N4
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[4]~5_combout\ = (\Adder0|P[35]~11_combout\ & (\Adder0|P\(34) & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\ & \Adder0|BLAN1|recurse:inner|G_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[35]~11_combout\,
	datab => \Adder0|P\(34),
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out~1_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[4]~5_combout\);

-- Location: LCCOMB_X58_Y47_N8
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|P_out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|P_out[2]~0_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[4]~5_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\ & 
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[4]~5_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|P_out[2]~0_combout\);

-- Location: LCCOMB_X65_Y42_N26
\Adder0|P[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[1]~18_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P[1]~18_combout\);

-- Location: LCCOMB_X65_Y42_N28
\Adder0|Carries~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~8_combout\ = (\Adder0|P[1]~18_combout\ & (\AddNSub~input_o\ & (\B[0]~input_o\ $ (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Adder0|P[1]~18_combout\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|Carries~8_combout\);

-- Location: LCCOMB_X63_Y40_N20
\Adder0|Carries~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~9_combout\ = (\Adder0|P[3]~17_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[0]~7_combout\ & (\Adder0|Carries~8_combout\ & \Adder0|P\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[3]~17_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[0]~7_combout\,
	datac => \Adder0|Carries~8_combout\,
	datad => \Adder0|P\(2),
	combout => \Adder0|Carries~9_combout\);

-- Location: LCCOMB_X62_Y44_N26
\Adder0|Carries~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~10_combout\ = (\Adder0|Carries~9_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\ & 
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~9_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\,
	combout => \Adder0|Carries~10_combout\);

-- Location: LCCOMB_X58_Y47_N18
\Adder0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Cout~0_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~2_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|P_out[2]~0_combout\ & 
-- ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\) # (\Adder0|Carries~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~2_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|P_out[2]~0_combout\,
	datad => \Adder0|Carries~10_combout\,
	combout => \Adder0|Cout~0_combout\);

-- Location: IOIBUF_X115_Y49_N8
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X115_Y52_N1
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X60_Y48_N6
\Adder0|P[55]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[55]~4_combout\ = \A[55]~input_o\ $ (\B[55]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datac => \B[55]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P[55]~4_combout\);

-- Location: IOIBUF_X65_Y73_N22
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X115_Y48_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X60_Y48_N20
\Adder0|P[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(54) = \AddNSub~input_o\ $ (\A[54]~input_o\ $ (\B[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[54]~input_o\,
	datac => \B[54]~input_o\,
	combout => \Adder0|P\(54));

-- Location: IOIBUF_X47_Y0_N1
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X59_Y48_N12
\Adder0|P[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(52) = \AddNSub~input_o\ $ (\A[52]~input_o\ $ (\B[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddNSub~input_o\,
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => \Adder0|P\(52));

-- Location: IOIBUF_X115_Y46_N1
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X59_Y48_N14
\Adder0|P[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[53]~2_combout\ = \AddNSub~input_o\ $ (\A[53]~input_o\ $ (\B[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddNSub~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \Adder0|P[53]~2_combout\);

-- Location: LCCOMB_X60_Y48_N2
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~12_combout\ = (\Adder0|P[55]~4_combout\ & (\Adder0|P\(54) & (\Adder0|P\(52) & \Adder0|P[53]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[55]~4_combout\,
	datab => \Adder0|P\(54),
	datac => \Adder0|P\(52),
	datad => \Adder0|P[53]~2_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~12_combout\);

-- Location: IOIBUF_X115_Y36_N8
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X61_Y48_N18
\Adder0|P[51]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[51]~3_combout\ = \A[51]~input_o\ $ (\AddNSub~input_o\ $ (\B[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[51]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[51]~input_o\,
	combout => \Adder0|P[51]~3_combout\);

-- Location: IOIBUF_X0_Y52_N22
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X57_Y51_N12
\Adder0|P[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(48) = \A[48]~input_o\ $ (\AddNSub~input_o\ $ (\B[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[48]~input_o\,
	combout => \Adder0|P\(48));

-- Location: IOIBUF_X38_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X57_Y51_N14
\Adder0|BLAN1|recurse:inner|G_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out~4_combout\ = (\Adder0|P\(48) & (\AddNSub~input_o\ $ (\A[49]~input_o\ $ (\B[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(48),
	datab => \AddNSub~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \Adder0|BLAN1|recurse:inner|G_out~4_combout\);

-- Location: IOIBUF_X0_Y51_N15
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X61_Y48_N24
\Adder0|P[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(50) = \B[50]~input_o\ $ (\AddNSub~input_o\ $ (\A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \AddNSub~input_o\,
	datad => \A[50]~input_o\,
	combout => \Adder0|P\(50));

-- Location: LCCOMB_X61_Y48_N26
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~13_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~12_combout\ & (\Adder0|P[51]~3_combout\ & (\Adder0|BLAN1|recurse:inner|G_out~4_combout\ & \Adder0|P\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~12_combout\,
	datab => \Adder0|P[51]~3_combout\,
	datac => \Adder0|BLAN1|recurse:inner|G_out~4_combout\,
	datad => \Adder0|P\(50),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~13_combout\);

-- Location: LCCOMB_X61_Y48_N20
\Adder0|G[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(50) = (\A[50]~input_o\ & (\B[50]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \AddNSub~input_o\,
	datad => \A[50]~input_o\,
	combout => \Adder0|G\(50));

-- Location: LCCOMB_X61_Y48_N6
\Adder0|BLAN1|G_in_half[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[25]~5_combout\ = (\Adder0|G\(50) & ((\A[51]~input_o\) # (\AddNSub~input_o\ $ (\B[51]~input_o\)))) # (!\Adder0|G\(50) & (\A[51]~input_o\ & (\AddNSub~input_o\ $ (\B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|G\(50),
	datab => \A[51]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[51]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[25]~5_combout\);

-- Location: LCCOMB_X57_Y51_N24
\Adder0|G[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(48) = (\A[48]~input_o\ & (\AddNSub~input_o\ $ (\B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[48]~input_o\,
	combout => \Adder0|G\(48));

-- Location: LCCOMB_X57_Y51_N10
\Adder0|BLAN1|G_in_half[24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[24]~4_combout\ = (\A[49]~input_o\ & ((\Adder0|G\(48)) # (\B[49]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[49]~input_o\ & (\Adder0|G\(48) & (\B[49]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \A[49]~input_o\,
	datad => \Adder0|G\(48),
	combout => \Adder0|BLAN1|G_in_half[24]~4_combout\);

-- Location: LCCOMB_X61_Y48_N8
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]~1_combout\ = (!\Adder0|BLAN1|G_in_half[25]~5_combout\ & (((!\Adder0|P[51]~3_combout\) # (!\Adder0|P\(50))) # (!\Adder0|BLAN1|G_in_half[24]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[25]~5_combout\,
	datab => \Adder0|BLAN1|G_in_half[24]~4_combout\,
	datac => \Adder0|P\(50),
	datad => \Adder0|P[51]~3_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]~1_combout\);

-- Location: LCCOMB_X59_Y48_N24
\Adder0|G[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(52) = (\A[52]~input_o\ & (\AddNSub~input_o\ $ (\B[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddNSub~input_o\,
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => \Adder0|G\(52));

-- Location: LCCOMB_X59_Y48_N2
\Adder0|BLAN1|G_in_half[26]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[26]~3_combout\ = (\Adder0|G\(52) & ((\A[53]~input_o\) # (\AddNSub~input_o\ $ (\B[53]~input_o\)))) # (!\Adder0|G\(52) & (\A[53]~input_o\ & (\AddNSub~input_o\ $ (\B[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|G\(52),
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[26]~3_combout\);

-- Location: LCCOMB_X59_Y48_N8
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~0_combout\ = (\Adder0|BLAN1|G_in_half[26]~3_combout\) # ((\Adder0|P\(52) & (\Adder0|P[53]~2_combout\ & !\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(52),
	datab => \Adder0|P[53]~2_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]~1_combout\,
	datad => \Adder0|BLAN1|G_in_half[26]~3_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~0_combout\);

-- Location: LCCOMB_X60_Y48_N16
\Adder0|G[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|G\(54) = (\A[54]~input_o\ & (\AddNSub~input_o\ $ (\B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[54]~input_o\,
	datac => \B[54]~input_o\,
	combout => \Adder0|G\(54));

-- Location: LCCOMB_X60_Y48_N18
\Adder0|BLAN1|G_in_half[27]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_in_half[27]~2_combout\ = (\Adder0|G\(54) & ((\A[55]~input_o\) # (\AddNSub~input_o\ $ (\B[55]~input_o\)))) # (!\Adder0|G\(54) & (\A[55]~input_o\ & (\AddNSub~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|G\(54),
	datac => \B[55]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Adder0|BLAN1|G_in_half[27]~2_combout\);

-- Location: LCCOMB_X60_Y48_N8
\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~1_combout\ = (\Adder0|BLAN1|G_in_half[27]~2_combout\) # ((\Adder0|P[55]~4_combout\ & (\Adder0|P\(54) & \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[55]~4_combout\,
	datab => \Adder0|P\(54),
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~0_combout\,
	datad => \Adder0|BLAN1|G_in_half[27]~2_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~1_combout\);

-- Location: LCCOMB_X61_Y48_N28
\Adder0|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Cout~1_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~1_combout\) # ((\Adder0|Cout~0_combout\ & 
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\,
	datab => \Adder0|Cout~0_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~13_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~1_combout\,
	combout => \Adder0|Cout~1_combout\);

-- Location: LCCOMB_X63_Y47_N18
\Adder0|P[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P\(60) = \A[60]~input_o\ $ (\AddNSub~input_o\ $ (\B[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \Adder0|P\(60));

-- Location: LCCOMB_X63_Y46_N12
\Adder0|BLAN1|recurse:inner|G_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out~0_combout\ = (\Adder0|P\(60) & (\AddNSub~input_o\ $ (\B[61]~input_o\ $ (\A[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|P\(60),
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Adder0|BLAN1|recurse:inner|G_out~0_combout\);

-- Location: LCCOMB_X63_Y46_N30
\Adder0|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Cout~2_combout\ = (\Adder0|BLAN1|G_in_half[30]~1_combout\) # ((\Adder0|BLAN1|recurse:inner|G_out~0_combout\ & ((\Adder0|Cout~1_combout\) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[30]~1_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]~5_combout\,
	datac => \Adder0|Cout~1_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out~0_combout\,
	combout => \Adder0|Cout~2_combout\);

-- Location: LCCOMB_X63_Y46_N2
\Adder0|P[63]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[63]~25_combout\ = \B[63]~input_o\ $ (\A[63]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \A[63]~input_o\,
	datac => \AddNSub~input_o\,
	combout => \Adder0|P[63]~25_combout\);

-- Location: LCCOMB_X63_Y46_N28
\Adder0|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Cout~3_combout\ = (\Adder0|BLAN1|G_in_half[31]~0_combout\) # ((\Adder0|P\(62) & (\Adder0|Cout~2_combout\ & \Adder0|P[63]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[31]~0_combout\,
	datab => \Adder0|P\(62),
	datac => \Adder0|Cout~2_combout\,
	datad => \Adder0|P[63]~25_combout\,
	combout => \Adder0|Cout~3_combout\);

-- Location: IOIBUF_X72_Y73_N8
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X57_Y42_N16
\ShiftUnit0|shamt[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shamt[5]~0_combout\ = (!\ExtWord~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \ShiftUnit0|shamt[5]~0_combout\);

-- Location: IOIBUF_X0_Y34_N15
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X61_Y42_N24
\ShiftUnit0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Equal2~0_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \ShiftUnit0|Equal2~0_combout\);

-- Location: LCCOMB_X56_Y38_N4
\ShiftUnit0|shift_in[37]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[37]~55_combout\ = (\A[37]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[37]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[37]~55_combout\);

-- Location: LCCOMB_X57_Y45_N22
\ShiftUnit0|shift_input[63]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_input[63]~0_combout\ = (\A[31]~input_o\ & (\ShiftFN[1]~input_o\ & (\ExtWord~input_o\ & \ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \ShiftUnit0|shift_input[63]~0_combout\);

-- Location: LCCOMB_X56_Y38_N22
\ShiftUnit0|shift_in[37]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[37]~56_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[26]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_in[37]~55_combout\) # (\ShiftUnit0|shift_input[63]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \ShiftUnit0|shift_in[37]~55_combout\,
	datad => \ShiftUnit0|shift_input[63]~0_combout\,
	combout => \ShiftUnit0|shift_in[37]~56_combout\);

-- Location: LCCOMB_X56_Y38_N24
\ShiftUnit0|shift_in[39]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[39]~53_combout\ = (\A[39]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[39]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[39]~53_combout\);

-- Location: LCCOMB_X56_Y38_N18
\ShiftUnit0|shift_in[39]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[39]~54_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[24]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_input[63]~0_combout\) # (\ShiftUnit0|shift_in[39]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \ShiftUnit0|shift_input[63]~0_combout\,
	datad => \ShiftUnit0|shift_in[39]~53_combout\,
	combout => \ShiftUnit0|shift_in[39]~54_combout\);

-- Location: LCCOMB_X56_Y38_N8
\ShiftUnit0|Mux7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~30_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[39]~54_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[37]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[37]~56_combout\,
	datab => \ShiftUnit0|shift_in[39]~54_combout\,
	datac => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~30_combout\);

-- Location: LCCOMB_X56_Y41_N24
\ShiftUnit0|shift_in[38]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[38]~57_combout\ = (\A[38]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[38]~57_combout\);

-- Location: LCCOMB_X56_Y41_N18
\ShiftUnit0|shift_in[38]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[38]~58_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[25]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[38]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[25]~input_o\,
	datad => \ShiftUnit0|shift_in[38]~57_combout\,
	combout => \ShiftUnit0|shift_in[38]~58_combout\);

-- Location: LCCOMB_X56_Y41_N20
\ShiftUnit0|shift_in[36]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[36]~59_combout\ = (\A[36]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[36]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[36]~59_combout\);

-- Location: LCCOMB_X56_Y41_N6
\ShiftUnit0|shift_in[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[36]~60_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[27]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[36]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[27]~input_o\,
	datad => \ShiftUnit0|shift_in[36]~59_combout\,
	combout => \ShiftUnit0|shift_in[36]~60_combout\);

-- Location: LCCOMB_X56_Y41_N16
\ShiftUnit0|Mux7~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~31_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[38]~58_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[36]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[38]~58_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[36]~60_combout\,
	combout => \ShiftUnit0|Mux7~31_combout\);

-- Location: LCCOMB_X58_Y38_N28
\ShiftUnit0|Mux7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~32_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~30_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~30_combout\,
	datad => \ShiftUnit0|Mux7~31_combout\,
	combout => \ShiftUnit0|Mux7~32_combout\);

-- Location: LCCOMB_X59_Y38_N22
\ShiftUnit0|shift_in[44]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[44]~51_combout\ = (\A[44]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[44]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[44]~51_combout\);

-- Location: LCCOMB_X59_Y38_N8
\ShiftUnit0|shift_in[44]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[44]~52_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[19]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_input[63]~0_combout\) # (\ShiftUnit0|shift_in[44]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \ShiftUnit0|shift_input[63]~0_combout\,
	datac => \ShiftUnit0|shift_in[44]~51_combout\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[44]~52_combout\);

-- Location: LCCOMB_X59_Y38_N10
\ShiftUnit0|shift_in[46]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[46]~49_combout\ = (\A[46]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[46]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[46]~49_combout\);

-- Location: LCCOMB_X59_Y38_N20
\ShiftUnit0|shift_in[46]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[46]~50_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[17]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_input[63]~0_combout\) # (\ShiftUnit0|shift_in[46]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Equal2~0_combout\,
	datab => \A[17]~input_o\,
	datac => \ShiftUnit0|shift_input[63]~0_combout\,
	datad => \ShiftUnit0|shift_in[46]~49_combout\,
	combout => \ShiftUnit0|shift_in[46]~50_combout\);

-- Location: LCCOMB_X59_Y38_N2
\ShiftUnit0|Mux7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~28_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[46]~50_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[44]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[44]~52_combout\,
	datad => \ShiftUnit0|shift_in[46]~50_combout\,
	combout => \ShiftUnit0|Mux7~28_combout\);

-- Location: LCCOMB_X57_Y38_N10
\ShiftUnit0|shift_in[47]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[47]~45_combout\ = (\A[47]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[47]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[47]~45_combout\);

-- Location: LCCOMB_X57_Y38_N20
\ShiftUnit0|shift_in[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[47]~46_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[16]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[47]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|shift_in[47]~45_combout\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \A[16]~input_o\,
	combout => \ShiftUnit0|shift_in[47]~46_combout\);

-- Location: LCCOMB_X57_Y38_N14
\ShiftUnit0|shift_in[45]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[45]~47_combout\ = (!\ExtWord~input_o\ & \A[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datad => \A[45]~input_o\,
	combout => \ShiftUnit0|shift_in[45]~47_combout\);

-- Location: LCCOMB_X57_Y38_N0
\ShiftUnit0|shift_in[45]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[45]~48_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[18]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[45]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|shift_in[45]~47_combout\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \A[18]~input_o\,
	combout => \ShiftUnit0|shift_in[45]~48_combout\);

-- Location: LCCOMB_X57_Y38_N18
\ShiftUnit0|Mux7~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~27_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[47]~46_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[45]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[47]~46_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[45]~48_combout\,
	combout => \ShiftUnit0|Mux7~27_combout\);

-- Location: LCCOMB_X58_Y38_N2
\ShiftUnit0|Mux7~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~29_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~27_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~28_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~27_combout\,
	combout => \ShiftUnit0|Mux7~29_combout\);

-- Location: LCCOMB_X58_Y40_N14
\ShiftUnit0|Mux127~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~5_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~29_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~32_combout\,
	datad => \ShiftUnit0|Mux7~29_combout\,
	combout => \ShiftUnit0|Mux127~5_combout\);

-- Location: LCCOMB_X56_Y38_N30
\ShiftUnit0|shift_in[35]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[35]~69_combout\ = (!\ExtWord~input_o\ & \A[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datad => \A[35]~input_o\,
	combout => \ShiftUnit0|shift_in[35]~69_combout\);

-- Location: LCCOMB_X56_Y38_N0
\ShiftUnit0|shift_in[35]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[35]~70_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[28]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_in[35]~69_combout\) # ((\ShiftUnit0|shift_input[63]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[35]~69_combout\,
	datab => \ShiftUnit0|shift_input[63]~0_combout\,
	datac => \A[28]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[35]~70_combout\);

-- Location: LCCOMB_X55_Y44_N0
\ShiftUnit0|shift_in[34]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[34]~71_combout\ = (\A[34]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[34]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[34]~71_combout\);

-- Location: LCCOMB_X55_Y44_N26
\ShiftUnit0|shift_in[34]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[34]~72_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[29]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_in[34]~71_combout\) # (\ShiftUnit0|shift_input[63]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \ShiftUnit0|shift_in[34]~71_combout\,
	datac => \ShiftUnit0|shift_input[63]~0_combout\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[34]~72_combout\);

-- Location: LCCOMB_X55_Y41_N8
\ShiftUnit0|Mux7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~36_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\ShiftUnit0|shift_in[35]~70_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|shift_in[34]~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[35]~70_combout\,
	datab => \ShiftUnit0|shift_in[34]~72_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~36_combout\);

-- Location: LCCOMB_X60_Y45_N6
\ShiftUnit0|shift_input[32]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_input[32]~2_combout\ = (\ShiftUnit0|shift_input[63]~0_combout\) # ((!\ExtWord~input_o\ & \A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftUnit0|shift_input[63]~0_combout\,
	datad => \A[32]~input_o\,
	combout => \ShiftUnit0|shift_input[32]~2_combout\);

-- Location: LCCOMB_X55_Y41_N2
\ShiftUnit0|Mux7~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~37_combout\ = (!\B[0]~input_o\ & ((\ShiftUnit0|Equal2~0_combout\ & ((\A[31]~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (\ShiftUnit0|shift_input[32]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[32]~2_combout\,
	datab => \A[31]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|Mux7~37_combout\);

-- Location: LCCOMB_X56_Y41_N30
\ShiftUnit0|shift_in[33]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[33]~73_combout\ = (!\ExtWord~input_o\ & \A[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datad => \A[33]~input_o\,
	combout => \ShiftUnit0|shift_in[33]~73_combout\);

-- Location: LCCOMB_X56_Y41_N0
\ShiftUnit0|shift_in[33]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[33]~74_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[30]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[33]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \A[30]~input_o\,
	datac => \ShiftUnit0|shift_in[33]~73_combout\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[33]~74_combout\);

-- Location: LCCOMB_X55_Y41_N20
\ShiftUnit0|Mux7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~38_combout\ = (\ShiftUnit0|Mux7~37_combout\) # ((\B[0]~input_o\ & \ShiftUnit0|shift_in[33]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~37_combout\,
	datac => \ShiftUnit0|shift_in[33]~74_combout\,
	combout => \ShiftUnit0|Mux7~38_combout\);

-- Location: LCCOMB_X55_Y41_N30
\ShiftUnit0|Mux7~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~39_combout\ = (\ShiftUnit0|Mux7~36_combout\) # ((!\B[1]~input_o\ & \ShiftUnit0|Mux7~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|Mux7~36_combout\,
	datad => \ShiftUnit0|Mux7~38_combout\,
	combout => \ShiftUnit0|Mux7~39_combout\);

-- Location: LCCOMB_X57_Y38_N4
\ShiftUnit0|shift_in[43]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[43]~61_combout\ = (\A[43]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[43]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[43]~61_combout\);

-- Location: LCCOMB_X57_Y38_N30
\ShiftUnit0|shift_in[43]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[43]~62_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[20]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[43]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|shift_in[43]~61_combout\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \A[20]~input_o\,
	combout => \ShiftUnit0|shift_in[43]~62_combout\);

-- Location: LCCOMB_X56_Y38_N10
\ShiftUnit0|shift_in[41]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[41]~63_combout\ = (\A[41]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[41]~63_combout\);

-- Location: LCCOMB_X56_Y38_N12
\ShiftUnit0|shift_in[41]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[41]~64_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[22]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_in[41]~63_combout\) # ((\ShiftUnit0|shift_input[63]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[41]~63_combout\,
	datab => \ShiftUnit0|shift_input[63]~0_combout\,
	datac => \A[22]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[41]~64_combout\);

-- Location: LCCOMB_X57_Y38_N8
\ShiftUnit0|Mux7~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~33_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[43]~62_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[41]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[43]~62_combout\,
	datad => \ShiftUnit0|shift_in[41]~64_combout\,
	combout => \ShiftUnit0|Mux7~33_combout\);

-- Location: LCCOMB_X59_Y38_N28
\ShiftUnit0|shift_in[42]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[42]~65_combout\ = (\A[42]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[42]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[42]~65_combout\);

-- Location: LCCOMB_X59_Y38_N14
\ShiftUnit0|shift_in[42]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[42]~66_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[21]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_input[63]~0_combout\) # (\ShiftUnit0|shift_in[42]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \ShiftUnit0|shift_input[63]~0_combout\,
	datad => \ShiftUnit0|shift_in[42]~65_combout\,
	combout => \ShiftUnit0|shift_in[42]~66_combout\);

-- Location: LCCOMB_X56_Y41_N10
\ShiftUnit0|shift_in[40]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[40]~67_combout\ = (!\ExtWord~input_o\ & \A[40]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \A[40]~input_o\,
	combout => \ShiftUnit0|shift_in[40]~67_combout\);

-- Location: LCCOMB_X56_Y41_N28
\ShiftUnit0|shift_in[40]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[40]~68_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[23]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_input[63]~0_combout\) # (\ShiftUnit0|shift_in[40]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \ShiftUnit0|shift_input[63]~0_combout\,
	datad => \ShiftUnit0|shift_in[40]~67_combout\,
	combout => \ShiftUnit0|shift_in[40]~68_combout\);

-- Location: LCCOMB_X59_Y38_N24
\ShiftUnit0|Mux7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~34_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[42]~66_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[40]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[42]~66_combout\,
	datad => \ShiftUnit0|shift_in[40]~68_combout\,
	combout => \ShiftUnit0|Mux7~34_combout\);

-- Location: LCCOMB_X58_Y38_N22
\ShiftUnit0|Mux7~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~35_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~33_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~33_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~34_combout\,
	combout => \ShiftUnit0|Mux7~35_combout\);

-- Location: LCCOMB_X58_Y40_N8
\ShiftUnit0|Mux127~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~6_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~35_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftUnit0|Mux7~39_combout\,
	datac => \ShiftUnit0|Mux7~35_combout\,
	combout => \ShiftUnit0|Mux127~6_combout\);

-- Location: LCCOMB_X58_Y40_N2
\ShiftUnit0|Mux127~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~7_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux127~5_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux127~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux127~5_combout\,
	datac => \ShiftUnit0|Mux127~6_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux127~7_combout\);

-- Location: LCCOMB_X62_Y42_N12
\ShiftUnit0|shift_in[1]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[1]~83_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[62]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[1]~input_o\,
	datad => \A[62]~input_o\,
	combout => \ShiftUnit0|shift_in[1]~83_combout\);

-- Location: LCCOMB_X61_Y42_N16
\ShiftUnit0|shift_input[63]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_input[63]~1_combout\ = (\ShiftUnit0|shift_input[63]~0_combout\) # ((!\ExtWord~input_o\ & \A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_input[63]~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[63]~input_o\,
	combout => \ShiftUnit0|shift_input[63]~1_combout\);

-- Location: LCCOMB_X62_Y42_N10
\ShiftUnit0|Mux127~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~9_combout\ = (!\B[0]~input_o\ & ((\ShiftUnit0|Equal2~0_combout\ & (\ShiftUnit0|shift_input[63]~1_combout\)) # (!\ShiftUnit0|Equal2~0_combout\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~1_combout\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|Mux127~9_combout\);

-- Location: LCCOMB_X62_Y42_N30
\ShiftUnit0|Mux127~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~10_combout\ = (!\B[1]~input_o\ & ((\ShiftUnit0|Mux127~9_combout\) # ((\ShiftUnit0|shift_in[1]~83_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[1]~83_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|Mux127~9_combout\,
	combout => \ShiftUnit0|Mux127~10_combout\);

-- Location: LCCOMB_X61_Y42_N20
\ShiftUnit0|shift_in[3]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[3]~84_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[60]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[60]~input_o\,
	combout => \ShiftUnit0|shift_in[3]~84_combout\);

-- Location: LCCOMB_X62_Y42_N16
\ShiftUnit0|shift_in[2]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[2]~85_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[61]~input_o\ & !\ExtWord~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[61]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[2]~85_combout\);

-- Location: LCCOMB_X61_Y41_N20
\ShiftUnit0|Mux7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~46_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|shift_in[3]~84_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|shift_in[2]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[3]~84_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|shift_in[2]~85_combout\,
	combout => \ShiftUnit0|Mux7~46_combout\);

-- Location: LCCOMB_X61_Y41_N30
\ShiftUnit0|Mux127~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~11_combout\ = (!\B[2]~input_o\ & ((\ShiftUnit0|Mux127~10_combout\) # ((\B[1]~input_o\ & \ShiftUnit0|Mux7~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|Mux127~10_combout\,
	datad => \ShiftUnit0|Mux7~46_combout\,
	combout => \ShiftUnit0|Mux127~11_combout\);

-- Location: LCCOMB_X63_Y45_N8
\ShiftUnit0|shift_in[6]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[6]~87_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[57]~input_o\ & (!\ExtWord~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[6]~input_o\,
	combout => \ShiftUnit0|shift_in[6]~87_combout\);

-- Location: LCCOMB_X63_Y45_N30
\ShiftUnit0|shift_in[7]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[7]~86_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[56]~input_o\ & !\ExtWord~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[56]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[7]~86_combout\);

-- Location: LCCOMB_X57_Y41_N14
\ShiftUnit0|Mux7~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~47_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\ShiftUnit0|shift_in[7]~86_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|shift_in[6]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[6]~87_combout\,
	datab => \ShiftUnit0|shift_in[7]~86_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~47_combout\);

-- Location: LCCOMB_X62_Y47_N14
\ShiftUnit0|shift_in[4]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[4]~89_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[59]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \A[59]~input_o\,
	combout => \ShiftUnit0|shift_in[4]~89_combout\);

-- Location: LCCOMB_X62_Y47_N28
\ShiftUnit0|shift_in[5]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[5]~88_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[58]~input_o\ & ((!\ExtWord~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[5]~88_combout\);

-- Location: LCCOMB_X61_Y41_N24
\ShiftUnit0|Mux7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~48_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|shift_in[5]~88_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|shift_in[4]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[4]~89_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|shift_in[5]~88_combout\,
	combout => \ShiftUnit0|Mux7~48_combout\);

-- Location: LCCOMB_X60_Y41_N18
\ShiftUnit0|Mux7~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~49_combout\ = (\ShiftUnit0|Mux7~47_combout\) # ((!\B[1]~input_o\ & \ShiftUnit0|Mux7~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~47_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|Mux7~48_combout\,
	combout => \ShiftUnit0|Mux7~49_combout\);

-- Location: LCCOMB_X60_Y41_N4
\ShiftUnit0|Mux127~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~12_combout\ = (!\B[3]~input_o\ & ((\ShiftUnit0|Mux127~11_combout\) # ((\B[2]~input_o\ & \ShiftUnit0|Mux7~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~11_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~49_combout\,
	combout => \ShiftUnit0|Mux127~12_combout\);

-- Location: LCCOMB_X60_Y38_N22
\ShiftUnit0|shift_in[15]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[15]~75_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[48]~input_o\ & (!\ExtWord~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Equal2~0_combout\,
	datab => \A[48]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[15]~input_o\,
	combout => \ShiftUnit0|shift_in[15]~75_combout\);

-- Location: LCCOMB_X60_Y38_N24
\ShiftUnit0|shift_in[13]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[13]~76_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[50]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Equal2~0_combout\,
	datab => \A[13]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[50]~input_o\,
	combout => \ShiftUnit0|shift_in[13]~76_combout\);

-- Location: LCCOMB_X60_Y38_N26
\ShiftUnit0|Mux7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~40_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[15]~75_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[13]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[15]~75_combout\,
	datab => \ShiftUnit0|shift_in[13]~76_combout\,
	datac => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~40_combout\);

-- Location: LCCOMB_X65_Y41_N10
\ShiftUnit0|shift_in[12]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[12]~78_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[51]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Equal2~0_combout\,
	datab => \A[12]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[51]~input_o\,
	combout => \ShiftUnit0|shift_in[12]~78_combout\);

-- Location: LCCOMB_X65_Y41_N0
\ShiftUnit0|shift_in[14]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[14]~77_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[49]~input_o\ & (!\ExtWord~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Equal2~0_combout\,
	datab => \A[49]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[14]~input_o\,
	combout => \ShiftUnit0|shift_in[14]~77_combout\);

-- Location: LCCOMB_X65_Y41_N28
\ShiftUnit0|Mux7~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~41_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[14]~77_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[12]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[12]~78_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[14]~77_combout\,
	combout => \ShiftUnit0|Mux7~41_combout\);

-- Location: LCCOMB_X58_Y37_N12
\ShiftUnit0|Mux7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~42_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~40_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~40_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~41_combout\,
	combout => \ShiftUnit0|Mux7~42_combout\);

-- Location: LCCOMB_X63_Y45_N20
\ShiftUnit0|shift_in[9]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[9]~80_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[54]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \A[54]~input_o\,
	combout => \ShiftUnit0|shift_in[9]~80_combout\);

-- Location: LCCOMB_X60_Y38_N20
\ShiftUnit0|shift_in[11]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[11]~79_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[52]~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[52]~input_o\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \A[11]~input_o\,
	combout => \ShiftUnit0|shift_in[11]~79_combout\);

-- Location: LCCOMB_X61_Y41_N16
\ShiftUnit0|Mux7~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~43_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[11]~79_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[9]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[9]~80_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[11]~79_combout\,
	combout => \ShiftUnit0|Mux7~43_combout\);

-- Location: LCCOMB_X65_Y41_N30
\ShiftUnit0|shift_in[8]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[8]~82_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[55]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[55]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[8]~82_combout\);

-- Location: LCCOMB_X65_Y44_N18
\ShiftUnit0|shift_in[10]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[10]~81_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[53]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \A[53]~input_o\,
	combout => \ShiftUnit0|shift_in[10]~81_combout\);

-- Location: LCCOMB_X65_Y41_N16
\ShiftUnit0|Mux7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~44_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[10]~81_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[8]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[8]~82_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[10]~81_combout\,
	combout => \ShiftUnit0|Mux7~44_combout\);

-- Location: LCCOMB_X61_Y41_N26
\ShiftUnit0|Mux7~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~45_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~43_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~43_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~44_combout\,
	combout => \ShiftUnit0|Mux7~45_combout\);

-- Location: LCCOMB_X60_Y41_N24
\ShiftUnit0|Mux127~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~8_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|Mux7~42_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~42_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~45_combout\,
	combout => \ShiftUnit0|Mux127~8_combout\);

-- Location: LCCOMB_X60_Y41_N22
\ShiftUnit0|Mux127~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~13_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|Mux127~7_combout\)) # (!\ShiftUnit0|shamt[5]~0_combout\ & (((\ShiftUnit0|Mux127~12_combout\) # (\ShiftUnit0|Mux127~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \ShiftUnit0|Mux127~7_combout\,
	datac => \ShiftUnit0|Mux127~12_combout\,
	datad => \ShiftUnit0|Mux127~8_combout\,
	combout => \ShiftUnit0|Mux127~13_combout\);

-- Location: LCCOMB_X56_Y38_N2
\ShiftUnit0|shift_in[26]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[26]~35_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[37]~input_o\ & ((!\ExtWord~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[26]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[26]~35_combout\);

-- Location: LCCOMB_X56_Y38_N20
\ShiftUnit0|shift_in[24]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[24]~36_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[39]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[24]~input_o\,
	datac => \A[39]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[24]~36_combout\);

-- Location: LCCOMB_X57_Y41_N10
\ShiftUnit0|Mux7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~19_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[26]~35_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[24]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[26]~35_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[24]~36_combout\,
	combout => \ShiftUnit0|Mux7~19_combout\);

-- Location: LCCOMB_X56_Y41_N2
\ShiftUnit0|shift_in[27]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[27]~33_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[36]~input_o\ & (!\ExtWord~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[27]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[27]~33_combout\);

-- Location: LCCOMB_X56_Y41_N12
\ShiftUnit0|shift_in[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[25]~34_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[38]~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[38]~input_o\,
	datac => \A[25]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[25]~34_combout\);

-- Location: LCCOMB_X57_Y41_N16
\ShiftUnit0|Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~18_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[27]~33_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[25]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[27]~33_combout\,
	datab => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[25]~34_combout\,
	combout => \ShiftUnit0|Mux7~18_combout\);

-- Location: LCCOMB_X57_Y41_N4
\ShiftUnit0|Mux7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~20_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~18_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~19_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~18_combout\,
	combout => \ShiftUnit0|Mux7~20_combout\);

-- Location: LCCOMB_X55_Y41_N10
\ShiftUnit0|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~15_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Equal2~0_combout\ & (\ShiftUnit0|shift_input[32]~2_combout\)) # (!\ShiftUnit0|Equal2~0_combout\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[32]~2_combout\,
	datab => \A[31]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|Mux7~15_combout\);

-- Location: LCCOMB_X56_Y41_N8
\ShiftUnit0|shift_in[30]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[30]~32_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[33]~input_o\ & !\ExtWord~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[33]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[30]~32_combout\);

-- Location: LCCOMB_X55_Y41_N4
\ShiftUnit0|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~16_combout\ = (\ShiftUnit0|Mux7~15_combout\) # ((\ShiftUnit0|shift_in[30]~32_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~15_combout\,
	datab => \ShiftUnit0|shift_in[30]~32_combout\,
	datac => \B[0]~input_o\,
	combout => \ShiftUnit0|Mux7~16_combout\);

-- Location: LCCOMB_X55_Y44_N22
\ShiftUnit0|shift_in[29]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[29]~30_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[34]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[34]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[29]~30_combout\);

-- Location: LCCOMB_X56_Y38_N16
\ShiftUnit0|shift_in[28]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[28]~31_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (!\ExtWord~input_o\ & (\A[35]~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[35]~input_o\,
	datac => \A[28]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[28]~31_combout\);

-- Location: LCCOMB_X55_Y41_N16
\ShiftUnit0|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~14_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\ShiftUnit0|shift_in[29]~30_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|shift_in[28]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[29]~30_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|shift_in[28]~31_combout\,
	combout => \ShiftUnit0|Mux7~14_combout\);

-- Location: LCCOMB_X55_Y41_N14
\ShiftUnit0|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~17_combout\ = (\ShiftUnit0|Mux7~14_combout\) # ((\B[1]~input_o\ & \ShiftUnit0|Mux7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|Mux7~16_combout\,
	datad => \ShiftUnit0|Mux7~14_combout\,
	combout => \ShiftUnit0|Mux7~17_combout\);

-- Location: LCCOMB_X58_Y40_N24
\ShiftUnit0|Mux127~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~2_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\ShiftUnit0|Mux7~17_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~20_combout\,
	datab => \ShiftUnit0|Mux7~17_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux127~2_combout\);

-- Location: LCCOMB_X57_Y38_N28
\ShiftUnit0|shift_in[18]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[18]~43_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[45]~input_o\ & (!\ExtWord~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \A[18]~input_o\,
	combout => \ShiftUnit0|shift_in[18]~43_combout\);

-- Location: LCCOMB_X57_Y38_N6
\ShiftUnit0|shift_in[16]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[16]~44_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[47]~input_o\ & !\ExtWord~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[47]~input_o\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[16]~44_combout\);

-- Location: LCCOMB_X57_Y38_N16
\ShiftUnit0|Mux7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~25_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[18]~43_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[16]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[18]~43_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[16]~44_combout\,
	combout => \ShiftUnit0|Mux7~25_combout\);

-- Location: LCCOMB_X59_Y38_N12
\ShiftUnit0|shift_in[19]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[19]~41_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[44]~input_o\ & !\ExtWord~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[44]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[19]~41_combout\);

-- Location: LCCOMB_X59_Y38_N6
\ShiftUnit0|shift_in[17]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[17]~42_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (!\ExtWord~input_o\ & ((\A[46]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[17]~input_o\,
	datac => \A[46]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[17]~42_combout\);

-- Location: LCCOMB_X59_Y38_N16
\ShiftUnit0|Mux7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~24_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[19]~41_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[17]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[19]~41_combout\,
	datab => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[17]~42_combout\,
	combout => \ShiftUnit0|Mux7~24_combout\);

-- Location: LCCOMB_X58_Y37_N2
\ShiftUnit0|Mux7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~26_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~24_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~25_combout\,
	datad => \ShiftUnit0|Mux7~24_combout\,
	combout => \ShiftUnit0|Mux7~26_combout\);

-- Location: LCCOMB_X56_Y38_N14
\ShiftUnit0|shift_in[22]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[22]~39_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[41]~input_o\ & ((!\ExtWord~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[22]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[22]~39_combout\);

-- Location: LCCOMB_X57_Y38_N24
\ShiftUnit0|shift_in[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[20]~40_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[43]~input_o\ & (!\ExtWord~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (((\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \A[20]~input_o\,
	combout => \ShiftUnit0|shift_in[20]~40_combout\);

-- Location: LCCOMB_X57_Y38_N26
\ShiftUnit0|Mux7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~22_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[22]~39_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[20]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[22]~39_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[20]~40_combout\,
	combout => \ShiftUnit0|Mux7~22_combout\);

-- Location: LCCOMB_X56_Y41_N14
\ShiftUnit0|shift_in[23]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[23]~37_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((!\ExtWord~input_o\ & \A[40]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[40]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[23]~37_combout\);

-- Location: LCCOMB_X59_Y38_N0
\ShiftUnit0|shift_in[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[21]~38_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[42]~input_o\ & !\ExtWord~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[42]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[21]~38_combout\);

-- Location: LCCOMB_X59_Y38_N26
\ShiftUnit0|Mux7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~21_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[23]~37_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[21]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[23]~37_combout\,
	datab => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[21]~38_combout\,
	combout => \ShiftUnit0|Mux7~21_combout\);

-- Location: LCCOMB_X58_Y37_N24
\ShiftUnit0|Mux7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~23_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~21_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~22_combout\,
	datad => \ShiftUnit0|Mux7~21_combout\,
	combout => \ShiftUnit0|Mux7~23_combout\);

-- Location: LCCOMB_X58_Y40_N10
\ShiftUnit0|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux47~0_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux7~23_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~26_combout\,
	datad => \ShiftUnit0|Mux7~23_combout\,
	combout => \ShiftUnit0|Mux47~0_combout\);

-- Location: LCCOMB_X58_Y40_N20
\ShiftUnit0|Mux127~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~3_combout\ = (\ShiftUnit0|Mux127~2_combout\) # ((!\B[3]~input_o\ & \ShiftUnit0|Mux47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux127~2_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux47~0_combout\,
	combout => \ShiftUnit0|Mux127~3_combout\);

-- Location: LCCOMB_X62_Y45_N4
\ShiftUnit0|shift_in[61]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[61]~16_combout\ = (!\ExtWord~input_o\ & \A[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datad => \A[61]~input_o\,
	combout => \ShiftUnit0|shift_in[61]~16_combout\);

-- Location: LCCOMB_X62_Y42_N8
\ShiftUnit0|shift_in[61]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[61]~17_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[2]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[61]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \ShiftUnit0|shift_in[61]~16_combout\,
	datad => \A[2]~input_o\,
	combout => \ShiftUnit0|shift_in[61]~17_combout\);

-- Location: LCCOMB_X61_Y42_N18
\ShiftUnit0|shift_in[60]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[60]~18_combout\ = (!\ExtWord~input_o\ & \A[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \A[60]~input_o\,
	combout => \ShiftUnit0|shift_in[60]~18_combout\);

-- Location: LCCOMB_X61_Y42_N28
\ShiftUnit0|shift_in[60]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[60]~19_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[3]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_input[63]~0_combout\) # (\ShiftUnit0|shift_in[60]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \ShiftUnit0|shift_input[63]~0_combout\,
	datad => \ShiftUnit0|shift_in[60]~18_combout\,
	combout => \ShiftUnit0|shift_in[60]~19_combout\);

-- Location: LCCOMB_X61_Y42_N6
\ShiftUnit0|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~6_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\ShiftUnit0|shift_in[61]~17_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|shift_in[60]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[61]~17_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[60]~19_combout\,
	combout => \ShiftUnit0|Mux7~6_combout\);

-- Location: LCCOMB_X62_Y42_N18
\ShiftUnit0|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~7_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Equal2~0_combout\ & ((\A[0]~input_o\))) # (!\ShiftUnit0|Equal2~0_combout\ & (\ShiftUnit0|shift_input[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~1_combout\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|Mux7~7_combout\);

-- Location: LCCOMB_X62_Y42_N20
\ShiftUnit0|shift_in[62]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[62]~20_combout\ = (!\ExtWord~input_o\ & \A[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datad => \A[62]~input_o\,
	combout => \ShiftUnit0|shift_in[62]~20_combout\);

-- Location: LCCOMB_X62_Y42_N6
\ShiftUnit0|shift_in[62]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[62]~21_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[1]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[62]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[1]~input_o\,
	datad => \ShiftUnit0|shift_in[62]~20_combout\,
	combout => \ShiftUnit0|shift_in[62]~21_combout\);

-- Location: LCCOMB_X62_Y42_N24
\ShiftUnit0|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~8_combout\ = (\ShiftUnit0|Mux7~7_combout\) # ((!\B[0]~input_o\ & \ShiftUnit0|shift_in[62]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~7_combout\,
	datad => \ShiftUnit0|shift_in[62]~21_combout\,
	combout => \ShiftUnit0|Mux7~8_combout\);

-- Location: LCCOMB_X61_Y42_N26
\ShiftUnit0|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~9_combout\ = (\ShiftUnit0|Mux7~6_combout\) # ((\B[1]~input_o\ & \ShiftUnit0|Mux7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~6_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|Mux7~8_combout\,
	combout => \ShiftUnit0|Mux7~9_combout\);

-- Location: LCCOMB_X62_Y47_N20
\ShiftUnit0|shift_in[59]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[59]~22_combout\ = (!\ExtWord~input_o\ & \A[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datad => \A[59]~input_o\,
	combout => \ShiftUnit0|shift_in[59]~22_combout\);

-- Location: LCCOMB_X62_Y47_N6
\ShiftUnit0|shift_in[59]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[59]~23_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[4]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_in[59]~22_combout\) # (\ShiftUnit0|shift_input[63]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \ShiftUnit0|shift_in[59]~22_combout\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \ShiftUnit0|shift_input[63]~0_combout\,
	combout => \ShiftUnit0|shift_in[59]~23_combout\);

-- Location: LCCOMB_X63_Y45_N12
\ShiftUnit0|shift_in[57]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[57]~24_combout\ = (\A[57]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[57]~24_combout\);

-- Location: LCCOMB_X63_Y45_N6
\ShiftUnit0|shift_in[57]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[57]~25_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[6]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[57]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[6]~input_o\,
	datad => \ShiftUnit0|shift_in[57]~24_combout\,
	combout => \ShiftUnit0|shift_in[57]~25_combout\);

-- Location: LCCOMB_X63_Y41_N20
\ShiftUnit0|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~10_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[59]~23_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[57]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[59]~23_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[57]~25_combout\,
	combout => \ShiftUnit0|Mux7~10_combout\);

-- Location: LCCOMB_X62_Y47_N24
\ShiftUnit0|shift_in[58]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[58]~26_combout\ = (!\ExtWord~input_o\ & \A[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datad => \A[58]~input_o\,
	combout => \ShiftUnit0|shift_in[58]~26_combout\);

-- Location: LCCOMB_X62_Y47_N26
\ShiftUnit0|shift_in[58]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[58]~27_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[5]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[58]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[5]~input_o\,
	datad => \ShiftUnit0|shift_in[58]~26_combout\,
	combout => \ShiftUnit0|shift_in[58]~27_combout\);

-- Location: LCCOMB_X63_Y45_N0
\ShiftUnit0|shift_in[56]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[56]~28_combout\ = (!\ExtWord~input_o\ & \A[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \A[56]~input_o\,
	combout => \ShiftUnit0|shift_in[56]~28_combout\);

-- Location: LCCOMB_X63_Y45_N26
\ShiftUnit0|shift_in[56]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[56]~29_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[7]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[56]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[7]~input_o\,
	datad => \ShiftUnit0|shift_in[56]~28_combout\,
	combout => \ShiftUnit0|shift_in[56]~29_combout\);

-- Location: LCCOMB_X63_Y41_N6
\ShiftUnit0|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~11_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[58]~27_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[56]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[58]~27_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[56]~29_combout\,
	combout => \ShiftUnit0|Mux7~11_combout\);

-- Location: LCCOMB_X63_Y41_N0
\ShiftUnit0|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~12_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~10_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~10_combout\,
	datad => \ShiftUnit0|Mux7~11_combout\,
	combout => \ShiftUnit0|Mux7~12_combout\);

-- Location: LCCOMB_X60_Y42_N26
\ShiftUnit0|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~13_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux7~9_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux7~9_combout\,
	datad => \ShiftUnit0|Mux7~12_combout\,
	combout => \ShiftUnit0|Mux7~13_combout\);

-- Location: LCCOMB_X60_Y38_N0
\ShiftUnit0|shift_in[52]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[52]~6_combout\ = (!\ExtWord~input_o\ & \A[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \A[52]~input_o\,
	combout => \ShiftUnit0|shift_in[52]~6_combout\);

-- Location: LCCOMB_X60_Y38_N2
\ShiftUnit0|shift_in[52]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[52]~7_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[11]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[52]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \A[11]~input_o\,
	datac => \ShiftUnit0|Equal2~0_combout\,
	datad => \ShiftUnit0|shift_in[52]~6_combout\,
	combout => \ShiftUnit0|shift_in[52]~7_combout\);

-- Location: LCCOMB_X63_Y45_N16
\ShiftUnit0|shift_in[54]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[54]~4_combout\ = (!\ExtWord~input_o\ & \A[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \A[54]~input_o\,
	combout => \ShiftUnit0|shift_in[54]~4_combout\);

-- Location: LCCOMB_X63_Y45_N18
\ShiftUnit0|shift_in[54]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[54]~5_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[9]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[54]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[9]~input_o\,
	datad => \ShiftUnit0|shift_in[54]~4_combout\,
	combout => \ShiftUnit0|shift_in[54]~5_combout\);

-- Location: LCCOMB_X63_Y41_N16
\ShiftUnit0|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~1_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[54]~5_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[52]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[52]~7_combout\,
	datab => \ShiftUnit0|shift_in[54]~5_combout\,
	datac => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~1_combout\);

-- Location: LCCOMB_X65_Y44_N22
\ShiftUnit0|shift_in[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[53]~2_combout\ = (\A[53]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[53]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[53]~2_combout\);

-- Location: LCCOMB_X65_Y44_N8
\ShiftUnit0|shift_in[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[53]~3_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[10]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_in[53]~2_combout\) # ((\ShiftUnit0|shift_input[63]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[53]~2_combout\,
	datab => \ShiftUnit0|Equal2~0_combout\,
	datac => \A[10]~input_o\,
	datad => \ShiftUnit0|shift_input[63]~0_combout\,
	combout => \ShiftUnit0|shift_in[53]~3_combout\);

-- Location: LCCOMB_X65_Y41_N8
\ShiftUnit0|shift_in[55]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[55]~0_combout\ = (\A[55]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[55]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[55]~0_combout\);

-- Location: LCCOMB_X65_Y41_N2
\ShiftUnit0|shift_in[55]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[55]~1_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[8]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[55]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[63]~0_combout\,
	datab => \A[8]~input_o\,
	datac => \ShiftUnit0|shift_in[55]~0_combout\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|shift_in[55]~1_combout\);

-- Location: LCCOMB_X65_Y41_N12
\ShiftUnit0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~0_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[55]~1_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[53]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[53]~3_combout\,
	datad => \ShiftUnit0|shift_in[55]~1_combout\,
	combout => \ShiftUnit0|Mux7~0_combout\);

-- Location: LCCOMB_X63_Y41_N10
\ShiftUnit0|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~2_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~0_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~1_combout\,
	datad => \ShiftUnit0|Mux7~0_combout\,
	combout => \ShiftUnit0|Mux7~2_combout\);

-- Location: LCCOMB_X65_Y41_N18
\ShiftUnit0|shift_in[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[49]~10_combout\ = (\A[49]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[49]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \ShiftUnit0|shift_in[49]~10_combout\);

-- Location: LCCOMB_X65_Y41_N4
\ShiftUnit0|shift_in[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[49]~11_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[14]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_input[63]~0_combout\) # (\ShiftUnit0|shift_in[49]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Equal2~0_combout\,
	datab => \A[14]~input_o\,
	datac => \ShiftUnit0|shift_input[63]~0_combout\,
	datad => \ShiftUnit0|shift_in[49]~10_combout\,
	combout => \ShiftUnit0|shift_in[49]~11_combout\);

-- Location: LCCOMB_X65_Y41_N6
\ShiftUnit0|shift_in[51]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[51]~8_combout\ = (!\ExtWord~input_o\ & \A[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \A[51]~input_o\,
	combout => \ShiftUnit0|shift_in[51]~8_combout\);

-- Location: LCCOMB_X65_Y41_N24
\ShiftUnit0|shift_in[51]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[51]~9_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (((\A[12]~input_o\)))) # (!\ShiftUnit0|Equal2~0_combout\ & ((\ShiftUnit0|shift_input[63]~0_combout\) # ((\ShiftUnit0|shift_in[51]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Equal2~0_combout\,
	datab => \ShiftUnit0|shift_input[63]~0_combout\,
	datac => \A[12]~input_o\,
	datad => \ShiftUnit0|shift_in[51]~8_combout\,
	combout => \ShiftUnit0|shift_in[51]~9_combout\);

-- Location: LCCOMB_X65_Y41_N22
\ShiftUnit0|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~3_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[51]~9_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[49]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[49]~11_combout\,
	datad => \ShiftUnit0|shift_in[51]~9_combout\,
	combout => \ShiftUnit0|Mux7~3_combout\);

-- Location: LCCOMB_X60_Y38_N16
\ShiftUnit0|shift_in[48]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[48]~14_combout\ = (!\ExtWord~input_o\ & \A[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \A[48]~input_o\,
	combout => \ShiftUnit0|shift_in[48]~14_combout\);

-- Location: LCCOMB_X60_Y38_N18
\ShiftUnit0|shift_in[48]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[48]~15_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[15]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_input[63]~0_combout\) # (\ShiftUnit0|shift_in[48]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Equal2~0_combout\,
	datab => \A[15]~input_o\,
	datac => \ShiftUnit0|shift_input[63]~0_combout\,
	datad => \ShiftUnit0|shift_in[48]~14_combout\,
	combout => \ShiftUnit0|shift_in[48]~15_combout\);

-- Location: LCCOMB_X60_Y38_N12
\ShiftUnit0|shift_in[50]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[50]~12_combout\ = (!\ExtWord~input_o\ & \A[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \A[50]~input_o\,
	combout => \ShiftUnit0|shift_in[50]~12_combout\);

-- Location: LCCOMB_X60_Y38_N14
\ShiftUnit0|shift_in[50]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_in[50]~13_combout\ = (\ShiftUnit0|Equal2~0_combout\ & (\A[13]~input_o\)) # (!\ShiftUnit0|Equal2~0_combout\ & (((\ShiftUnit0|shift_input[63]~0_combout\) # (\ShiftUnit0|shift_in[50]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Equal2~0_combout\,
	datab => \A[13]~input_o\,
	datac => \ShiftUnit0|shift_input[63]~0_combout\,
	datad => \ShiftUnit0|shift_in[50]~12_combout\,
	combout => \ShiftUnit0|shift_in[50]~13_combout\);

-- Location: LCCOMB_X60_Y38_N28
\ShiftUnit0|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~4_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[50]~13_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[48]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ShiftUnit0|shift_in[48]~15_combout\,
	datac => \ShiftUnit0|shift_in[50]~13_combout\,
	combout => \ShiftUnit0|Mux7~4_combout\);

-- Location: LCCOMB_X58_Y38_N24
\ShiftUnit0|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~5_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~3_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~3_combout\,
	datad => \ShiftUnit0|Mux7~4_combout\,
	combout => \ShiftUnit0|Mux7~5_combout\);

-- Location: LCCOMB_X60_Y42_N24
\ShiftUnit0|Mux127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|Mux7~2_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~2_combout\,
	datab => \ShiftUnit0|Mux7~5_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux127~0_combout\);

-- Location: LCCOMB_X58_Y42_N8
\ShiftUnit0|Mux127~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~1_combout\ = (\ShiftUnit0|Mux127~0_combout\) # ((\ShiftUnit0|Mux7~13_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~13_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux127~0_combout\,
	combout => \ShiftUnit0|Mux127~1_combout\);

-- Location: LCCOMB_X58_Y42_N26
\ShiftUnit0|Mux127~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~4_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux127~1_combout\))) # (!\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|Mux127~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \ShiftUnit0|Mux127~3_combout\,
	datac => \ShiftUnit0|Mux127~1_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux127~4_combout\);

-- Location: LCCOMB_X63_Y42_N24
\ShiftUnit0|Mux127~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~14_combout\ = (\ShiftUnit0|Mux127~4_combout\) # ((\ShiftUnit0|Mux127~13_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~13_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux127~4_combout\,
	combout => \ShiftUnit0|Mux127~14_combout\);

-- Location: LCCOMB_X62_Y42_N2
\ShiftUnit0|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux64~1_combout\ = (!\B[1]~input_o\ & (\A[0]~input_o\ & (!\B[2]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftUnit0|Mux64~1_combout\);

-- Location: LCCOMB_X63_Y42_N18
\ShiftUnit0|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux64~0_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|Mux64~0_combout\);

-- Location: LCCOMB_X63_Y41_N2
\ShiftUnit0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux0~0_combout\ = (!\B[0]~input_o\ & (!\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y42_N28
\ShiftUnit0|Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux64~2_combout\ = (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\)) # (!\ShiftFN[0]~input_o\ & (((!\ShiftUnit0|Mux0~0_combout\) # (!\ShiftUnit0|Mux64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftUnit0|Mux64~0_combout\,
	datac => \ShiftUnit0|Mux0~0_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \ShiftUnit0|Mux64~2_combout\);

-- Location: LCCOMB_X63_Y42_N30
\ShiftUnit0|Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux64~3_combout\ = (\ShiftUnit0|Mux64~2_combout\ & (\ShiftUnit0|Mux64~1_combout\ & ((\ShiftUnit0|Mux64~0_combout\)))) # (!\ShiftUnit0|Mux64~2_combout\ & (((\ShiftUnit0|shift_input[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux64~1_combout\,
	datab => \ShiftUnit0|shift_input[63]~1_combout\,
	datac => \ShiftUnit0|Mux64~0_combout\,
	datad => \ShiftUnit0|Mux64~2_combout\,
	combout => \ShiftUnit0|Mux64~3_combout\);

-- Location: LCCOMB_X63_Y42_N0
\Y_arthmetic[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_arthmetic[0]~0_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftUnit0|Mux127~14_combout\)))) # (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & ((\ShiftUnit0|Mux64~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftUnit0|Mux127~14_combout\,
	datac => \ShiftUnit0|Mux64~3_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_arthmetic[0]~0_combout\);

-- Location: LCCOMB_X65_Y42_N10
\Y_arthmetic[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_arthmetic[0]~1_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \Y_arthmetic[0]~1_combout\);

-- Location: LCCOMB_X63_Y42_N26
\Y_arthmetic[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_arthmetic[0]~2_combout\ = (\Y_arthmetic[0]~0_combout\) # ((!\ShiftFN[0]~input_o\ & (\Y_arthmetic[0]~1_combout\ & !\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_arthmetic[0]~0_combout\,
	datac => \Y_arthmetic[0]~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_arthmetic[0]~2_combout\);

-- Location: LCCOMB_X57_Y45_N26
\Adder0|P[31]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[31]~28_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[31]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P[31]~28_combout\);

-- Location: LCCOMB_X61_Y44_N8
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[6]~7_combout\ = (!\Adder0|BLAN1|G_in_half[13]~16_combout\ & (((!\Adder0|P[27]~24_combout\) # (!\Adder0|P\(26))) # (!\Adder0|BLAN1|G_in_half[12]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[12]~17_combout\,
	datab => \Adder0|P\(26),
	datac => \Adder0|BLAN1|G_in_half[13]~16_combout\,
	datad => \Adder0|P[27]~24_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[6]~7_combout\);

-- Location: LCCOMB_X62_Y44_N14
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(6) = ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\) # 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out~0_combout\)))) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[6]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[6]~7_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out~0_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(6));

-- Location: LCCOMB_X55_Y44_N12
\Adder0|BLAN1|recurse:inner|G_out[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(14) = (\Adder0|BLAN1|G_in_half[14]~15_combout\) # ((\Adder0|BLAN1|recurse:inner|G_out~3_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[14]~15_combout\,
	datab => \Adder0|BLAN1|recurse:inner|G_out~3_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(6),
	combout => \Adder0|BLAN1|recurse:inner|G_out\(14));

-- Location: LCCOMB_X57_Y45_N8
\Adder0|BLAN1|G_out[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[30]~1_combout\ = (\Adder0|BLAN1|recurse:inner|G_out\(14) & ((\A[30]~input_o\) # (\B[30]~input_o\ $ (\AddNSub~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|G_out\(14) & (\A[30]~input_o\ & (\B[30]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out\(14),
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_out[30]~1_combout\);

-- Location: LCCOMB_X55_Y44_N8
\Adder0|P[29]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[29]~27_combout\ = \B[29]~input_o\ $ (\A[29]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P[29]~27_combout\);

-- Location: LCCOMB_X62_Y44_N28
\Adder0|Carries~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~13_combout\ = (\Adder0|Carries~9_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~9_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\,
	combout => \Adder0|Carries~13_combout\);

-- Location: LCCOMB_X55_Y44_N18
\Adder0|Carries~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~14_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\ & (\Adder0|P\(28) & (\Adder0|P[29]~27_combout\ & \Adder0|Carries~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\,
	datab => \Adder0|P\(28),
	datac => \Adder0|P[29]~27_combout\,
	datad => \Adder0|Carries~13_combout\,
	combout => \Adder0|Carries~14_combout\);

-- Location: LCCOMB_X57_Y45_N28
\Adder0|S[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(31) = \Adder0|P[31]~28_combout\ $ (((\Adder0|BLAN1|G_out[30]~1_combout\) # ((\Adder0|P\(30) & \Adder0|Carries~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[31]~28_combout\,
	datab => \Adder0|P\(30),
	datac => \Adder0|BLAN1|G_out[30]~1_combout\,
	datad => \Adder0|Carries~14_combout\,
	combout => \Adder0|S\(31));

-- Location: LCCOMB_X61_Y46_N0
\Adder0|Carries~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~11_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~13_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|P_out[2]~0_combout\ & \Adder0|Carries~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~13_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|P_out[2]~0_combout\,
	datad => \Adder0|Carries~10_combout\,
	combout => \Adder0|Carries~11_combout\);

-- Location: LCCOMB_X62_Y45_N10
\Adder0|P[61]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[61]~26_combout\ = \AddNSub~input_o\ $ (\B[61]~input_o\ $ (\A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Adder0|P[61]~26_combout\);

-- Location: LCCOMB_X63_Y46_N26
\Adder0|Carries~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~12_combout\ = (\Adder0|Carries~11_combout\ & (\Adder0|P\(60) & (\Adder0|P[61]~26_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~11_combout\,
	datab => \Adder0|P\(60),
	datac => \Adder0|P[61]~26_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\,
	combout => \Adder0|Carries~12_combout\);

-- Location: LCCOMB_X62_Y44_N2
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~1_combout\) # 
-- ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~1_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\);

-- Location: LCCOMB_X62_Y44_N22
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[0]~6_combout\) # 
-- ((\Adder0|BLAN1|recurse:inner|G_in_half\(0) & \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_in_half\(0),
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[0]~6_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[0]~7_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\);

-- Location: LCCOMB_X62_Y44_N24
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\ & 
-- ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[3]~11_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\);

-- Location: LCCOMB_X58_Y47_N28
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2) = (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~2_combout\) # 
-- ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|P_out[2]~0_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\) # 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|P_out[2]~0_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[2]~2_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2));

-- Location: LCCOMB_X61_Y48_N30
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~6_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~1_combout\) # 
-- ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2) & \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2),
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~13_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~1_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~6_combout\);

-- Location: LCCOMB_X63_Y46_N6
\Adder0|BLAN1|recurse:inner|G_out[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(30) = (\Adder0|BLAN1|G_in_half[30]~1_combout\) # ((\Adder0|BLAN1|recurse:inner|G_out~0_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~6_combout\) # 
-- (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[30]~1_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]~5_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~6_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out~0_combout\,
	combout => \Adder0|BLAN1|recurse:inner|G_out\(30));

-- Location: LCCOMB_X63_Y46_N24
\Adder0|BLAN1|G_out[62]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[62]~0_combout\ = (\Adder0|BLAN1|recurse:inner|G_out\(30) & ((\A[62]~input_o\) # (\AddNSub~input_o\ $ (\B[62]~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|G_out\(30) & (\A[62]~input_o\ & (\AddNSub~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out\(30),
	datab => \A[62]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[62]~input_o\,
	combout => \Adder0|BLAN1|G_out[62]~0_combout\);

-- Location: LCCOMB_X63_Y46_N20
\Adder0|Carries[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(63) = (\Adder0|BLAN1|G_out[62]~0_combout\) # ((\Adder0|P\(62) & \Adder0|Carries~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|P\(62),
	datac => \Adder0|Carries~12_combout\,
	datad => \Adder0|BLAN1|G_out[62]~0_combout\,
	combout => \Adder0|Carries\(63));

-- Location: LCCOMB_X63_Y46_N14
\Y_adder[63]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[63]~2_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|P[63]~25_combout\ $ (\Adder0|Carries\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \Adder0|P[63]~25_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder0|Carries\(63),
	combout => \Y_adder[63]~2_combout\);

-- Location: LCCOMB_X63_Y46_N8
\AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = \Adder0|Cout~3_combout\ $ (\Y_adder[63]~2_combout\ $ (\Adder0|Carries\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|Cout~3_combout\,
	datac => \Y_adder[63]~2_combout\,
	datad => \Adder0|Carries\(63),
	combout => \AltB~0_combout\);

-- Location: LCCOMB_X63_Y42_N4
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\) # ((\AltB~0_combout\)))) # (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & (\Y_arthmetic[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_arthmetic[0]~2_combout\,
	datad => \AltB~0_combout\,
	combout => \Mux63~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LCCOMB_X65_Y42_N16
\LogicUnit0|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit0|Mux63~0_combout\ = (\B[0]~input_o\ & ((\LogicFN[1]~input_o\ & ((\A[0]~input_o\) # (\LogicFN[0]~input_o\))) # (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[0]~input_o\))))) # (!\B[0]~input_o\ & (((\A[0]~input_o\ & 
-- \LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \LogicUnit0|Mux63~0_combout\);

-- Location: LCCOMB_X63_Y42_N22
\Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\FuncClass[0]~input_o\ & ((\Mux63~0_combout\ & (!\Adder0|Cout~3_combout\)) # (!\Mux63~0_combout\ & ((\LogicUnit0|Mux63~0_combout\))))) # (!\FuncClass[0]~input_o\ & (((\Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Cout~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux63~0_combout\,
	datad => \LogicUnit0|Mux63~0_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X65_Y42_N12
\Adder0|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(1) = \Adder0|P[1]~18_combout\ $ (((\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\AddNSub~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Adder0|P[1]~18_combout\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|S\(1));

-- Location: LCCOMB_X65_Y42_N0
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[1]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X61_Y42_N14
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\FuncClass[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X63_Y41_N8
\ShiftUnit0|Mux7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~58_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[60]~19_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[58]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[58]~27_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[60]~19_combout\,
	combout => \ShiftUnit0|Mux7~58_combout\);

-- Location: LCCOMB_X63_Y41_N18
\ShiftUnit0|Mux7~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~59_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~58_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~10_combout\,
	datac => \ShiftUnit0|Mux7~58_combout\,
	combout => \ShiftUnit0|Mux7~59_combout\);

-- Location: LCCOMB_X61_Y42_N12
\ShiftUnit0|Mux7~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~55_combout\ = (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \ShiftUnit0|Mux7~55_combout\);

-- Location: LCCOMB_X61_Y42_N22
\ShiftUnit0|Mux7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~56_combout\ = (\ShiftUnit0|Mux7~55_combout\ & (\A[0]~input_o\ & (!\B[0]~input_o\))) # (!\ShiftUnit0|Mux7~55_combout\ & (((\ShiftUnit0|shift_input[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~55_combout\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|shift_input[63]~1_combout\,
	combout => \ShiftUnit0|Mux7~56_combout\);

-- Location: LCCOMB_X61_Y42_N10
\ShiftUnit0|Mux7~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~54_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\ShiftUnit0|shift_in[62]~21_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|shift_in[61]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[62]~21_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[61]~17_combout\,
	combout => \ShiftUnit0|Mux7~54_combout\);

-- Location: LCCOMB_X61_Y42_N0
\ShiftUnit0|Mux7~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~57_combout\ = (\ShiftUnit0|Mux7~54_combout\) # ((\ShiftUnit0|Mux7~56_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~56_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|Mux7~54_combout\,
	combout => \ShiftUnit0|Mux7~57_combout\);

-- Location: LCCOMB_X59_Y40_N18
\ShiftUnit0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux6~0_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux7~57_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~59_combout\,
	datab => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~57_combout\,
	combout => \ShiftUnit0|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y41_N28
\ShiftUnit0|Mux7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~50_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[56]~29_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[54]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[54]~5_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[56]~29_combout\,
	combout => \ShiftUnit0|Mux7~50_combout\);

-- Location: LCCOMB_X63_Y41_N30
\ShiftUnit0|Mux7~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~51_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~50_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~50_combout\,
	datad => \ShiftUnit0|Mux7~0_combout\,
	combout => \ShiftUnit0|Mux7~51_combout\);

-- Location: LCCOMB_X60_Y39_N26
\ShiftUnit0|Mux7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~52_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[52]~7_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[50]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[52]~7_combout\,
	datab => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[50]~13_combout\,
	combout => \ShiftUnit0|Mux7~52_combout\);

-- Location: LCCOMB_X58_Y38_N16
\ShiftUnit0|Mux7~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~53_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~52_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~3_combout\,
	datad => \ShiftUnit0|Mux7~52_combout\,
	combout => \ShiftUnit0|Mux7~53_combout\);

-- Location: LCCOMB_X59_Y40_N24
\ShiftUnit0|Mux127~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~15_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|Mux7~51_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~51_combout\,
	datad => \ShiftUnit0|Mux7~53_combout\,
	combout => \ShiftUnit0|Mux127~15_combout\);

-- Location: LCCOMB_X59_Y40_N28
\ShiftUnit0|Mux127~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~16_combout\ = (\ShiftUnit0|Mux127~15_combout\) # ((\ShiftUnit0|Mux6~0_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux6~0_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux127~15_combout\,
	combout => \ShiftUnit0|Mux127~16_combout\);

-- Location: LCCOMB_X56_Y38_N26
\ShiftUnit0|Mux7~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~65_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[24]~36_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[22]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[22]~39_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[24]~36_combout\,
	combout => \ShiftUnit0|Mux7~65_combout\);

-- Location: LCCOMB_X58_Y37_N14
\ShiftUnit0|Mux7~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~66_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~65_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~65_combout\,
	datad => \ShiftUnit0|Mux7~21_combout\,
	combout => \ShiftUnit0|Mux7~66_combout\);

-- Location: LCCOMB_X57_Y38_N2
\ShiftUnit0|Mux7~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~67_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[20]~40_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[18]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[18]~43_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[20]~40_combout\,
	combout => \ShiftUnit0|Mux7~67_combout\);

-- Location: LCCOMB_X58_Y37_N8
\ShiftUnit0|Mux7~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~68_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~67_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~67_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~24_combout\,
	combout => \ShiftUnit0|Mux7~68_combout\);

-- Location: LCCOMB_X59_Y41_N10
\ShiftUnit0|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux46~0_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux7~66_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~66_combout\,
	datab => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~68_combout\,
	combout => \ShiftUnit0|Mux46~0_combout\);

-- Location: LCCOMB_X55_Y41_N0
\ShiftUnit0|Mux7~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~60_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\ShiftUnit0|shift_in[30]~32_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|shift_in[29]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[29]~30_combout\,
	datab => \ShiftUnit0|shift_in[30]~32_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~60_combout\);

-- Location: LCCOMB_X55_Y41_N18
\ShiftUnit0|Mux7~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~61_combout\ = (\ShiftUnit0|shift_input[32]~2_combout\ & ((\A[31]~input_o\) # (\B[0]~input_o\ $ (\ShiftUnit0|Equal2~0_combout\)))) # (!\ShiftUnit0|shift_input[32]~2_combout\ & (\A[31]~input_o\ & (\B[0]~input_o\ $ 
-- (!\ShiftUnit0|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_input[32]~2_combout\,
	datab => \A[31]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Equal2~0_combout\,
	combout => \ShiftUnit0|Mux7~61_combout\);

-- Location: LCCOMB_X55_Y41_N28
\ShiftUnit0|Mux7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~62_combout\ = (\ShiftUnit0|Mux7~60_combout\) # ((\B[1]~input_o\ & \ShiftUnit0|Mux7~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|Mux7~60_combout\,
	datad => \ShiftUnit0|Mux7~61_combout\,
	combout => \ShiftUnit0|Mux7~62_combout\);

-- Location: LCCOMB_X57_Y41_N0
\ShiftUnit0|Mux7~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~63_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[28]~31_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[26]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[26]~35_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[28]~31_combout\,
	combout => \ShiftUnit0|Mux7~63_combout\);

-- Location: LCCOMB_X57_Y41_N2
\ShiftUnit0|Mux7~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~64_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~63_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~63_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~18_combout\,
	combout => \ShiftUnit0|Mux7~64_combout\);

-- Location: LCCOMB_X59_Y41_N24
\ShiftUnit0|Mux127~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~17_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|Mux7~62_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~62_combout\,
	datad => \ShiftUnit0|Mux7~64_combout\,
	combout => \ShiftUnit0|Mux127~17_combout\);

-- Location: LCCOMB_X59_Y41_N20
\ShiftUnit0|Mux127~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~18_combout\ = (\ShiftUnit0|Mux127~17_combout\) # ((\ShiftUnit0|Mux46~0_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux46~0_combout\,
	datab => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux127~17_combout\,
	combout => \ShiftUnit0|Mux127~18_combout\);

-- Location: LCCOMB_X57_Y43_N16
\ShiftUnit0|Mux126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux126~0_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|Mux127~16_combout\)) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux127~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~16_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux127~18_combout\,
	combout => \ShiftUnit0|Mux126~0_combout\);

-- Location: LCCOMB_X59_Y38_N18
\ShiftUnit0|Mux7~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~69_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[48]~15_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[46]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[46]~50_combout\,
	datad => \ShiftUnit0|shift_in[48]~15_combout\,
	combout => \ShiftUnit0|Mux7~69_combout\);

-- Location: LCCOMB_X58_Y38_N10
\ShiftUnit0|Mux7~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~70_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~69_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~27_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~69_combout\,
	combout => \ShiftUnit0|Mux7~70_combout\);

-- Location: LCCOMB_X56_Y41_N26
\ShiftUnit0|Mux7~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~71_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[40]~68_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[38]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[38]~58_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[40]~68_combout\,
	combout => \ShiftUnit0|Mux7~71_combout\);

-- Location: LCCOMB_X58_Y38_N4
\ShiftUnit0|Mux7~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~72_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~71_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~71_combout\,
	datab => \ShiftUnit0|Mux7~30_combout\,
	datac => \B[0]~input_o\,
	combout => \ShiftUnit0|Mux7~72_combout\);

-- Location: LCCOMB_X59_Y40_N30
\ShiftUnit0|Mux127~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~19_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|Mux7~70_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~70_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~72_combout\,
	combout => \ShiftUnit0|Mux127~19_combout\);

-- Location: LCCOMB_X59_Y38_N4
\ShiftUnit0|Mux7~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~73_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[44]~52_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[42]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[44]~52_combout\,
	datad => \ShiftUnit0|shift_in[42]~66_combout\,
	combout => \ShiftUnit0|Mux7~73_combout\);

-- Location: LCCOMB_X58_Y38_N6
\ShiftUnit0|Mux7~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~74_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~73_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~33_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~73_combout\,
	combout => \ShiftUnit0|Mux7~74_combout\);

-- Location: LCCOMB_X55_Y41_N22
\ShiftUnit0|Mux7~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~75_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\ShiftUnit0|shift_in[35]~70_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[33]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[33]~74_combout\,
	datad => \ShiftUnit0|shift_in[35]~70_combout\,
	combout => \ShiftUnit0|Mux7~75_combout\);

-- Location: LCCOMB_X56_Y41_N4
\ShiftUnit0|Mux7~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~76_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[36]~60_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[34]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[34]~72_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[36]~60_combout\,
	combout => \ShiftUnit0|Mux7~76_combout\);

-- Location: LCCOMB_X55_Y41_N24
\ShiftUnit0|Mux7~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~77_combout\ = (\ShiftUnit0|Mux7~75_combout\) # ((\B[0]~input_o\ & \ShiftUnit0|Mux7~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~75_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~76_combout\,
	combout => \ShiftUnit0|Mux7~77_combout\);

-- Location: LCCOMB_X59_Y40_N0
\ShiftUnit0|Mux127~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~20_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|Mux7~74_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~74_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~77_combout\,
	combout => \ShiftUnit0|Mux127~20_combout\);

-- Location: LCCOMB_X58_Y39_N24
\ShiftUnit0|Mux126~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux126~1_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & ((\B[2]~input_o\ & (\ShiftUnit0|Mux127~19_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux127~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~19_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \ShiftUnit0|Mux127~20_combout\,
	combout => \ShiftUnit0|Mux126~1_combout\);

-- Location: LCCOMB_X65_Y41_N20
\ShiftUnit0|Mux7~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~84_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[12]~78_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[10]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[10]~81_combout\,
	datad => \ShiftUnit0|shift_in[12]~78_combout\,
	combout => \ShiftUnit0|Mux7~84_combout\);

-- Location: LCCOMB_X58_Y37_N4
\ShiftUnit0|Mux7~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~85_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~84_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~43_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~84_combout\,
	combout => \ShiftUnit0|Mux7~85_combout\);

-- Location: LCCOMB_X65_Y41_N26
\ShiftUnit0|Mux7~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~82_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[16]~44_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[14]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[16]~44_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[14]~77_combout\,
	combout => \ShiftUnit0|Mux7~82_combout\);

-- Location: LCCOMB_X58_Y37_N26
\ShiftUnit0|Mux7~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~83_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~82_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~40_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~82_combout\,
	combout => \ShiftUnit0|Mux7~83_combout\);

-- Location: LCCOMB_X59_Y41_N6
\ShiftUnit0|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux54~0_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux7~83_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux7~85_combout\,
	datac => \ShiftUnit0|Mux7~83_combout\,
	combout => \ShiftUnit0|Mux54~0_combout\);

-- Location: LCCOMB_X61_Y41_N2
\ShiftUnit0|Mux7~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~78_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|shift_in[4]~89_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|shift_in[3]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[4]~89_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|shift_in[3]~84_combout\,
	combout => \ShiftUnit0|Mux7~78_combout\);

-- Location: LCCOMB_X62_Y42_N0
\ShiftUnit0|Mux126~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux126~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\ShiftUnit0|shift_in[2]~85_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|shift_in[1]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ShiftUnit0|shift_in[2]~85_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|shift_in[1]~83_combout\,
	combout => \ShiftUnit0|Mux126~2_combout\);

-- Location: LCCOMB_X62_Y42_N26
\ShiftUnit0|Mux126~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux126~3_combout\ = (!\B[2]~input_o\ & ((\ShiftUnit0|Mux126~2_combout\) # ((\B[1]~input_o\ & \ShiftUnit0|Mux7~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~78_combout\,
	datad => \ShiftUnit0|Mux126~2_combout\,
	combout => \ShiftUnit0|Mux126~3_combout\);

-- Location: LCCOMB_X57_Y41_N28
\ShiftUnit0|Mux7~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~79_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\ShiftUnit0|shift_in[8]~82_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|shift_in[7]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[8]~82_combout\,
	datab => \ShiftUnit0|shift_in[7]~86_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~79_combout\);

-- Location: LCCOMB_X61_Y41_N4
\ShiftUnit0|Mux7~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~80_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|shift_in[6]~87_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|shift_in[5]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|shift_in[6]~87_combout\,
	datad => \ShiftUnit0|shift_in[5]~88_combout\,
	combout => \ShiftUnit0|Mux7~80_combout\);

-- Location: LCCOMB_X60_Y41_N16
\ShiftUnit0|Mux7~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~81_combout\ = (\ShiftUnit0|Mux7~79_combout\) # ((!\B[1]~input_o\ & \ShiftUnit0|Mux7~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~79_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|Mux7~80_combout\,
	combout => \ShiftUnit0|Mux7~81_combout\);

-- Location: LCCOMB_X60_Y41_N2
\ShiftUnit0|Mux126~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux126~4_combout\ = (!\B[3]~input_o\ & ((\ShiftUnit0|Mux126~3_combout\) # ((\B[2]~input_o\ & \ShiftUnit0|Mux7~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux126~3_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~81_combout\,
	combout => \ShiftUnit0|Mux126~4_combout\);

-- Location: LCCOMB_X58_Y39_N18
\ShiftUnit0|Mux126~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux126~5_combout\ = (!\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux126~4_combout\) # ((\ShiftUnit0|Mux54~0_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux54~0_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \ShiftUnit0|Mux126~4_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftUnit0|Mux126~5_combout\);

-- Location: LCCOMB_X58_Y39_N28
\ShiftUnit0|Mux126~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux126~6_combout\ = (\ShiftUnit0|Mux126~0_combout\) # ((!\B[4]~input_o\ & ((\ShiftUnit0|Mux126~1_combout\) # (\ShiftUnit0|Mux126~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux126~0_combout\,
	datab => \ShiftUnit0|Mux126~1_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux126~5_combout\,
	combout => \ShiftUnit0|Mux126~6_combout\);

-- Location: LCCOMB_X61_Y42_N8
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\FuncClass[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X60_Y39_N8
\ShiftUnit0|shift_ext~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|shift_ext~0_combout\ = (\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\ & \ShiftUnit0|shift_input[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftUnit0|shift_input[63]~1_combout\,
	combout => \ShiftUnit0|shift_ext~0_combout\);

-- Location: LCCOMB_X62_Y42_N4
\ShiftUnit0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux1~0_combout\ = (\B[1]~input_o\ & (((\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux7~8_combout\,
	combout => \ShiftUnit0|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y42_N14
\ShiftUnit0|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux65~0_combout\ = (\ShiftUnit0|Mux64~0_combout\ & (\ShiftUnit0|Mux1~0_combout\)) # (!\ShiftUnit0|Mux64~0_combout\ & ((\ShiftUnit0|shift_ext~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux1~0_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux64~0_combout\,
	combout => \ShiftUnit0|Mux65~0_combout\);

-- Location: LCCOMB_X65_Y42_N6
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\Mux34~0_combout\ & (((\Mux34~1_combout\)))) # (!\Mux34~0_combout\ & ((\Mux34~1_combout\ & ((\ShiftUnit0|Mux65~0_combout\))) # (!\Mux34~1_combout\ & (\ShiftUnit0|Mux126~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux126~6_combout\,
	datab => \Mux34~0_combout\,
	datac => \Mux34~1_combout\,
	datad => \ShiftUnit0|Mux65~0_combout\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X65_Y42_N2
\Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~2_combout\ = (\Mux34~0_combout\ & ((\Mux62~0_combout\ & ((\Mux62~1_combout\))) # (!\Mux62~0_combout\ & (\Adder0|S\(1))))) # (!\Mux34~0_combout\ & (((\Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(1),
	datab => \Mux62~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \Mux62~0_combout\,
	combout => \Mux62~2_combout\);

-- Location: LCCOMB_X65_Y42_N20
\Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux62~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux62~2_combout\,
	combout => \Mux62~3_combout\);

-- Location: LCCOMB_X62_Y42_N28
\ShiftUnit0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux5~0_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|Mux7~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux7~8_combout\,
	combout => \ShiftUnit0|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y41_N26
\ShiftUnit0|Mux7~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~90_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[61]~17_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[59]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[59]~23_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[61]~17_combout\,
	combout => \ShiftUnit0|Mux7~90_combout\);

-- Location: LCCOMB_X63_Y41_N4
\ShiftUnit0|Mux7~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~91_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~90_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~58_combout\,
	datad => \ShiftUnit0|Mux7~90_combout\,
	combout => \ShiftUnit0|Mux7~91_combout\);

-- Location: LCCOMB_X62_Y41_N26
\ShiftUnit0|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux5~1_combout\ = (\ShiftUnit0|Mux5~0_combout\) # ((!\B[2]~input_o\ & \ShiftUnit0|Mux7~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux5~0_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~91_combout\,
	combout => \ShiftUnit0|Mux5~1_combout\);

-- Location: LCCOMB_X65_Y41_N14
\ShiftUnit0|Mux7~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~88_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[53]~3_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[51]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[53]~3_combout\,
	datad => \ShiftUnit0|shift_in[51]~9_combout\,
	combout => \ShiftUnit0|Mux7~88_combout\);

-- Location: LCCOMB_X63_Y41_N24
\ShiftUnit0|Mux7~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~89_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~88_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~88_combout\,
	datac => \ShiftUnit0|Mux7~52_combout\,
	combout => \ShiftUnit0|Mux7~89_combout\);

-- Location: LCCOMB_X63_Y41_N12
\ShiftUnit0|Mux7~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~86_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[57]~25_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[55]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[57]~25_combout\,
	datad => \ShiftUnit0|shift_in[55]~1_combout\,
	combout => \ShiftUnit0|Mux7~86_combout\);

-- Location: LCCOMB_X63_Y41_N22
\ShiftUnit0|Mux7~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~87_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~86_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~50_combout\,
	datad => \ShiftUnit0|Mux7~86_combout\,
	combout => \ShiftUnit0|Mux7~87_combout\);

-- Location: LCCOMB_X62_Y41_N0
\ShiftUnit0|Mux127~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~21_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\ShiftUnit0|Mux7~87_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~89_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~87_combout\,
	combout => \ShiftUnit0|Mux127~21_combout\);

-- Location: LCCOMB_X62_Y41_N20
\ShiftUnit0|Mux127~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~22_combout\ = (\ShiftUnit0|Mux127~21_combout\) # ((\B[3]~input_o\ & \ShiftUnit0|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux5~1_combout\,
	datad => \ShiftUnit0|Mux127~21_combout\,
	combout => \ShiftUnit0|Mux127~22_combout\);

-- Location: LCCOMB_X59_Y38_N30
\ShiftUnit0|Mux7~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~96_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[21]~38_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[19]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[19]~41_combout\,
	datab => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[21]~38_combout\,
	combout => \ShiftUnit0|Mux7~96_combout\);

-- Location: LCCOMB_X58_Y37_N0
\ShiftUnit0|Mux7~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~97_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~96_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~96_combout\,
	datad => \ShiftUnit0|Mux7~67_combout\,
	combout => \ShiftUnit0|Mux7~97_combout\);

-- Location: LCCOMB_X57_Y41_N18
\ShiftUnit0|Mux7~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~94_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[25]~34_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[23]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[25]~34_combout\,
	datab => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[23]~37_combout\,
	combout => \ShiftUnit0|Mux7~94_combout\);

-- Location: LCCOMB_X58_Y37_N22
\ShiftUnit0|Mux7~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~95_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~94_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~65_combout\,
	datad => \ShiftUnit0|Mux7~94_combout\,
	combout => \ShiftUnit0|Mux7~95_combout\);

-- Location: LCCOMB_X58_Y41_N10
\ShiftUnit0|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux45~0_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux7~95_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~97_combout\,
	datad => \ShiftUnit0|Mux7~95_combout\,
	combout => \ShiftUnit0|Mux45~0_combout\);

-- Location: LCCOMB_X55_Y41_N26
\ShiftUnit0|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux33~0_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|Mux7~38_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|Mux7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|Mux7~16_combout\,
	datad => \ShiftUnit0|Mux7~38_combout\,
	combout => \ShiftUnit0|Mux33~0_combout\);

-- Location: LCCOMB_X57_Y41_N30
\ShiftUnit0|Mux7~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~92_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[29]~30_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[27]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[29]~30_combout\,
	datad => \ShiftUnit0|shift_in[27]~33_combout\,
	combout => \ShiftUnit0|Mux7~92_combout\);

-- Location: LCCOMB_X57_Y41_N24
\ShiftUnit0|Mux7~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~93_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~92_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~92_combout\,
	datad => \ShiftUnit0|Mux7~63_combout\,
	combout => \ShiftUnit0|Mux7~93_combout\);

-- Location: LCCOMB_X58_Y41_N24
\ShiftUnit0|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux37~0_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux33~0_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux33~0_combout\,
	datad => \ShiftUnit0|Mux7~93_combout\,
	combout => \ShiftUnit0|Mux37~0_combout\);

-- Location: LCCOMB_X58_Y41_N28
\ShiftUnit0|Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux109~0_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux37~0_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux45~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux45~0_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux37~0_combout\,
	combout => \ShiftUnit0|Mux109~0_combout\);

-- Location: LCCOMB_X61_Y41_N6
\ShiftUnit0|Mux125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux125~0_combout\ = (\B[3]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux125~0_combout\);

-- Location: LCCOMB_X60_Y41_N12
\ShiftUnit0|Mux125~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux125~1_combout\ = (\B[3]~input_o\) # ((!\B[2]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux125~1_combout\);

-- Location: LCCOMB_X61_Y41_N0
\ShiftUnit0|Mux125~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux125~2_combout\ = (\ShiftUnit0|Mux125~1_combout\ & (((\ShiftUnit0|Mux7~48_combout\) # (\ShiftUnit0|Mux125~0_combout\)))) # (!\ShiftUnit0|Mux125~1_combout\ & (\ShiftUnit0|Mux7~46_combout\ & ((!\ShiftUnit0|Mux125~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux125~1_combout\,
	datab => \ShiftUnit0|Mux7~46_combout\,
	datac => \ShiftUnit0|Mux7~48_combout\,
	datad => \ShiftUnit0|Mux125~0_combout\,
	combout => \ShiftUnit0|Mux125~2_combout\);

-- Location: LCCOMB_X57_Y41_N12
\ShiftUnit0|Mux7~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~106_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\ShiftUnit0|shift_in[8]~82_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[6]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[6]~87_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftUnit0|shift_in[8]~82_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~106_combout\);

-- Location: LCCOMB_X57_Y41_N22
\ShiftUnit0|Mux7~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~107_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[9]~80_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[7]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[9]~80_combout\,
	datac => \ShiftUnit0|shift_in[7]~86_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~107_combout\);

-- Location: LCCOMB_X57_Y41_N8
\ShiftUnit0|Mux7~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~108_combout\ = (\ShiftUnit0|Mux7~106_combout\) # ((\B[0]~input_o\ & \ShiftUnit0|Mux7~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~106_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~107_combout\,
	combout => \ShiftUnit0|Mux7~108_combout\);

-- Location: LCCOMB_X60_Y38_N8
\ShiftUnit0|Mux7~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~111_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[13]~76_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[11]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[13]~76_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[11]~79_combout\,
	combout => \ShiftUnit0|Mux7~111_combout\);

-- Location: LCCOMB_X58_Y37_N20
\ShiftUnit0|Mux7~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~112_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~111_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~111_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~84_combout\,
	combout => \ShiftUnit0|Mux7~112_combout\);

-- Location: LCCOMB_X60_Y38_N30
\ShiftUnit0|Mux7~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~109_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[17]~42_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[15]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[15]~75_combout\,
	datab => \ShiftUnit0|shift_in[17]~42_combout\,
	datac => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~109_combout\);

-- Location: LCCOMB_X58_Y37_N18
\ShiftUnit0|Mux7~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~110_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~109_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~109_combout\,
	datad => \ShiftUnit0|Mux7~82_combout\,
	combout => \ShiftUnit0|Mux7~110_combout\);

-- Location: LCCOMB_X61_Y41_N18
\ShiftUnit0|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux53~0_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux7~110_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~112_combout\,
	datad => \ShiftUnit0|Mux7~110_combout\,
	combout => \ShiftUnit0|Mux53~0_combout\);

-- Location: LCCOMB_X61_Y41_N28
\ShiftUnit0|Mux125~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux125~3_combout\ = (\ShiftUnit0|Mux125~0_combout\ & ((\ShiftUnit0|Mux125~2_combout\ & ((\ShiftUnit0|Mux53~0_combout\))) # (!\ShiftUnit0|Mux125~2_combout\ & (\ShiftUnit0|Mux7~108_combout\)))) # (!\ShiftUnit0|Mux125~0_combout\ & 
-- (\ShiftUnit0|Mux125~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux125~0_combout\,
	datab => \ShiftUnit0|Mux125~2_combout\,
	datac => \ShiftUnit0|Mux7~108_combout\,
	datad => \ShiftUnit0|Mux53~0_combout\,
	combout => \ShiftUnit0|Mux125~3_combout\);

-- Location: LCCOMB_X57_Y38_N22
\ShiftUnit0|Mux7~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~102_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[49]~11_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[47]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ShiftUnit0|shift_in[47]~46_combout\,
	datac => \ShiftUnit0|shift_in[49]~11_combout\,
	combout => \ShiftUnit0|Mux7~102_combout\);

-- Location: LCCOMB_X58_Y38_N12
\ShiftUnit0|Mux7~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~103_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~102_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~102_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~69_combout\,
	combout => \ShiftUnit0|Mux7~103_combout\);

-- Location: LCCOMB_X56_Y38_N6
\ShiftUnit0|Mux7~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~104_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[41]~64_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[39]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_in[39]~54_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[41]~64_combout\,
	combout => \ShiftUnit0|Mux7~104_combout\);

-- Location: LCCOMB_X58_Y38_N14
\ShiftUnit0|Mux7~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~105_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~104_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~71_combout\,
	datad => \ShiftUnit0|Mux7~104_combout\,
	combout => \ShiftUnit0|Mux7~105_combout\);

-- Location: LCCOMB_X62_Y41_N6
\ShiftUnit0|Mux127~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~24_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|Mux7~103_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~103_combout\,
	datad => \ShiftUnit0|Mux7~105_combout\,
	combout => \ShiftUnit0|Mux127~24_combout\);

-- Location: LCCOMB_X56_Y38_N28
\ShiftUnit0|Mux7~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~100_combout\ = (\B[1]~input_o\ & (\ShiftUnit0|shift_in[37]~56_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[35]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[37]~56_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[35]~70_combout\,
	combout => \ShiftUnit0|Mux7~100_combout\);

-- Location: LCCOMB_X58_Y38_N18
\ShiftUnit0|Mux7~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~101_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~100_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~100_combout\,
	datab => \ShiftUnit0|Mux7~76_combout\,
	datac => \B[0]~input_o\,
	combout => \ShiftUnit0|Mux7~101_combout\);

-- Location: LCCOMB_X57_Y38_N12
\ShiftUnit0|Mux7~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~98_combout\ = (\B[1]~input_o\ & ((\ShiftUnit0|shift_in[45]~48_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[43]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[43]~62_combout\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[45]~48_combout\,
	combout => \ShiftUnit0|Mux7~98_combout\);

-- Location: LCCOMB_X58_Y38_N8
\ShiftUnit0|Mux7~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~99_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~98_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~98_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~73_combout\,
	combout => \ShiftUnit0|Mux7~99_combout\);

-- Location: LCCOMB_X58_Y41_N6
\ShiftUnit0|Mux127~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~23_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\ShiftUnit0|Mux7~99_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux7~101_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~99_combout\,
	combout => \ShiftUnit0|Mux127~23_combout\);

-- Location: LCCOMB_X58_Y41_N16
\ShiftUnit0|Mux127~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~25_combout\ = (\ShiftUnit0|Mux127~23_combout\) # ((\B[2]~input_o\ & \ShiftUnit0|Mux127~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux127~24_combout\,
	datad => \ShiftUnit0|Mux127~23_combout\,
	combout => \ShiftUnit0|Mux127~25_combout\);

-- Location: LCCOMB_X57_Y43_N10
\ShiftUnit0|Mux125~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux125~4_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (((\B[4]~input_o\) # (\ShiftUnit0|Mux127~25_combout\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|Mux125~3_combout\ & (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux125~3_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux127~25_combout\,
	combout => \ShiftUnit0|Mux125~4_combout\);

-- Location: LCCOMB_X57_Y43_N20
\ShiftUnit0|Mux125~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux125~5_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|Mux125~4_combout\ & (\ShiftUnit0|Mux127~22_combout\)) # (!\ShiftUnit0|Mux125~4_combout\ & ((\ShiftUnit0|Mux109~0_combout\))))) # (!\B[4]~input_o\ & (((\ShiftUnit0|Mux125~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~22_combout\,
	datab => \ShiftUnit0|Mux109~0_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux125~4_combout\,
	combout => \ShiftUnit0|Mux125~5_combout\);

-- Location: LCCOMB_X63_Y40_N4
\Adder0|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(2) = \Adder0|P\(2) $ (((\Adder0|Carries~8_combout\) # (\Adder0|BLAN1|G_in_half[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~8_combout\,
	datab => \Adder0|P\(2),
	datac => \Adder0|BLAN1|G_in_half[0]~25_combout\,
	combout => \Adder0|S\(2));

-- Location: LCCOMB_X56_Y42_N18
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\Mux34~0_combout\ & (((\Mux34~1_combout\) # (\Adder0|S\(2))))) # (!\Mux34~0_combout\ & (\ShiftUnit0|Mux125~5_combout\ & (!\Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \ShiftUnit0|Mux125~5_combout\,
	datac => \Mux34~1_combout\,
	datad => \Adder0|S\(2),
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X56_Y42_N4
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\LogicFN[0]~input_o\ & ((\B[2]~input_o\ & ((\LogicFN[1]~input_o\) # (!\A[2]~input_o\))) # (!\B[2]~input_o\ & ((\A[2]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[2]~input_o\ & ((\A[2]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X56_Y42_N16
\ShiftUnit0|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux66~0_combout\ = (\B[2]~input_o\ & (((\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux64~0_combout\ & ((\ShiftUnit0|Mux7~57_combout\))) # (!\ShiftUnit0|Mux64~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux64~0_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux7~57_combout\,
	combout => \ShiftUnit0|Mux66~0_combout\);

-- Location: LCCOMB_X56_Y42_N22
\Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (\Mux61~0_combout\ & (((\Mux61~1_combout\)) # (!\Mux34~1_combout\))) # (!\Mux61~0_combout\ & (\Mux34~1_combout\ & ((\ShiftUnit0|Mux66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \Mux34~1_combout\,
	datac => \Mux61~1_combout\,
	datad => \ShiftUnit0|Mux66~0_combout\,
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X56_Y42_N0
\Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux61~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux61~2_combout\,
	combout => \Mux61~3_combout\);

-- Location: LCCOMB_X55_Y41_N12
\ShiftUnit0|Mux7~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~117_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\ShiftUnit0|shift_in[34]~72_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|shift_in[33]~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|shift_in[34]~72_combout\,
	datac => \ShiftUnit0|shift_in[33]~74_combout\,
	datad => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux7~117_combout\);

-- Location: LCCOMB_X55_Y41_N6
\ShiftUnit0|Mux7~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~118_combout\ = (\ShiftUnit0|Mux7~117_combout\) # ((!\B[1]~input_o\ & \ShiftUnit0|Mux7~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~117_combout\,
	datab => \B[1]~input_o\,
	datad => \ShiftUnit0|Mux7~61_combout\,
	combout => \ShiftUnit0|Mux7~118_combout\);

-- Location: LCCOMB_X57_Y41_N26
\ShiftUnit0|Mux7~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~119_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\ShiftUnit0|shift_in[30]~32_combout\))) # (!\B[1]~input_o\ & (\ShiftUnit0|shift_in[28]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ShiftUnit0|shift_in[28]~31_combout\,
	datad => \ShiftUnit0|shift_in[30]~32_combout\,
	combout => \ShiftUnit0|Mux7~119_combout\);

-- Location: LCCOMB_X57_Y41_N20
\ShiftUnit0|Mux7~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~120_combout\ = (\ShiftUnit0|Mux7~119_combout\) # ((!\B[0]~input_o\ & \ShiftUnit0|Mux7~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~92_combout\,
	datad => \ShiftUnit0|Mux7~119_combout\,
	combout => \ShiftUnit0|Mux7~120_combout\);

-- Location: LCCOMB_X58_Y39_N22
\ShiftUnit0|Mux127~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~28_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|Mux7~118_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~120_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~118_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~120_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux127~28_combout\);

-- Location: LCCOMB_X57_Y41_N6
\ShiftUnit0|Mux7~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~121_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~19_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~19_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~94_combout\,
	combout => \ShiftUnit0|Mux7~121_combout\);

-- Location: LCCOMB_X58_Y37_N30
\ShiftUnit0|Mux7~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~122_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~22_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~96_combout\,
	datac => \ShiftUnit0|Mux7~22_combout\,
	combout => \ShiftUnit0|Mux7~122_combout\);

-- Location: LCCOMB_X58_Y39_N16
\ShiftUnit0|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux44~0_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux7~121_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~121_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~122_combout\,
	combout => \ShiftUnit0|Mux44~0_combout\);

-- Location: LCCOMB_X58_Y39_N2
\ShiftUnit0|Mux127~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~29_combout\ = (\ShiftUnit0|Mux127~28_combout\) # ((!\B[3]~input_o\ & \ShiftUnit0|Mux44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux127~28_combout\,
	datad => \ShiftUnit0|Mux44~0_combout\,
	combout => \ShiftUnit0|Mux127~29_combout\);

-- Location: LCCOMB_X58_Y38_N30
\ShiftUnit0|Mux7~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~126_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~31_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~100_combout\,
	datad => \ShiftUnit0|Mux7~31_combout\,
	combout => \ShiftUnit0|Mux7~126_combout\);

-- Location: LCCOMB_X58_Y38_N20
\ShiftUnit0|Mux7~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~125_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~28_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~98_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~28_combout\,
	combout => \ShiftUnit0|Mux7~125_combout\);

-- Location: LCCOMB_X58_Y39_N30
\ShiftUnit0|Mux127~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~31_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~125_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~126_combout\,
	datad => \ShiftUnit0|Mux7~125_combout\,
	combout => \ShiftUnit0|Mux127~31_combout\);

-- Location: LCCOMB_X58_Y38_N26
\ShiftUnit0|Mux7~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~124_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~34_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~104_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~34_combout\,
	combout => \ShiftUnit0|Mux7~124_combout\);

-- Location: LCCOMB_X58_Y38_N0
\ShiftUnit0|Mux7~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~123_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~4_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~102_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~4_combout\,
	combout => \ShiftUnit0|Mux7~123_combout\);

-- Location: LCCOMB_X58_Y39_N20
\ShiftUnit0|Mux127~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~30_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~123_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~124_combout\,
	datad => \ShiftUnit0|Mux7~123_combout\,
	combout => \ShiftUnit0|Mux127~30_combout\);

-- Location: LCCOMB_X58_Y39_N8
\ShiftUnit0|Mux127~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~32_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux127~30_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux127~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux127~31_combout\,
	datad => \ShiftUnit0|Mux127~30_combout\,
	combout => \ShiftUnit0|Mux127~32_combout\);

-- Location: LCCOMB_X58_Y37_N10
\ShiftUnit0|Mux7~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~129_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~41_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~111_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~41_combout\,
	combout => \ShiftUnit0|Mux7~129_combout\);

-- Location: LCCOMB_X58_Y37_N16
\ShiftUnit0|Mux7~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~128_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~25_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~25_combout\,
	datac => \ShiftUnit0|Mux7~109_combout\,
	combout => \ShiftUnit0|Mux7~128_combout\);

-- Location: LCCOMB_X58_Y37_N28
\ShiftUnit0|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux52~0_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux7~128_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~129_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~128_combout\,
	combout => \ShiftUnit0|Mux52~0_combout\);

-- Location: LCCOMB_X61_Y41_N22
\ShiftUnit0|Mux7~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~127_combout\ = (\B[0]~input_o\ & ((\ShiftUnit0|Mux7~44_combout\))) # (!\B[0]~input_o\ & (\ShiftUnit0|Mux7~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~107_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftUnit0|Mux7~44_combout\,
	combout => \ShiftUnit0|Mux7~127_combout\);

-- Location: LCCOMB_X61_Y41_N8
\ShiftUnit0|Mux124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux124~0_combout\ = (\ShiftUnit0|Mux125~1_combout\ & (((\ShiftUnit0|Mux125~0_combout\)))) # (!\ShiftUnit0|Mux125~1_combout\ & ((\ShiftUnit0|Mux125~0_combout\ & ((\ShiftUnit0|Mux7~127_combout\))) # (!\ShiftUnit0|Mux125~0_combout\ & 
-- (\ShiftUnit0|Mux7~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux125~1_combout\,
	datab => \ShiftUnit0|Mux7~78_combout\,
	datac => \ShiftUnit0|Mux7~127_combout\,
	datad => \ShiftUnit0|Mux125~0_combout\,
	combout => \ShiftUnit0|Mux124~0_combout\);

-- Location: LCCOMB_X61_Y41_N10
\ShiftUnit0|Mux124~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux124~1_combout\ = (\ShiftUnit0|Mux124~0_combout\ & ((\ShiftUnit0|Mux52~0_combout\) # ((!\ShiftUnit0|Mux125~1_combout\)))) # (!\ShiftUnit0|Mux124~0_combout\ & (((\ShiftUnit0|Mux7~80_combout\ & \ShiftUnit0|Mux125~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux52~0_combout\,
	datab => \ShiftUnit0|Mux124~0_combout\,
	datac => \ShiftUnit0|Mux7~80_combout\,
	datad => \ShiftUnit0|Mux125~1_combout\,
	combout => \ShiftUnit0|Mux124~1_combout\);

-- Location: LCCOMB_X59_Y39_N24
\ShiftUnit0|Mux124~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux124~2_combout\ = (\B[4]~input_o\ & (((\ShiftUnit0|shamt[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|Mux127~32_combout\)) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux124~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~32_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \ShiftUnit0|Mux124~1_combout\,
	combout => \ShiftUnit0|Mux124~2_combout\);

-- Location: LCCOMB_X60_Y39_N2
\ShiftUnit0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux4~0_combout\ = (\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & (\A[0]~input_o\ & !\B[1]~input_o\))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftUnit0|Mux4~0_combout\);

-- Location: LCCOMB_X60_Y39_N28
\ShiftUnit0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux4~1_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\ShiftUnit0|shift_input[63]~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\ShiftUnit0|Mux4~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\ShiftUnit0|Mux4~0_combout\ & 
-- ((\ShiftUnit0|shift_input[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftUnit0|Mux4~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftUnit0|shift_input[63]~1_combout\,
	combout => \ShiftUnit0|Mux4~1_combout\);

-- Location: LCCOMB_X61_Y42_N2
\ShiftUnit0|Mux7~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~115_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\ShiftUnit0|shift_in[62]~21_combout\)) # (!\B[1]~input_o\ & ((\ShiftUnit0|shift_in[60]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_in[62]~21_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ShiftUnit0|shift_in[60]~19_combout\,
	combout => \ShiftUnit0|Mux7~115_combout\);

-- Location: LCCOMB_X60_Y39_N0
\ShiftUnit0|Mux7~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~116_combout\ = (\ShiftUnit0|Mux7~115_combout\) # ((!\B[0]~input_o\ & \ShiftUnit0|Mux7~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~90_combout\,
	datad => \ShiftUnit0|Mux7~115_combout\,
	combout => \ShiftUnit0|Mux7~116_combout\);

-- Location: LCCOMB_X60_Y39_N22
\ShiftUnit0|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux4~2_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux4~1_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux4~1_combout\,
	datad => \ShiftUnit0|Mux7~116_combout\,
	combout => \ShiftUnit0|Mux4~2_combout\);

-- Location: LCCOMB_X60_Y39_N20
\ShiftUnit0|Mux7~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~113_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~11_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \ShiftUnit0|Mux7~11_combout\,
	datad => \ShiftUnit0|Mux7~86_combout\,
	combout => \ShiftUnit0|Mux7~113_combout\);

-- Location: LCCOMB_X63_Y41_N14
\ShiftUnit0|Mux7~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux7~114_combout\ = (\B[0]~input_o\ & (\ShiftUnit0|Mux7~1_combout\)) # (!\B[0]~input_o\ & ((\ShiftUnit0|Mux7~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftUnit0|Mux7~1_combout\,
	datac => \ShiftUnit0|Mux7~88_combout\,
	combout => \ShiftUnit0|Mux7~114_combout\);

-- Location: LCCOMB_X60_Y39_N30
\ShiftUnit0|Mux127~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~26_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|Mux7~113_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux7~113_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~114_combout\,
	combout => \ShiftUnit0|Mux127~26_combout\);

-- Location: LCCOMB_X60_Y39_N24
\ShiftUnit0|Mux127~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~27_combout\ = (\ShiftUnit0|Mux127~26_combout\) # ((\B[3]~input_o\ & \ShiftUnit0|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux4~2_combout\,
	datad => \ShiftUnit0|Mux127~26_combout\,
	combout => \ShiftUnit0|Mux127~27_combout\);

-- Location: LCCOMB_X59_Y39_N26
\ShiftUnit0|Mux124~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux124~3_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|Mux124~2_combout\ & ((\ShiftUnit0|Mux127~27_combout\))) # (!\ShiftUnit0|Mux124~2_combout\ & (\ShiftUnit0|Mux127~29_combout\)))) # (!\B[4]~input_o\ & (((\ShiftUnit0|Mux124~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~29_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux124~2_combout\,
	datad => \ShiftUnit0|Mux127~27_combout\,
	combout => \ShiftUnit0|Mux124~3_combout\);

-- Location: LCCOMB_X60_Y42_N20
\ShiftUnit0|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux67~0_combout\ = (\ShiftUnit0|Mux64~0_combout\ & ((\B[2]~input_o\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~9_combout\)))) # (!\ShiftUnit0|Mux64~0_combout\ & (((\ShiftUnit0|shift_ext~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux64~0_combout\,
	datab => \ShiftUnit0|Mux7~9_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux67~0_combout\);

-- Location: LCCOMB_X60_Y42_N6
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\Mux34~0_combout\ & (((\Mux34~1_combout\)))) # (!\Mux34~0_combout\ & ((\Mux34~1_combout\ & ((\ShiftUnit0|Mux67~0_combout\))) # (!\Mux34~1_combout\ & (\ShiftUnit0|Mux124~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux124~3_combout\,
	datab => \Mux34~0_combout\,
	datac => \Mux34~1_combout\,
	datad => \ShiftUnit0|Mux67~0_combout\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X63_Y40_N6
\Adder0|BLAN1|G_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[2]~2_combout\ = (\Adder0|BLAN1|G_in_half[0]~25_combout\ & ((\A[2]~input_o\) # (\AddNSub~input_o\ $ (\B[2]~input_o\)))) # (!\Adder0|BLAN1|G_in_half[0]~25_combout\ & (\A[2]~input_o\ & (\AddNSub~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|BLAN1|G_in_half[0]~25_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Adder0|BLAN1|G_out[2]~2_combout\);

-- Location: LCCOMB_X63_Y40_N8
\Adder0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(3) = \Adder0|P[3]~17_combout\ $ (((\Adder0|BLAN1|G_out[2]~2_combout\) # ((\Adder0|P\(2) & \Adder0|Carries~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[3]~17_combout\,
	datab => \Adder0|P\(2),
	datac => \Adder0|Carries~8_combout\,
	datad => \Adder0|BLAN1|G_out[2]~2_combout\,
	combout => \Adder0|S\(3));

-- Location: LCCOMB_X60_Y42_N0
\Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\LogicFN[0]~input_o\ & ((\B[3]~input_o\ & ((\LogicFN[1]~input_o\) # (!\A[3]~input_o\))) # (!\B[3]~input_o\ & ((\A[3]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[3]~input_o\ & ((\A[3]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Mux60~1_combout\);

-- Location: LCCOMB_X60_Y42_N10
\Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = (\Mux60~0_combout\ & (((\Mux60~1_combout\) # (!\Mux34~0_combout\)))) # (!\Mux60~0_combout\ & (\Adder0|S\(3) & (\Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Adder0|S\(3),
	datac => \Mux34~0_combout\,
	datad => \Mux60~1_combout\,
	combout => \Mux60~2_combout\);

-- Location: LCCOMB_X65_Y42_N30
\Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~3_combout\ = (\Mux60~2_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux60~2_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux60~3_combout\);

-- Location: LCCOMB_X57_Y44_N12
\Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (\LogicFN[0]~input_o\ & ((\A[4]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[4]~input_o\))) # (!\A[4]~input_o\ & (\B[4]~input_o\)))) # (!\LogicFN[0]~input_o\ & (\B[4]~input_o\ & ((\A[4]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux59~1_combout\);

-- Location: LCCOMB_X59_Y39_N4
\ShiftUnit0|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux68~0_combout\ = (\ShiftUnit0|Mux64~0_combout\ & ((\ShiftUnit0|Mux4~2_combout\))) # (!\ShiftUnit0|Mux64~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux64~0_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux4~2_combout\,
	combout => \ShiftUnit0|Mux68~0_combout\);

-- Location: LCCOMB_X63_Y40_N26
\Adder0|Carries[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(4) = (\Adder0|BLAN1|recurse:inner|G_in_half\(0)) # ((\Adder0|P[3]~17_combout\ & (\Adder0|Carries~8_combout\ & \Adder0|P\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[3]~17_combout\,
	datab => \Adder0|BLAN1|recurse:inner|G_in_half\(0),
	datac => \Adder0|Carries~8_combout\,
	datad => \Adder0|P\(2),
	combout => \Adder0|Carries\(4));

-- Location: LCCOMB_X57_Y44_N22
\Adder0|S[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(4) = \A[4]~input_o\ $ (\Adder0|Carries\(4) $ (\B[4]~input_o\ $ (\AddNSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Adder0|Carries\(4),
	datac => \B[4]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|S\(4));

-- Location: LCCOMB_X60_Y41_N14
\ShiftUnit0|Mux64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux64~4_combout\ = (!\B[3]~input_o\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux64~4_combout\);

-- Location: LCCOMB_X60_Y41_N0
\ShiftUnit0|Mux123~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux123~2_combout\ = (\B[4]~input_o\) # ((!\B[3]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux123~2_combout\);

-- Location: LCCOMB_X60_Y41_N10
\ShiftUnit0|Mux123~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux123~3_combout\ = (\ShiftUnit0|Mux64~4_combout\ & ((\ShiftUnit0|Mux123~2_combout\ & (\ShiftUnit0|Mux7~45_combout\)) # (!\ShiftUnit0|Mux123~2_combout\ & ((\ShiftUnit0|Mux7~49_combout\))))) # (!\ShiftUnit0|Mux64~4_combout\ & 
-- (((\ShiftUnit0|Mux123~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~45_combout\,
	datab => \ShiftUnit0|Mux7~49_combout\,
	datac => \ShiftUnit0|Mux64~4_combout\,
	datad => \ShiftUnit0|Mux123~2_combout\,
	combout => \ShiftUnit0|Mux123~3_combout\);

-- Location: LCCOMB_X58_Y40_N4
\ShiftUnit0|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux51~0_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux7~26_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~42_combout\,
	datac => \ShiftUnit0|Mux7~26_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux51~0_combout\);

-- Location: LCCOMB_X58_Y40_N30
\ShiftUnit0|Mux127~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~37_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\ShiftUnit0|Mux7~39_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftUnit0|Mux7~17_combout\,
	datac => \ShiftUnit0|Mux7~39_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux127~37_combout\);

-- Location: LCCOMB_X58_Y40_N0
\ShiftUnit0|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux43~0_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux7~20_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~20_combout\,
	datad => \ShiftUnit0|Mux7~23_combout\,
	combout => \ShiftUnit0|Mux43~0_combout\);

-- Location: LCCOMB_X58_Y40_N18
\ShiftUnit0|Mux127~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~38_combout\ = (\ShiftUnit0|Mux127~37_combout\) # ((\ShiftUnit0|Mux43~0_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~37_combout\,
	datab => \ShiftUnit0|Mux43~0_combout\,
	datac => \B[3]~input_o\,
	combout => \ShiftUnit0|Mux127~38_combout\);

-- Location: LCCOMB_X59_Y42_N26
\ShiftUnit0|Mux123~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux123~4_combout\ = (\ShiftUnit0|Mux123~3_combout\ & (((\ShiftUnit0|Mux64~4_combout\) # (\ShiftUnit0|Mux127~38_combout\)))) # (!\ShiftUnit0|Mux123~3_combout\ & (\ShiftUnit0|Mux51~0_combout\ & (!\ShiftUnit0|Mux64~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux123~3_combout\,
	datab => \ShiftUnit0|Mux51~0_combout\,
	datac => \ShiftUnit0|Mux64~4_combout\,
	datad => \ShiftUnit0|Mux127~38_combout\,
	combout => \ShiftUnit0|Mux123~4_combout\);

-- Location: LCCOMB_X60_Y42_N16
\ShiftUnit0|Mux127~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~35_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~5_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~35_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~5_combout\,
	combout => \ShiftUnit0|Mux127~35_combout\);

-- Location: LCCOMB_X60_Y42_N18
\ShiftUnit0|Mux127~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~36_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux127~35_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux127~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~5_combout\,
	datab => \ShiftUnit0|Mux127~35_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux127~36_combout\);

-- Location: LCCOMB_X60_Y42_N28
\ShiftUnit0|Mux127~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~33_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~12_combout\))))) # (!\B[2]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~12_combout\,
	combout => \ShiftUnit0|Mux127~33_combout\);

-- Location: LCCOMB_X60_Y42_N22
\ShiftUnit0|Mux127~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~34_combout\ = (\ShiftUnit0|Mux127~33_combout\ & (((\B[2]~input_o\) # (\ShiftUnit0|Mux7~9_combout\)))) # (!\ShiftUnit0|Mux127~33_combout\ & (\ShiftUnit0|Mux7~2_combout\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~2_combout\,
	datab => \ShiftUnit0|Mux127~33_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~9_combout\,
	combout => \ShiftUnit0|Mux127~34_combout\);

-- Location: LCCOMB_X59_Y42_N24
\ShiftUnit0|Mux91~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux91~2_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|Mux127~34_combout\))) # (!\B[4]~input_o\ & (\ShiftUnit0|Mux127~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftUnit0|Mux127~36_combout\,
	datad => \ShiftUnit0|Mux127~34_combout\,
	combout => \ShiftUnit0|Mux91~2_combout\);

-- Location: LCCOMB_X59_Y42_N16
\ShiftUnit0|Mux123~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux123~5_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & (\ShiftUnit0|Mux123~4_combout\)) # (!\ExtWord~input_o\ & ((\ShiftUnit0|Mux91~2_combout\))))) # (!\B[5]~input_o\ & (((\ShiftUnit0|Mux123~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|Mux123~4_combout\,
	datad => \ShiftUnit0|Mux91~2_combout\,
	combout => \ShiftUnit0|Mux123~5_combout\);

-- Location: LCCOMB_X57_Y44_N2
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & (\Adder0|S\(4))) # (!\Mux34~0_combout\ & ((\ShiftUnit0|Mux123~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(4),
	datab => \Mux34~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \ShiftUnit0|Mux123~5_combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X57_Y44_N14
\Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~2_combout\ = (\Mux34~1_combout\ & ((\Mux59~0_combout\ & (\Mux59~1_combout\)) # (!\Mux59~0_combout\ & ((\ShiftUnit0|Mux68~0_combout\))))) # (!\Mux34~1_combout\ & (((\Mux59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~1_combout\,
	datab => \Mux34~1_combout\,
	datac => \ShiftUnit0|Mux68~0_combout\,
	datad => \Mux59~0_combout\,
	combout => \Mux59~2_combout\);

-- Location: LCCOMB_X57_Y42_N26
\Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~3_combout\ = (\Mux59~2_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux59~2_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux59~3_combout\);

-- Location: LCCOMB_X58_Y45_N8
\ShiftUnit0|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux69~0_combout\ = (\ShiftUnit0|Mux64~0_combout\ & ((\ShiftUnit0|Mux5~1_combout\))) # (!\ShiftUnit0|Mux64~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_ext~0_combout\,
	datab => \ShiftUnit0|Mux5~1_combout\,
	datad => \ShiftUnit0|Mux64~0_combout\,
	combout => \ShiftUnit0|Mux69~0_combout\);

-- Location: LCCOMB_X59_Y41_N26
\ShiftUnit0|Mux127~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~43_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|Mux7~77_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~77_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~62_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux127~43_combout\);

-- Location: LCCOMB_X59_Y41_N4
\ShiftUnit0|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux42~0_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux7~64_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~64_combout\,
	datad => \ShiftUnit0|Mux7~66_combout\,
	combout => \ShiftUnit0|Mux42~0_combout\);

-- Location: LCCOMB_X59_Y41_N14
\ShiftUnit0|Mux127~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~44_combout\ = (\ShiftUnit0|Mux127~43_combout\) # ((!\B[3]~input_o\ & \ShiftUnit0|Mux42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~43_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux42~0_combout\,
	combout => \ShiftUnit0|Mux127~44_combout\);

-- Location: LCCOMB_X59_Y41_N8
\ShiftUnit0|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux50~0_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux7~68_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~83_combout\,
	datad => \ShiftUnit0|Mux7~68_combout\,
	combout => \ShiftUnit0|Mux50~0_combout\);

-- Location: LCCOMB_X60_Y41_N20
\ShiftUnit0|Mux122~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux122~2_combout\ = (\ShiftUnit0|Mux64~4_combout\ & (((\ShiftUnit0|Mux7~81_combout\ & !\ShiftUnit0|Mux123~2_combout\)))) # (!\ShiftUnit0|Mux64~4_combout\ & ((\ShiftUnit0|Mux50~0_combout\) # ((\ShiftUnit0|Mux123~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux50~0_combout\,
	datab => \ShiftUnit0|Mux7~81_combout\,
	datac => \ShiftUnit0|Mux64~4_combout\,
	datad => \ShiftUnit0|Mux123~2_combout\,
	combout => \ShiftUnit0|Mux122~2_combout\);

-- Location: LCCOMB_X60_Y41_N30
\ShiftUnit0|Mux122~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux122~3_combout\ = (\ShiftUnit0|Mux122~2_combout\ & ((\ShiftUnit0|Mux127~44_combout\) # ((!\ShiftUnit0|Mux123~2_combout\)))) # (!\ShiftUnit0|Mux122~2_combout\ & (((\ShiftUnit0|Mux7~85_combout\ & \ShiftUnit0|Mux123~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~44_combout\,
	datab => \ShiftUnit0|Mux122~2_combout\,
	datac => \ShiftUnit0|Mux7~85_combout\,
	datad => \ShiftUnit0|Mux123~2_combout\,
	combout => \ShiftUnit0|Mux122~3_combout\);

-- Location: LCCOMB_X59_Y40_N26
\ShiftUnit0|Mux127~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~39_combout\ = (\B[3]~input_o\ & (((\ShiftUnit0|shift_ext~0_combout\)) # (!\B[2]~input_o\))) # (!\B[3]~input_o\ & (\B[2]~input_o\ & ((\ShiftUnit0|Mux7~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux7~59_combout\,
	combout => \ShiftUnit0|Mux127~39_combout\);

-- Location: LCCOMB_X59_Y40_N20
\ShiftUnit0|Mux127~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~40_combout\ = (\ShiftUnit0|Mux127~39_combout\ & ((\B[2]~input_o\) # ((\ShiftUnit0|Mux7~57_combout\)))) # (!\ShiftUnit0|Mux127~39_combout\ & (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~39_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~51_combout\,
	datad => \ShiftUnit0|Mux7~57_combout\,
	combout => \ShiftUnit0|Mux127~40_combout\);

-- Location: LCCOMB_X59_Y40_N14
\ShiftUnit0|Mux127~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~41_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~53_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~74_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~53_combout\,
	combout => \ShiftUnit0|Mux127~41_combout\);

-- Location: LCCOMB_X59_Y40_N16
\ShiftUnit0|Mux127~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~42_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux127~41_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux127~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~19_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux127~41_combout\,
	combout => \ShiftUnit0|Mux127~42_combout\);

-- Location: LCCOMB_X59_Y43_N8
\ShiftUnit0|Mux90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux90~2_combout\ = (\B[4]~input_o\ & (\ShiftUnit0|Mux127~40_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux127~40_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux127~42_combout\,
	combout => \ShiftUnit0|Mux90~2_combout\);

-- Location: LCCOMB_X58_Y45_N12
\ShiftUnit0|Mux122~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux122~4_combout\ = (\ExtWord~input_o\ & (\ShiftUnit0|Mux122~3_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\ShiftUnit0|Mux90~2_combout\))) # (!\B[5]~input_o\ & (\ShiftUnit0|Mux122~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux122~3_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|Mux90~2_combout\,
	datad => \B[5]~input_o\,
	combout => \ShiftUnit0|Mux122~4_combout\);

-- Location: LCCOMB_X58_Y45_N10
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\Mux34~1_combout\ & ((\ShiftUnit0|Mux69~0_combout\) # ((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & (((!\Mux34~0_combout\ & \ShiftUnit0|Mux122~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \ShiftUnit0|Mux69~0_combout\,
	datac => \Mux34~0_combout\,
	datad => \ShiftUnit0|Mux122~4_combout\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X63_Y40_N12
\Adder0|Carries~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~15_combout\ = (\Adder0|P[3]~17_combout\ & (\Adder0|P\(4) & (\Adder0|Carries~8_combout\ & \Adder0|P\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[3]~17_combout\,
	datab => \Adder0|P\(4),
	datac => \Adder0|Carries~8_combout\,
	datad => \Adder0|P\(2),
	combout => \Adder0|Carries~15_combout\);

-- Location: LCCOMB_X63_Y44_N10
\Adder0|BLAN1|G_out[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[4]~3_combout\ = (\A[4]~input_o\ & ((\Adder0|BLAN1|recurse:inner|G_in_half\(0)) # (\AddNSub~input_o\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\Adder0|BLAN1|recurse:inner|G_in_half\(0) & (\AddNSub~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Adder0|BLAN1|recurse:inner|G_in_half\(0),
	datac => \AddNSub~input_o\,
	datad => \B[4]~input_o\,
	combout => \Adder0|BLAN1|G_out[4]~3_combout\);

-- Location: LCCOMB_X63_Y44_N12
\Adder0|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(5) = \Adder0|P[5]~15_combout\ $ (((\Adder0|Carries~15_combout\) # (\Adder0|BLAN1|G_out[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~15_combout\,
	datab => \Adder0|P[5]~15_combout\,
	datad => \Adder0|BLAN1|G_out[4]~3_combout\,
	combout => \Adder0|S\(5));

-- Location: LCCOMB_X58_Y45_N20
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\LogicFN[0]~input_o\ & ((\A[5]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & ((\B[5]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[5]~input_o\ & ((\A[5]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X58_Y45_N14
\Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (\Mux58~0_combout\ & (((\Mux58~1_combout\)) # (!\Mux34~0_combout\))) # (!\Mux58~0_combout\ & (\Mux34~0_combout\ & (\Adder0|S\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Mux34~0_combout\,
	datac => \Adder0|S\(5),
	datad => \Mux58~1_combout\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X59_Y45_N0
\Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux58~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux58~2_combout\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X63_Y44_N14
\Adder0|Carries~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~30_combout\ = (\Adder0|Carries~15_combout\ & (\AddNSub~input_o\ $ (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~15_combout\,
	datab => \AddNSub~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Adder0|Carries~30_combout\);

-- Location: LCCOMB_X63_Y44_N6
\Adder0|BLAN1|recurse:inner|G_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(2) = (\Adder0|BLAN1|G_in_half[2]~23_combout\) # ((\Adder0|P[5]~15_combout\ & (\Adder0|BLAN1|recurse:inner|G_in_half\(0) & \Adder0|P\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[2]~23_combout\,
	datab => \Adder0|P[5]~15_combout\,
	datac => \Adder0|BLAN1|recurse:inner|G_in_half\(0),
	datad => \Adder0|P\(4),
	combout => \Adder0|BLAN1|recurse:inner|G_out\(2));

-- Location: LCCOMB_X63_Y44_N8
\Adder0|S[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(6) = \Adder0|P\(6) $ (((\Adder0|Carries~30_combout\) # (\Adder0|BLAN1|recurse:inner|G_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|P\(6),
	datac => \Adder0|Carries~30_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out\(2),
	combout => \Adder0|S\(6));

-- Location: LCCOMB_X58_Y41_N12
\ShiftUnit0|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux33~1_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux7~101_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux33~0_combout\,
	datad => \ShiftUnit0|Mux7~101_combout\,
	combout => \ShiftUnit0|Mux33~1_combout\);

-- Location: LCCOMB_X58_Y41_N22
\ShiftUnit0|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux41~0_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux7~93_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux7~93_combout\,
	datad => \ShiftUnit0|Mux7~95_combout\,
	combout => \ShiftUnit0|Mux41~0_combout\);

-- Location: LCCOMB_X58_Y41_N0
\ShiftUnit0|Mux127~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~49_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|Mux33~1_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux33~1_combout\,
	datac => \ShiftUnit0|Mux41~0_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftUnit0|Mux127~49_combout\);

-- Location: LCCOMB_X58_Y41_N26
\ShiftUnit0|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux49~0_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux7~97_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux7~97_combout\,
	datac => \ShiftUnit0|Mux7~110_combout\,
	combout => \ShiftUnit0|Mux49~0_combout\);

-- Location: LCCOMB_X61_Y41_N12
\ShiftUnit0|Mux121~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux121~2_combout\ = (\ShiftUnit0|Mux64~4_combout\ & ((\ShiftUnit0|Mux123~2_combout\ & (\ShiftUnit0|Mux7~112_combout\)) # (!\ShiftUnit0|Mux123~2_combout\ & ((\ShiftUnit0|Mux7~108_combout\))))) # (!\ShiftUnit0|Mux64~4_combout\ & 
-- (((\ShiftUnit0|Mux123~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux64~4_combout\,
	datab => \ShiftUnit0|Mux7~112_combout\,
	datac => \ShiftUnit0|Mux123~2_combout\,
	datad => \ShiftUnit0|Mux7~108_combout\,
	combout => \ShiftUnit0|Mux121~2_combout\);

-- Location: LCCOMB_X58_Y41_N18
\ShiftUnit0|Mux121~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux121~3_combout\ = (\ShiftUnit0|Mux64~4_combout\ & (((\ShiftUnit0|Mux121~2_combout\)))) # (!\ShiftUnit0|Mux64~4_combout\ & ((\ShiftUnit0|Mux121~2_combout\ & (\ShiftUnit0|Mux127~49_combout\)) # (!\ShiftUnit0|Mux121~2_combout\ & 
-- ((\ShiftUnit0|Mux49~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux64~4_combout\,
	datab => \ShiftUnit0|Mux127~49_combout\,
	datac => \ShiftUnit0|Mux49~0_combout\,
	datad => \ShiftUnit0|Mux121~2_combout\,
	combout => \ShiftUnit0|Mux121~3_combout\);

-- Location: LCCOMB_X62_Y41_N8
\ShiftUnit0|Mux127~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~45_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|Mux7~91_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~91_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~87_combout\,
	combout => \ShiftUnit0|Mux127~45_combout\);

-- Location: LCCOMB_X62_Y41_N18
\ShiftUnit0|Mux127~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~46_combout\ = (\ShiftUnit0|Mux127~45_combout\) # ((\ShiftUnit0|Mux1~0_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux1~0_combout\,
	datac => \ShiftUnit0|Mux127~45_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftUnit0|Mux127~46_combout\);

-- Location: LCCOMB_X62_Y41_N12
\ShiftUnit0|Mux127~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~47_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~89_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~99_combout\,
	datab => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~89_combout\,
	combout => \ShiftUnit0|Mux127~47_combout\);

-- Location: LCCOMB_X62_Y41_N22
\ShiftUnit0|Mux127~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~48_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux127~47_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux127~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~47_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux127~24_combout\,
	combout => \ShiftUnit0|Mux127~48_combout\);

-- Location: LCCOMB_X58_Y42_N20
\ShiftUnit0|Mux89~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux89~2_combout\ = (\B[4]~input_o\ & (\ShiftUnit0|Mux127~46_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~46_combout\,
	datac => \ShiftUnit0|Mux127~48_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux89~2_combout\);

-- Location: LCCOMB_X59_Y43_N2
\ShiftUnit0|Mux121~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux121~4_combout\ = (\ExtWord~input_o\ & (\ShiftUnit0|Mux121~3_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\ShiftUnit0|Mux89~2_combout\))) # (!\B[5]~input_o\ & (\ShiftUnit0|Mux121~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux121~3_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftUnit0|Mux89~2_combout\,
	combout => \ShiftUnit0|Mux121~4_combout\);

-- Location: LCCOMB_X59_Y43_N4
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\Mux34~1_combout\ & (\Mux34~0_combout\)) # (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & (\Adder0|S\(6))) # (!\Mux34~0_combout\ & ((\ShiftUnit0|Mux121~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux34~0_combout\,
	datac => \Adder0|S\(6),
	datad => \ShiftUnit0|Mux121~4_combout\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X56_Y44_N18
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\B[6]~input_o\ & ((\LogicFN[1]~input_o\ & ((\A[6]~input_o\) # (\LogicFN[0]~input_o\))) # (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[6]~input_o\))))) # (!\B[6]~input_o\ & (((\A[6]~input_o\ & \LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X59_Y43_N10
\ShiftUnit0|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux70~0_combout\ = (\ShiftUnit0|Mux64~0_combout\ & ((\ShiftUnit0|Mux6~0_combout\))) # (!\ShiftUnit0|Mux64~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux64~0_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|Mux6~0_combout\,
	combout => \ShiftUnit0|Mux70~0_combout\);

-- Location: LCCOMB_X59_Y43_N14
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\Mux34~1_combout\ & ((\Mux57~0_combout\ & (\Mux57~1_combout\)) # (!\Mux57~0_combout\ & ((\ShiftUnit0|Mux70~0_combout\))))) # (!\Mux34~1_combout\ & (\Mux57~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux57~0_combout\,
	datac => \Mux57~1_combout\,
	datad => \ShiftUnit0|Mux70~0_combout\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X65_Y47_N16
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\Mux57~2_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~2_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X58_Y42_N22
\ShiftUnit0|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux71~0_combout\ = (\ShiftUnit0|Mux64~0_combout\ & ((\ShiftUnit0|Mux7~13_combout\))) # (!\ShiftUnit0|Mux64~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|Mux64~0_combout\,
	datad => \ShiftUnit0|Mux7~13_combout\,
	combout => \ShiftUnit0|Mux71~0_combout\);

-- Location: LCCOMB_X58_Y37_N6
\ShiftUnit0|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux48~0_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux7~122_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~122_combout\,
	datab => \ShiftUnit0|Mux7~128_combout\,
	datac => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux48~0_combout\);

-- Location: LCCOMB_X61_Y41_N14
\ShiftUnit0|Mux120~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux120~2_combout\ = (\ShiftUnit0|Mux123~2_combout\ & (((!\ShiftUnit0|Mux64~4_combout\)))) # (!\ShiftUnit0|Mux123~2_combout\ & ((\ShiftUnit0|Mux64~4_combout\ & (\ShiftUnit0|Mux7~127_combout\)) # (!\ShiftUnit0|Mux64~4_combout\ & 
-- ((\ShiftUnit0|Mux48~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~127_combout\,
	datab => \ShiftUnit0|Mux48~0_combout\,
	datac => \ShiftUnit0|Mux123~2_combout\,
	datad => \ShiftUnit0|Mux64~4_combout\,
	combout => \ShiftUnit0|Mux120~2_combout\);

-- Location: LCCOMB_X58_Y39_N10
\ShiftUnit0|Mux127~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~54_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\ShiftUnit0|Mux7~126_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~118_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~126_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux127~54_combout\);

-- Location: LCCOMB_X58_Y39_N12
\ShiftUnit0|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux40~0_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux7~120_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~120_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~121_combout\,
	combout => \ShiftUnit0|Mux40~0_combout\);

-- Location: LCCOMB_X58_Y39_N14
\ShiftUnit0|Mux127~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~55_combout\ = (\ShiftUnit0|Mux127~54_combout\) # ((!\B[3]~input_o\ & \ShiftUnit0|Mux40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~54_combout\,
	datab => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux40~0_combout\,
	combout => \ShiftUnit0|Mux127~55_combout\);

-- Location: LCCOMB_X57_Y42_N14
\ShiftUnit0|Mux120~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux120~3_combout\ = (\ShiftUnit0|Mux120~2_combout\ & ((\ShiftUnit0|Mux127~55_combout\) # ((!\ShiftUnit0|Mux123~2_combout\)))) # (!\ShiftUnit0|Mux120~2_combout\ & (((\ShiftUnit0|Mux7~129_combout\ & \ShiftUnit0|Mux123~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux120~2_combout\,
	datab => \ShiftUnit0|Mux127~55_combout\,
	datac => \ShiftUnit0|Mux7~129_combout\,
	datad => \ShiftUnit0|Mux123~2_combout\,
	combout => \ShiftUnit0|Mux120~3_combout\);

-- Location: LCCOMB_X60_Y39_N14
\ShiftUnit0|Mux127~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~53_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|Mux7~116_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux7~116_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~113_combout\,
	combout => \ShiftUnit0|Mux127~53_combout\);

-- Location: LCCOMB_X60_Y39_N10
\ShiftUnit0|Mux127~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~50_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~114_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~125_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~114_combout\,
	combout => \ShiftUnit0|Mux127~50_combout\);

-- Location: LCCOMB_X60_Y39_N12
\ShiftUnit0|Mux127~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~51_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux127~50_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux127~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux127~30_combout\,
	datad => \ShiftUnit0|Mux127~50_combout\,
	combout => \ShiftUnit0|Mux127~51_combout\);

-- Location: LCCOMB_X63_Y42_N16
\ShiftUnit0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux0~1_combout\ = (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((!\ShiftUnit0|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ShiftUnit0|Mux0~0_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \ShiftUnit0|Mux0~1_combout\);

-- Location: LCCOMB_X63_Y42_N10
\ShiftUnit0|Mux127~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~52_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux0~1_combout\ & (\ShiftUnit0|Mux64~1_combout\)) # (!\ShiftUnit0|Mux0~1_combout\ & ((\ShiftUnit0|shift_input[63]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux64~1_combout\,
	datab => \ShiftUnit0|shift_input[63]~1_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux0~1_combout\,
	combout => \ShiftUnit0|Mux127~52_combout\);

-- Location: LCCOMB_X57_Y42_N12
\ShiftUnit0|Mux88~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux88~2_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|Mux127~53_combout\) # ((\ShiftUnit0|Mux127~52_combout\)))) # (!\B[4]~input_o\ & (((\ShiftUnit0|Mux127~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~53_combout\,
	datab => \ShiftUnit0|Mux127~51_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux127~52_combout\,
	combout => \ShiftUnit0|Mux88~2_combout\);

-- Location: LCCOMB_X57_Y42_N4
\ShiftUnit0|Mux120~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux120~4_combout\ = (\ExtWord~input_o\ & (((\ShiftUnit0|Mux120~3_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\ShiftUnit0|Mux88~2_combout\))) # (!\B[5]~input_o\ & (\ShiftUnit0|Mux120~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \ShiftUnit0|Mux120~3_combout\,
	datad => \ShiftUnit0|Mux88~2_combout\,
	combout => \ShiftUnit0|Mux120~4_combout\);

-- Location: LCCOMB_X57_Y46_N24
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\Mux34~1_combout\ & ((\ShiftUnit0|Mux71~0_combout\) # ((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & (((\ShiftUnit0|Mux120~4_combout\ & !\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \ShiftUnit0|Mux71~0_combout\,
	datac => \ShiftUnit0|Mux120~4_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X63_Y44_N2
\Adder0|BLAN1|G_out[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[6]~4_combout\ = (\Adder0|BLAN1|recurse:inner|G_out\(2) & ((\A[6]~input_o\) # (\AddNSub~input_o\ $ (\B[6]~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|G_out\(2) & (\A[6]~input_o\ & (\AddNSub~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out\(2),
	datab => \AddNSub~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Adder0|BLAN1|G_out[6]~4_combout\);

-- Location: LCCOMB_X63_Y44_N4
\Adder0|S[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(7) = \Adder0|P[7]~16_combout\ $ (((\Adder0|BLAN1|G_out[6]~4_combout\) # ((\Adder0|Carries~30_combout\ & \Adder0|P\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[7]~16_combout\,
	datab => \Adder0|BLAN1|G_out[6]~4_combout\,
	datac => \Adder0|Carries~30_combout\,
	datad => \Adder0|P\(6),
	combout => \Adder0|S\(7));

-- Location: LCCOMB_X57_Y46_N10
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\LogicFN[0]~input_o\ & ((\A[7]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & ((\B[7]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[7]~input_o\ & ((\A[7]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X57_Y46_N28
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\Mux34~0_combout\ & ((\Mux56~0_combout\ & ((\Mux56~1_combout\))) # (!\Mux56~0_combout\ & (\Adder0|S\(7))))) # (!\Mux34~0_combout\ & (\Mux56~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux56~0_combout\,
	datac => \Adder0|S\(7),
	datad => \Mux56~1_combout\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X57_Y46_N14
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux56~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux56~2_combout\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X58_Y42_N24
\ShiftUnit0|Mux127~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~59_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~13_combout\,
	combout => \ShiftUnit0|Mux127~59_combout\);

-- Location: LCCOMB_X60_Y42_N12
\ShiftUnit0|Mux127~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~60_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|Mux7~2_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~2_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~29_combout\,
	combout => \ShiftUnit0|Mux127~60_combout\);

-- Location: LCCOMB_X60_Y42_N30
\ShiftUnit0|Mux127~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~61_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux127~60_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux127~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux127~35_combout\,
	datad => \ShiftUnit0|Mux127~60_combout\,
	combout => \ShiftUnit0|Mux127~61_combout\);

-- Location: LCCOMB_X58_Y42_N2
\ShiftUnit0|Mux127~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~62_combout\ = (\B[4]~input_o\ & (\ShiftUnit0|Mux127~59_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftUnit0|Mux127~59_combout\,
	datad => \ShiftUnit0|Mux127~61_combout\,
	combout => \ShiftUnit0|Mux127~62_combout\);

-- Location: LCCOMB_X58_Y40_N6
\ShiftUnit0|Mux127~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~57_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|Mux7~32_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~32_combout\,
	datad => \ShiftUnit0|Mux7~17_combout\,
	combout => \ShiftUnit0|Mux127~57_combout\);

-- Location: LCCOMB_X58_Y40_N12
\ShiftUnit0|Mux127~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~56_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\ShiftUnit0|Mux7~39_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~20_combout\,
	datab => \ShiftUnit0|Mux7~39_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux127~56_combout\);

-- Location: LCCOMB_X58_Y40_N16
\ShiftUnit0|Mux127~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~58_combout\ = (\ShiftUnit0|Mux127~56_combout\) # ((\ShiftUnit0|Mux127~57_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~57_combout\,
	datab => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux127~56_combout\,
	combout => \ShiftUnit0|Mux127~58_combout\);

-- Location: LCCOMB_X58_Y43_N26
\ShiftUnit0|Mux117~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux117~1_combout\ = (\B[3]~input_o\ & (((!\ExtWord~input_o\ & \B[5]~input_o\)) # (!\B[4]~input_o\))) # (!\B[3]~input_o\ & (!\ExtWord~input_o\ & (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux117~1_combout\);

-- Location: LCCOMB_X58_Y40_N26
\ShiftUnit0|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux55~0_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux7~42_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux7~42_combout\,
	datad => \ShiftUnit0|Mux7~45_combout\,
	combout => \ShiftUnit0|Mux55~0_combout\);

-- Location: LCCOMB_X58_Y43_N8
\ShiftUnit0|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux117~0_combout\ = (\B[4]~input_o\) # ((!\ExtWord~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux117~0_combout\);

-- Location: LCCOMB_X58_Y40_N28
\ShiftUnit0|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux119~0_combout\ = (\ShiftUnit0|Mux117~1_combout\ & ((\ShiftUnit0|Mux47~0_combout\) # ((\ShiftUnit0|Mux117~0_combout\)))) # (!\ShiftUnit0|Mux117~1_combout\ & (((\ShiftUnit0|Mux55~0_combout\ & !\ShiftUnit0|Mux117~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux47~0_combout\,
	datab => \ShiftUnit0|Mux117~1_combout\,
	datac => \ShiftUnit0|Mux55~0_combout\,
	datad => \ShiftUnit0|Mux117~0_combout\,
	combout => \ShiftUnit0|Mux119~0_combout\);

-- Location: LCCOMB_X58_Y42_N4
\ShiftUnit0|Mux119~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux119~1_combout\ = (\ShiftUnit0|Mux119~0_combout\ & ((\ShiftUnit0|Mux127~62_combout\) # ((!\ShiftUnit0|Mux117~0_combout\)))) # (!\ShiftUnit0|Mux119~0_combout\ & (((\ShiftUnit0|Mux127~58_combout\ & \ShiftUnit0|Mux117~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~62_combout\,
	datab => \ShiftUnit0|Mux127~58_combout\,
	datac => \ShiftUnit0|Mux119~0_combout\,
	datad => \ShiftUnit0|Mux117~0_combout\,
	combout => \ShiftUnit0|Mux119~1_combout\);

-- Location: LCCOMB_X65_Y45_N26
\Adder0|S[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(8) = \Adder0|P\(8) $ (((\Adder0|Carries~9_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|Carries~9_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0),
	datad => \Adder0|P\(8),
	combout => \Adder0|S\(8));

-- Location: LCCOMB_X65_Y45_N20
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\Mux34~1_combout\ & (\Mux34~0_combout\)) # (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & ((\Adder0|S\(8)))) # (!\Mux34~0_combout\ & (\ShiftUnit0|Mux119~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux34~0_combout\,
	datac => \ShiftUnit0|Mux119~1_combout\,
	datad => \Adder0|S\(8),
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X57_Y42_N0
\ShiftUnit0|Mux104~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux104~2_combout\ = (\B[4]~input_o\ & (((\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~53_combout\) # ((\ShiftUnit0|Mux127~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~53_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux127~52_combout\,
	combout => \ShiftUnit0|Mux104~2_combout\);

-- Location: LCCOMB_X57_Y42_N22
\ShiftUnit0|Mux72~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux72~2_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\ShiftUnit0|Mux104~2_combout\))) # (!\ExtWord~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[5]~input_o\ & (((\ShiftUnit0|Mux104~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_ext~0_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftUnit0|Mux104~2_combout\,
	combout => \ShiftUnit0|Mux72~2_combout\);

-- Location: LCCOMB_X65_Y45_N30
\Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\A[8]~input_o\ & ((\B[8]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[8]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X57_Y42_N10
\Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\Mux34~1_combout\ & ((\Mux55~0_combout\ & ((\Mux55~1_combout\))) # (!\Mux55~0_combout\ & (\ShiftUnit0|Mux72~2_combout\)))) # (!\Mux34~1_combout\ & (\Mux55~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux55~0_combout\,
	datac => \ShiftUnit0|Mux72~2_combout\,
	datad => \Mux55~1_combout\,
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X57_Y42_N20
\Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux55~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux55~2_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X65_Y45_N6
\Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\A[9]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[9]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[9]~input_o\))))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X65_Y45_N16
\Adder0|BLAN1|G_out[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[8]~5_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0) & ((\A[8]~input_o\) # (\B[8]~input_o\ $ (\AddNSub~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0) & (\A[8]~input_o\ & (\B[8]~input_o\ $ 
-- (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0),
	datab => \B[8]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \A[8]~input_o\,
	combout => \Adder0|BLAN1|G_out[8]~5_combout\);

-- Location: LCCOMB_X65_Y45_N2
\Adder0|S[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(9) = \Adder0|P[9]~19_combout\ $ (((\Adder0|BLAN1|G_out[8]~5_combout\) # ((\Adder0|Carries~9_combout\ & \Adder0|P\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[9]~19_combout\,
	datab => \Adder0|BLAN1|G_out[8]~5_combout\,
	datac => \Adder0|Carries~9_combout\,
	datad => \Adder0|P\(8),
	combout => \Adder0|S\(9));

-- Location: LCCOMB_X58_Y42_N30
\ShiftUnit0|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux73~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (((\ShiftUnit0|shift_ext~0_combout\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\B[4]~input_o\ & 
-- (\ShiftUnit0|Mux127~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~46_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux73~0_combout\);

-- Location: LCCOMB_X59_Y41_N18
\ShiftUnit0|Mux127~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~64_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~72_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~62_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~72_combout\,
	combout => \ShiftUnit0|Mux127~64_combout\);

-- Location: LCCOMB_X59_Y41_N16
\ShiftUnit0|Mux127~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~63_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\ShiftUnit0|Mux7~77_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~77_combout\,
	datad => \ShiftUnit0|Mux7~64_combout\,
	combout => \ShiftUnit0|Mux127~63_combout\);

-- Location: LCCOMB_X59_Y41_N12
\ShiftUnit0|Mux127~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~65_combout\ = (\ShiftUnit0|Mux127~63_combout\) # ((\B[2]~input_o\ & \ShiftUnit0|Mux127~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux127~64_combout\,
	datad => \ShiftUnit0|Mux127~63_combout\,
	combout => \ShiftUnit0|Mux127~65_combout\);

-- Location: LCCOMB_X59_Y41_N30
\ShiftUnit0|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux118~0_combout\ = (\ShiftUnit0|Mux117~0_combout\ & ((\ShiftUnit0|Mux117~1_combout\) # ((\ShiftUnit0|Mux127~65_combout\)))) # (!\ShiftUnit0|Mux117~0_combout\ & (!\ShiftUnit0|Mux117~1_combout\ & ((\ShiftUnit0|Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux117~0_combout\,
	datab => \ShiftUnit0|Mux117~1_combout\,
	datac => \ShiftUnit0|Mux127~65_combout\,
	datad => \ShiftUnit0|Mux54~0_combout\,
	combout => \ShiftUnit0|Mux118~0_combout\);

-- Location: LCCOMB_X59_Y40_N12
\ShiftUnit0|Mux127~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~67_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|Mux7~51_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~51_combout\,
	datad => \ShiftUnit0|Mux7~70_combout\,
	combout => \ShiftUnit0|Mux127~67_combout\);

-- Location: LCCOMB_X59_Y40_N6
\ShiftUnit0|Mux127~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~68_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux127~67_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux127~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux127~41_combout\,
	datad => \ShiftUnit0|Mux127~67_combout\,
	combout => \ShiftUnit0|Mux127~68_combout\);

-- Location: LCCOMB_X59_Y40_N2
\ShiftUnit0|Mux127~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~66_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftUnit0|Mux6~0_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	combout => \ShiftUnit0|Mux127~66_combout\);

-- Location: LCCOMB_X60_Y41_N8
\ShiftUnit0|Mux127~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~69_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|Mux127~66_combout\))) # (!\B[4]~input_o\ & (\ShiftUnit0|Mux127~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux127~68_combout\,
	datad => \ShiftUnit0|Mux127~66_combout\,
	combout => \ShiftUnit0|Mux127~69_combout\);

-- Location: LCCOMB_X59_Y41_N0
\ShiftUnit0|Mux118~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux118~1_combout\ = (\ShiftUnit0|Mux117~1_combout\ & ((\ShiftUnit0|Mux118~0_combout\ & ((\ShiftUnit0|Mux127~69_combout\))) # (!\ShiftUnit0|Mux118~0_combout\ & (\ShiftUnit0|Mux46~0_combout\)))) # (!\ShiftUnit0|Mux117~1_combout\ & 
-- (((\ShiftUnit0|Mux118~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux46~0_combout\,
	datab => \ShiftUnit0|Mux117~1_combout\,
	datac => \ShiftUnit0|Mux118~0_combout\,
	datad => \ShiftUnit0|Mux127~69_combout\,
	combout => \ShiftUnit0|Mux118~1_combout\);

-- Location: LCCOMB_X65_Y45_N12
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\Mux34~1_combout\ & ((\ShiftUnit0|Mux73~0_combout\) # ((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & (((!\Mux34~0_combout\ & \ShiftUnit0|Mux118~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \ShiftUnit0|Mux73~0_combout\,
	datac => \Mux34~0_combout\,
	datad => \ShiftUnit0|Mux118~1_combout\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X65_Y45_N0
\Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\Mux34~0_combout\ & ((\Mux54~0_combout\ & (\Mux54~1_combout\)) # (!\Mux54~0_combout\ & ((\Adder0|S\(9)))))) # (!\Mux34~0_combout\ & (((\Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => \Adder0|S\(9),
	datac => \Mux34~0_combout\,
	datad => \Mux54~0_combout\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X65_Y47_N18
\Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux54~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux54~2_combout\,
	combout => \Mux54~3_combout\);

-- Location: LCCOMB_X58_Y41_N8
\ShiftUnit0|Mux117~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux117~2_combout\ = (\ShiftUnit0|Mux117~0_combout\ & (((\ShiftUnit0|Mux117~1_combout\)))) # (!\ShiftUnit0|Mux117~0_combout\ & ((\ShiftUnit0|Mux117~1_combout\ & (\ShiftUnit0|Mux45~0_combout\)) # (!\ShiftUnit0|Mux117~1_combout\ & 
-- ((\ShiftUnit0|Mux53~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux45~0_combout\,
	datab => \ShiftUnit0|Mux117~0_combout\,
	datac => \ShiftUnit0|Mux117~1_combout\,
	datad => \ShiftUnit0|Mux53~0_combout\,
	combout => \ShiftUnit0|Mux117~2_combout\);

-- Location: LCCOMB_X58_Y41_N4
\ShiftUnit0|Mux127~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~70_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\ShiftUnit0|Mux7~105_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux7~101_combout\,
	datac => \ShiftUnit0|Mux7~105_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftUnit0|Mux127~70_combout\);

-- Location: LCCOMB_X58_Y41_N30
\ShiftUnit0|Mux127~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~71_combout\ = (\ShiftUnit0|Mux127~70_combout\) # ((!\B[3]~input_o\ & \ShiftUnit0|Mux37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux127~70_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux37~0_combout\,
	combout => \ShiftUnit0|Mux127~71_combout\);

-- Location: LCCOMB_X62_Y41_N16
\ShiftUnit0|Mux127~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~73_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~87_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~103_combout\,
	datad => \ShiftUnit0|Mux7~87_combout\,
	combout => \ShiftUnit0|Mux127~73_combout\);

-- Location: LCCOMB_X62_Y41_N10
\ShiftUnit0|Mux127~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~74_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux127~73_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux127~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux127~73_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux127~47_combout\,
	combout => \ShiftUnit0|Mux127~74_combout\);

-- Location: LCCOMB_X58_Y45_N24
\ShiftUnit0|Mux127~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~72_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_ext~0_combout\,
	datab => \ShiftUnit0|Mux5~1_combout\,
	datad => \B[3]~input_o\,
	combout => \ShiftUnit0|Mux127~72_combout\);

-- Location: LCCOMB_X58_Y45_N26
\ShiftUnit0|Mux127~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~75_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|Mux127~72_combout\))) # (!\B[4]~input_o\ & (\ShiftUnit0|Mux127~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~74_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux127~72_combout\,
	combout => \ShiftUnit0|Mux127~75_combout\);

-- Location: LCCOMB_X59_Y43_N26
\ShiftUnit0|Mux117~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux117~3_combout\ = (\ShiftUnit0|Mux117~0_combout\ & ((\ShiftUnit0|Mux117~2_combout\ & ((\ShiftUnit0|Mux127~75_combout\))) # (!\ShiftUnit0|Mux117~2_combout\ & (\ShiftUnit0|Mux127~71_combout\)))) # (!\ShiftUnit0|Mux117~0_combout\ & 
-- (\ShiftUnit0|Mux117~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux117~0_combout\,
	datab => \ShiftUnit0|Mux117~2_combout\,
	datac => \ShiftUnit0|Mux127~71_combout\,
	datad => \ShiftUnit0|Mux127~75_combout\,
	combout => \ShiftUnit0|Mux117~3_combout\);

-- Location: LCCOMB_X65_Y45_N4
\Adder0|Carries~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~16_combout\ = (\Adder0|P[9]~19_combout\ & (\Adder0|Carries~9_combout\ & \Adder0|P\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[9]~19_combout\,
	datac => \Adder0|Carries~9_combout\,
	datad => \Adder0|P\(8),
	combout => \Adder0|Carries~16_combout\);

-- Location: LCCOMB_X65_Y45_N18
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8_combout\ = (\Adder0|BLAN1|G_in_half[4]~19_combout\) # ((\Adder0|P[9]~19_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0) & \Adder0|P\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[9]~19_combout\,
	datab => \Adder0|BLAN1|G_in_half[4]~19_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0),
	datad => \Adder0|P\(8),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8_combout\);

-- Location: LCCOMB_X63_Y43_N28
\Adder0|S[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(10) = \Adder0|P\(10) $ (((\Adder0|Carries~16_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~16_combout\,
	datab => \Adder0|P\(10),
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8_combout\,
	combout => \Adder0|S\(10));

-- Location: LCCOMB_X59_Y43_N28
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\Mux34~1_combout\ & (\Mux34~0_combout\)) # (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & ((\Adder0|S\(10)))) # (!\Mux34~0_combout\ & (\ShiftUnit0|Mux117~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux34~0_combout\,
	datac => \ShiftUnit0|Mux117~3_combout\,
	datad => \Adder0|S\(10),
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X65_Y44_N20
\Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[10]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[10]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X59_Y43_N24
\ShiftUnit0|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux74~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (((\ShiftUnit0|shift_ext~0_combout\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[4]~input_o\ & 
-- ((\ShiftUnit0|Mux127~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux127~40_combout\,
	combout => \ShiftUnit0|Mux74~0_combout\);

-- Location: LCCOMB_X59_Y43_N30
\Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (\Mux34~1_combout\ & ((\Mux53~0_combout\ & (\Mux53~1_combout\)) # (!\Mux53~0_combout\ & ((\ShiftUnit0|Mux74~0_combout\))))) # (!\Mux34~1_combout\ & (\Mux53~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux53~0_combout\,
	datac => \Mux53~1_combout\,
	datad => \ShiftUnit0|Mux74~0_combout\,
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X65_Y47_N20
\Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = (\Mux53~2_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux53~2_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux53~3_combout\);

-- Location: LCCOMB_X65_Y44_N30
\Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[11]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[11]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X59_Y42_N28
\ShiftUnit0|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux75~0_combout\ = (\B[4]~input_o\ & (((\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\ShiftUnit0|shamt[5]~0_combout\ & 
-- ((\ShiftUnit0|Mux127~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux127~34_combout\,
	combout => \ShiftUnit0|Mux75~0_combout\);

-- Location: LCCOMB_X59_Y39_N6
\ShiftUnit0|Mux127~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~79_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux4~2_combout\,
	combout => \ShiftUnit0|Mux127~79_combout\);

-- Location: LCCOMB_X60_Y39_N16
\ShiftUnit0|Mux127~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~80_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~113_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux7~123_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~113_combout\,
	combout => \ShiftUnit0|Mux127~80_combout\);

-- Location: LCCOMB_X60_Y39_N18
\ShiftUnit0|Mux127~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~81_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux127~80_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux127~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux127~80_combout\,
	datad => \ShiftUnit0|Mux127~50_combout\,
	combout => \ShiftUnit0|Mux127~81_combout\);

-- Location: LCCOMB_X59_Y39_N16
\ShiftUnit0|Mux127~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~82_combout\ = (\B[4]~input_o\ & (\ShiftUnit0|Mux127~79_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~79_combout\,
	datab => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux127~81_combout\,
	combout => \ShiftUnit0|Mux127~82_combout\);

-- Location: LCCOMB_X58_Y39_N26
\ShiftUnit0|Mux127~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~77_combout\ = (\B[3]~input_o\ & ((\ShiftUnit0|Mux7~124_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~118_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~124_combout\,
	combout => \ShiftUnit0|Mux127~77_combout\);

-- Location: LCCOMB_X58_Y39_N0
\ShiftUnit0|Mux127~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~76_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\ShiftUnit0|Mux7~126_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~120_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftUnit0|Mux7~126_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftUnit0|Mux127~76_combout\);

-- Location: LCCOMB_X58_Y39_N4
\ShiftUnit0|Mux127~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~78_combout\ = (\ShiftUnit0|Mux127~76_combout\) # ((\B[2]~input_o\ & \ShiftUnit0|Mux127~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux127~77_combout\,
	datad => \ShiftUnit0|Mux127~76_combout\,
	combout => \ShiftUnit0|Mux127~78_combout\);

-- Location: LCCOMB_X59_Y42_N6
\ShiftUnit0|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux116~0_combout\ = (\ShiftUnit0|Mux117~0_combout\ & ((\ShiftUnit0|Mux127~78_combout\) # ((\ShiftUnit0|Mux117~1_combout\)))) # (!\ShiftUnit0|Mux117~0_combout\ & (((\ShiftUnit0|Mux52~0_combout\ & !\ShiftUnit0|Mux117~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~78_combout\,
	datab => \ShiftUnit0|Mux52~0_combout\,
	datac => \ShiftUnit0|Mux117~0_combout\,
	datad => \ShiftUnit0|Mux117~1_combout\,
	combout => \ShiftUnit0|Mux116~0_combout\);

-- Location: LCCOMB_X59_Y42_N0
\ShiftUnit0|Mux116~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux116~1_combout\ = (\ShiftUnit0|Mux117~1_combout\ & ((\ShiftUnit0|Mux116~0_combout\ & (\ShiftUnit0|Mux127~82_combout\)) # (!\ShiftUnit0|Mux116~0_combout\ & ((\ShiftUnit0|Mux44~0_combout\))))) # (!\ShiftUnit0|Mux117~1_combout\ & 
-- (((\ShiftUnit0|Mux116~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux117~1_combout\,
	datab => \ShiftUnit0|Mux127~82_combout\,
	datac => \ShiftUnit0|Mux44~0_combout\,
	datad => \ShiftUnit0|Mux116~0_combout\,
	combout => \ShiftUnit0|Mux116~1_combout\);

-- Location: LCCOMB_X60_Y43_N8
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\Mux34~0_combout\ & (((\Mux34~1_combout\)))) # (!\Mux34~0_combout\ & ((\Mux34~1_combout\ & (\ShiftUnit0|Mux75~0_combout\)) # (!\Mux34~1_combout\ & ((\ShiftUnit0|Mux116~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux75~0_combout\,
	datab => \Mux34~0_combout\,
	datac => \Mux34~1_combout\,
	datad => \ShiftUnit0|Mux116~1_combout\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X63_Y43_N14
\Adder0|BLAN1|G_out[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[10]~6_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\ $ (\AddNSub~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8_combout\ & (\A[10]~input_o\ & 
-- (\B[10]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8_combout\,
	datab => \B[10]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \A[10]~input_o\,
	combout => \Adder0|BLAN1|G_out[10]~6_combout\);

-- Location: LCCOMB_X63_Y43_N8
\Adder0|S[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(11) = \Adder0|P[11]~21_combout\ $ (((\Adder0|BLAN1|G_out[10]~6_combout\) # ((\Adder0|P\(10) & \Adder0|Carries~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[11]~21_combout\,
	datab => \Adder0|P\(10),
	datac => \Adder0|BLAN1|G_out[10]~6_combout\,
	datad => \Adder0|Carries~16_combout\,
	combout => \Adder0|S\(11));

-- Location: LCCOMB_X60_Y43_N10
\Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (\Mux52~0_combout\ & ((\Mux52~1_combout\) # ((!\Mux34~0_combout\)))) # (!\Mux52~0_combout\ & (((\Mux34~0_combout\ & \Adder0|S\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~1_combout\,
	datab => \Mux52~0_combout\,
	datac => \Mux34~0_combout\,
	datad => \Adder0|S\(11),
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X60_Y43_N20
\Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux52~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux52~2_combout\,
	combout => \Mux52~3_combout\);

-- Location: LCCOMB_X63_Y43_N10
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9_combout\ = (\Adder0|BLAN1|G_in_half[5]~21_combout\) # ((\Adder0|P[11]~21_combout\ & (\Adder0|P\(10) & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[11]~21_combout\,
	datab => \Adder0|P\(10),
	datac => \Adder0|BLAN1|G_in_half[5]~21_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~8_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9_combout\);

-- Location: LCCOMB_X62_Y43_N0
\Adder0|Carries~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~17_combout\ = (\Adder0|P[11]~21_combout\ & (\Adder0|Carries~9_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|P[11]~21_combout\,
	datac => \Adder0|Carries~9_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[2]~0_combout\,
	combout => \Adder0|Carries~17_combout\);

-- Location: LCCOMB_X63_Y43_N20
\Adder0|S[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(12) = \Adder0|P\(12) $ (((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9_combout\) # (\Adder0|Carries~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9_combout\,
	datac => \Adder0|Carries~17_combout\,
	datad => \Adder0|P\(12),
	combout => \Adder0|S\(12));

-- Location: LCCOMB_X59_Y42_N10
\ShiftUnit0|Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux115~0_combout\ = (\ShiftUnit0|Mux117~0_combout\ & (((\ShiftUnit0|Mux117~1_combout\)))) # (!\ShiftUnit0|Mux117~0_combout\ & ((\ShiftUnit0|Mux117~1_combout\ & (\ShiftUnit0|Mux43~0_combout\)) # (!\ShiftUnit0|Mux117~1_combout\ & 
-- ((\ShiftUnit0|Mux51~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux43~0_combout\,
	datab => \ShiftUnit0|Mux51~0_combout\,
	datac => \ShiftUnit0|Mux117~0_combout\,
	datad => \ShiftUnit0|Mux117~1_combout\,
	combout => \ShiftUnit0|Mux115~0_combout\);

-- Location: LCCOMB_X58_Y40_N22
\ShiftUnit0|Mux127~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~83_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux127~6_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux127~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux127~6_combout\,
	datad => \ShiftUnit0|Mux127~57_combout\,
	combout => \ShiftUnit0|Mux127~83_combout\);

-- Location: LCCOMB_X60_Y42_N8
\ShiftUnit0|Mux127~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~84_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~9_combout\,
	combout => \ShiftUnit0|Mux127~84_combout\);

-- Location: LCCOMB_X60_Y42_N2
\ShiftUnit0|Mux127~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~85_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\ShiftUnit0|Mux7~12_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux7~5_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~12_combout\,
	combout => \ShiftUnit0|Mux127~85_combout\);

-- Location: LCCOMB_X60_Y42_N4
\ShiftUnit0|Mux127~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~86_combout\ = (\ShiftUnit0|Mux127~85_combout\) # ((!\B[2]~input_o\ & \ShiftUnit0|Mux127~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux127~85_combout\,
	datad => \ShiftUnit0|Mux127~60_combout\,
	combout => \ShiftUnit0|Mux127~86_combout\);

-- Location: LCCOMB_X59_Y42_N12
\ShiftUnit0|Mux127~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~87_combout\ = (\B[4]~input_o\ & (\ShiftUnit0|Mux127~84_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux127~84_combout\,
	datad => \ShiftUnit0|Mux127~86_combout\,
	combout => \ShiftUnit0|Mux127~87_combout\);

-- Location: LCCOMB_X59_Y42_N22
\ShiftUnit0|Mux115~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux115~1_combout\ = (\ShiftUnit0|Mux115~0_combout\ & (((\ShiftUnit0|Mux127~87_combout\) # (!\ShiftUnit0|Mux117~0_combout\)))) # (!\ShiftUnit0|Mux115~0_combout\ & (\ShiftUnit0|Mux127~83_combout\ & (\ShiftUnit0|Mux117~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux115~0_combout\,
	datab => \ShiftUnit0|Mux127~83_combout\,
	datac => \ShiftUnit0|Mux117~0_combout\,
	datad => \ShiftUnit0|Mux127~87_combout\,
	combout => \ShiftUnit0|Mux115~1_combout\);

-- Location: LCCOMB_X60_Y43_N22
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & (\Adder0|S\(12))) # (!\Mux34~0_combout\ & ((\ShiftUnit0|Mux115~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(12),
	datab => \Mux34~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \ShiftUnit0|Mux115~1_combout\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X63_Y43_N6
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\A[12]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[12]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[12]~input_o\))))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X59_Y39_N2
\ShiftUnit0|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux76~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (((\ShiftUnit0|shift_ext~0_combout\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[4]~input_o\ & 
-- ((\ShiftUnit0|Mux127~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux127~27_combout\,
	combout => \ShiftUnit0|Mux76~0_combout\);

-- Location: LCCOMB_X60_Y43_N0
\Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (\Mux51~0_combout\ & (((\Mux51~1_combout\)) # (!\Mux34~1_combout\))) # (!\Mux51~0_combout\ & (\Mux34~1_combout\ & ((\ShiftUnit0|Mux76~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~0_combout\,
	datab => \Mux34~1_combout\,
	datac => \Mux51~1_combout\,
	datad => \ShiftUnit0|Mux76~0_combout\,
	combout => \Mux51~2_combout\);

-- Location: LCCOMB_X60_Y43_N26
\Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux51~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux51~2_combout\,
	combout => \Mux51~3_combout\);

-- Location: LCCOMB_X63_Y43_N12
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\A[13]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[13]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[13]~input_o\))))) # (!\A[13]~input_o\ & (\B[13]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X63_Y43_N16
\Adder0|BLAN1|G_out[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[12]~7_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9_combout\ & ((\A[12]~input_o\) # (\AddNSub~input_o\ $ (\B[12]~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9_combout\ & (\A[12]~input_o\ & 
-- (\AddNSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9_combout\,
	datab => \A[12]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \Adder0|BLAN1|G_out[12]~7_combout\);

-- Location: LCCOMB_X63_Y43_N26
\Adder0|S[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(13) = \Adder0|P[13]~20_combout\ $ (((\Adder0|BLAN1|G_out[12]~7_combout\) # ((\Adder0|Carries~17_combout\ & \Adder0|P\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~17_combout\,
	datab => \Adder0|BLAN1|G_out[12]~7_combout\,
	datac => \Adder0|P[13]~20_combout\,
	datad => \Adder0|P\(12),
	combout => \Adder0|S\(13));

-- Location: LCCOMB_X59_Y40_N8
\ShiftUnit0|Mux127~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~89_combout\ = (\B[3]~input_o\ & (((\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux7~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux7~57_combout\,
	combout => \ShiftUnit0|Mux127~89_combout\);

-- Location: LCCOMB_X59_Y40_N10
\ShiftUnit0|Mux127~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~90_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\ShiftUnit0|Mux7~59_combout\))) # (!\B[3]~input_o\ & (\ShiftUnit0|Mux7~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~53_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~59_combout\,
	combout => \ShiftUnit0|Mux127~90_combout\);

-- Location: LCCOMB_X59_Y40_N4
\ShiftUnit0|Mux127~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~91_combout\ = (\ShiftUnit0|Mux127~90_combout\) # ((\ShiftUnit0|Mux127~67_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~67_combout\,
	datab => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux127~90_combout\,
	combout => \ShiftUnit0|Mux127~91_combout\);

-- Location: LCCOMB_X59_Y39_N12
\ShiftUnit0|Mux127~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~92_combout\ = (\B[4]~input_o\ & (\ShiftUnit0|Mux127~89_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~89_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux127~91_combout\,
	combout => \ShiftUnit0|Mux127~92_combout\);

-- Location: LCCOMB_X59_Y41_N2
\ShiftUnit0|Mux127~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~88_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux127~20_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux127~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux127~20_combout\,
	datad => \ShiftUnit0|Mux127~64_combout\,
	combout => \ShiftUnit0|Mux127~88_combout\);

-- Location: LCCOMB_X59_Y41_N28
\ShiftUnit0|Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux114~0_combout\ = (\ShiftUnit0|Mux117~0_combout\ & ((\ShiftUnit0|Mux117~1_combout\) # ((\ShiftUnit0|Mux127~88_combout\)))) # (!\ShiftUnit0|Mux117~0_combout\ & (!\ShiftUnit0|Mux117~1_combout\ & (\ShiftUnit0|Mux50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux117~0_combout\,
	datab => \ShiftUnit0|Mux117~1_combout\,
	datac => \ShiftUnit0|Mux50~0_combout\,
	datad => \ShiftUnit0|Mux127~88_combout\,
	combout => \ShiftUnit0|Mux114~0_combout\);

-- Location: LCCOMB_X59_Y41_N22
\ShiftUnit0|Mux114~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux114~1_combout\ = (\ShiftUnit0|Mux117~1_combout\ & ((\ShiftUnit0|Mux114~0_combout\ & (\ShiftUnit0|Mux127~92_combout\)) # (!\ShiftUnit0|Mux114~0_combout\ & ((\ShiftUnit0|Mux42~0_combout\))))) # (!\ShiftUnit0|Mux117~1_combout\ & 
-- (((\ShiftUnit0|Mux114~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~92_combout\,
	datab => \ShiftUnit0|Mux117~1_combout\,
	datac => \ShiftUnit0|Mux42~0_combout\,
	datad => \ShiftUnit0|Mux114~0_combout\,
	combout => \ShiftUnit0|Mux114~1_combout\);

-- Location: LCCOMB_X58_Y43_N4
\ShiftUnit0|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux77~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_ext~0_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \ShiftUnit0|Mux127~22_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux77~0_combout\);

-- Location: LCCOMB_X65_Y47_N6
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Mux34~1_combout\ & (((\ShiftUnit0|Mux77~0_combout\) # (\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & (\ShiftUnit0|Mux114~1_combout\ & ((!\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux114~1_combout\,
	datab => \Mux34~1_combout\,
	datac => \ShiftUnit0|Mux77~0_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X65_Y47_N24
\Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = (\Mux34~0_combout\ & ((\Mux50~0_combout\ & (\Mux50~1_combout\)) # (!\Mux50~0_combout\ & ((\Adder0|S\(13)))))) # (!\Mux34~0_combout\ & (((\Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux50~1_combout\,
	datac => \Adder0|S\(13),
	datad => \Mux50~0_combout\,
	combout => \Mux50~2_combout\);

-- Location: LCCOMB_X65_Y47_N10
\Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux50~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux50~2_combout\,
	combout => \Mux50~3_combout\);

-- Location: LCCOMB_X57_Y43_N30
\ShiftUnit0|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux78~0_combout\ = (\B[4]~input_o\ & (((\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\ShiftUnit0|shamt[5]~0_combout\ & 
-- (\ShiftUnit0|Mux127~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~16_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|shamt[5]~0_combout\,
	combout => \ShiftUnit0|Mux78~0_combout\);

-- Location: LCCOMB_X57_Y43_N8
\ShiftUnit0|Mux127~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~95_combout\ = (\B[3]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|Mux1~0_combout\,
	combout => \ShiftUnit0|Mux127~95_combout\);

-- Location: LCCOMB_X62_Y41_N14
\ShiftUnit0|Mux127~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~96_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\ShiftUnit0|Mux7~91_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~91_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~89_combout\,
	combout => \ShiftUnit0|Mux127~96_combout\);

-- Location: LCCOMB_X62_Y41_N24
\ShiftUnit0|Mux127~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~97_combout\ = (\ShiftUnit0|Mux127~96_combout\) # ((!\B[2]~input_o\ & \ShiftUnit0|Mux127~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftUnit0|Mux127~96_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux127~73_combout\,
	combout => \ShiftUnit0|Mux127~97_combout\);

-- Location: LCCOMB_X57_Y43_N2
\ShiftUnit0|Mux127~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~98_combout\ = (\B[4]~input_o\ & (\ShiftUnit0|Mux127~95_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux127~95_combout\,
	datad => \ShiftUnit0|Mux127~97_combout\,
	combout => \ShiftUnit0|Mux127~98_combout\);

-- Location: LCCOMB_X62_Y41_N4
\ShiftUnit0|Mux127~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~93_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\ShiftUnit0|Mux7~99_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux7~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux7~105_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftUnit0|Mux7~99_combout\,
	combout => \ShiftUnit0|Mux127~93_combout\);

-- Location: LCCOMB_X58_Y41_N2
\ShiftUnit0|Mux127~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~94_combout\ = (\ShiftUnit0|Mux127~93_combout\) # ((\ShiftUnit0|Mux33~1_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux33~1_combout\,
	datab => \ShiftUnit0|Mux127~93_combout\,
	datac => \B[3]~input_o\,
	combout => \ShiftUnit0|Mux127~94_combout\);

-- Location: LCCOMB_X58_Y41_N20
\ShiftUnit0|Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux113~0_combout\ = (\ShiftUnit0|Mux117~0_combout\ & (((\ShiftUnit0|Mux117~1_combout\)))) # (!\ShiftUnit0|Mux117~0_combout\ & ((\ShiftUnit0|Mux117~1_combout\ & (\ShiftUnit0|Mux41~0_combout\)) # (!\ShiftUnit0|Mux117~1_combout\ & 
-- ((\ShiftUnit0|Mux49~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux41~0_combout\,
	datab => \ShiftUnit0|Mux117~0_combout\,
	datac => \ShiftUnit0|Mux117~1_combout\,
	datad => \ShiftUnit0|Mux49~0_combout\,
	combout => \ShiftUnit0|Mux113~0_combout\);

-- Location: LCCOMB_X58_Y41_N14
\ShiftUnit0|Mux113~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux113~1_combout\ = (\ShiftUnit0|Mux117~0_combout\ & ((\ShiftUnit0|Mux113~0_combout\ & (\ShiftUnit0|Mux127~98_combout\)) # (!\ShiftUnit0|Mux113~0_combout\ & ((\ShiftUnit0|Mux127~94_combout\))))) # (!\ShiftUnit0|Mux117~0_combout\ & 
-- (((\ShiftUnit0|Mux113~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~98_combout\,
	datab => \ShiftUnit0|Mux127~94_combout\,
	datac => \ShiftUnit0|Mux117~0_combout\,
	datad => \ShiftUnit0|Mux113~0_combout\,
	combout => \ShiftUnit0|Mux113~1_combout\);

-- Location: LCCOMB_X62_Y43_N18
\Adder0|Carries~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~18_combout\ = (\Adder0|P[13]~20_combout\ & (\Adder0|Carries~17_combout\ & \Adder0|P\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[13]~20_combout\,
	datab => \Adder0|Carries~17_combout\,
	datad => \Adder0|P\(12),
	combout => \Adder0|Carries~18_combout\);

-- Location: LCCOMB_X63_Y43_N22
\Adder0|BLAN1|recurse:inner|G_out[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(6) = (\Adder0|BLAN1|G_in_half[6]~20_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9_combout\ & (\Adder0|P[13]~20_combout\ & \Adder0|P\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[2]~9_combout\,
	datab => \Adder0|BLAN1|G_in_half[6]~20_combout\,
	datac => \Adder0|P[13]~20_combout\,
	datad => \Adder0|P\(12),
	combout => \Adder0|BLAN1|recurse:inner|G_out\(6));

-- Location: LCCOMB_X62_Y43_N28
\Adder0|S[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(14) = \Adder0|P\(14) $ (((\Adder0|Carries~18_combout\) # (\Adder0|BLAN1|recurse:inner|G_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|P\(14),
	datac => \Adder0|Carries~18_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out\(6),
	combout => \Adder0|S\(14));

-- Location: LCCOMB_X58_Y44_N4
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\Mux34~0_combout\ & (((\Mux34~1_combout\) # (\Adder0|S\(14))))) # (!\Mux34~0_combout\ & (\ShiftUnit0|Mux113~1_combout\ & (!\Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \ShiftUnit0|Mux113~1_combout\,
	datac => \Mux34~1_combout\,
	datad => \Adder0|S\(14),
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X62_Y43_N6
\Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[14]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux49~1_combout\);

-- Location: LCCOMB_X58_Y44_N6
\Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = (\Mux49~0_combout\ & (((\Mux49~1_combout\) # (!\Mux34~1_combout\)))) # (!\Mux49~0_combout\ & (\ShiftUnit0|Mux78~0_combout\ & (\Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux78~0_combout\,
	datab => \Mux49~0_combout\,
	datac => \Mux34~1_combout\,
	datad => \Mux49~1_combout\,
	combout => \Mux49~2_combout\);

-- Location: LCCOMB_X58_Y44_N0
\Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = (\Mux49~2_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~2_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux49~3_combout\);

-- Location: LCCOMB_X58_Y39_N6
\ShiftUnit0|Mux127~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~99_combout\ = (\B[2]~input_o\ & ((\ShiftUnit0|Mux127~31_combout\))) # (!\B[2]~input_o\ & (\ShiftUnit0|Mux127~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~77_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux127~31_combout\,
	combout => \ShiftUnit0|Mux127~99_combout\);

-- Location: LCCOMB_X58_Y43_N6
\ShiftUnit0|Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux112~0_combout\ = (\ShiftUnit0|Mux117~1_combout\ & (((\ShiftUnit0|Mux117~0_combout\)))) # (!\ShiftUnit0|Mux117~1_combout\ & ((\ShiftUnit0|Mux117~0_combout\ & ((\ShiftUnit0|Mux127~99_combout\))) # (!\ShiftUnit0|Mux117~0_combout\ & 
-- (\ShiftUnit0|Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux48~0_combout\,
	datab => \ShiftUnit0|Mux127~99_combout\,
	datac => \ShiftUnit0|Mux117~1_combout\,
	datad => \ShiftUnit0|Mux117~0_combout\,
	combout => \ShiftUnit0|Mux112~0_combout\);

-- Location: LCCOMB_X63_Y42_N20
\ShiftUnit0|Mux127~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~100_combout\ = (\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\B[3]~input_o\)) # (!\ShiftUnit0|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux0~0_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \ShiftUnit0|Mux127~100_combout\);

-- Location: LCCOMB_X63_Y42_N14
\ShiftUnit0|Mux127~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~101_combout\ = (\ShiftUnit0|Mux127~100_combout\ & (\ShiftUnit0|Mux64~1_combout\ & ((!\B[3]~input_o\)))) # (!\ShiftUnit0|Mux127~100_combout\ & (((\ShiftUnit0|shift_input[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux64~1_combout\,
	datab => \ShiftUnit0|shift_input[63]~1_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux127~100_combout\,
	combout => \ShiftUnit0|Mux127~101_combout\);

-- Location: LCCOMB_X60_Y39_N4
\ShiftUnit0|Mux127~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~102_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\ShiftUnit0|Mux7~116_combout\)) # (!\B[3]~input_o\ & ((\ShiftUnit0|Mux7~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux7~116_combout\,
	datac => \B[3]~input_o\,
	datad => \ShiftUnit0|Mux7~114_combout\,
	combout => \ShiftUnit0|Mux127~102_combout\);

-- Location: LCCOMB_X60_Y39_N6
\ShiftUnit0|Mux127~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~103_combout\ = (\ShiftUnit0|Mux127~102_combout\) # ((!\B[2]~input_o\ & \ShiftUnit0|Mux127~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftUnit0|Mux127~80_combout\,
	datac => \ShiftUnit0|Mux127~102_combout\,
	combout => \ShiftUnit0|Mux127~103_combout\);

-- Location: LCCOMB_X58_Y43_N24
\ShiftUnit0|Mux127~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~104_combout\ = (\B[4]~input_o\ & (\ShiftUnit0|Mux127~101_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftUnit0|Mux127~101_combout\,
	datad => \ShiftUnit0|Mux127~103_combout\,
	combout => \ShiftUnit0|Mux127~104_combout\);

-- Location: LCCOMB_X58_Y43_N10
\ShiftUnit0|Mux112~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux112~1_combout\ = (\ShiftUnit0|Mux112~0_combout\ & ((\ShiftUnit0|Mux127~104_combout\) # ((!\ShiftUnit0|Mux117~1_combout\)))) # (!\ShiftUnit0|Mux112~0_combout\ & (((\ShiftUnit0|Mux117~1_combout\ & \ShiftUnit0|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux112~0_combout\,
	datab => \ShiftUnit0|Mux127~104_combout\,
	datac => \ShiftUnit0|Mux117~1_combout\,
	datad => \ShiftUnit0|Mux40~0_combout\,
	combout => \ShiftUnit0|Mux112~1_combout\);

-- Location: LCCOMB_X58_Y42_N0
\ShiftUnit0|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux79~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|Mux127~1_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux79~0_combout\);

-- Location: LCCOMB_X58_Y43_N12
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\) # (\ShiftUnit0|Mux79~0_combout\)))) # (!\Mux34~1_combout\ & (\ShiftUnit0|Mux112~1_combout\ & (!\Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux112~1_combout\,
	datab => \Mux34~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \ShiftUnit0|Mux79~0_combout\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X62_Y43_N8
\Adder0|BLAN1|G_out[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[14]~8_combout\ = (\A[14]~input_o\ & ((\Adder0|BLAN1|recurse:inner|G_out\(6)) # (\AddNSub~input_o\ $ (\B[14]~input_o\)))) # (!\A[14]~input_o\ & (\Adder0|BLAN1|recurse:inner|G_out\(6) & (\AddNSub~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|G_out\(6),
	combout => \Adder0|BLAN1|G_out[14]~8_combout\);

-- Location: LCCOMB_X62_Y43_N26
\Adder0|S[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(15) = \Adder0|P[15]~22_combout\ $ (((\Adder0|BLAN1|G_out[14]~8_combout\) # ((\Adder0|P\(14) & \Adder0|Carries~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(14),
	datab => \Adder0|Carries~18_combout\,
	datac => \Adder0|BLAN1|G_out[14]~8_combout\,
	datad => \Adder0|P[15]~22_combout\,
	combout => \Adder0|S\(15));

-- Location: LCCOMB_X62_Y43_N12
\Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\A[15]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[15]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[15]~input_o\))))) # (!\A[15]~input_o\ & (\B[15]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X58_Y43_N30
\Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = (\Mux48~0_combout\ & (((\Mux48~1_combout\) # (!\Mux34~0_combout\)))) # (!\Mux48~0_combout\ & (\Adder0|S\(15) & (\Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~0_combout\,
	datab => \Adder0|S\(15),
	datac => \Mux34~0_combout\,
	datad => \Mux48~1_combout\,
	combout => \Mux48~2_combout\);

-- Location: LCCOMB_X65_Y47_N4
\Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux48~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux48~2_combout\,
	combout => \Mux48~3_combout\);

-- Location: LCCOMB_X62_Y44_N16
\Adder0|Carries~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~19_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\ & \Adder0|Carries~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\,
	datac => \Adder0|Carries~9_combout\,
	combout => \Adder0|Carries~19_combout\);

-- Location: LCCOMB_X59_Y44_N16
\Adder0|S[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(16) = \Adder0|P\(16) $ (((\Adder0|Carries~19_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~19_combout\,
	datab => \Adder0|P\(16),
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\,
	combout => \Adder0|S\(16));

-- Location: LCCOMB_X58_Y42_N18
\ShiftUnit0|Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux111~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (((\B[4]~input_o\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\ShiftUnit0|Mux127~7_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~7_combout\,
	datab => \ShiftUnit0|Mux127~3_combout\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux111~0_combout\);

-- Location: LCCOMB_X58_Y42_N28
\ShiftUnit0|Mux111~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux111~1_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux111~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\ShiftUnit0|Mux111~0_combout\ & ((\ShiftUnit0|Mux127~1_combout\))))) # (!\ShiftUnit0|shamt[5]~0_combout\ & 
-- (((\ShiftUnit0|Mux111~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|Mux127~1_combout\,
	datad => \ShiftUnit0|Mux111~0_combout\,
	combout => \ShiftUnit0|Mux111~1_combout\);

-- Location: LCCOMB_X65_Y47_N22
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & (\Adder0|S\(16))) # (!\Mux34~0_combout\ & ((\ShiftUnit0|Mux111~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(16),
	datab => \ShiftUnit0|Mux111~1_combout\,
	datac => \Mux34~1_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X56_Y44_N4
\Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[16]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux47~1_combout\);

-- Location: LCCOMB_X61_Y47_N28
\ShiftUnit0|Mux80~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux80~2_combout\ = (\ExtWord~input_o\ & (\ShiftUnit0|Mux127~104_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\B[5]~input_o\ & (\ShiftUnit0|Mux127~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~104_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \ShiftUnit0|Mux80~2_combout\);

-- Location: LCCOMB_X65_Y47_N8
\Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = (\Mux47~0_combout\ & (((\Mux47~1_combout\)) # (!\Mux34~1_combout\))) # (!\Mux47~0_combout\ & (\Mux34~1_combout\ & ((\ShiftUnit0|Mux80~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~0_combout\,
	datab => \Mux34~1_combout\,
	datac => \Mux47~1_combout\,
	datad => \ShiftUnit0|Mux80~2_combout\,
	combout => \Mux47~2_combout\);

-- Location: LCCOMB_X65_Y47_N2
\Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~3_combout\ = (\Mux47~2_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux47~2_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux47~3_combout\);

-- Location: LCCOMB_X57_Y43_N14
\ShiftUnit0|Mux81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux81~2_combout\ = (\ExtWord~input_o\ & (((\ShiftUnit0|Mux127~98_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[5]~input_o\ & ((\ShiftUnit0|Mux127~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \B[5]~input_o\,
	datad => \ShiftUnit0|Mux127~98_combout\,
	combout => \ShiftUnit0|Mux81~2_combout\);

-- Location: LCCOMB_X59_Y40_N22
\ShiftUnit0|Mux127~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux127~105_combout\ = (\B[2]~input_o\ & (\ShiftUnit0|Mux127~19_combout\)) # (!\B[2]~input_o\ & ((\ShiftUnit0|Mux127~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~19_combout\,
	datab => \B[2]~input_o\,
	datac => \ShiftUnit0|Mux127~20_combout\,
	combout => \ShiftUnit0|Mux127~105_combout\);

-- Location: LCCOMB_X57_Y43_N28
\ShiftUnit0|Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux110~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (((\B[4]~input_o\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\ShiftUnit0|Mux127~105_combout\))) # (!\B[4]~input_o\ & (\ShiftUnit0|Mux127~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~18_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux127~105_combout\,
	combout => \ShiftUnit0|Mux110~0_combout\);

-- Location: LCCOMB_X57_Y43_N6
\ShiftUnit0|Mux110~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux110~1_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux110~0_combout\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\ShiftUnit0|Mux110~0_combout\ & (\ShiftUnit0|Mux127~16_combout\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & 
-- (((\ShiftUnit0|Mux110~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~16_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux110~0_combout\,
	combout => \ShiftUnit0|Mux110~1_combout\);

-- Location: LCCOMB_X57_Y43_N0
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\Mux34~0_combout\ & (\Mux34~1_combout\)) # (!\Mux34~0_combout\ & ((\Mux34~1_combout\ & (\ShiftUnit0|Mux81~2_combout\)) # (!\Mux34~1_combout\ & ((\ShiftUnit0|Mux110~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux34~1_combout\,
	datac => \ShiftUnit0|Mux81~2_combout\,
	datad => \ShiftUnit0|Mux110~1_combout\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X62_Y44_N10
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~7_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\ & 
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half\(0),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~7_combout\);

-- Location: LCCOMB_X56_Y44_N14
\Adder0|BLAN1|G_out[16]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[16]~9_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~7_combout\ & ((\A[16]~input_o\) # (\B[16]~input_o\ $ (\AddNSub~input_o\)))) # 
-- (!\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~7_combout\ & (\A[16]~input_o\ & (\B[16]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~7_combout\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_out[16]~9_combout\);

-- Location: LCCOMB_X59_Y44_N26
\Adder0|P[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[17]~29_combout\ = \A[17]~input_o\ $ (\AddNSub~input_o\ $ (\B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \Adder0|P[17]~29_combout\);

-- Location: LCCOMB_X59_Y44_N4
\Adder0|S[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(17) = \Adder0|P[17]~29_combout\ $ (((\Adder0|BLAN1|G_out[16]~9_combout\) # ((\Adder0|P\(16) & \Adder0|Carries~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_out[16]~9_combout\,
	datab => \Adder0|P\(16),
	datac => \Adder0|P[17]~29_combout\,
	datad => \Adder0|Carries~19_combout\,
	combout => \Adder0|S\(17));

-- Location: LCCOMB_X59_Y44_N6
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\LogicFN[0]~input_o\ & ((\B[17]~input_o\ & ((\LogicFN[1]~input_o\) # (!\A[17]~input_o\))) # (!\B[17]~input_o\ & (\A[17]~input_o\)))) # (!\LogicFN[0]~input_o\ & (\B[17]~input_o\ & ((\A[17]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X59_Y44_N8
\Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\Mux34~0_combout\ & ((\Mux46~0_combout\ & ((\Mux46~1_combout\))) # (!\Mux46~0_combout\ & (\Adder0|S\(17))))) # (!\Mux34~0_combout\ & (\Mux46~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux46~0_combout\,
	datac => \Adder0|S\(17),
	datad => \Mux46~1_combout\,
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X58_Y48_N16
\Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (\Mux46~2_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux46~2_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X58_Y44_N22
\ShiftUnit0|Mux82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux82~2_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\ShiftUnit0|Mux127~92_combout\))) # (!\ExtWord~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[5]~input_o\ & (((\ShiftUnit0|Mux127~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_ext~0_combout\,
	datab => \B[5]~input_o\,
	datac => \ShiftUnit0|Mux127~92_combout\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|Mux82~2_combout\);

-- Location: LCCOMB_X57_Y43_N26
\ShiftUnit0|Mux109~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux109~1_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (((\B[4]~input_o\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\ShiftUnit0|Mux127~25_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux109~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~25_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux109~0_combout\,
	combout => \ShiftUnit0|Mux109~1_combout\);

-- Location: LCCOMB_X58_Y44_N20
\ShiftUnit0|Mux109~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux109~2_combout\ = (\ShiftUnit0|Mux109~1_combout\ & (((\ShiftUnit0|shift_ext~0_combout\)) # (!\ShiftUnit0|shamt[5]~0_combout\))) # (!\ShiftUnit0|Mux109~1_combout\ & (\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux127~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux109~1_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux127~22_combout\,
	combout => \ShiftUnit0|Mux109~2_combout\);

-- Location: LCCOMB_X59_Y44_N18
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10_combout\ = (\Adder0|BLAN1|G_in_half[8]~29_combout\) # ((\Adder0|BLAN1|recurse:inner|G_out~2_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\) # 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\,
	datab => \Adder0|BLAN1|recurse:inner|G_out~2_combout\,
	datac => \Adder0|BLAN1|G_in_half[8]~29_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10_combout\);

-- Location: LCCOMB_X58_Y44_N18
\Adder0|S[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(18) = \Adder0|P\(18) $ (((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10_combout\) # ((\Adder0|Carries~19_combout\ & \Adder0|BLAN1|recurse:inner|G_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(18),
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10_combout\,
	datac => \Adder0|Carries~19_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out~2_combout\,
	combout => \Adder0|S\(18));

-- Location: LCCOMB_X58_Y44_N30
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\Mux34~0_combout\ & (((\Mux34~1_combout\) # (\Adder0|S\(18))))) # (!\Mux34~0_combout\ & (\ShiftUnit0|Mux109~2_combout\ & (!\Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \ShiftUnit0|Mux109~2_combout\,
	datac => \Mux34~1_combout\,
	datad => \Adder0|S\(18),
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X58_Y44_N16
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\LogicFN[0]~input_o\ & ((\A[18]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[18]~input_o\))) # (!\A[18]~input_o\ & ((\B[18]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[18]~input_o\ & ((\A[18]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[18]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[18]~input_o\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X58_Y44_N26
\Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (\Mux45~0_combout\ & (((\Mux45~1_combout\) # (!\Mux34~1_combout\)))) # (!\Mux45~0_combout\ & (\ShiftUnit0|Mux82~2_combout\ & (\Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux82~2_combout\,
	datab => \Mux45~0_combout\,
	datac => \Mux34~1_combout\,
	datad => \Mux45~1_combout\,
	combout => \Mux45~2_combout\);

-- Location: LCCOMB_X65_Y47_N12
\Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux45~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux45~2_combout\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X59_Y44_N0
\Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\A[19]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[19]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[19]~input_o\))))) # (!\A[19]~input_o\ & (\B[19]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X59_Y42_N2
\ShiftUnit0|Mux83~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux83~2_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\ShiftUnit0|Mux127~87_combout\))) # (!\ExtWord~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[5]~input_o\ & (((\ShiftUnit0|Mux127~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftUnit0|Mux127~87_combout\,
	combout => \ShiftUnit0|Mux83~2_combout\);

-- Location: LCCOMB_X59_Y39_N30
\ShiftUnit0|Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux108~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (((\ShiftUnit0|shift_ext~0_combout\) # (!\B[4]~input_o\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|Mux127~32_combout\ & ((\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~32_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux108~0_combout\);

-- Location: LCCOMB_X59_Y39_N0
\ShiftUnit0|Mux108~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux108~1_combout\ = (\B[4]~input_o\ & (((\ShiftUnit0|Mux108~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux108~0_combout\ & ((\ShiftUnit0|Mux127~27_combout\))) # (!\ShiftUnit0|Mux108~0_combout\ & (\ShiftUnit0|Mux127~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~29_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux108~0_combout\,
	datad => \ShiftUnit0|Mux127~27_combout\,
	combout => \ShiftUnit0|Mux108~1_combout\);

-- Location: LCCOMB_X59_Y44_N22
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\Mux34~1_combout\ & ((\ShiftUnit0|Mux83~2_combout\) # ((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & (((!\Mux34~0_combout\ & \ShiftUnit0|Mux108~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux83~2_combout\,
	datab => \Mux34~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \ShiftUnit0|Mux108~1_combout\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X58_Y44_N14
\Adder0|BLAN1|G_out[18]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[18]~10_combout\ = (\A[18]~input_o\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10_combout\) # (\B[18]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[18]~input_o\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10_combout\ & 
-- (\B[18]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10_combout\,
	combout => \Adder0|BLAN1|G_out[18]~10_combout\);

-- Location: LCCOMB_X58_Y44_N12
\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~14_combout\ = (\Adder0|BLAN1|recurse:inner|G_out~2_combout\ & (\B[18]~input_o\ $ (\A[18]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|G_out~2_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~14_combout\);

-- Location: LCCOMB_X59_Y44_N20
\Adder0|S[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(19) = \Adder0|P[19]~14_combout\ $ (((\Adder0|BLAN1|G_out[18]~10_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~14_combout\ & \Adder0|Carries~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_out[18]~10_combout\,
	datab => \Adder0|P[19]~14_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~14_combout\,
	datad => \Adder0|Carries~19_combout\,
	combout => \Adder0|S\(19));

-- Location: LCCOMB_X59_Y44_N10
\Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (\Mux34~0_combout\ & ((\Mux44~0_combout\ & (\Mux44~1_combout\)) # (!\Mux44~0_combout\ & ((\Adder0|S\(19)))))) # (!\Mux34~0_combout\ & (((\Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux44~1_combout\,
	datac => \Mux44~0_combout\,
	datad => \Adder0|S\(19),
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X65_Y47_N14
\Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux44~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux44~2_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X60_Y44_N6
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11_combout\ = (\Adder0|BLAN1|G_in_half[9]~28_combout\) # ((\Adder0|P[19]~14_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10_combout\ & \Adder0|P\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[19]~14_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~10_combout\,
	datac => \Adder0|P\(18),
	datad => \Adder0|BLAN1|G_in_half[9]~28_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11_combout\);

-- Location: LCCOMB_X60_Y44_N8
\Adder0|Carries~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~20_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~14_combout\ & (\Adder0|Carries~9_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\ & \Adder0|P[19]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~14_combout\,
	datab => \Adder0|Carries~9_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\,
	datad => \Adder0|P[19]~14_combout\,
	combout => \Adder0|Carries~20_combout\);

-- Location: LCCOMB_X60_Y44_N2
\Adder0|S[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(20) = \Adder0|P\(20) $ (((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11_combout\) # (\Adder0|Carries~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11_combout\,
	datac => \Adder0|Carries~20_combout\,
	datad => \Adder0|P\(20),
	combout => \Adder0|S\(20));

-- Location: LCCOMB_X59_Y42_N8
\ShiftUnit0|Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux107~0_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux127~36_combout\))))) # (!\B[4]~input_o\ & (\ShiftUnit0|shamt[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux127~36_combout\,
	combout => \ShiftUnit0|Mux107~0_combout\);

-- Location: LCCOMB_X59_Y42_N18
\ShiftUnit0|Mux107~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux107~1_combout\ = (\B[4]~input_o\ & (((\ShiftUnit0|Mux107~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux107~0_combout\ & (\ShiftUnit0|Mux127~34_combout\)) # (!\ShiftUnit0|Mux107~0_combout\ & ((\ShiftUnit0|Mux127~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftUnit0|Mux127~34_combout\,
	datac => \ShiftUnit0|Mux107~0_combout\,
	datad => \ShiftUnit0|Mux127~38_combout\,
	combout => \ShiftUnit0|Mux107~1_combout\);

-- Location: LCCOMB_X58_Y44_N24
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\Mux34~0_combout\ & ((\Mux34~1_combout\) # ((\Adder0|S\(20))))) # (!\Mux34~0_combout\ & (!\Mux34~1_combout\ & ((\ShiftUnit0|Mux107~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux34~1_combout\,
	datac => \Adder0|S\(20),
	datad => \ShiftUnit0|Mux107~1_combout\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X59_Y42_N20
\ShiftUnit0|Mux84~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux84~2_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\ShiftUnit0|Mux127~82_combout\))) # (!\ExtWord~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[5]~input_o\ & (((\ShiftUnit0|Mux127~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftUnit0|Mux127~82_combout\,
	combout => \ShiftUnit0|Mux84~2_combout\);

-- Location: LCCOMB_X58_Y48_N2
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\A[20]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[20]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[20]~input_o\))))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[20]~input_o\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X58_Y48_N28
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Mux43~0_combout\ & (((\Mux43~1_combout\) # (!\Mux34~1_combout\)))) # (!\Mux43~0_combout\ & (\ShiftUnit0|Mux84~2_combout\ & (\Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~0_combout\,
	datab => \ShiftUnit0|Mux84~2_combout\,
	datac => \Mux34~1_combout\,
	datad => \Mux43~1_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X58_Y48_N22
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux43~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux43~2_combout\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X60_Y41_N26
\ShiftUnit0|Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux106~0_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|Mux127~42_combout\) # ((\ShiftUnit0|shamt[5]~0_combout\)))) # (!\B[4]~input_o\ & (((!\ShiftUnit0|shamt[5]~0_combout\ & \ShiftUnit0|Mux127~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~42_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \ShiftUnit0|Mux127~44_combout\,
	combout => \ShiftUnit0|Mux106~0_combout\);

-- Location: LCCOMB_X59_Y43_N0
\ShiftUnit0|Mux106~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux106~1_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux106~0_combout\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\ShiftUnit0|Mux106~0_combout\ & (\ShiftUnit0|Mux127~40_combout\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & 
-- (((\ShiftUnit0|Mux106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \ShiftUnit0|Mux127~40_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux106~0_combout\,
	combout => \ShiftUnit0|Mux106~1_combout\);

-- Location: LCCOMB_X59_Y43_N12
\ShiftUnit0|Mux85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux85~2_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\ShiftUnit0|Mux127~75_combout\))) # (!\ExtWord~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[5]~input_o\ & (((\ShiftUnit0|Mux127~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux127~75_combout\,
	combout => \ShiftUnit0|Mux85~2_combout\);

-- Location: LCCOMB_X59_Y43_N18
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\) # (\ShiftUnit0|Mux85~2_combout\)))) # (!\Mux34~1_combout\ & (\ShiftUnit0|Mux106~1_combout\ & (!\Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \ShiftUnit0|Mux106~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \ShiftUnit0|Mux85~2_combout\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X60_Y45_N16
\Adder0|BLAN1|G_out[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[20]~11_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\ $ (\AddNSub~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11_combout\ & (\A[20]~input_o\ & 
-- (\B[20]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11_combout\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_out[20]~11_combout\);

-- Location: LCCOMB_X60_Y44_N4
\Adder0|S[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(21) = \Adder0|P[21]~12_combout\ $ (((\Adder0|BLAN1|G_out[20]~11_combout\) # ((\Adder0|Carries~20_combout\ & \Adder0|P\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_out[20]~11_combout\,
	datab => \Adder0|Carries~20_combout\,
	datac => \Adder0|P[21]~12_combout\,
	datad => \Adder0|P\(20),
	combout => \Adder0|S\(21));

-- Location: LCCOMB_X57_Y46_N8
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\LogicFN[0]~input_o\ & ((\B[21]~input_o\ & ((\LogicFN[1]~input_o\) # (!\A[21]~input_o\))) # (!\B[21]~input_o\ & (\A[21]~input_o\)))) # (!\LogicFN[0]~input_o\ & (\B[21]~input_o\ & ((\A[21]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X57_Y46_N18
\Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux42~0_combout\ & (((\Mux42~1_combout\) # (!\Mux34~0_combout\)))) # (!\Mux42~0_combout\ & (\Adder0|S\(21) & ((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~0_combout\,
	datab => \Adder0|S\(21),
	datac => \Mux42~1_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X57_Y46_N4
\Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux42~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux42~2_combout\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X57_Y42_N8
\ShiftUnit0|Mux86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux86~2_combout\ = (\ExtWord~input_o\ & (\ShiftUnit0|Mux127~69_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\B[5]~input_o\ & (\ShiftUnit0|Mux127~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~69_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \B[5]~input_o\,
	combout => \ShiftUnit0|Mux86~2_combout\);

-- Location: LCCOMB_X56_Y46_N26
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\A[22]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[22]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[22]~input_o\))))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[22]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[22]~input_o\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X60_Y44_N0
\Adder0|Carries~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~21_combout\ = (\Adder0|Carries~20_combout\ & (\Adder0|P[21]~12_combout\ & \Adder0|P\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|Carries~20_combout\,
	datac => \Adder0|P[21]~12_combout\,
	datad => \Adder0|P\(20),
	combout => \Adder0|Carries~21_combout\);

-- Location: LCCOMB_X60_Y44_N30
\Adder0|BLAN1|recurse:inner|G_out[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(10) = (\Adder0|BLAN1|G_in_half[10]~27_combout\) # ((\Adder0|P[21]~12_combout\ & (\Adder0|P\(20) & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[21]~12_combout\,
	datab => \Adder0|P\(20),
	datac => \Adder0|BLAN1|G_in_half[10]~27_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[4]~11_combout\,
	combout => \Adder0|BLAN1|recurse:inner|G_out\(10));

-- Location: LCCOMB_X60_Y44_N10
\Adder0|S[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(22) = \Adder0|P\(22) $ (((\Adder0|Carries~21_combout\) # (\Adder0|BLAN1|recurse:inner|G_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|Carries~21_combout\,
	datac => \Adder0|BLAN1|recurse:inner|G_out\(10),
	datad => \Adder0|P\(22),
	combout => \Adder0|S\(22));

-- Location: LCCOMB_X58_Y42_N14
\ShiftUnit0|Mux105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux105~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (((\B[4]~input_o\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\ShiftUnit0|Mux127~48_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~48_combout\,
	datab => \ShiftUnit0|Mux127~49_combout\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux105~0_combout\);

-- Location: LCCOMB_X58_Y42_N16
\ShiftUnit0|Mux105~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux105~1_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux105~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\ShiftUnit0|Mux105~0_combout\ & ((\ShiftUnit0|Mux127~46_combout\))))) # (!\ShiftUnit0|shamt[5]~0_combout\ & 
-- (((\ShiftUnit0|Mux105~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|Mux105~0_combout\,
	datad => \ShiftUnit0|Mux127~46_combout\,
	combout => \ShiftUnit0|Mux105~1_combout\);

-- Location: LCCOMB_X56_Y46_N0
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & (\Adder0|S\(22))) # (!\Mux34~0_combout\ & ((\ShiftUnit0|Mux105~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(22),
	datab => \Mux34~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \ShiftUnit0|Mux105~1_combout\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X56_Y46_N12
\Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Mux34~1_combout\ & ((\Mux41~0_combout\ & ((\Mux41~1_combout\))) # (!\Mux41~0_combout\ & (\ShiftUnit0|Mux86~2_combout\)))) # (!\Mux34~1_combout\ & (((\Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \ShiftUnit0|Mux86~2_combout\,
	datac => \Mux41~1_combout\,
	datad => \Mux41~0_combout\,
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X56_Y46_N30
\Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux41~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux41~2_combout\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X56_Y42_N12
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\LogicFN[0]~input_o\ & ((\B[23]~input_o\ & ((\LogicFN[1]~input_o\) # (!\A[23]~input_o\))) # (!\B[23]~input_o\ & ((\A[23]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[23]~input_o\ & ((\A[23]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X56_Y42_N14
\ShiftUnit0|Mux87~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux87~2_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\ShiftUnit0|Mux127~62_combout\))) # (!\ExtWord~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[5]~input_o\ & (((\ShiftUnit0|Mux127~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|Mux127~62_combout\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|Mux87~2_combout\);

-- Location: LCCOMB_X57_Y42_N6
\ShiftUnit0|Mux104~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux104~3_combout\ = (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\ShiftUnit0|Mux127~51_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~51_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux127~55_combout\,
	datad => \ShiftUnit0|shamt[5]~0_combout\,
	combout => \ShiftUnit0|Mux104~3_combout\);

-- Location: LCCOMB_X57_Y42_N2
\ShiftUnit0|Mux104~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux104~4_combout\ = (\ShiftUnit0|Mux104~3_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \ShiftUnit0|Mux104~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux104~3_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftUnit0|Mux104~2_combout\,
	combout => \ShiftUnit0|Mux104~4_combout\);

-- Location: LCCOMB_X56_Y42_N26
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\Mux34~0_combout\ & (((\Mux34~1_combout\)))) # (!\Mux34~0_combout\ & ((\Mux34~1_combout\ & (\ShiftUnit0|Mux87~2_combout\)) # (!\Mux34~1_combout\ & ((\ShiftUnit0|Mux104~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \ShiftUnit0|Mux87~2_combout\,
	datac => \Mux34~1_combout\,
	datad => \ShiftUnit0|Mux104~4_combout\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X60_Y44_N12
\Adder0|BLAN1|G_out[22]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[22]~12_combout\ = (\Adder0|BLAN1|recurse:inner|G_out\(10) & ((\A[22]~input_o\) # (\B[22]~input_o\ $ (\AddNSub~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|G_out\(10) & (\A[22]~input_o\ & (\B[22]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out\(10),
	datab => \B[22]~input_o\,
	datac => \A[22]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_out[22]~12_combout\);

-- Location: LCCOMB_X60_Y44_N14
\Adder0|S[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(23) = \Adder0|P[23]~13_combout\ $ (((\Adder0|BLAN1|G_out[22]~12_combout\) # ((\Adder0|Carries~21_combout\ & \Adder0|P\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_out[22]~12_combout\,
	datab => \Adder0|Carries~21_combout\,
	datac => \Adder0|P[23]~13_combout\,
	datad => \Adder0|P\(22),
	combout => \Adder0|S\(23));

-- Location: LCCOMB_X56_Y42_N6
\Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux34~0_combout\ & ((\Mux40~0_combout\ & (\Mux40~1_combout\)) # (!\Mux40~0_combout\ & ((\Adder0|S\(23)))))) # (!\Mux34~0_combout\ & (((\Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~1_combout\,
	datab => \Mux34~0_combout\,
	datac => \Mux40~0_combout\,
	datad => \Adder0|S\(23),
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X56_Y42_N8
\Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux40~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux40~2_combout\,
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X65_Y44_N16
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\A[24]~input_o\ & ((\B[24]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[24]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[24]~input_o\ & (\B[24]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[24]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X57_Y42_N28
\ShiftUnit0|Mux88~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux88~3_combout\ = (\ExtWord~input_o\ & (\ShiftUnit0|Mux88~2_combout\)) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\B[5]~input_o\ & (\ShiftUnit0|Mux88~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux88~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \B[5]~input_o\,
	combout => \ShiftUnit0|Mux88~3_combout\);

-- Location: LCCOMB_X58_Y42_N10
\ShiftUnit0|Mux103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux103~0_combout\ = (\B[4]~input_o\ & (((\ShiftUnit0|shamt[5]~0_combout\) # (\ShiftUnit0|Mux127~61_combout\)))) # (!\B[4]~input_o\ & (\ShiftUnit0|Mux127~58_combout\ & (!\ShiftUnit0|shamt[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftUnit0|Mux127~58_combout\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \ShiftUnit0|Mux127~61_combout\,
	combout => \ShiftUnit0|Mux103~0_combout\);

-- Location: LCCOMB_X58_Y42_N12
\ShiftUnit0|Mux103~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux103~1_combout\ = (\ShiftUnit0|Mux103~0_combout\ & ((\ShiftUnit0|shift_ext~0_combout\) # ((!\ShiftUnit0|shamt[5]~0_combout\)))) # (!\ShiftUnit0|Mux103~0_combout\ & (((\ShiftUnit0|shamt[5]~0_combout\ & \ShiftUnit0|Mux127~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux103~0_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \ShiftUnit0|Mux127~59_combout\,
	combout => \ShiftUnit0|Mux103~1_combout\);

-- Location: LCCOMB_X62_Y44_N20
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(2) = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\ & 
-- ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~5_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[2]~9_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_in_half~6_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(2));

-- Location: LCCOMB_X61_Y44_N26
\Adder0|S[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(24) = \Adder0|P\(24) $ (((\Adder0|Carries~13_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|Carries~13_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(2),
	datad => \Adder0|P\(24),
	combout => \Adder0|S\(24));

-- Location: LCCOMB_X57_Y44_N0
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\Mux34~0_combout\ & ((\Mux34~1_combout\) # ((\Adder0|S\(24))))) # (!\Mux34~0_combout\ & (!\Mux34~1_combout\ & (\ShiftUnit0|Mux103~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux34~1_combout\,
	datac => \ShiftUnit0|Mux103~1_combout\,
	datad => \Adder0|S\(24),
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X57_Y44_N26
\Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Mux34~1_combout\ & ((\Mux39~0_combout\ & (\Mux39~1_combout\)) # (!\Mux39~0_combout\ & ((\ShiftUnit0|Mux88~3_combout\))))) # (!\Mux34~1_combout\ & (((\Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~1_combout\,
	datab => \ShiftUnit0|Mux88~3_combout\,
	datac => \Mux34~1_combout\,
	datad => \Mux39~0_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X56_Y44_N0
\Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux39~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux39~2_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X65_Y44_N12
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[25]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[25]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X65_Y44_N10
\Adder0|BLAN1|G_out[24]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[24]~13_combout\ = (\A[24]~input_o\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(2)) # (\AddNSub~input_o\ $ (\B[24]~input_o\)))) # (!\A[24]~input_o\ & 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(2) & (\AddNSub~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(2),
	combout => \Adder0|BLAN1|G_out[24]~13_combout\);

-- Location: LCCOMB_X61_Y44_N20
\Adder0|S[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(25) = \Adder0|P[25]~23_combout\ $ (((\Adder0|BLAN1|G_out[24]~13_combout\) # ((\Adder0|P\(24) & \Adder0|Carries~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_out[24]~13_combout\,
	datab => \Adder0|P\(24),
	datac => \Adder0|Carries~13_combout\,
	datad => \Adder0|P[25]~23_combout\,
	combout => \Adder0|S\(25));

-- Location: LCCOMB_X60_Y41_N28
\ShiftUnit0|Mux102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux102~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (\B[4]~input_o\)) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\ShiftUnit0|Mux127~68_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux127~68_combout\,
	datad => \ShiftUnit0|Mux127~65_combout\,
	combout => \ShiftUnit0|Mux102~0_combout\);

-- Location: LCCOMB_X60_Y41_N6
\ShiftUnit0|Mux102~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux102~1_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux102~0_combout\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\ShiftUnit0|Mux102~0_combout\ & (\ShiftUnit0|Mux127~66_combout\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & 
-- (((\ShiftUnit0|Mux102~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \ShiftUnit0|Mux127~66_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux102~0_combout\,
	combout => \ShiftUnit0|Mux102~1_combout\);

-- Location: LCCOMB_X59_Y43_N6
\ShiftUnit0|Mux89~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux89~3_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\ShiftUnit0|Mux89~2_combout\))) # (!\ExtWord~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[5]~input_o\ & (((\ShiftUnit0|Mux89~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux89~2_combout\,
	combout => \ShiftUnit0|Mux89~3_combout\);

-- Location: LCCOMB_X57_Y46_N6
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\Mux34~1_combout\ & (((\ShiftUnit0|Mux89~3_combout\) # (\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & (\ShiftUnit0|Mux102~1_combout\ & ((!\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \ShiftUnit0|Mux102~1_combout\,
	datac => \ShiftUnit0|Mux89~3_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X57_Y46_N16
\Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\Mux34~0_combout\ & ((\Mux38~0_combout\ & (\Mux38~1_combout\)) # (!\Mux38~0_combout\ & ((\Adder0|S\(25)))))) # (!\Mux34~0_combout\ & (((\Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~0_combout\,
	datab => \Mux38~1_combout\,
	datac => \Adder0|S\(25),
	datad => \Mux38~0_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X57_Y46_N26
\Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux38~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux38~2_combout\,
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X58_Y45_N18
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\A[26]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[26]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[26]~input_o\))))) # (!\A[26]~input_o\ & (\B[26]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X61_Y44_N16
\Adder0|Carries~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~22_combout\ = (\Adder0|P[25]~23_combout\ & (\Adder0|Carries~13_combout\ & \Adder0|P\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[25]~23_combout\,
	datab => \Adder0|Carries~13_combout\,
	datad => \Adder0|P\(24),
	combout => \Adder0|Carries~22_combout\);

-- Location: LCCOMB_X61_Y44_N30
\Adder0|BLAN1|recurse:inner|G_out[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(12) = (\Adder0|BLAN1|G_in_half[12]~17_combout\) # ((\Adder0|P[25]~23_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(2) & \Adder0|P\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[25]~23_combout\,
	datab => \Adder0|BLAN1|G_in_half[12]~17_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(2),
	datad => \Adder0|P\(24),
	combout => \Adder0|BLAN1|recurse:inner|G_out\(12));

-- Location: LCCOMB_X61_Y44_N10
\Adder0|S[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(26) = \Adder0|P\(26) $ (((\Adder0|Carries~22_combout\) # (\Adder0|BLAN1|recurse:inner|G_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|Carries~22_combout\,
	datac => \Adder0|BLAN1|recurse:inner|G_out\(12),
	datad => \Adder0|P\(26),
	combout => \Adder0|S\(26));

-- Location: LCCOMB_X58_Y45_N28
\ShiftUnit0|Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux101~0_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|shamt[5]~0_combout\) # ((\ShiftUnit0|Mux127~74_combout\)))) # (!\B[4]~input_o\ & (!\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux127~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \ShiftUnit0|Mux127~74_combout\,
	datad => \ShiftUnit0|Mux127~71_combout\,
	combout => \ShiftUnit0|Mux101~0_combout\);

-- Location: LCCOMB_X58_Y45_N22
\ShiftUnit0|Mux101~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux101~1_combout\ = (\ShiftUnit0|Mux101~0_combout\ & ((\ShiftUnit0|shift_ext~0_combout\) # ((!\ShiftUnit0|shamt[5]~0_combout\)))) # (!\ShiftUnit0|Mux101~0_combout\ & (((\ShiftUnit0|Mux127~72_combout\ & \ShiftUnit0|shamt[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_ext~0_combout\,
	datab => \ShiftUnit0|Mux101~0_combout\,
	datac => \ShiftUnit0|Mux127~72_combout\,
	datad => \ShiftUnit0|shamt[5]~0_combout\,
	combout => \ShiftUnit0|Mux101~1_combout\);

-- Location: LCCOMB_X58_Y45_N16
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & (\Adder0|S\(26))) # (!\Mux34~0_combout\ & ((\ShiftUnit0|Mux101~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Adder0|S\(26),
	datac => \ShiftUnit0|Mux101~1_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X58_Y45_N6
\ShiftUnit0|Mux90~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux90~3_combout\ = (\ExtWord~input_o\ & (((\ShiftUnit0|Mux90~2_combout\)))) # (!\ExtWord~input_o\ & ((\B[5]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\B[5]~input_o\ & ((\ShiftUnit0|Mux90~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_ext~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|Mux90~2_combout\,
	datad => \B[5]~input_o\,
	combout => \ShiftUnit0|Mux90~3_combout\);

-- Location: LCCOMB_X58_Y45_N4
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux34~1_combout\ & ((\Mux37~0_combout\ & (\Mux37~1_combout\)) # (!\Mux37~0_combout\ & ((\ShiftUnit0|Mux90~3_combout\))))) # (!\Mux34~1_combout\ & (((\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux37~1_combout\,
	datac => \Mux37~0_combout\,
	datad => \ShiftUnit0|Mux90~3_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X58_Y48_N0
\Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux37~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux37~2_combout\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X57_Y44_N6
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[27]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))) # (!\B[27]~input_o\ & (\A[27]~input_o\ & (\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[27]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X59_Y39_N10
\ShiftUnit0|Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux100~0_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & (\B[4]~input_o\)) # (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\ShiftUnit0|Mux127~81_combout\))) # (!\B[4]~input_o\ & (\ShiftUnit0|Mux127~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shamt[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux127~78_combout\,
	datad => \ShiftUnit0|Mux127~81_combout\,
	combout => \ShiftUnit0|Mux100~0_combout\);

-- Location: LCCOMB_X59_Y39_N20
\ShiftUnit0|Mux100~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux100~1_combout\ = (\ShiftUnit0|Mux100~0_combout\ & ((\ShiftUnit0|shift_ext~0_combout\) # ((!\ShiftUnit0|shamt[5]~0_combout\)))) # (!\ShiftUnit0|Mux100~0_combout\ & (((\ShiftUnit0|shamt[5]~0_combout\ & \ShiftUnit0|Mux127~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux100~0_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \ShiftUnit0|Mux127~79_combout\,
	combout => \ShiftUnit0|Mux100~1_combout\);

-- Location: LCCOMB_X59_Y42_N30
\ShiftUnit0|Mux91~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux91~3_combout\ = (\B[5]~input_o\ & ((\ExtWord~input_o\ & ((\ShiftUnit0|Mux91~2_combout\))) # (!\ExtWord~input_o\ & (\ShiftUnit0|shift_ext~0_combout\)))) # (!\B[5]~input_o\ & (((\ShiftUnit0|Mux91~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftUnit0|Mux91~2_combout\,
	combout => \ShiftUnit0|Mux91~3_combout\);

-- Location: LCCOMB_X57_Y44_N20
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\) # (\ShiftUnit0|Mux91~3_combout\)))) # (!\Mux34~1_combout\ & (\ShiftUnit0|Mux100~1_combout\ & (!\Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux100~1_combout\,
	datab => \Mux34~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \ShiftUnit0|Mux91~3_combout\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X61_Y44_N4
\Adder0|BLAN1|G_out[26]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[26]~14_combout\ = (\Adder0|BLAN1|recurse:inner|G_out\(12) & ((\A[26]~input_o\) # (\AddNSub~input_o\ $ (\B[26]~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|G_out\(12) & (\A[26]~input_o\ & (\AddNSub~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out\(12),
	datab => \AddNSub~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Adder0|BLAN1|G_out[26]~14_combout\);

-- Location: LCCOMB_X61_Y44_N14
\Adder0|S[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(27) = \Adder0|P[27]~24_combout\ $ (((\Adder0|BLAN1|G_out[26]~14_combout\) # ((\Adder0|Carries~22_combout\ & \Adder0|P\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~22_combout\,
	datab => \Adder0|P[27]~24_combout\,
	datac => \Adder0|BLAN1|G_out[26]~14_combout\,
	datad => \Adder0|P\(26),
	combout => \Adder0|S\(27));

-- Location: LCCOMB_X57_Y44_N16
\Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux36~0_combout\ & ((\Mux36~1_combout\) # ((!\Mux34~0_combout\)))) # (!\Mux36~0_combout\ & (((\Mux34~0_combout\ & \Adder0|S\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~1_combout\,
	datab => \Mux36~0_combout\,
	datac => \Mux34~0_combout\,
	datad => \Adder0|S\(27),
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X57_Y44_N10
\Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux36~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux36~2_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X55_Y44_N14
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\B[28]~input_o\ & ((\A[28]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[28]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & (\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \A[28]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X59_Y42_N4
\ShiftUnit0|Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux99~0_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|shamt[5]~0_combout\) # ((\ShiftUnit0|Mux127~86_combout\)))) # (!\B[4]~input_o\ & (!\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|Mux127~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \ShiftUnit0|Mux127~83_combout\,
	datad => \ShiftUnit0|Mux127~86_combout\,
	combout => \ShiftUnit0|Mux99~0_combout\);

-- Location: LCCOMB_X59_Y42_N14
\ShiftUnit0|Mux99~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux99~1_combout\ = (\ShiftUnit0|Mux99~0_combout\ & (((\ShiftUnit0|shift_ext~0_combout\) # (!\ShiftUnit0|shamt[5]~0_combout\)))) # (!\ShiftUnit0|Mux99~0_combout\ & (\ShiftUnit0|Mux127~84_combout\ & ((\ShiftUnit0|shamt[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux99~0_combout\,
	datab => \ShiftUnit0|Mux127~84_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|shamt[5]~0_combout\,
	combout => \ShiftUnit0|Mux99~1_combout\);

-- Location: LCCOMB_X62_Y44_N6
\Adder0|Carries~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~23_combout\ = (\Adder0|Carries~9_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\ & 
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~9_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[2]~6_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~4_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[1]~9_combout\,
	combout => \Adder0|Carries~23_combout\);

-- Location: LCCOMB_X55_Y44_N28
\Adder0|S[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(28) = \Adder0|P\(28) $ (((\Adder0|Carries~23_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|Carries~23_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(6),
	datad => \Adder0|P\(28),
	combout => \Adder0|S\(28));

-- Location: LCCOMB_X56_Y45_N16
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & ((\Adder0|S\(28)))) # (!\Mux34~0_combout\ & (\ShiftUnit0|Mux99~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \ShiftUnit0|Mux99~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \Adder0|S\(28),
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X59_Y39_N22
\ShiftUnit0|Mux92~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux92~2_combout\ = (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\ShiftUnit0|Mux127~27_combout\))) # (!\B[4]~input_o\ & (\ShiftUnit0|Mux127~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~32_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \ShiftUnit0|Mux127~27_combout\,
	combout => \ShiftUnit0|Mux92~2_combout\);

-- Location: LCCOMB_X59_Y39_N28
\ShiftUnit0|Mux92~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux92~3_combout\ = (\ShiftUnit0|Mux92~2_combout\) # ((\B[5]~input_o\ & (\ShiftUnit0|shift_ext~0_combout\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux92~2_combout\,
	datab => \B[5]~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \ShiftUnit0|Mux92~3_combout\);

-- Location: LCCOMB_X56_Y45_N18
\Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux35~0_combout\ & ((\Mux35~1_combout\) # ((!\Mux34~1_combout\)))) # (!\Mux35~0_combout\ & (((\Mux34~1_combout\ & \ShiftUnit0|Mux92~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~1_combout\,
	datab => \Mux35~0_combout\,
	datac => \Mux34~1_combout\,
	datad => \ShiftUnit0|Mux92~3_combout\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X57_Y42_N24
\Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\Mux35~2_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~2_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X55_Y44_N16
\Adder0|BLAN1|G_out[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[28]~15_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(6) & ((\A[28]~input_o\) # (\B[28]~input_o\ $ (\AddNSub~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(6) & (\A[28]~input_o\ & (\B[28]~input_o\ $ 
-- (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(6),
	datac => \A[28]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_out[28]~15_combout\);

-- Location: LCCOMB_X55_Y44_N10
\Adder0|S[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(29) = \Adder0|P[29]~27_combout\ $ (((\Adder0|BLAN1|G_out[28]~15_combout\) # ((\Adder0|Carries~23_combout\ & \Adder0|P\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_out[28]~15_combout\,
	datab => \Adder0|P[29]~27_combout\,
	datac => \Adder0|Carries~23_combout\,
	datad => \Adder0|P\(28),
	combout => \Adder0|S\(29));

-- Location: LCCOMB_X59_Y39_N8
\ShiftUnit0|Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux98~0_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|Mux127~91_combout\) # ((\ShiftUnit0|shamt[5]~0_combout\)))) # (!\B[4]~input_o\ & (((\ShiftUnit0|Mux127~88_combout\ & !\ShiftUnit0|shamt[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~91_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux127~88_combout\,
	datad => \ShiftUnit0|shamt[5]~0_combout\,
	combout => \ShiftUnit0|Mux98~0_combout\);

-- Location: LCCOMB_X59_Y39_N18
\ShiftUnit0|Mux98~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux98~1_combout\ = (\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux98~0_combout\ & ((\ShiftUnit0|shift_ext~0_combout\))) # (!\ShiftUnit0|Mux98~0_combout\ & (\ShiftUnit0|Mux127~89_combout\)))) # (!\ShiftUnit0|shamt[5]~0_combout\ & 
-- (((\ShiftUnit0|Mux98~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~89_combout\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \ShiftUnit0|Mux98~0_combout\,
	combout => \ShiftUnit0|Mux98~1_combout\);

-- Location: LCCOMB_X57_Y43_N12
\ShiftUnit0|Mux93~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux93~2_combout\ = (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\ShiftUnit0|Mux127~22_combout\))) # (!\B[4]~input_o\ & (\ShiftUnit0|Mux127~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~25_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux127~22_combout\,
	combout => \ShiftUnit0|Mux93~2_combout\);

-- Location: LCCOMB_X58_Y43_N20
\ShiftUnit0|Mux93~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux93~3_combout\ = (\ShiftUnit0|Mux93~2_combout\) # ((\ShiftUnit0|shift_ext~0_combout\ & (!\ExtWord~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_ext~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftUnit0|Mux93~2_combout\,
	combout => \ShiftUnit0|Mux93~3_combout\);

-- Location: LCCOMB_X58_Y43_N0
\Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\) # (\ShiftUnit0|Mux93~3_combout\)))) # (!\Mux34~1_combout\ & (\ShiftUnit0|Mux98~1_combout\ & (!\Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux98~1_combout\,
	datab => \Mux34~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \ShiftUnit0|Mux93~3_combout\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X55_Y44_N4
\Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[29]~input_o\ & (\LogicFN[0]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X55_Y44_N6
\Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\Mux34~2_combout\ & (((\Mux34~3_combout\) # (!\Mux34~0_combout\)))) # (!\Mux34~2_combout\ & (\Adder0|S\(29) & ((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(29),
	datab => \Mux34~2_combout\,
	datac => \Mux34~3_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X57_Y42_N18
\Mux34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (\Mux34~4_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux34~4_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X57_Y43_N22
\ShiftUnit0|Mux94~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux94~2_combout\ = (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & (\ShiftUnit0|Mux127~16_combout\)) # (!\B[4]~input_o\ & ((\ShiftUnit0|Mux127~105_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~16_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux127~105_combout\,
	combout => \ShiftUnit0|Mux94~2_combout\);

-- Location: LCCOMB_X56_Y45_N28
\ShiftUnit0|Mux94~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux94~3_combout\ = (\ShiftUnit0|Mux94~2_combout\) # ((!\ExtWord~input_o\ & (\ShiftUnit0|shift_ext~0_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftUnit0|shift_ext~0_combout\,
	datac => \ShiftUnit0|Mux94~2_combout\,
	datad => \B[5]~input_o\,
	combout => \ShiftUnit0|Mux94~3_combout\);

-- Location: LCCOMB_X57_Y43_N24
\ShiftUnit0|Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux97~0_combout\ = (\B[4]~input_o\ & (((\ShiftUnit0|shamt[5]~0_combout\)))) # (!\B[4]~input_o\ & ((\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux127~95_combout\))) # (!\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|Mux127~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~94_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftUnit0|Mux127~95_combout\,
	datad => \ShiftUnit0|shamt[5]~0_combout\,
	combout => \ShiftUnit0|Mux97~0_combout\);

-- Location: LCCOMB_X57_Y43_N18
\ShiftUnit0|Mux97~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux97~1_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|Mux97~0_combout\ & (\ShiftUnit0|shift_ext~0_combout\)) # (!\ShiftUnit0|Mux97~0_combout\ & ((\ShiftUnit0|Mux127~97_combout\))))) # (!\B[4]~input_o\ & (((\ShiftUnit0|Mux97~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|shift_ext~0_combout\,
	datab => \ShiftUnit0|Mux127~97_combout\,
	datac => \B[4]~input_o\,
	datad => \ShiftUnit0|Mux97~0_combout\,
	combout => \ShiftUnit0|Mux97~1_combout\);

-- Location: LCCOMB_X57_Y45_N24
\Adder0|S[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(30) = \Adder0|P\(30) $ (((\Adder0|BLAN1|recurse:inner|G_out\(14)) # (\Adder0|Carries~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out\(14),
	datab => \Adder0|Carries~14_combout\,
	datad => \Adder0|P\(30),
	combout => \Adder0|S\(30));

-- Location: LCCOMB_X56_Y45_N4
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mux34~1_combout\ & (((\Mux34~0_combout\)))) # (!\Mux34~1_combout\ & ((\Mux34~0_combout\ & ((\Adder0|S\(30)))) # (!\Mux34~0_combout\ & (\ShiftUnit0|Mux97~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \ShiftUnit0|Mux97~1_combout\,
	datac => \Mux34~0_combout\,
	datad => \Adder0|S\(30),
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X57_Y45_N2
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\B[30]~input_o\ & ((\LogicFN[1]~input_o\ & ((\A[30]~input_o\) # (\LogicFN[0]~input_o\))) # (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[30]~input_o\))))) # (!\B[30]~input_o\ & (((\A[30]~input_o\ & \LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X56_Y45_N30
\Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Mux34~1_combout\ & ((\Mux33~0_combout\ & ((\Mux33~1_combout\))) # (!\Mux33~0_combout\ & (\ShiftUnit0|Mux94~3_combout\)))) # (!\Mux34~1_combout\ & (((\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \ShiftUnit0|Mux94~3_combout\,
	datac => \Mux33~0_combout\,
	datad => \Mux33~1_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X56_Y45_N8
\Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (!\FuncClass[1]~input_o\ & \Mux33~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux33~2_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X57_Y45_N4
\LogicUnit0|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LogicUnit0|Mux32~0_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[31]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[31]~input_o\ & (\B[31]~input_o\ & ((\LogicFN[0]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[31]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \LogicUnit0|Mux32~0_combout\);

-- Location: LCCOMB_X58_Y42_N6
\ShiftUnit0|Mux95~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux95~2_combout\ = (!\ShiftUnit0|shamt[5]~0_combout\ & ((\B[4]~input_o\ & ((\ShiftUnit0|Mux127~1_combout\))) # (!\B[4]~input_o\ & (\ShiftUnit0|Mux127~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux127~7_combout\,
	datab => \ShiftUnit0|Mux127~1_combout\,
	datac => \ShiftUnit0|shamt[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \ShiftUnit0|Mux95~2_combout\);

-- Location: LCCOMB_X57_Y42_N30
\ShiftUnit0|Mux95~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux95~3_combout\ = (\ShiftUnit0|Mux95~2_combout\) # ((!\ExtWord~input_o\ & (\ShiftUnit0|shift_ext~0_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux95~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \B[5]~input_o\,
	combout => \ShiftUnit0|Mux95~3_combout\);

-- Location: LCCOMB_X58_Y43_N2
\ShiftUnit0|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux96~0_combout\ = (\B[4]~input_o\ & ((\ShiftUnit0|shamt[5]~0_combout\) # ((\ShiftUnit0|Mux127~103_combout\)))) # (!\B[4]~input_o\ & (!\ShiftUnit0|shamt[5]~0_combout\ & (\ShiftUnit0|Mux127~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \ShiftUnit0|Mux127~99_combout\,
	datad => \ShiftUnit0|Mux127~103_combout\,
	combout => \ShiftUnit0|Mux96~0_combout\);

-- Location: LCCOMB_X59_Y45_N26
\ShiftUnit0|Mux96~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|Mux96~1_combout\ = (\ShiftUnit0|Mux96~0_combout\ & (((\ShiftUnit0|shift_ext~0_combout\)) # (!\ShiftUnit0|shamt[5]~0_combout\))) # (!\ShiftUnit0|Mux96~0_combout\ & (\ShiftUnit0|shamt[5]~0_combout\ & ((\ShiftUnit0|Mux127~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux96~0_combout\,
	datab => \ShiftUnit0|shamt[5]~0_combout\,
	datac => \ShiftUnit0|shift_ext~0_combout\,
	datad => \ShiftUnit0|Mux127~101_combout\,
	combout => \ShiftUnit0|Mux96~1_combout\);

-- Location: LCCOMB_X59_Y45_N14
\ShiftUnit0|raw_result[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftUnit0|raw_result[31]~2_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftUnit0|Mux96~1_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\ShiftUnit0|Mux95~3_combout\)) # (!\ShiftFN[0]~input_o\ & ((\ShiftUnit0|Mux96~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftUnit0|Mux95~3_combout\,
	datac => \ShiftUnit0|Mux96~1_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \ShiftUnit0|raw_result[31]~2_combout\);

-- Location: LCCOMB_X57_Y45_N6
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\ShiftFN[1]~input_o\ & (\ShiftUnit0|raw_result[31]~2_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\ShiftUnit0|raw_result[31]~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Adder0|S\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|raw_result[31]~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Adder0|S\(31),
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X57_Y45_N0
\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\LogicUnit0|Mux32~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux32~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \LogicUnit0|Mux32~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux32~0_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X61_Y42_N4
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\ExtWord~input_o\) # ((!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X61_Y42_N30
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X60_Y45_N4
\Y_adder[32]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[32]~3_combout\ = (!\ExtWord~input_o\ & (\Adder0|P\(32) $ (((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\) # (\Adder0|Carries~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\,
	datac => \Adder0|Carries~10_combout\,
	datad => \Adder0|P\(32),
	combout => \Y_adder[32]~3_combout\);

-- Location: LCCOMB_X59_Y45_N20
\Y_adder[32]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[32]~4_combout\ = (\Y_adder[32]~3_combout\) # ((\ExtWord~input_o\ & \Adder0|S\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Adder0|S\(31),
	datad => \Y_adder[32]~3_combout\,
	combout => \Y_adder[32]~4_combout\);

-- Location: LCCOMB_X59_Y45_N6
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[32]~4_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[32]~4_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X59_Y45_N24
\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux14~0_combout\ & (((\Mux31~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux31~1_combout\ & (\ShiftUnit0|Mux96~1_combout\)) # (!\Mux31~1_combout\ & ((\ShiftUnit0|Mux95~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux96~1_combout\,
	datab => \ShiftUnit0|Mux95~3_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X60_Y45_N18
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\A[32]~input_o\ & ((\B[32]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[32]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[32]~input_o\ & (\B[32]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \B[32]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X59_Y45_N18
\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux31~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux31~2_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X60_Y45_N14
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\B[33]~input_o\ & ((\LogicFN[1]~input_o\ & ((\A[33]~input_o\) # (\LogicFN[0]~input_o\))) # (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[33]~input_o\))))) # (!\B[33]~input_o\ & (((\A[33]~input_o\ & \LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[33]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X60_Y45_N2
\Adder0|P[33]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[33]~30_combout\ = \A[33]~input_o\ $ (\B[33]~input_o\ $ (\AddNSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[33]~input_o\,
	datac => \B[33]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|P[33]~30_combout\);

-- Location: LCCOMB_X60_Y45_N24
\Adder0|BLAN1|G_out[32]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[32]~16_combout\ = (\A[32]~input_o\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\) # (\AddNSub~input_o\ $ (\B[32]~input_o\)))) # (!\A[32]~input_o\ & 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\ & (\AddNSub~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\,
	datad => \B[32]~input_o\,
	combout => \Adder0|BLAN1|G_out[32]~16_combout\);

-- Location: LCCOMB_X60_Y45_N28
\Adder0|S[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(33) = \Adder0|P[33]~30_combout\ $ (((\Adder0|BLAN1|G_out[32]~16_combout\) # ((\Adder0|P\(32) & \Adder0|Carries~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(32),
	datab => \Adder0|P[33]~30_combout\,
	datac => \Adder0|Carries~10_combout\,
	datad => \Adder0|BLAN1|G_out[32]~16_combout\,
	combout => \Adder0|S\(33));

-- Location: LCCOMB_X60_Y38_N10
\Y_adder[33]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[33]~5_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|S\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder0|S\(31),
	datac => \Adder0|S\(33),
	combout => \Y_adder[33]~5_combout\);

-- Location: LCCOMB_X56_Y45_N26
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux14~1_combout\ & ((\Y_adder[33]~5_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (((\ShiftUnit0|raw_result[31]~2_combout\ & \Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[33]~5_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X56_Y45_N20
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux14~0_combout\ & (((\Mux30~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux30~1_combout\ & (\ShiftUnit0|Mux97~1_combout\)) # (!\Mux30~1_combout\ & ((\ShiftUnit0|Mux94~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftUnit0|Mux97~1_combout\,
	datac => \Mux30~1_combout\,
	datad => \ShiftUnit0|Mux94~3_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X56_Y45_N22
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux30~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux30~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux30~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X56_Y44_N10
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\A[34]~input_o\ & ((\B[34]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[34]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[34]~input_o\ & (\B[34]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X56_Y47_N22
\Adder0|Carries[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(34) = (\Adder0|BLAN1|G_in_half[16]~13_combout\) # ((\Adder0|BLAN1|recurse:inner|G_out~1_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\) # (\Adder0|Carries~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_in_half[16]~13_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\,
	datac => \Adder0|Carries~10_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out~1_combout\,
	combout => \Adder0|Carries\(34));

-- Location: LCCOMB_X56_Y47_N0
\Y_adder[34]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[34]~6_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|P\(34) $ (\Adder0|Carries\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \Adder0|P\(34),
	datac => \Adder0|Carries\(34),
	datad => \ExtWord~input_o\,
	combout => \Y_adder[34]~6_combout\);

-- Location: LCCOMB_X58_Y43_N28
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[34]~6_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Y_adder[34]~6_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X58_Y43_N22
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux29~1_combout\ & (((\ShiftUnit0|Mux98~1_combout\) # (\Mux14~0_combout\)))) # (!\Mux29~1_combout\ & (\ShiftUnit0|Mux93~3_combout\ & ((!\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \ShiftUnit0|Mux93~3_combout\,
	datac => \ShiftUnit0|Mux98~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X56_Y44_N12
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux29~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux29~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Mux29~2_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X58_Y47_N14
\Adder0|BLAN1|recurse:inner|G_out[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(16) = (\Adder0|BLAN1|G_in_half[16]~13_combout\) # ((\Adder0|BLAN1|recurse:inner|G_out~1_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\) # 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\,
	datab => \Adder0|BLAN1|G_in_half[16]~13_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out~1_combout\,
	combout => \Adder0|BLAN1|recurse:inner|G_out\(16));

-- Location: LCCOMB_X56_Y44_N30
\Adder0|BLAN1|G_out[34]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[34]~17_combout\ = (\A[34]~input_o\ & ((\Adder0|BLAN1|recurse:inner|G_out\(16)) # (\B[34]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[34]~input_o\ & (\Adder0|BLAN1|recurse:inner|G_out\(16) & (\B[34]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \B[34]~input_o\,
	datac => \Adder0|BLAN1|recurse:inner|G_out\(16),
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_out[34]~17_combout\);

-- Location: LCCOMB_X56_Y47_N20
\Adder0|Carries[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(35) = (\Adder0|BLAN1|G_out[34]~17_combout\) # ((\Adder0|P\(34) & (\Adder0|Carries~10_combout\ & \Adder0|BLAN1|recurse:inner|G_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_out[34]~17_combout\,
	datab => \Adder0|P\(34),
	datac => \Adder0|Carries~10_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out~1_combout\,
	combout => \Adder0|Carries\(35));

-- Location: LCCOMB_X56_Y47_N30
\Y_adder[35]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[35]~7_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|Carries\(35) $ (\Adder0|P[35]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \Adder0|Carries\(35),
	datac => \ExtWord~input_o\,
	datad => \Adder0|P[35]~11_combout\,
	combout => \Y_adder[35]~7_combout\);

-- Location: LCCOMB_X56_Y45_N0
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[35]~7_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|raw_result[31]~2_combout\,
	datab => \Y_adder[35]~7_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X56_Y45_N10
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Mux14~0_combout\ & (\Mux28~1_combout\)) # (!\Mux14~0_combout\ & ((\Mux28~1_combout\ & (\ShiftUnit0|Mux99~1_combout\)) # (!\Mux28~1_combout\ & ((\ShiftUnit0|Mux92~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux28~1_combout\,
	datac => \ShiftUnit0|Mux99~1_combout\,
	datad => \ShiftUnit0|Mux92~3_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X56_Y47_N18
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\B[35]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\A[35]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\A[35]~input_o\) # (!\LogicFN[1]~input_o\))))) # (!\B[35]~input_o\ & (\LogicFN[0]~input_o\ & ((\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[35]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X56_Y45_N12
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux28~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Mux28~0_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X56_Y47_N14
\Adder0|Carries~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~31_combout\ = (\Adder0|P[35]~11_combout\ & (\Adder0|P\(34) & (\Adder0|Carries~10_combout\ & \Adder0|BLAN1|recurse:inner|G_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[35]~11_combout\,
	datab => \Adder0|P\(34),
	datac => \Adder0|Carries~10_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out~1_combout\,
	combout => \Adder0|Carries~31_combout\);

-- Location: LCCOMB_X56_Y47_N24
\Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\ = (\Adder0|P[35]~11_combout\ & (\Adder0|P\(34) & \Adder0|BLAN1|recurse:inner|G_out~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[35]~11_combout\,
	datab => \Adder0|P\(34),
	datad => \Adder0|BLAN1|recurse:inner|G_out~1_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\);

-- Location: LCCOMB_X56_Y47_N10
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(8) = (\Adder0|BLAN1|G_in_half[17]~12_combout\) # ((\Adder0|BLAN1|recurse:inner|G_in_half~0_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\ & 
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~2_combout\,
	datab => \Adder0|BLAN1|G_in_half[17]~12_combout\,
	datac => \Adder0|BLAN1|recurse:inner|G_in_half~0_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(8));

-- Location: LCCOMB_X57_Y47_N24
\Y_adder[36]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[36]~8_combout\ = (!\ExtWord~input_o\ & (\Adder0|P\(36) $ (((\Adder0|Carries~31_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~31_combout\,
	datab => \Adder0|P\(36),
	datac => \ExtWord~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(8),
	combout => \Y_adder[36]~8_combout\);

-- Location: LCCOMB_X57_Y47_N10
\Y_adder[36]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[36]~9_combout\ = (\Y_adder[36]~8_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Y_adder[36]~8_combout\,
	combout => \Y_adder[36]~9_combout\);

-- Location: LCCOMB_X56_Y46_N24
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[36]~9_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Y_adder[36]~9_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X56_Y46_N2
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux14~0_combout\ & (((\Mux27~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux27~1_combout\ & ((\ShiftUnit0|Mux100~1_combout\))) # (!\Mux27~1_combout\ & (\ShiftUnit0|Mux91~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftUnit0|Mux91~3_combout\,
	datac => \ShiftUnit0|Mux100~1_combout\,
	datad => \Mux27~1_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X57_Y46_N20
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\A[36]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[36]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[36]~input_o\))))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[36]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X57_Y46_N22
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux27~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X55_Y47_N22
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\A[37]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[37]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[37]~input_o\))))) # (!\A[37]~input_o\ & (\B[37]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X55_Y47_N24
\Adder0|BLAN1|G_out[36]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[36]~18_combout\ = (\A[36]~input_o\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(8)) # (\B[36]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[36]~input_o\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(8) & (\B[36]~input_o\ $ 
-- (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(8),
	datac => \B[36]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_out[36]~18_combout\);

-- Location: LCCOMB_X55_Y47_N18
\Adder0|Carries[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(37) = (\Adder0|BLAN1|G_out[36]~18_combout\) # ((\Adder0|P\(36) & (\Adder0|Carries~10_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(36),
	datab => \Adder0|BLAN1|G_out[36]~18_combout\,
	datac => \Adder0|Carries~10_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\,
	combout => \Adder0|Carries\(37));

-- Location: LCCOMB_X55_Y47_N28
\Y_adder[37]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[37]~10_combout\ = (\ExtWord~input_o\ & (((\Adder0|S\(31))))) # (!\ExtWord~input_o\ & (\Adder0|P[37]~10_combout\ $ ((\Adder0|Carries\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[37]~10_combout\,
	datab => \ExtWord~input_o\,
	datac => \Adder0|Carries\(37),
	datad => \Adder0|S\(31),
	combout => \Y_adder[37]~10_combout\);

-- Location: LCCOMB_X58_Y45_N30
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux14~1_combout\ & ((\Y_adder[37]~10_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (((\Mux14~0_combout\ & \ShiftUnit0|raw_result[31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Y_adder[37]~10_combout\,
	datac => \Mux14~0_combout\,
	datad => \ShiftUnit0|raw_result[31]~2_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X58_Y45_N0
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux26~1_combout\ & ((\Mux14~0_combout\) # ((\ShiftUnit0|Mux101~1_combout\)))) # (!\Mux26~1_combout\ & (!\Mux14~0_combout\ & ((\ShiftUnit0|Mux90~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \ShiftUnit0|Mux101~1_combout\,
	datad => \ShiftUnit0|Mux90~3_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X57_Y46_N0
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux26~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux26~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X55_Y47_N30
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\LogicFN[0]~input_o\ & ((\A[38]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[38]~input_o\))) # (!\A[38]~input_o\ & ((\B[38]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[38]~input_o\ & ((\A[38]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X55_Y47_N16
\Adder0|BLAN1|recurse:inner|G_out[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(18) = (\Adder0|BLAN1|G_in_half[18]~11_combout\) # ((\Adder0|P[37]~10_combout\ & (\Adder0|P\(36) & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[37]~10_combout\,
	datab => \Adder0|P\(36),
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(8),
	datad => \Adder0|BLAN1|G_in_half[18]~11_combout\,
	combout => \Adder0|BLAN1|recurse:inner|G_out\(18));

-- Location: LCCOMB_X55_Y47_N26
\Adder0|Carries~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~24_combout\ = (\Adder0|P[37]~10_combout\ & (\Adder0|P\(36) & (\Adder0|Carries~10_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[37]~10_combout\,
	datab => \Adder0|P\(36),
	datac => \Adder0|Carries~10_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\,
	combout => \Adder0|Carries~24_combout\);

-- Location: LCCOMB_X59_Y46_N8
\Y_adder[38]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[38]~11_combout\ = (!\ExtWord~input_o\ & (\Adder0|P\(38) $ (((\Adder0|BLAN1|recurse:inner|G_out\(18)) # (\Adder0|Carries~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(38),
	datab => \ExtWord~input_o\,
	datac => \Adder0|BLAN1|recurse:inner|G_out\(18),
	datad => \Adder0|Carries~24_combout\,
	combout => \Y_adder[38]~11_combout\);

-- Location: LCCOMB_X59_Y46_N18
\Y_adder[38]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[38]~12_combout\ = (\Y_adder[38]~11_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \Y_adder[38]~11_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y_adder[38]~12_combout\);

-- Location: LCCOMB_X59_Y46_N4
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[38]~12_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[38]~12_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X57_Y46_N2
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux25~1_combout\ & (((\Mux14~0_combout\) # (\ShiftUnit0|Mux102~1_combout\)))) # (!\Mux25~1_combout\ & (\ShiftUnit0|Mux89~3_combout\ & (!\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \ShiftUnit0|Mux89~3_combout\,
	datac => \Mux14~0_combout\,
	datad => \ShiftUnit0|Mux102~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X57_Y46_N12
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux25~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux25~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux25~2_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X55_Y47_N14
\Adder0|Carries~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~32_combout\ = (\Adder0|Carries~24_combout\ & (\AddNSub~input_o\ $ (\A[38]~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[38]~input_o\,
	datac => \Adder0|Carries~24_combout\,
	datad => \B[38]~input_o\,
	combout => \Adder0|Carries~32_combout\);

-- Location: LCCOMB_X55_Y47_N20
\Adder0|BLAN1|G_out[38]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[38]~19_combout\ = (\Adder0|BLAN1|recurse:inner|G_out\(18) & ((\A[38]~input_o\) # (\AddNSub~input_o\ $ (\B[38]~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|G_out\(18) & (\A[38]~input_o\ & (\AddNSub~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|BLAN1|recurse:inner|G_out\(18),
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \Adder0|BLAN1|G_out[38]~19_combout\);

-- Location: LCCOMB_X57_Y47_N22
\Y_adder[39]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[39]~14_combout\ = (!\ExtWord~input_o\ & (\Adder0|P[39]~9_combout\ $ (((\Adder0|Carries~32_combout\) # (\Adder0|BLAN1|G_out[38]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[39]~9_combout\,
	datab => \Adder0|Carries~32_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder0|BLAN1|G_out[38]~19_combout\,
	combout => \Y_adder[39]~14_combout\);

-- Location: LCCOMB_X57_Y47_N28
\Y_adder[39]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[39]~46_combout\ = (\Y_adder[39]~14_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[39]~14_combout\,
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	combout => \Y_adder[39]~46_combout\);

-- Location: LCCOMB_X56_Y44_N2
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux14~1_combout\ & ((\Y_adder[39]~46_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (((\ShiftUnit0|raw_result[31]~2_combout\ & \Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[39]~46_combout\,
	datab => \Mux14~1_combout\,
	datac => \ShiftUnit0|raw_result[31]~2_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X57_Y44_N4
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux24~1_combout\ & ((\ShiftUnit0|Mux103~1_combout\) # ((\Mux14~0_combout\)))) # (!\Mux24~1_combout\ & (((\ShiftUnit0|Mux88~3_combout\ & !\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \ShiftUnit0|Mux103~1_combout\,
	datac => \ShiftUnit0|Mux88~3_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X56_Y44_N16
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\B[39]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\A[39]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\A[39]~input_o\) # (!\LogicFN[1]~input_o\))))) # (!\B[39]~input_o\ & (\LogicFN[0]~input_o\ & ((\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[39]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X56_Y44_N28
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux24~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \Mux24~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X56_Y47_N12
\Adder0|Carries~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~25_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\ & (\Adder0|Carries~10_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\,
	datac => \Adder0|Carries~10_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\,
	combout => \Adder0|Carries~25_combout\);

-- Location: LCCOMB_X58_Y47_N16
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4) = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~4_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[4]~5_combout\ & 
-- ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[4]~5_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~3_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[4]~4_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_in_half[0]~4_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4));

-- Location: LCCOMB_X57_Y47_N0
\Y_adder[40]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[40]~15_combout\ = (!\ExtWord~input_o\ & (\Adder0|P\(40) $ (((\Adder0|Carries~25_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~25_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4),
	datac => \ExtWord~input_o\,
	datad => \Adder0|P\(40),
	combout => \Y_adder[40]~15_combout\);

-- Location: LCCOMB_X57_Y47_N18
\Y_adder[40]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[40]~16_combout\ = (\Y_adder[40]~15_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Y_adder[40]~15_combout\,
	combout => \Y_adder[40]~16_combout\);

-- Location: LCCOMB_X56_Y42_N10
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux14~1_combout\ & ((\Y_adder[40]~16_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (((\Mux14~0_combout\ & \ShiftUnit0|raw_result[31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[40]~16_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \ShiftUnit0|raw_result[31]~2_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X56_Y42_N28
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux23~1_combout\ & (((\Mux14~0_combout\) # (\ShiftUnit0|Mux104~4_combout\)))) # (!\Mux23~1_combout\ & (\ShiftUnit0|Mux87~2_combout\ & (!\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \ShiftUnit0|Mux87~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \ShiftUnit0|Mux104~4_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X59_Y50_N0
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\B[40]~input_o\ & ((\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\) # (\A[40]~input_o\))) # (!\LogicFN[1]~input_o\ & ((!\A[40]~input_o\) # (!\LogicFN[0]~input_o\))))) # (!\B[40]~input_o\ & (((\LogicFN[0]~input_o\ & \A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[40]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X59_Y50_N18
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux23~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux23~2_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X58_Y47_N2
\Adder0|Carries~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~26_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\ & (\Adder0|Carries~10_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\ & \Adder0|P\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half~3_combout\,
	datab => \Adder0|Carries~10_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[8]~1_combout\,
	datad => \Adder0|P\(40),
	combout => \Adder0|Carries~26_combout\);

-- Location: LCCOMB_X59_Y50_N14
\Adder0|BLAN1|G_out[40]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[40]~20_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4) & ((\A[40]~input_o\) # (\AddNSub~input_o\ $ (\B[40]~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4) & 
-- (\A[40]~input_o\ & (\AddNSub~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4),
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Adder0|BLAN1|G_out[40]~20_combout\);

-- Location: LCCOMB_X59_Y50_N16
\Y_adder[41]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[41]~17_combout\ = (!\ExtWord~input_o\ & (\Adder0|P[41]~8_combout\ $ (((\Adder0|Carries~26_combout\) # (\Adder0|BLAN1|G_out[40]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~26_combout\,
	datab => \Adder0|BLAN1|G_out[40]~20_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder0|P[41]~8_combout\,
	combout => \Y_adder[41]~17_combout\);

-- Location: LCCOMB_X59_Y50_N26
\Y_adder[41]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[41]~18_combout\ = (\Y_adder[41]~17_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Y_adder[41]~17_combout\,
	combout => \Y_adder[41]~18_combout\);

-- Location: LCCOMB_X56_Y46_N28
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Y_adder[41]~18_combout\))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~1_combout\,
	datad => \Y_adder[41]~18_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X56_Y46_N22
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux22~1_combout\ & ((\ShiftUnit0|Mux105~1_combout\) # ((\Mux14~0_combout\)))) # (!\Mux22~1_combout\ & (((\ShiftUnit0|Mux86~2_combout\ & !\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux105~1_combout\,
	datab => \Mux22~1_combout\,
	datac => \ShiftUnit0|Mux86~2_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X59_Y50_N12
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\LogicFN[0]~input_o\ & ((\A[41]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[41]~input_o\))) # (!\A[41]~input_o\ & ((\B[41]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[41]~input_o\ & ((\A[41]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[41]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[41]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X59_Y50_N4
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux22~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X58_Y48_N18
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\A[42]~input_o\ & ((\B[42]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[42]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[42]~input_o\ & (\B[42]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[42]~input_o\,
	datac => \B[42]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X58_Y47_N4
\Adder0|BLAN1|recurse:inner|G_out[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(20) = (\Adder0|BLAN1|G_in_half[20]~8_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4) & (\Adder0|P\(40) & \Adder0|P[41]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4),
	datab => \Adder0|P\(40),
	datac => \Adder0|BLAN1|G_in_half[20]~8_combout\,
	datad => \Adder0|P[41]~8_combout\,
	combout => \Adder0|BLAN1|recurse:inner|G_out\(20));

-- Location: LCCOMB_X58_Y47_N30
\Adder0|S[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(42) = \Adder0|P\(42) $ (((\Adder0|BLAN1|recurse:inner|G_out\(20)) # ((\Adder0|P[41]~8_combout\ & \Adder0|Carries~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[41]~8_combout\,
	datab => \Adder0|Carries~26_combout\,
	datac => \Adder0|BLAN1|recurse:inner|G_out\(20),
	datad => \Adder0|P\(42),
	combout => \Adder0|S\(42));

-- Location: LCCOMB_X59_Y46_N14
\Y_adder[42]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[42]~19_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|S\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Adder0|S\(42),
	combout => \Y_adder[42]~19_combout\);

-- Location: LCCOMB_X59_Y46_N16
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[42]~19_combout\)) # (!\Mux14~0_combout\))) # (!\Mux14~1_combout\ & (\Mux14~0_combout\ & ((\ShiftUnit0|raw_result[31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \Y_adder[42]~19_combout\,
	datad => \ShiftUnit0|raw_result[31]~2_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X59_Y43_N20
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux14~0_combout\ & (((\Mux21~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux21~1_combout\ & ((\ShiftUnit0|Mux106~1_combout\))) # (!\Mux21~1_combout\ & (\ShiftUnit0|Mux85~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux85~2_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux21~1_combout\,
	datad => \ShiftUnit0|Mux106~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X58_Y48_N12
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux21~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux21~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X58_Y48_N14
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\A[43]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[43]~input_o\))) # (!\LogicFN[0]~input_o\ & (\B[43]~input_o\)))) # (!\A[43]~input_o\ & (\B[43]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[43]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X58_Y48_N8
\Adder0|BLAN1|G_out[42]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[42]~21_combout\ = (\A[42]~input_o\ & ((\Adder0|BLAN1|recurse:inner|G_out\(20)) # (\AddNSub~input_o\ $ (\B[42]~input_o\)))) # (!\A[42]~input_o\ & (\Adder0|BLAN1|recurse:inner|G_out\(20) & (\AddNSub~input_o\ $ (\B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[42]~input_o\,
	datac => \B[42]~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|G_out\(20),
	combout => \Adder0|BLAN1|G_out[42]~21_combout\);

-- Location: LCCOMB_X58_Y47_N24
\Adder0|Carries[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(43) = (\Adder0|BLAN1|G_out[42]~21_combout\) # ((\Adder0|P[41]~8_combout\ & (\Adder0|P\(42) & \Adder0|Carries~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[41]~8_combout\,
	datab => \Adder0|P\(42),
	datac => \Adder0|BLAN1|G_out[42]~21_combout\,
	datad => \Adder0|Carries~26_combout\,
	combout => \Adder0|Carries\(43));

-- Location: LCCOMB_X57_Y47_N12
\Y_adder[43]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[43]~20_combout\ = (\ExtWord~input_o\ & (((\Adder0|S\(31))))) # (!\ExtWord~input_o\ & (\Adder0|Carries\(43) $ ((\Adder0|P[43]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries\(43),
	datab => \Adder0|P[43]~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder0|S\(31),
	combout => \Y_adder[43]~20_combout\);

-- Location: LCCOMB_X57_Y47_N30
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[43]~20_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|raw_result[31]~2_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[43]~20_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X58_Y48_N10
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux20~1_combout\ & ((\ShiftUnit0|Mux107~1_combout\) # ((\Mux14~0_combout\)))) # (!\Mux20~1_combout\ & (((\ShiftUnit0|Mux84~2_combout\ & !\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux107~1_combout\,
	datab => \ShiftUnit0|Mux84~2_combout\,
	datac => \Mux20~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X58_Y48_N4
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux20~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux20~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux20~0_combout\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X58_Y47_N26
\Adder0|Carries[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(44) = ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\ & ((\Adder0|Carries~25_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4))))) # 
-- (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~25_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]~2_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4),
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\,
	combout => \Adder0|Carries\(44));

-- Location: LCCOMB_X61_Y47_N8
\Y_adder[44]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[44]~21_combout\ = (\ExtWord~input_o\ & (((\Adder0|S\(31))))) # (!\ExtWord~input_o\ & (\Adder0|Carries\(44) $ (((\Adder0|P\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries\(44),
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Adder0|P\(44),
	combout => \Y_adder[44]~21_combout\);

-- Location: LCCOMB_X61_Y47_N18
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & (\Y_adder[44]~21_combout\)) # (!\Mux14~1_combout\ & ((\ShiftUnit0|raw_result[31]~2_combout\))))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Y_adder[44]~21_combout\,
	datac => \ShiftUnit0|raw_result[31]~2_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X59_Y44_N28
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux19~1_combout\ & (((\ShiftUnit0|Mux108~1_combout\) # (\Mux14~0_combout\)))) # (!\Mux19~1_combout\ & (\ShiftUnit0|Mux83~2_combout\ & ((!\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux83~2_combout\,
	datab => \ShiftUnit0|Mux108~1_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X62_Y47_N16
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\A[44]~input_o\ & ((\B[44]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[44]~input_o\ & (\LogicFN[0]~input_o\)))) # (!\A[44]~input_o\ & (\B[44]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[44]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X65_Y47_N0
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux19~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux19~2_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X58_Y47_N20
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(10) = ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4) & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\)) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[10]~2_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(4),
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(10));

-- Location: LCCOMB_X62_Y47_N10
\Adder0|BLAN1|G_out[44]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[44]~22_combout\ = (\A[44]~input_o\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(10)) # (\B[44]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[44]~input_o\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(10) & (\B[44]~input_o\ $ 
-- (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(10),
	datac => \B[44]~input_o\,
	datad => \AddNSub~input_o\,
	combout => \Adder0|BLAN1|G_out[44]~22_combout\);

-- Location: LCCOMB_X59_Y47_N16
\Adder0|Carries[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(45) = (\Adder0|BLAN1|G_out[44]~22_combout\) # ((\Adder0|Carries~25_combout\ & (\Adder0|P\(44) & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~25_combout\,
	datab => \Adder0|BLAN1|G_out[44]~22_combout\,
	datac => \Adder0|P\(44),
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\,
	combout => \Adder0|Carries\(45));

-- Location: LCCOMB_X59_Y50_N22
\Y_adder[45]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[45]~22_combout\ = (\ExtWord~input_o\ & (((\Adder0|S\(31))))) # (!\ExtWord~input_o\ & (\Adder0|Carries\(45) $ (((\Adder0|P[45]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries\(45),
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Adder0|P[45]~6_combout\,
	combout => \Y_adder[45]~22_combout\);

-- Location: LCCOMB_X56_Y46_N16
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[45]~22_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Y_adder[45]~22_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X58_Y44_N10
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux18~1_combout\ & ((\ShiftUnit0|Mux109~2_combout\) # ((\Mux14~0_combout\)))) # (!\Mux18~1_combout\ & (((\ShiftUnit0|Mux82~2_combout\ & !\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datab => \ShiftUnit0|Mux109~2_combout\,
	datac => \ShiftUnit0|Mux82~2_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X57_Y45_N10
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\B[45]~input_o\ & ((\LogicFN[1]~input_o\ & ((\A[45]~input_o\) # (\LogicFN[0]~input_o\))) # (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[45]~input_o\))))) # (!\B[45]~input_o\ & (((\A[45]~input_o\ & \LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[45]~input_o\,
	datac => \A[45]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X57_Y45_N12
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux18~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux18~2_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X59_Y47_N6
\Adder0|Carries~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~27_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\ & (\Adder0|Carries~25_combout\ & (\Adder0|P\(44) & \Adder0|P[45]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\,
	datab => \Adder0|Carries~25_combout\,
	datac => \Adder0|P\(44),
	datad => \Adder0|P[45]~6_combout\,
	combout => \Adder0|Carries~27_combout\);

-- Location: LCCOMB_X59_Y47_N28
\Adder0|BLAN1|recurse:inner|G_out[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(22) = (\Adder0|BLAN1|G_in_half[22]~7_combout\) # ((\Adder0|P[45]~6_combout\ & (\Adder0|P\(44) & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[45]~6_combout\,
	datab => \Adder0|BLAN1|G_in_half[22]~7_combout\,
	datac => \Adder0|P\(44),
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(10),
	combout => \Adder0|BLAN1|recurse:inner|G_out\(22));

-- Location: LCCOMB_X59_Y47_N8
\Y_adder[46]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[46]~23_combout\ = (!\ExtWord~input_o\ & (\Adder0|P\(46) $ (((\Adder0|Carries~27_combout\) # (\Adder0|BLAN1|recurse:inner|G_out\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~27_combout\,
	datab => \Adder0|P\(46),
	datac => \ExtWord~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|G_out\(22),
	combout => \Y_adder[46]~23_combout\);

-- Location: LCCOMB_X59_Y46_N10
\Y_adder[46]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[46]~24_combout\ = (\Y_adder[46]~23_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \ExtWord~input_o\,
	datac => \Y_adder[46]~23_combout\,
	combout => \Y_adder[46]~24_combout\);

-- Location: LCCOMB_X56_Y46_N18
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Y_adder[46]~24_combout\))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~1_combout\,
	datad => \Y_adder[46]~24_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X57_Y43_N4
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux17~1_combout\ & ((\Mux14~0_combout\) # ((\ShiftUnit0|Mux110~1_combout\)))) # (!\Mux17~1_combout\ & (!\Mux14~0_combout\ & (\ShiftUnit0|Mux81~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \ShiftUnit0|Mux81~2_combout\,
	datad => \ShiftUnit0|Mux110~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X59_Y47_N18
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\A[46]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[46]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[46]~input_o\))))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[46]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[46]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X59_Y47_N26
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux17~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux17~2_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X59_Y47_N4
\Adder0|BLAN1|G_out[46]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[46]~23_combout\ = (\A[46]~input_o\ & ((\Adder0|BLAN1|recurse:inner|G_out\(22)) # (\AddNSub~input_o\ $ (\B[46]~input_o\)))) # (!\A[46]~input_o\ & (\Adder0|BLAN1|recurse:inner|G_out\(22) & (\AddNSub~input_o\ $ (\B[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \A[46]~input_o\,
	datac => \B[46]~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|G_out\(22),
	combout => \Adder0|BLAN1|G_out[46]~23_combout\);

-- Location: LCCOMB_X59_Y47_N30
\Adder0|S[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(47) = \Adder0|P[47]~5_combout\ $ (((\Adder0|BLAN1|G_out[46]~23_combout\) # ((\Adder0|Carries~27_combout\ & \Adder0|P\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~27_combout\,
	datab => \Adder0|P[47]~5_combout\,
	datac => \Adder0|BLAN1|G_out[46]~23_combout\,
	datad => \Adder0|P\(46),
	combout => \Adder0|S\(47));

-- Location: LCCOMB_X61_Y47_N12
\Y_adder[47]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[47]~25_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|S\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Adder0|S\(47),
	combout => \Y_adder[47]~25_combout\);

-- Location: LCCOMB_X61_Y47_N6
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[47]~25_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[47]~25_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X61_Y47_N0
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux16~1_combout\ & ((\ShiftUnit0|Mux111~1_combout\) # ((\Mux14~0_combout\)))) # (!\Mux16~1_combout\ & (((!\Mux14~0_combout\ & \ShiftUnit0|Mux80~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \ShiftUnit0|Mux111~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \ShiftUnit0|Mux80~2_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X57_Y51_N16
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\A[47]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[47]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[47]~input_o\))))) # (!\A[47]~input_o\ & (\B[47]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[47]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X57_Y51_N2
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux16~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X58_Y47_N22
\Adder0|Carries~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~33_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[4]~5_combout\ & (\Adder0|Carries~10_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\ & 
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[4]~5_combout\,
	datab => \Adder0|Carries~10_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~3_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[5]~4_combout\,
	combout => \Adder0|Carries~33_combout\);

-- Location: LCCOMB_X57_Y51_N30
\Y_adder[48]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[48]~26_combout\ = (!\ExtWord~input_o\ & (\Adder0|P\(48) $ (((\Adder0|Carries~33_combout\) # (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(48),
	datab => \Adder0|Carries~33_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2),
	combout => \Y_adder[48]~26_combout\);

-- Location: LCCOMB_X57_Y47_N8
\Y_adder[48]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[48]~27_combout\ = (\Y_adder[48]~26_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[48]~26_combout\,
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	combout => \Y_adder[48]~27_combout\);

-- Location: LCCOMB_X56_Y46_N20
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Y_adder[48]~27_combout\))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~1_combout\,
	datad => \Y_adder[48]~27_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X58_Y43_N16
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux14~0_combout\ & (((\Mux15~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux15~1_combout\ & (\ShiftUnit0|Mux112~1_combout\)) # (!\Mux15~1_combout\ & ((\ShiftUnit0|Mux79~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux112~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux15~1_combout\,
	datad => \ShiftUnit0|Mux79~0_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X57_Y51_N20
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\A[48]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[48]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[48]~input_o\))))) # (!\A[48]~input_o\ & (\B[48]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X57_Y51_N8
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux15~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux15~2_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X57_Y51_N28
\Adder0|BLAN1|G_out[48]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[48]~24_combout\ = (\A[48]~input_o\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2)) # (\B[48]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[48]~input_o\ & 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2) & (\B[48]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[48]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2),
	combout => \Adder0|BLAN1|G_out[48]~24_combout\);

-- Location: LCCOMB_X57_Y51_N6
\Adder0|P[49]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|P[49]~31_combout\ = \AddNSub~input_o\ $ (\A[49]~input_o\ $ (\B[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddNSub~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \Adder0|P[49]~31_combout\);

-- Location: LCCOMB_X57_Y51_N0
\Adder0|S[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(49) = \Adder0|P[49]~31_combout\ $ (((\Adder0|BLAN1|G_out[48]~24_combout\) # ((\Adder0|P\(48) & \Adder0|Carries~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(48),
	datab => \Adder0|BLAN1|G_out[48]~24_combout\,
	datac => \Adder0|P[49]~31_combout\,
	datad => \Adder0|Carries~33_combout\,
	combout => \Adder0|S\(49));

-- Location: LCCOMB_X57_Y51_N26
\Y_adder[49]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[49]~28_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|S\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Adder0|S\(49),
	combout => \Y_adder[49]~28_combout\);

-- Location: LCCOMB_X56_Y46_N14
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Y_adder[49]~28_combout\))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~1_combout\,
	datad => \Y_adder[49]~28_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X56_Y46_N8
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux14~3_combout\ & ((\ShiftUnit0|Mux113~1_combout\) # ((\Mux14~0_combout\)))) # (!\Mux14~3_combout\ & (((\ShiftUnit0|Mux78~0_combout\ & !\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux113~1_combout\,
	datab => \Mux14~3_combout\,
	datac => \ShiftUnit0|Mux78~0_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X57_Y51_N18
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\LogicFN[0]~input_o\ & ((\A[49]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[49]~input_o\))) # (!\A[49]~input_o\ & ((\B[49]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[49]~input_o\ & ((\A[49]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X57_Y51_N4
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux14~2_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X61_Y48_N16
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\LogicFN[0]~input_o\ & ((\B[50]~input_o\ & ((\LogicFN[1]~input_o\) # (!\A[50]~input_o\))) # (!\B[50]~input_o\ & ((\A[50]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[50]~input_o\ & ((\A[50]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X61_Y48_N10
\Adder0|BLAN1|recurse:inner|G_out[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(24) = (\Adder0|BLAN1|G_in_half[24]~4_combout\) # ((\Adder0|BLAN1|recurse:inner|G_out~4_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out~4_combout\,
	datab => \Adder0|BLAN1|G_in_half[24]~4_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2),
	combout => \Adder0|BLAN1|recurse:inner|G_out\(24));

-- Location: LCCOMB_X61_Y48_N12
\Adder0|S[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(50) = \Adder0|P\(50) $ (((\Adder0|BLAN1|recurse:inner|G_out\(24)) # ((\Adder0|BLAN1|recurse:inner|G_out~4_combout\ & \Adder0|Carries~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out~4_combout\,
	datab => \Adder0|P\(50),
	datac => \Adder0|Carries~33_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out\(24),
	combout => \Adder0|S\(50));

-- Location: LCCOMB_X61_Y47_N10
\Y_adder[50]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[50]~29_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|S\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder0|S\(31),
	datac => \Adder0|S\(50),
	combout => \Y_adder[50]~29_combout\);

-- Location: LCCOMB_X61_Y47_N20
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[50]~29_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[50]~29_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X65_Y47_N26
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux14~0_combout\ & (((\Mux13~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux13~1_combout\ & (\ShiftUnit0|Mux114~1_combout\)) # (!\Mux13~1_combout\ & ((\ShiftUnit0|Mux77~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux114~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \ShiftUnit0|Mux77~0_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X65_Y47_N28
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux13~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux13~0_combout\,
	datac => \Mux13~2_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X61_Y48_N0
\Adder0|BLAN1|G_out[50]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[50]~25_combout\ = (\Adder0|BLAN1|recurse:inner|G_out\(24) & ((\A[50]~input_o\) # (\AddNSub~input_o\ $ (\B[50]~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|G_out\(24) & (\A[50]~input_o\ & (\AddNSub~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out\(24),
	datab => \AddNSub~input_o\,
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \Adder0|BLAN1|G_out[50]~25_combout\);

-- Location: LCCOMB_X61_Y48_N2
\Adder0|Carries[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(51) = (\Adder0|BLAN1|G_out[50]~25_combout\) # ((\Adder0|BLAN1|recurse:inner|G_out~4_combout\ & (\Adder0|Carries~33_combout\ & \Adder0|P\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out~4_combout\,
	datab => \Adder0|BLAN1|G_out[50]~25_combout\,
	datac => \Adder0|Carries~33_combout\,
	datad => \Adder0|P\(50),
	combout => \Adder0|Carries\(51));

-- Location: LCCOMB_X60_Y43_N12
\Y_adder[51]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[51]~30_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|Carries\(51) $ (\Adder0|P[51]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \Adder0|Carries\(51),
	datac => \ExtWord~input_o\,
	datad => \Adder0|P[51]~3_combout\,
	combout => \Y_adder[51]~30_combout\);

-- Location: LCCOMB_X60_Y43_N30
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[51]~30_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|raw_result[31]~2_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[51]~30_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X60_Y43_N16
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux14~0_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux12~1_combout\ & ((\ShiftUnit0|Mux115~1_combout\))) # (!\Mux12~1_combout\ & (\ShiftUnit0|Mux76~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux76~0_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux12~1_combout\,
	datad => \ShiftUnit0|Mux115~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X61_Y48_N22
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\LogicFN[0]~input_o\ & ((\A[51]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[51]~input_o\))) # (!\A[51]~input_o\ & ((\B[51]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[51]~input_o\ & ((\A[51]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X65_Y47_N30
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux12~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux12~2_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X61_Y48_N4
\Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\ = (\Adder0|BLAN1|recurse:inner|G_out~4_combout\ & (\Adder0|P[51]~3_combout\ & \Adder0|P\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|G_out~4_combout\,
	datab => \Adder0|P[51]~3_combout\,
	datad => \Adder0|P\(50),
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\);

-- Location: LCCOMB_X59_Y48_N30
\Adder0|Carries[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(52) = ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2)) # (\Adder0|Carries~33_combout\)))) # 
-- (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2),
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]~1_combout\,
	datad => \Adder0|Carries~33_combout\,
	combout => \Adder0|Carries\(52));

-- Location: LCCOMB_X59_Y48_N16
\Y_adder[52]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[52]~31_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|Carries\(52) $ (\Adder0|P\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \ExtWord~input_o\,
	datac => \Adder0|Carries\(52),
	datad => \Adder0|P\(52),
	combout => \Y_adder[52]~31_combout\);

-- Location: LCCOMB_X61_Y47_N22
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & (\Y_adder[52]~31_combout\)) # (!\Mux14~1_combout\ & ((\ShiftUnit0|raw_result[31]~2_combout\))))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Y_adder[52]~31_combout\,
	datac => \ShiftUnit0|raw_result[31]~2_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X60_Y43_N18
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux11~1_combout\ & (((\Mux14~0_combout\) # (\ShiftUnit0|Mux116~1_combout\)))) # (!\Mux11~1_combout\ & (\ShiftUnit0|Mux75~0_combout\ & (!\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux75~0_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \ShiftUnit0|Mux116~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X59_Y48_N4
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\A[52]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[52]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[52]~input_o\))))) # (!\A[52]~input_o\ & (\B[52]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[52]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X58_Y48_N6
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux11~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux11~2_combout\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X59_Y48_N18
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\A[53]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[53]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[53]~input_o\))))) # (!\A[53]~input_o\ & (\B[53]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[53]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[53]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X59_Y48_N28
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(12) = ((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2) & \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\)) # 
-- (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2),
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[12]~1_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(12));

-- Location: LCCOMB_X59_Y48_N6
\Adder0|BLAN1|G_out[52]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[52]~26_combout\ = (\A[52]~input_o\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(12)) # (\AddNSub~input_o\ $ (\B[52]~input_o\)))) # (!\A[52]~input_o\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(12) & (\AddNSub~input_o\ $ 
-- (\B[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(12),
	combout => \Adder0|BLAN1|G_out[52]~26_combout\);

-- Location: LCCOMB_X59_Y48_N0
\Adder0|Carries[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(53) = (\Adder0|BLAN1|G_out[52]~26_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\ & (\Adder0|P\(52) & \Adder0|Carries~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|G_out[52]~26_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\,
	datac => \Adder0|P\(52),
	datad => \Adder0|Carries~33_combout\,
	combout => \Adder0|Carries\(53));

-- Location: LCCOMB_X59_Y48_N10
\Y_adder[53]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[53]~32_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|P[53]~2_combout\ $ (\Adder0|Carries\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \ExtWord~input_o\,
	datac => \Adder0|P[53]~2_combout\,
	datad => \Adder0|Carries\(53),
	combout => \Y_adder[53]~32_combout\);

-- Location: LCCOMB_X60_Y43_N4
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux14~1_combout\ & ((\Y_adder[53]~32_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (((\Mux14~0_combout\ & \ShiftUnit0|raw_result[31]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[53]~32_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \ShiftUnit0|raw_result[31]~2_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X59_Y43_N22
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux10~1_combout\ & ((\Mux14~0_combout\) # ((\ShiftUnit0|Mux117~3_combout\)))) # (!\Mux10~1_combout\ & (!\Mux14~0_combout\ & ((\ShiftUnit0|Mux74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \ShiftUnit0|Mux117~3_combout\,
	datad => \ShiftUnit0|Mux74~0_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X59_Y45_N12
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux10~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux10~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux10~2_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X60_Y48_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\LogicFN[0]~input_o\ & ((\A[54]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[54]~input_o\))) # (!\A[54]~input_o\ & (\B[54]~input_o\)))) # (!\LogicFN[0]~input_o\ & (\B[54]~input_o\ & ((\A[54]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[54]~input_o\,
	datac => \B[54]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X59_Y48_N22
\Adder0|Carries~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~28_combout\ = (\Adder0|Carries~33_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\ & (\Adder0|P[53]~2_combout\ & \Adder0|P\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~33_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\,
	datac => \Adder0|P[53]~2_combout\,
	datad => \Adder0|P\(52),
	combout => \Adder0|Carries~28_combout\);

-- Location: LCCOMB_X59_Y48_N20
\Adder0|BLAN1|recurse:inner|G_out[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(26) = (\Adder0|BLAN1|G_in_half[26]~3_combout\) # ((\Adder0|P\(52) & (\Adder0|P[53]~2_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(52),
	datab => \Adder0|BLAN1|G_in_half[26]~3_combout\,
	datac => \Adder0|P[53]~2_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(12),
	combout => \Adder0|BLAN1|recurse:inner|G_out\(26));

-- Location: LCCOMB_X60_Y48_N22
\Y_adder[54]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[54]~33_combout\ = (!\ExtWord~input_o\ & (\Adder0|P\(54) $ (((\Adder0|Carries~28_combout\) # (\Adder0|BLAN1|recurse:inner|G_out\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~28_combout\,
	datab => \Adder0|BLAN1|recurse:inner|G_out\(26),
	datac => \ExtWord~input_o\,
	datad => \Adder0|P\(54),
	combout => \Y_adder[54]~33_combout\);

-- Location: LCCOMB_X59_Y46_N12
\Y_adder[54]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[54]~34_combout\ = (\Y_adder[54]~33_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Y_adder[54]~33_combout\,
	combout => \Y_adder[54]~34_combout\);

-- Location: LCCOMB_X59_Y46_N6
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[54]~34_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[54]~34_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X65_Y45_N22
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux14~0_combout\ & (((\Mux9~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux9~1_combout\ & ((\ShiftUnit0|Mux118~1_combout\))) # (!\Mux9~1_combout\ & (\ShiftUnit0|Mux73~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftUnit0|Mux73~0_combout\,
	datac => \Mux9~1_combout\,
	datad => \ShiftUnit0|Mux118~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X60_Y48_N0
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux9~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X60_Y48_N26
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\A[55]~input_o\ & ((\B[55]~input_o\ & ((\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[55]~input_o\ & ((\LogicFN[0]~input_o\))))) # (!\A[55]~input_o\ & (\B[55]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[55]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X60_Y48_N4
\Adder0|BLAN1|G_out[54]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[54]~27_combout\ = (\Adder0|BLAN1|recurse:inner|G_out\(26) & ((\A[54]~input_o\) # (\AddNSub~input_o\ $ (\B[54]~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|G_out\(26) & (\A[54]~input_o\ & (\AddNSub~input_o\ $ (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|BLAN1|recurse:inner|G_out\(26),
	datac => \B[54]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Adder0|BLAN1|G_out[54]~27_combout\);

-- Location: LCCOMB_X60_Y48_N30
\Adder0|S[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(55) = \Adder0|P[55]~4_combout\ $ (((\Adder0|BLAN1|G_out[54]~27_combout\) # ((\Adder0|Carries~28_combout\ & \Adder0|P\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[55]~4_combout\,
	datab => \Adder0|Carries~28_combout\,
	datac => \Adder0|BLAN1|G_out[54]~27_combout\,
	datad => \Adder0|P\(54),
	combout => \Adder0|S\(55));

-- Location: LCCOMB_X61_Y47_N16
\Y_adder[55]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[55]~35_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|S\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Adder0|S\(55),
	combout => \Y_adder[55]~35_combout\);

-- Location: LCCOMB_X61_Y47_N2
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[55]~35_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[55]~35_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X60_Y48_N24
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~1_combout\ & (((\Mux14~0_combout\) # (\ShiftUnit0|Mux119~1_combout\)))) # (!\Mux8~1_combout\ & (\ShiftUnit0|Mux72~2_combout\ & (!\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \ShiftUnit0|Mux72~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \ShiftUnit0|Mux119~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X60_Y48_N10
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux8~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X63_Y45_N2
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\LogicFN[0]~input_o\ & ((\A[56]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[56]~input_o\))) # (!\A[56]~input_o\ & ((\B[56]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[56]~input_o\ & ((\A[56]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X61_Y48_N14
\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6) = (\Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~1_combout\) # ((\Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~12_combout\ & 
-- (\Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|BLAN1|recurse:inner|recurse:inner|P_in_half[6]~12_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|P_out[12]~2_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|recurse:inner|G_out\(2),
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_in_half[6]~1_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6));

-- Location: LCCOMB_X63_Y47_N8
\Y_adder[56]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[56]~36_combout\ = (!\ExtWord~input_o\ & (\Adder0|P\(56) $ (((\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6)) # (\Adder0|Carries~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6),
	datac => \Adder0|P\(56),
	datad => \Adder0|Carries~11_combout\,
	combout => \Y_adder[56]~36_combout\);

-- Location: LCCOMB_X61_Y47_N4
\Y_adder[56]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[56]~37_combout\ = (\Y_adder[56]~36_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Y_adder[56]~36_combout\,
	combout => \Y_adder[56]~37_combout\);

-- Location: LCCOMB_X61_Y47_N30
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & (\Y_adder[56]~37_combout\)) # (!\Mux14~1_combout\ & ((\ShiftUnit0|raw_result[31]~2_combout\))))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Y_adder[56]~37_combout\,
	datac => \ShiftUnit0|raw_result[31]~2_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X57_Y46_N30
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux14~0_combout\ & (((\Mux7~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux7~1_combout\ & (\ShiftUnit0|Mux120~4_combout\)) # (!\Mux7~1_combout\ & ((\ShiftUnit0|Mux71~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux120~4_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \ShiftUnit0|Mux71~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X63_Y42_N8
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux7~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux7~0_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X63_Y45_N4
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\LogicFN[0]~input_o\ & ((\A[57]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[57]~input_o\))) # (!\A[57]~input_o\ & ((\B[57]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[57]~input_o\ & ((\A[57]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X63_Y45_N22
\Adder0|BLAN1|G_out[56]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[56]~28_combout\ = (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6) & ((\A[56]~input_o\) # (\AddNSub~input_o\ $ (\B[56]~input_o\)))) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6) & 
-- (\A[56]~input_o\ & (\AddNSub~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddNSub~input_o\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6),
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \Adder0|BLAN1|G_out[56]~28_combout\);

-- Location: LCCOMB_X63_Y47_N2
\Adder0|S[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(57) = \Adder0|P[57]~0_combout\ $ (((\Adder0|BLAN1|G_out[56]~28_combout\) # ((\Adder0|P\(56) & \Adder0|Carries~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[57]~0_combout\,
	datab => \Adder0|BLAN1|G_out[56]~28_combout\,
	datac => \Adder0|P\(56),
	datad => \Adder0|Carries~11_combout\,
	combout => \Adder0|S\(57));

-- Location: LCCOMB_X60_Y43_N6
\Y_adder[57]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[57]~38_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|S\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \Adder0|S\(57),
	datac => \ExtWord~input_o\,
	combout => \Y_adder[57]~38_combout\);

-- Location: LCCOMB_X60_Y43_N24
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[57]~38_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|raw_result[31]~2_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[57]~38_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X59_Y43_N16
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\ & (((\ShiftUnit0|Mux121~4_combout\) # (\Mux14~0_combout\)))) # (!\Mux6~1_combout\ & (\ShiftUnit0|Mux70~0_combout\ & ((!\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux70~0_combout\,
	datab => \ShiftUnit0|Mux121~4_combout\,
	datac => \Mux6~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X57_Y45_N14
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux6~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \Mux6~2_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X62_Y47_N4
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\B[58]~input_o\ & ((\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\) # (\A[58]~input_o\))) # (!\LogicFN[1]~input_o\ & ((!\A[58]~input_o\) # (!\LogicFN[0]~input_o\))))) # (!\B[58]~input_o\ & (((\LogicFN[0]~input_o\ & \A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[58]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X63_Y47_N22
\Adder0|Carries~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries~29_combout\ = (\Adder0|P[57]~0_combout\ & (\Adder0|Carries~11_combout\ & \Adder0|P\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[57]~0_combout\,
	datab => \Adder0|Carries~11_combout\,
	datac => \Adder0|P\(56),
	combout => \Adder0|Carries~29_combout\);

-- Location: LCCOMB_X63_Y47_N12
\Adder0|BLAN1|recurse:inner|G_out[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|G_out\(28) = (\Adder0|BLAN1|G_in_half[28]~30_combout\) # ((\Adder0|P[57]~0_combout\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6) & \Adder0|P\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P[57]~0_combout\,
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6),
	datac => \Adder0|P\(56),
	datad => \Adder0|BLAN1|G_in_half[28]~30_combout\,
	combout => \Adder0|BLAN1|recurse:inner|G_out\(28));

-- Location: LCCOMB_X63_Y47_N0
\Y_adder[58]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[58]~39_combout\ = (!\ExtWord~input_o\ & (\Adder0|P\(58) $ (((\Adder0|Carries~29_combout\) # (\Adder0|BLAN1|recurse:inner|G_out\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(58),
	datab => \ExtWord~input_o\,
	datac => \Adder0|Carries~29_combout\,
	datad => \Adder0|BLAN1|recurse:inner|G_out\(28),
	combout => \Y_adder[58]~39_combout\);

-- Location: LCCOMB_X59_Y46_N0
\Y_adder[58]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[58]~40_combout\ = (\Y_adder[58]~39_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Y_adder[58]~39_combout\,
	combout => \Y_adder[58]~40_combout\);

-- Location: LCCOMB_X59_Y46_N26
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[58]~40_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[58]~40_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X58_Y45_N2
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux14~0_combout\ & (((\Mux5~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux5~1_combout\ & (\ShiftUnit0|Mux122~4_combout\)) # (!\Mux5~1_combout\ & ((\ShiftUnit0|Mux69~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux122~4_combout\,
	datab => \Mux14~0_combout\,
	datac => \ShiftUnit0|Mux69~0_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X59_Y50_N24
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux5~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X62_Y47_N30
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\A[59]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[59]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[59]~input_o\))))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[59]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[59]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X63_Y47_N10
\Adder0|BLAN1|G_out[58]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[58]~29_combout\ = (\A[58]~input_o\ & ((\Adder0|BLAN1|recurse:inner|G_out\(28)) # (\B[58]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[58]~input_o\ & (\Adder0|BLAN1|recurse:inner|G_out\(28) & (\B[58]~input_o\ $ (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \AddNSub~input_o\,
	datac => \A[58]~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|G_out\(28),
	combout => \Adder0|BLAN1|G_out[58]~29_combout\);

-- Location: LCCOMB_X63_Y47_N4
\Adder0|S[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(59) = \Adder0|P[59]~1_combout\ $ (((\Adder0|BLAN1|G_out[58]~29_combout\) # ((\Adder0|P\(58) & \Adder0|Carries~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|P\(58),
	datab => \Adder0|P[59]~1_combout\,
	datac => \Adder0|Carries~29_combout\,
	datad => \Adder0|BLAN1|G_out[58]~29_combout\,
	combout => \Adder0|S\(59));

-- Location: LCCOMB_X57_Y47_N26
\Y_adder[59]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[59]~41_combout\ = (\ExtWord~input_o\ & (\Adder0|S\(31))) # (!\ExtWord~input_o\ & ((\Adder0|S\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Adder0|S\(59),
	combout => \Y_adder[59]~41_combout\);

-- Location: LCCOMB_X57_Y47_N4
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Y_adder[59]~41_combout\))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|raw_result[31]~2_combout\,
	datab => \Mux14~0_combout\,
	datac => \Y_adder[59]~41_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X56_Y45_N6
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\ & ((\ShiftUnit0|Mux123~5_combout\) # ((\Mux14~0_combout\)))) # (!\Mux4~1_combout\ & (((\ShiftUnit0|Mux68~0_combout\ & !\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux123~5_combout\,
	datab => \ShiftUnit0|Mux68~0_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X56_Y45_N24
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux4~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X63_Y47_N24
\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(14) = ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6))) # (!\Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\,
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|recurse:inner|G_out\(6),
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out[14]~5_combout\,
	combout => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(14));

-- Location: LCCOMB_X63_Y47_N26
\Adder0|S[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|S\(60) = \Adder0|P\(60) $ (((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(14)) # ((\Adder0|Carries~11_combout\ & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~11_combout\,
	datab => \Adder0|P\(60),
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(14),
	combout => \Adder0|S\(60));

-- Location: LCCOMB_X59_Y46_N20
\Y_adder[60]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[60]~42_combout\ = (\ExtWord~input_o\ & ((\Adder0|S\(31)))) # (!\ExtWord~input_o\ & (\Adder0|S\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Adder0|S\(60),
	datad => \Adder0|S\(31),
	combout => \Y_adder[60]~42_combout\);

-- Location: LCCOMB_X59_Y46_N22
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[60]~42_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[60]~42_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X60_Y42_N14
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux14~0_combout\ & (((\Mux3~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux3~1_combout\ & (\ShiftUnit0|Mux124~3_combout\)) # (!\Mux3~1_combout\ & ((\ShiftUnit0|Mux67~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux124~3_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \ShiftUnit0|Mux67~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X63_Y47_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\A[60]~input_o\ & ((\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[60]~input_o\))) # (!\LogicFN[0]~input_o\ & ((\B[60]~input_o\))))) # (!\A[60]~input_o\ & (\B[60]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[60]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[60]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X59_Y50_N2
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux3~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux3~2_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X56_Y42_N30
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\LogicFN[0]~input_o\ & ((\A[61]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[61]~input_o\))) # (!\A[61]~input_o\ & ((\B[61]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[61]~input_o\ & ((\A[61]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[61]~input_o\,
	datad => \B[61]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X63_Y47_N28
\Adder0|BLAN1|G_out[60]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|BLAN1|G_out[60]~30_combout\ = (\A[60]~input_o\ & ((\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(14)) # (\B[60]~input_o\ $ (\AddNSub~input_o\)))) # (!\A[60]~input_o\ & (\Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(14) & (\B[60]~input_o\ $ 
-- (\AddNSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \A[60]~input_o\,
	datac => \AddNSub~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out\(14),
	combout => \Adder0|BLAN1|G_out[60]~30_combout\);

-- Location: LCCOMB_X63_Y47_N14
\Adder0|Carries[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder0|Carries\(61) = (\Adder0|BLAN1|G_out[60]~30_combout\) # ((\Adder0|Carries~11_combout\ & (\Adder0|P\(60) & \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~11_combout\,
	datab => \Adder0|P\(60),
	datac => \Adder0|BLAN1|recurse:inner|recurse:inner|G_out~0_combout\,
	datad => \Adder0|BLAN1|G_out[60]~30_combout\,
	combout => \Adder0|Carries\(61));

-- Location: LCCOMB_X59_Y45_N22
\Y_adder[61]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[61]~43_combout\ = (\ExtWord~input_o\ & (((\Adder0|S\(31))))) # (!\ExtWord~input_o\ & (\Adder0|Carries\(61) $ (((\Adder0|P[61]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder0|Carries\(61),
	datac => \Adder0|S\(31),
	datad => \Adder0|P[61]~26_combout\,
	combout => \Y_adder[61]~43_combout\);

-- Location: LCCOMB_X56_Y42_N24
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Y_adder[61]~43_combout\))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|raw_result[31]~2_combout\,
	datab => \Y_adder[61]~43_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X56_Y42_N2
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux14~0_combout\ & (((\Mux2~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux2~1_combout\ & ((\ShiftUnit0|Mux125~5_combout\))) # (!\Mux2~1_combout\ & (\ShiftUnit0|Mux66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux66~0_combout\,
	datab => \Mux14~0_combout\,
	datac => \ShiftUnit0|Mux125~5_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X56_Y42_N20
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux2~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X63_Y46_N4
\Y_adder[62]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[62]~44_combout\ = (!\ExtWord~input_o\ & (\Adder0|P\(62) $ (((\Adder0|Carries~12_combout\) # (\Adder0|BLAN1|recurse:inner|G_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|Carries~12_combout\,
	datab => \Adder0|P\(62),
	datac => \ExtWord~input_o\,
	datad => \Adder0|BLAN1|recurse:inner|G_out\(30),
	combout => \Y_adder[62]~44_combout\);

-- Location: LCCOMB_X59_Y46_N24
\Y_adder[62]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[62]~45_combout\ = (\Y_adder[62]~44_combout\) # ((\Adder0|S\(31) & \ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datac => \ExtWord~input_o\,
	datad => \Y_adder[62]~44_combout\,
	combout => \Y_adder[62]~45_combout\);

-- Location: LCCOMB_X56_Y46_N10
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Y_adder[62]~45_combout\))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~1_combout\,
	datad => \Y_adder[62]~45_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X65_Y42_N8
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & ((\Mux14~0_combout\) # ((\ShiftUnit0|Mux126~6_combout\)))) # (!\Mux1~1_combout\ & (!\Mux14~0_combout\ & ((\ShiftUnit0|Mux65~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \ShiftUnit0|Mux126~6_combout\,
	datad => \ShiftUnit0|Mux65~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X63_Y46_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\LogicFN[0]~input_o\ & ((\A[62]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[62]~input_o\))) # (!\A[62]~input_o\ & ((\B[62]~input_o\))))) # (!\LogicFN[0]~input_o\ & (\B[62]~input_o\ & ((\A[62]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[62]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[62]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X59_Y50_N28
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux1~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux1~2_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X63_Y46_N22
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\LogicFN[0]~input_o\ & ((\A[63]~input_o\ & ((\LogicFN[1]~input_o\) # (!\B[63]~input_o\))) # (!\A[63]~input_o\ & (\B[63]~input_o\)))) # (!\LogicFN[0]~input_o\ & (\B[63]~input_o\ & ((\A[63]~input_o\) # (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X63_Y42_N2
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux14~1_combout\ & (((\Y_adder[63]~2_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\ShiftUnit0|raw_result[31]~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \ShiftUnit0|raw_result[31]~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \Y_adder[63]~2_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X63_Y42_N12
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & (((\Mux14~0_combout\) # (\ShiftUnit0|Mux127~14_combout\)))) # (!\Mux0~1_combout\ & (\ShiftUnit0|Mux64~3_combout\ & (!\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftUnit0|Mux64~3_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \ShiftUnit0|Mux127~14_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X63_Y42_N6
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux0~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X60_Y43_N28
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Adder0|S\(12) & (!\Adder0|S\(21) & (!\Adder0|S\(10) & !\Adder0|S\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(12),
	datab => \Adder0|S\(21),
	datac => \Adder0|S\(10),
	datad => \Adder0|S\(11),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X62_Y45_N30
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Adder0|S\(5) & (!\Adder0|S\(9) & (!\Adder0|S\(6) & !\Adder0|S\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(5),
	datab => \Adder0|S\(9),
	datac => \Adder0|S\(6),
	datad => \Adder0|S\(8),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X59_Y44_N30
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\Adder0|S\(25) & (!\Adder0|S\(19) & (!\Adder0|S\(17) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(25),
	datab => \Adder0|S\(19),
	datac => \Adder0|S\(17),
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X58_Y43_N18
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\Adder0|S\(31) & (\Equal0~8_combout\ & (\Equal0~10_combout\ & !\Adder0|S\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \Equal0~8_combout\,
	datac => \Equal0~10_combout\,
	datad => \Adder0|S\(15),
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X65_Y42_N18
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Adder0|S\(1) & (!\Adder0|S\(3) & (!\Adder0|S\(13) & !\Y_arthmetic[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(1),
	datab => \Adder0|S\(3),
	datac => \Adder0|S\(13),
	datad => \Y_arthmetic[0]~1_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X57_Y44_N24
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Adder0|S\(4) & (!\Adder0|S\(7) & (!\Adder0|S\(2) & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(4),
	datab => \Adder0|S\(7),
	datac => \Adder0|S\(2),
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X57_Y44_N18
\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (\Equal0~11_combout\ & (\Equal0~7_combout\ & (!\Adder0|S\(16) & !\Adder0|S\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \Equal0~7_combout\,
	datac => \Adder0|S\(16),
	datad => \Adder0|S\(27),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X57_Y44_N30
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Adder0|S\(26) & (!\Adder0|S\(28) & (!\Adder0|S\(29) & !\Adder0|S\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(26),
	datab => \Adder0|S\(28),
	datac => \Adder0|S\(29),
	datad => \Adder0|S\(24),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X58_Y44_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\Adder0|S\(23) & (!\Adder0|S\(18) & (!\Adder0|S\(20) & !\Adder0|S\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(23),
	datab => \Adder0|S\(18),
	datac => \Adder0|S\(20),
	datad => \Adder0|S\(14),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X57_Y44_N28
\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~12_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~12_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X60_Y43_N2
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Y_adder[57]~38_combout\ & (!\Y_adder[53]~32_combout\ & !\Y_adder[51]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[57]~38_combout\,
	datac => \Y_adder[53]~32_combout\,
	datad => \Y_adder[51]~30_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X59_Y46_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Y_adder[46]~23_combout\ & (!\Y_adder[62]~44_combout\ & ((!\ExtWord~input_o\) # (!\Adder0|S\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(31),
	datab => \ExtWord~input_o\,
	datac => \Y_adder[46]~23_combout\,
	datad => \Y_adder[62]~44_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X59_Y46_N28
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Y_adder[63]~2_combout\ & (!\Y_adder[60]~42_combout\ & (!\Y_adder[42]~19_combout\ & !\Y_adder[38]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[63]~2_combout\,
	datab => \Y_adder[60]~42_combout\,
	datac => \Y_adder[42]~19_combout\,
	datad => \Y_adder[38]~12_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X59_Y46_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Y_adder[54]~34_combout\ & (\Equal0~0_combout\ & (!\Y_adder[58]~40_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[54]~34_combout\,
	datab => \Equal0~0_combout\,
	datac => \Y_adder[58]~40_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X56_Y45_N2
\Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (!\Y_adder[35]~7_combout\ & (!\Y_adder[37]~10_combout\ & !\Y_adder[33]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_adder[35]~7_combout\,
	datac => \Y_adder[37]~10_combout\,
	datad => \Y_adder[33]~5_combout\,
	combout => \Equal0~20_combout\);

-- Location: LCCOMB_X56_Y46_N4
\Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~21_combout\ = (\Equal0~20_combout\ & (!\Y_adder[49]~28_combout\ & (!\Y_adder[45]~22_combout\ & !\Y_adder[41]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~20_combout\,
	datab => \Y_adder[49]~28_combout\,
	datac => \Y_adder[45]~22_combout\,
	datad => \Y_adder[41]~18_combout\,
	combout => \Equal0~21_combout\);

-- Location: LCCOMB_X61_Y47_N24
\Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (!\Y_adder[50]~29_combout\ & (!\Y_adder[44]~21_combout\ & !\Y_adder[52]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[50]~29_combout\,
	datab => \Y_adder[44]~21_combout\,
	datac => \Y_adder[52]~31_combout\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X61_Y47_N26
\Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (!\Y_adder[47]~25_combout\ & (!\Y_adder[55]~35_combout\ & (!\Y_adder[56]~37_combout\ & \Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[47]~25_combout\,
	datab => \Y_adder[55]~35_combout\,
	datac => \Y_adder[56]~37_combout\,
	datad => \Equal0~14_combout\,
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X57_Y47_N6
\Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = (\Y_adder[40]~15_combout\) # ((\Y_adder[48]~26_combout\) # (\Y_adder[36]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_adder[40]~15_combout\,
	datac => \Y_adder[48]~26_combout\,
	datad => \Y_adder[36]~8_combout\,
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X57_Y47_N16
\Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = (\Y_adder[43]~20_combout\) # ((\Y_adder[39]~14_combout\) # (\Equal0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[43]~20_combout\,
	datac => \Y_adder[39]~14_combout\,
	datad => \Equal0~16_combout\,
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X57_Y47_N20
\Y_adder[63]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_adder[63]~13_combout\ = (\ExtWord~input_o\ & \Adder0|S\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \Adder0|S\(31),
	combout => \Y_adder[63]~13_combout\);

-- Location: LCCOMB_X57_Y47_N2
\Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (!\Y_adder[59]~41_combout\ & (!\Equal0~17_combout\ & (!\Y_adder[34]~6_combout\ & !\Y_adder[63]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_adder[59]~41_combout\,
	datab => \Equal0~17_combout\,
	datac => \Y_adder[34]~6_combout\,
	datad => \Y_adder[63]~13_combout\,
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X59_Y45_N16
\Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (!\Adder0|S\(30) & (!\Adder0|S\(22) & (!\Y_adder[61]~43_combout\ & !\Y_adder[32]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|S\(30),
	datab => \Adder0|S\(22),
	datac => \Y_adder[61]~43_combout\,
	datad => \Y_adder[32]~4_combout\,
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X59_Y45_N10
\Equal0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~22_combout\ = (\Equal0~21_combout\ & (\Equal0~15_combout\ & (\Equal0~18_combout\ & \Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~21_combout\,
	datab => \Equal0~15_combout\,
	datac => \Equal0~18_combout\,
	datad => \Equal0~19_combout\,
	combout => \Equal0~22_combout\);

-- Location: LCCOMB_X59_Y45_N28
\Equal0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~23_combout\ = (\Equal0~13_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~22_combout\,
	combout => \Equal0~23_combout\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


