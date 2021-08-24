-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/11/2020 20:15:32"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	ass5new IS
    PORT (
	mpd_in : IN std_logic_vector(7 DOWNTO 0);
	mpr_in : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	go : IN std_logic;
	add : OUT std_logic;
	sub : OUT std_logic;
	toggle_position : OUT STD.STANDARD.integer range -1 TO 7;
	shifted_mpd : OUT std_logic_vector(16 DOWNTO 0);
	prev_toggle_position : OUT STD.STANDARD.integer range -1 TO 7;
	result : OUT std_logic_vector(16 DOWNTO 0);
	next_result : OUT std_logic_vector(16 DOWNTO 0)
	);
END ass5new;

-- Design Ports Information
-- add	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle_position[0]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle_position[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle_position[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle_position[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[9]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[11]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[12]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[13]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[14]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[15]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[16]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prev_toggle_position[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prev_toggle_position[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prev_toggle_position[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prev_toggle_position[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[8]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[9]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[10]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[11]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[12]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[13]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[14]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[15]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[16]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- go	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[7]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ass5new IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mpd_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mpr_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_go : std_logic;
SIGNAL ww_add : std_logic;
SIGNAL ww_sub : std_logic;
SIGNAL ww_toggle_position : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_shifted_mpd : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_prev_toggle_position : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_next_result : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst1|toggle_location[3]~49clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|next_result1[16]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \add~output_o\ : std_logic;
SIGNAL \sub~output_o\ : std_logic;
SIGNAL \toggle_position[0]~output_o\ : std_logic;
SIGNAL \toggle_position[1]~output_o\ : std_logic;
SIGNAL \toggle_position[2]~output_o\ : std_logic;
SIGNAL \toggle_position[3]~output_o\ : std_logic;
SIGNAL \shifted_mpd[0]~output_o\ : std_logic;
SIGNAL \shifted_mpd[1]~output_o\ : std_logic;
SIGNAL \shifted_mpd[2]~output_o\ : std_logic;
SIGNAL \shifted_mpd[3]~output_o\ : std_logic;
SIGNAL \shifted_mpd[4]~output_o\ : std_logic;
SIGNAL \shifted_mpd[5]~output_o\ : std_logic;
SIGNAL \shifted_mpd[6]~output_o\ : std_logic;
SIGNAL \shifted_mpd[7]~output_o\ : std_logic;
SIGNAL \shifted_mpd[8]~output_o\ : std_logic;
SIGNAL \shifted_mpd[9]~output_o\ : std_logic;
SIGNAL \shifted_mpd[10]~output_o\ : std_logic;
SIGNAL \shifted_mpd[11]~output_o\ : std_logic;
SIGNAL \shifted_mpd[12]~output_o\ : std_logic;
SIGNAL \shifted_mpd[13]~output_o\ : std_logic;
SIGNAL \shifted_mpd[14]~output_o\ : std_logic;
SIGNAL \shifted_mpd[15]~output_o\ : std_logic;
SIGNAL \shifted_mpd[16]~output_o\ : std_logic;
SIGNAL \prev_toggle_position[0]~output_o\ : std_logic;
SIGNAL \prev_toggle_position[1]~output_o\ : std_logic;
SIGNAL \prev_toggle_position[2]~output_o\ : std_logic;
SIGNAL \prev_toggle_position[3]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \next_result[0]~output_o\ : std_logic;
SIGNAL \next_result[1]~output_o\ : std_logic;
SIGNAL \next_result[2]~output_o\ : std_logic;
SIGNAL \next_result[3]~output_o\ : std_logic;
SIGNAL \next_result[4]~output_o\ : std_logic;
SIGNAL \next_result[5]~output_o\ : std_logic;
SIGNAL \next_result[6]~output_o\ : std_logic;
SIGNAL \next_result[7]~output_o\ : std_logic;
SIGNAL \next_result[8]~output_o\ : std_logic;
SIGNAL \next_result[9]~output_o\ : std_logic;
SIGNAL \next_result[10]~output_o\ : std_logic;
SIGNAL \next_result[11]~output_o\ : std_logic;
SIGNAL \next_result[12]~output_o\ : std_logic;
SIGNAL \next_result[13]~output_o\ : std_logic;
SIGNAL \next_result[14]~output_o\ : std_logic;
SIGNAL \next_result[15]~output_o\ : std_logic;
SIGNAL \next_result[16]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \mpr_in[7]~input_o\ : std_logic;
SIGNAL \go~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|toggle_location~52_combout\ : std_logic;
SIGNAL \mpr_in[5]~input_o\ : std_logic;
SIGNAL \mpr_in[3]~input_o\ : std_logic;
SIGNAL \inst1|Add6~1_combout\ : std_logic;
SIGNAL \inst1|Add6~0_combout\ : std_logic;
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \mpr_in[6]~input_o\ : std_logic;
SIGNAL \inst1|Mux7~3_combout\ : std_logic;
SIGNAL \mpr_in[4]~input_o\ : std_logic;
SIGNAL \inst1|Mux7~2_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \mpr_in[1]~input_o\ : std_logic;
SIGNAL \mpr_in[2]~input_o\ : std_logic;
SIGNAL \inst1|Mux7~4_combout\ : std_logic;
SIGNAL \mpr_in[0]~input_o\ : std_logic;
SIGNAL \inst1|Mux7~5_combout\ : std_logic;
SIGNAL \inst1|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|Mux7~8_combout\ : std_logic;
SIGNAL \inst1|Mux7~21_combout\ : std_logic;
SIGNAL \inst1|Mux1~4_combout\ : std_logic;
SIGNAL \inst1|Mux7~6_combout\ : std_logic;
SIGNAL \inst1|Mux7~7_combout\ : std_logic;
SIGNAL \inst1|Mux1~6_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|Mux1~3_combout\ : std_logic;
SIGNAL \inst1|Mux1~5_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Mux7~12_combout\ : std_logic;
SIGNAL \inst1|Mux7~13_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|Mux5~3_combout\ : std_logic;
SIGNAL \inst1|Mux5~5_combout\ : std_logic;
SIGNAL \inst1|Mux5~4_combout\ : std_logic;
SIGNAL \inst1|toggle_location~18_combout\ : std_logic;
SIGNAL \inst1|Mux7~18_combout\ : std_logic;
SIGNAL \inst1|Mux7~9_combout\ : std_logic;
SIGNAL \inst1|Mux7~10_combout\ : std_logic;
SIGNAL \inst1|Mux7~19_combout\ : std_logic;
SIGNAL \inst1|Mux7~20_combout\ : std_logic;
SIGNAL \inst1|toggle_location~21_combout\ : std_logic;
SIGNAL \inst1|Add2~1_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mux2~3_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|toggle_location~19_combout\ : std_logic;
SIGNAL \inst1|toggle_location~51_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|LessThan4~0_combout\ : std_logic;
SIGNAL \inst1|toggle_location~50_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|toggle_location~20_combout\ : std_logic;
SIGNAL \inst1|toggle_location~23_combout\ : std_logic;
SIGNAL \inst1|toggle_location~22_combout\ : std_logic;
SIGNAL \inst1|toggle_location~24_combout\ : std_logic;
SIGNAL \inst1|toggle_location[0]~25_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~11_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|toggle_location~26_combout\ : std_logic;
SIGNAL \inst1|toggle_location~28_combout\ : std_logic;
SIGNAL \inst1|toggle_location~27_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~29_combout\ : std_logic;
SIGNAL \inst1|toggle_location~54_combout\ : std_logic;
SIGNAL \inst1|Add4~1_combout\ : std_logic;
SIGNAL \inst1|Add5~1_combout\ : std_logic;
SIGNAL \inst1|toggle_location~31_combout\ : std_logic;
SIGNAL \inst1|Mux7~14_combout\ : std_logic;
SIGNAL \inst1|Mux7~17_combout\ : std_logic;
SIGNAL \inst1|Mux7~16_combout\ : std_logic;
SIGNAL \inst1|Mux7~15_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~1_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~58_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~45_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~46_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~34_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~42_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~47_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~48_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Add4~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|Mux0~4_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~55_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~33_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~35_combout\ : std_logic;
SIGNAL \inst1|toggle_location~30_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~53_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~32_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~57_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~43_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~41_combout\ : std_logic;
SIGNAL \inst1|Add5~0_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~56_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~38_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~37_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~39_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~40_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~44_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~49_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~36_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \result1[8]~0_combout\ : std_logic;
SIGNAL \state.stcompute~q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \state.stdone~q\ : std_logic;
SIGNAL \prev_toggle_location[2]~0_combout\ : std_logic;
SIGNAL \state.stidle~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|sig_add~6_combout\ : std_logic;
SIGNAL \inst1|sig_add~7_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|sig_add~4_combout\ : std_logic;
SIGNAL \inst1|sig_add~5_combout\ : std_logic;
SIGNAL \inst1|sig_add~combout\ : std_logic;
SIGNAL \inst1|sig_sub~3_combout\ : std_logic;
SIGNAL \inst1|sig_sub~2_combout\ : std_logic;
SIGNAL \inst1|sig_sub~4_combout\ : std_logic;
SIGNAL \mpd_in[0]~input_o\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|mpd2[0]~14_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~49clkctrl_outclk\ : std_logic;
SIGNAL \mpd_in[1]~input_o\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal1~2_combout\ : std_logic;
SIGNAL \inst2|mpd2[1]~15_combout\ : std_logic;
SIGNAL \inst2|Equal2~2_combout\ : std_logic;
SIGNAL \inst2|mpd2[2]~64_combout\ : std_logic;
SIGNAL \mpd_in[2]~input_o\ : std_logic;
SIGNAL \inst2|mpd2[2]~16_combout\ : std_logic;
SIGNAL \inst2|mpd2[2]~17_combout\ : std_logic;
SIGNAL \mpd_in[3]~input_o\ : std_logic;
SIGNAL \inst2|mpd2[3]~18_combout\ : std_logic;
SIGNAL \inst2|Equal3~0_combout\ : std_logic;
SIGNAL \inst2|mpd2[3]~19_combout\ : std_logic;
SIGNAL \inst2|mpd2[3]~20_combout\ : std_logic;
SIGNAL \inst2|mpd2[4]~21_combout\ : std_logic;
SIGNAL \inst2|mpd2[4]~22_combout\ : std_logic;
SIGNAL \mpd_in[4]~input_o\ : std_logic;
SIGNAL \inst2|mpd2[4]~23_combout\ : std_logic;
SIGNAL \inst2|mpd2[4]~24_combout\ : std_logic;
SIGNAL \inst2|mpd2[4]~25_combout\ : std_logic;
SIGNAL \mpd_in[5]~input_o\ : std_logic;
SIGNAL \inst2|mpd2[4]~26_combout\ : std_logic;
SIGNAL \inst2|mpd2[4]~27_combout\ : std_logic;
SIGNAL \inst2|mpd2[5]~28_combout\ : std_logic;
SIGNAL \inst2|mpd2[6]~30_combout\ : std_logic;
SIGNAL \mpd_in[6]~input_o\ : std_logic;
SIGNAL \mpd[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|mpd2[8]~29_combout\ : std_logic;
SIGNAL \inst2|mpd2[4]~65_combout\ : std_logic;
SIGNAL \inst2|mpd2[6]~31_combout\ : std_logic;
SIGNAL \inst2|mpd2[4]~32_combout\ : std_logic;
SIGNAL \mpd_in[7]~input_o\ : std_logic;
SIGNAL \inst2|mpd2[4]~33_combout\ : std_logic;
SIGNAL \inst2|mpd2[7]~34_combout\ : std_logic;
SIGNAL \inst2|mpd2[7]~68_combout\ : std_logic;
SIGNAL \inst2|mpd2[7]~69_combout\ : std_logic;
SIGNAL \inst2|mpd2[8]~37_combout\ : std_logic;
SIGNAL \inst2|mpd2[8]~36_combout\ : std_logic;
SIGNAL \inst2|mpd2[8]~35_combout\ : std_logic;
SIGNAL \inst2|mpd2[8]~38_combout\ : std_logic;
SIGNAL \inst2|mpd2[16]~39_combout\ : std_logic;
SIGNAL \inst2|mpd2[9]~46_combout\ : std_logic;
SIGNAL \inst2|mpd2[16]~45_combout\ : std_logic;
SIGNAL \inst2|mpd2[14]~40_combout\ : std_logic;
SIGNAL \inst2|mpd2[9]~41_combout\ : std_logic;
SIGNAL \inst2|mpd2[9]~43_combout\ : std_logic;
SIGNAL \inst2|mpd2[9]~42_combout\ : std_logic;
SIGNAL \inst2|mpd2[9]~44_combout\ : std_logic;
SIGNAL \inst2|mpd2[9]~47_combout\ : std_logic;
SIGNAL \inst2|mpd2[16]~66_combout\ : std_logic;
SIGNAL \inst2|mpd2[12]~53_combout\ : std_logic;
SIGNAL \inst2|Equal4~2_combout\ : std_logic;
SIGNAL \inst2|mpd2[10]~48_combout\ : std_logic;
SIGNAL \inst2|Equal6~2_combout\ : std_logic;
SIGNAL \inst2|Equal5~0_combout\ : std_logic;
SIGNAL \inst2|mpd2[10]~49_combout\ : std_logic;
SIGNAL \inst2|mpd2[10]~50_combout\ : std_logic;
SIGNAL \inst2|mpd2[10]~51_combout\ : std_logic;
SIGNAL \inst2|mpd2[16]~52_combout\ : std_logic;
SIGNAL \inst2|mpd2[3]~57_combout\ : std_logic;
SIGNAL \inst2|mpd2[11]~54_combout\ : std_logic;
SIGNAL \inst2|mpd2[11]~55_combout\ : std_logic;
SIGNAL \inst2|mpd2[11]~56_combout\ : std_logic;
SIGNAL \inst2|mpd2[12]~58_combout\ : std_logic;
SIGNAL \inst2|mpd2[12]~59_combout\ : std_logic;
SIGNAL \inst2|mpd2[12]~61_combout\ : std_logic;
SIGNAL \inst2|mpd2[16]~60_combout\ : std_logic;
SIGNAL \inst2|mpd2[16]~67_combout\ : std_logic;
SIGNAL \inst2|mpd2[13]~63_combout\ : std_logic;
SIGNAL \inst2|mpd2[13]~62_combout\ : std_logic;
SIGNAL \inst2|Equal7~0_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst1|sig_sub~5_combout\ : std_logic;
SIGNAL \inst2|Add0~2_cout\ : std_logic;
SIGNAL \inst2|Add0~3_combout\ : std_logic;
SIGNAL \inst2|next_result1[16]~0_combout\ : std_logic;
SIGNAL \inst2|next_result1[16]~0clkctrl_outclk\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \inst2|Add0~5_combout\ : std_logic;
SIGNAL \inst2|Add0~4\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \inst2|Add0~11_combout\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~15_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \inst2|Add0~17_combout\ : std_logic;
SIGNAL \inst2|Add0~16\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~21_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \inst2|Add0~23_combout\ : std_logic;
SIGNAL \inst2|Add0~22\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~27_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \inst2|Add0~29_combout\ : std_logic;
SIGNAL \inst2|Add0~28\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~33_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \inst2|Add0~35_combout\ : std_logic;
SIGNAL \inst2|Add0~34\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~39_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Add0~41_combout\ : std_logic;
SIGNAL \inst2|Add0~40\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~45_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Add0~46\ : std_logic;
SIGNAL \inst2|Add0~47_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \inst2|Add0~48\ : std_logic;
SIGNAL \inst2|Add0~49_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL mpr : std_logic_vector(7 DOWNTO 0);
SIGNAL prev_toggle_location : std_logic_vector(3 DOWNTO 0);
SIGNAL result1 : std_logic_vector(16 DOWNTO 0);
SIGNAL mpd : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|mpd2\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst2|next_result1\ : std_logic_vector(16 DOWNTO 0);
SIGNAL ALT_INV_prev_toggle_location : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_mpd_in <= mpd_in;
ww_mpr_in <= mpr_in;
ww_clk <= clk;
ww_go <= go;
add <= ww_add;
sub <= ww_sub;
toggle_position <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(SIGNED(ww_toggle_position));
shifted_mpd <= ww_shifted_mpd;
prev_toggle_position <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(SIGNED(ww_prev_toggle_position));
result <= ww_result;
next_result <= ww_next_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|toggle_location[3]~49clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|toggle_location[3]~49_combout\);

\inst2|next_result1[16]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|next_result1[16]~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_prev_toggle_location(3) <= NOT prev_toggle_location(3);
ALT_INV_prev_toggle_location(2) <= NOT prev_toggle_location(2);
ALT_INV_prev_toggle_location(1) <= NOT prev_toggle_location(1);
ALT_INV_prev_toggle_location(0) <= NOT prev_toggle_location(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y34_N9
\add~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sig_add~combout\,
	devoe => ww_devoe,
	o => \add~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\sub~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sig_sub~4_combout\,
	devoe => ww_devoe,
	o => \sub~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\toggle_position[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|toggle_location[0]~25_combout\,
	devoe => ww_devoe,
	o => \toggle_position[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\toggle_position[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|toggle_location[1]~36_combout\,
	devoe => ww_devoe,
	o => \toggle_position[1]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\toggle_position[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|toggle_location[2]~44_combout\,
	devoe => ww_devoe,
	o => \toggle_position[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\toggle_position[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|toggle_location[3]~49_combout\,
	devoe => ww_devoe,
	o => \toggle_position[3]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\shifted_mpd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(0),
	devoe => ww_devoe,
	o => \shifted_mpd[0]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\shifted_mpd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(1),
	devoe => ww_devoe,
	o => \shifted_mpd[1]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\shifted_mpd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(2),
	devoe => ww_devoe,
	o => \shifted_mpd[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\shifted_mpd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(3),
	devoe => ww_devoe,
	o => \shifted_mpd[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\shifted_mpd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(4),
	devoe => ww_devoe,
	o => \shifted_mpd[4]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\shifted_mpd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(5),
	devoe => ww_devoe,
	o => \shifted_mpd[5]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\shifted_mpd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(6),
	devoe => ww_devoe,
	o => \shifted_mpd[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\shifted_mpd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(7),
	devoe => ww_devoe,
	o => \shifted_mpd[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\shifted_mpd[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(8),
	devoe => ww_devoe,
	o => \shifted_mpd[8]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\shifted_mpd[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(9),
	devoe => ww_devoe,
	o => \shifted_mpd[9]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\shifted_mpd[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(10),
	devoe => ww_devoe,
	o => \shifted_mpd[10]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\shifted_mpd[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(11),
	devoe => ww_devoe,
	o => \shifted_mpd[11]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\shifted_mpd[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(12),
	devoe => ww_devoe,
	o => \shifted_mpd[12]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\shifted_mpd[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(13),
	devoe => ww_devoe,
	o => \shifted_mpd[13]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\shifted_mpd[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mpd2\(14),
	devoe => ww_devoe,
	o => \shifted_mpd[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\shifted_mpd[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \shifted_mpd[15]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\shifted_mpd[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \shifted_mpd[16]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\prev_toggle_position[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_toggle_location(0),
	devoe => ww_devoe,
	o => \prev_toggle_position[0]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\prev_toggle_position[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_toggle_location(1),
	devoe => ww_devoe,
	o => \prev_toggle_position[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\prev_toggle_position[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_toggle_location(2),
	devoe => ww_devoe,
	o => \prev_toggle_position[2]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\prev_toggle_position[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_prev_toggle_location(3),
	devoe => ww_devoe,
	o => \prev_toggle_position[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(1),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(2),
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(3),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(4),
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(5),
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(6),
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(7),
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(8),
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(9),
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(10),
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(11),
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(12),
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(13),
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(14),
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(15),
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => result1(16),
	devoe => ww_devoe,
	o => \result[16]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\next_result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(0),
	devoe => ww_devoe,
	o => \next_result[0]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\next_result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(1),
	devoe => ww_devoe,
	o => \next_result[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\next_result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(2),
	devoe => ww_devoe,
	o => \next_result[2]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\next_result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(3),
	devoe => ww_devoe,
	o => \next_result[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\next_result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(4),
	devoe => ww_devoe,
	o => \next_result[4]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\next_result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(5),
	devoe => ww_devoe,
	o => \next_result[5]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\next_result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(6),
	devoe => ww_devoe,
	o => \next_result[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\next_result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(7),
	devoe => ww_devoe,
	o => \next_result[7]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\next_result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(8),
	devoe => ww_devoe,
	o => \next_result[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\next_result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(9),
	devoe => ww_devoe,
	o => \next_result[9]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\next_result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(10),
	devoe => ww_devoe,
	o => \next_result[10]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\next_result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(11),
	devoe => ww_devoe,
	o => \next_result[11]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\next_result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(12),
	devoe => ww_devoe,
	o => \next_result[12]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\next_result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(13),
	devoe => ww_devoe,
	o => \next_result[13]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\next_result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(14),
	devoe => ww_devoe,
	o => \next_result[14]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\next_result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(15),
	devoe => ww_devoe,
	o => \next_result[15]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\next_result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|next_result1\(16),
	devoe => ww_devoe,
	o => \next_result[16]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\mpr_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(7),
	o => \mpr_in[7]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\go~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go,
	o => \go~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X38_Y18_N6
\inst1|toggle_location~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~52_combout\ = (\inst1|Mux0~4_combout\ & (((prev_toggle_location(3) & !prev_toggle_location(2))) # (!\inst1|Mux4~2_combout\))) # (!\inst1|Mux0~4_combout\ & (((\inst1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~4_combout\,
	datab => prev_toggle_location(3),
	datac => \inst1|Mux4~2_combout\,
	datad => prev_toggle_location(2),
	combout => \inst1|toggle_location~52_combout\);

-- Location: IOIBUF_X25_Y0_N15
\mpr_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(5),
	o => \mpr_in[5]~input_o\);

-- Location: FF_X37_Y17_N7
\mpr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mpr_in[5]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(5));

-- Location: IOIBUF_X36_Y0_N15
\mpr_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(3),
	o => \mpr_in[3]~input_o\);

-- Location: FF_X36_Y17_N23
\mpr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mpr_in[3]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(3));

-- Location: LCCOMB_X36_Y18_N22
\inst1|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~1_combout\ = prev_toggle_location(3) $ (((prev_toggle_location(1) & (prev_toggle_location(0) & prev_toggle_location(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(3),
	datad => prev_toggle_location(2),
	combout => \inst1|Add6~1_combout\);

-- Location: LCCOMB_X36_Y17_N0
\inst1|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add6~0_combout\ = prev_toggle_location(2) $ (((prev_toggle_location(0) & prev_toggle_location(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(2),
	combout => \inst1|Add6~0_combout\);

-- Location: LCCOMB_X37_Y17_N22
\inst1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = prev_toggle_location(1) $ (prev_toggle_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(0),
	combout => \inst1|Add2~0_combout\);

-- Location: IOIBUF_X18_Y34_N22
\mpr_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(6),
	o => \mpr_in[6]~input_o\);

-- Location: FF_X38_Y17_N5
\mpr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mpr_in[6]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(6));

-- Location: LCCOMB_X37_Y17_N6
\inst1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~3_combout\ = (prev_toggle_location(0) & (mpr(6))) # (!prev_toggle_location(0) & ((mpr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(6),
	datac => mpr(5),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux7~3_combout\);

-- Location: IOIBUF_X53_Y9_N22
\mpr_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(4),
	o => \mpr_in[4]~input_o\);

-- Location: FF_X38_Y17_N9
\mpr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mpr_in[4]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(4));

-- Location: LCCOMB_X36_Y17_N6
\inst1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~2_combout\ = (prev_toggle_location(0) & (mpr(4))) # (!prev_toggle_location(0) & ((mpr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(4),
	datac => mpr(3),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux7~2_combout\);

-- Location: LCCOMB_X36_Y18_N6
\inst1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst1|Add2~0_combout\ & ((\inst1|Add6~0_combout\) # ((!\inst1|Mux7~2_combout\)))) # (!\inst1|Add2~0_combout\ & (!\inst1|Add6~0_combout\ & (!\inst1|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~0_combout\,
	datab => \inst1|Add6~0_combout\,
	datac => \inst1|Mux7~3_combout\,
	datad => \inst1|Mux7~2_combout\,
	combout => \inst1|Mux6~0_combout\);

-- Location: IOIBUF_X36_Y0_N22
\mpr_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(1),
	o => \mpr_in[1]~input_o\);

-- Location: FF_X36_Y17_N19
\mpr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mpr_in[1]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(1));

-- Location: IOIBUF_X29_Y34_N15
\mpr_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(2),
	o => \mpr_in[2]~input_o\);

-- Location: FF_X36_Y17_N11
\mpr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mpr_in[2]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(2));

-- Location: LCCOMB_X36_Y17_N10
\inst1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~4_combout\ = (prev_toggle_location(0) & ((mpr(2)))) # (!prev_toggle_location(0) & (mpr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(1),
	datac => mpr(2),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux7~4_combout\);

-- Location: IOIBUF_X36_Y0_N8
\mpr_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(0),
	o => \mpr_in[0]~input_o\);

-- Location: FF_X36_Y17_N21
\mpr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mpr_in[0]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(0));

-- Location: LCCOMB_X36_Y17_N8
\inst1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~5_combout\ = (prev_toggle_location(0) & mpr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(0),
	datad => mpr(0),
	combout => \inst1|Mux7~5_combout\);

-- Location: LCCOMB_X36_Y18_N30
\inst1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~1_combout\ = (\inst1|Mux6~0_combout\ & (((!\inst1|Mux7~5_combout\)) # (!\inst1|Add6~0_combout\))) # (!\inst1|Mux6~0_combout\ & (\inst1|Add6~0_combout\ & (!\inst1|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux6~0_combout\,
	datab => \inst1|Add6~0_combout\,
	datac => \inst1|Mux7~4_combout\,
	datad => \inst1|Mux7~5_combout\,
	combout => \inst1|Mux6~1_combout\);

-- Location: LCCOMB_X37_Y19_N6
\inst1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~2_combout\ = (mpr(7) & (!prev_toggle_location(0) & prev_toggle_location(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(7),
	datac => prev_toggle_location(0),
	datad => prev_toggle_location(1),
	combout => \inst1|Mux2~2_combout\);

-- Location: LCCOMB_X36_Y18_N14
\inst1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~2_combout\ = (\inst1|Add6~1_combout\ & (((!\inst1|Mux2~2_combout\)) # (!\inst1|Add6~0_combout\))) # (!\inst1|Add6~1_combout\ & (((\inst1|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add6~1_combout\,
	datab => \inst1|Add6~0_combout\,
	datac => \inst1|Mux6~1_combout\,
	datad => \inst1|Mux2~2_combout\,
	combout => \inst1|Mux6~2_combout\);

-- Location: LCCOMB_X36_Y17_N14
\inst1|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~8_combout\ = (!prev_toggle_location(0) & ((prev_toggle_location(1) & (mpr(2))) # (!prev_toggle_location(1) & ((mpr(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(2),
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(1),
	datad => mpr(0),
	combout => \inst1|Mux7~8_combout\);

-- Location: LCCOMB_X36_Y17_N30
\inst1|Mux7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~21_combout\ = (\inst1|Mux7~8_combout\) # ((mpr(1) & (prev_toggle_location(1) & prev_toggle_location(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(1),
	datab => \inst1|Mux7~8_combout\,
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux7~21_combout\);

-- Location: LCCOMB_X37_Y19_N20
\inst1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~4_combout\ = (prev_toggle_location(1) & (prev_toggle_location(3) & prev_toggle_location(2))) # (!prev_toggle_location(1) & (!prev_toggle_location(3) & !prev_toggle_location(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(3),
	datad => prev_toggle_location(2),
	combout => \inst1|Mux1~4_combout\);

-- Location: LCCOMB_X38_Y17_N8
\inst1|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~6_combout\ = (!prev_toggle_location(0) & ((prev_toggle_location(1) & (mpr(6))) # (!prev_toggle_location(1) & ((mpr(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => mpr(6),
	datac => mpr(4),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux7~6_combout\);

-- Location: LCCOMB_X38_Y17_N20
\inst1|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~7_combout\ = (prev_toggle_location(0) & ((prev_toggle_location(1) & (mpr(5))) # (!prev_toggle_location(1) & ((mpr(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => mpr(5),
	datac => mpr(3),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux7~7_combout\);

-- Location: LCCOMB_X38_Y17_N16
\inst1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~6_combout\ = (!\inst1|Mux7~6_combout\ & (!\inst1|Mux7~7_combout\ & (prev_toggle_location(2) $ (prev_toggle_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~6_combout\,
	datab => prev_toggle_location(2),
	datac => prev_toggle_location(1),
	datad => \inst1|Mux7~7_combout\,
	combout => \inst1|Mux1~6_combout\);

-- Location: LCCOMB_X37_Y17_N12
\inst1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (!prev_toggle_location(1) & (mpr(7) & prev_toggle_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(1),
	datac => mpr(7),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux1~2_combout\);

-- Location: LCCOMB_X38_Y17_N2
\inst1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~3_combout\ = (\inst1|Mux1~2_combout\ & (!prev_toggle_location(3) & (prev_toggle_location(1) $ (prev_toggle_location(2))))) # (!\inst1|Mux1~2_combout\ & (prev_toggle_location(3) $ (((prev_toggle_location(1)) # (prev_toggle_location(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(2),
	datac => prev_toggle_location(3),
	datad => \inst1|Mux1~2_combout\,
	combout => \inst1|Mux1~3_combout\);

-- Location: LCCOMB_X38_Y18_N30
\inst1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~5_combout\ = (\inst1|Mux1~6_combout\) # ((\inst1|Mux1~3_combout\) # ((!\inst1|Mux7~21_combout\ & \inst1|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~21_combout\,
	datab => \inst1|Mux1~4_combout\,
	datac => \inst1|Mux1~6_combout\,
	datad => \inst1|Mux1~3_combout\,
	combout => \inst1|Mux1~5_combout\);

-- Location: LCCOMB_X38_Y17_N22
\inst1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = ((prev_toggle_location(2)) # ((!prev_toggle_location(0)) # (!mpr(7)))) # (!prev_toggle_location(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(2),
	datac => mpr(7),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X36_Y17_N12
\inst1|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~12_combout\ = (!prev_toggle_location(0) & ((prev_toggle_location(1) & ((mpr(0)))) # (!prev_toggle_location(1) & (mpr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(2),
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(1),
	datad => mpr(0),
	combout => \inst1|Mux7~12_combout\);

-- Location: LCCOMB_X36_Y17_N16
\inst1|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~13_combout\ = (\inst1|Mux7~12_combout\) # ((mpr(1) & (prev_toggle_location(0) & !prev_toggle_location(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(1),
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(1),
	datad => \inst1|Mux7~12_combout\,
	combout => \inst1|Mux7~13_combout\);

-- Location: LCCOMB_X38_Y17_N24
\inst1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (prev_toggle_location(2) & (\inst1|Mux3~1_combout\ & (!prev_toggle_location(3)))) # (!prev_toggle_location(2) & ((prev_toggle_location(3) & (\inst1|Mux3~1_combout\)) # (!prev_toggle_location(3) & ((!\inst1|Mux7~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~1_combout\,
	datab => prev_toggle_location(2),
	datac => prev_toggle_location(3),
	datad => \inst1|Mux7~13_combout\,
	combout => \inst1|Mux3~2_combout\);

-- Location: LCCOMB_X37_Y17_N4
\inst1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~2_combout\ = (prev_toggle_location(3) & ((\inst1|Mux1~2_combout\ & (!prev_toggle_location(2) & !prev_toggle_location(1))) # (!\inst1|Mux1~2_combout\ & ((!prev_toggle_location(1)) # (!prev_toggle_location(2)))))) # (!prev_toggle_location(3) & 
-- (((prev_toggle_location(2) & prev_toggle_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~2_combout\,
	datab => prev_toggle_location(3),
	datac => prev_toggle_location(2),
	datad => prev_toggle_location(1),
	combout => \inst1|Mux5~2_combout\);

-- Location: LCCOMB_X37_Y19_N22
\inst1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~3_combout\ = (!prev_toggle_location(3) & (prev_toggle_location(1) $ (prev_toggle_location(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(3),
	datad => prev_toggle_location(2),
	combout => \inst1|Mux5~3_combout\);

-- Location: LCCOMB_X38_Y17_N10
\inst1|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~5_combout\ = (!\inst1|Mux7~6_combout\ & (!\inst1|Mux7~7_combout\ & (prev_toggle_location(2) $ (!prev_toggle_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~6_combout\,
	datab => prev_toggle_location(2),
	datac => prev_toggle_location(1),
	datad => \inst1|Mux7~7_combout\,
	combout => \inst1|Mux5~5_combout\);

-- Location: LCCOMB_X37_Y19_N18
\inst1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~4_combout\ = (\inst1|Mux5~2_combout\) # ((\inst1|Mux5~5_combout\) # ((!\inst1|Mux7~21_combout\ & \inst1|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux5~2_combout\,
	datab => \inst1|Mux7~21_combout\,
	datac => \inst1|Mux5~3_combout\,
	datad => \inst1|Mux5~5_combout\,
	combout => \inst1|Mux5~4_combout\);

-- Location: LCCOMB_X37_Y18_N4
\inst1|toggle_location~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~18_combout\ = (\inst1|Mux1~5_combout\ & (\inst1|Mux5~4_combout\ & ((\inst1|Mux3~2_combout\) # (\inst1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~5_combout\,
	datab => \inst1|Mux3~2_combout\,
	datac => \inst1|Mux5~4_combout\,
	datad => \inst1|Mux3~0_combout\,
	combout => \inst1|toggle_location~18_combout\);

-- Location: LCCOMB_X37_Y19_N12
\inst1|Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~18_combout\ = (prev_toggle_location(2) & ((mpr(7)) # (!prev_toggle_location(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(3),
	datac => mpr(7),
	datad => prev_toggle_location(2),
	combout => \inst1|Mux7~18_combout\);

-- Location: LCCOMB_X37_Y19_N26
\inst1|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~9_combout\ = (prev_toggle_location(0) & prev_toggle_location(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => prev_toggle_location(0),
	datad => prev_toggle_location(1),
	combout => \inst1|Mux7~9_combout\);

-- Location: LCCOMB_X38_Y17_N4
\inst1|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~10_combout\ = (!prev_toggle_location(0) & ((prev_toggle_location(1) & (mpr(4))) # (!prev_toggle_location(1) & ((mpr(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => mpr(4),
	datac => mpr(6),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux7~10_combout\);

-- Location: LCCOMB_X37_Y19_N24
\inst1|Mux7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~19_combout\ = (\inst1|Mux7~18_combout\ & (prev_toggle_location(3))) # (!\inst1|Mux7~18_combout\ & (!prev_toggle_location(3) & ((\inst1|Mux7~10_combout\) # (\inst1|Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~18_combout\,
	datab => prev_toggle_location(3),
	datac => \inst1|Mux7~10_combout\,
	datad => \inst1|Mux7~11_combout\,
	combout => \inst1|Mux7~19_combout\);

-- Location: LCCOMB_X37_Y19_N10
\inst1|Mux7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~20_combout\ = (\inst1|Mux7~18_combout\ & ((\inst1|Mux7~19_combout\ & ((!\inst1|Mux7~9_combout\))) # (!\inst1|Mux7~19_combout\ & (!\inst1|Mux7~13_combout\)))) # (!\inst1|Mux7~18_combout\ & (((!\inst1|Mux7~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~18_combout\,
	datab => \inst1|Mux7~13_combout\,
	datac => \inst1|Mux7~9_combout\,
	datad => \inst1|Mux7~19_combout\,
	combout => \inst1|Mux7~20_combout\);

-- Location: LCCOMB_X37_Y18_N8
\inst1|toggle_location~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~21_combout\ = (!\inst1|Mux0~4_combout\ & (\inst1|toggle_location~18_combout\ & ((\inst1|Mux7~20_combout\) # (!\inst1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux6~2_combout\,
	datab => \inst1|Mux0~4_combout\,
	datac => \inst1|toggle_location~18_combout\,
	datad => \inst1|Mux7~20_combout\,
	combout => \inst1|toggle_location~21_combout\);

-- Location: LCCOMB_X38_Y17_N12
\inst1|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~1_combout\ = prev_toggle_location(3) $ (((prev_toggle_location(2)) # ((prev_toggle_location(1) & prev_toggle_location(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(2),
	datac => prev_toggle_location(3),
	datad => prev_toggle_location(0),
	combout => \inst1|Add2~1_combout\);

-- Location: LCCOMB_X36_Y17_N28
\inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst1|Add2~0_combout\ & (((\inst1|Add6~0_combout\) # (!\inst1|Mux7~5_combout\)))) # (!\inst1|Add2~0_combout\ & (!\inst1|Mux7~4_combout\ & ((!\inst1|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~4_combout\,
	datab => \inst1|Add2~0_combout\,
	datac => \inst1|Mux7~5_combout\,
	datad => \inst1|Add6~0_combout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y17_N24
\inst1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (\inst1|Add6~0_combout\ & ((\inst1|Mux2~0_combout\ & ((!\inst1|Mux7~2_combout\))) # (!\inst1|Mux2~0_combout\ & (!\inst1|Mux7~3_combout\)))) # (!\inst1|Add6~0_combout\ & (((\inst1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~3_combout\,
	datab => \inst1|Add6~0_combout\,
	datac => \inst1|Mux7~2_combout\,
	datad => \inst1|Mux2~0_combout\,
	combout => \inst1|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y17_N26
\inst1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~3_combout\ = (\inst1|Add2~1_combout\ & ((\inst1|Add6~0_combout\) # ((!\inst1|Mux2~2_combout\)))) # (!\inst1|Add2~1_combout\ & (((\inst1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add6~0_combout\,
	datab => \inst1|Mux2~2_combout\,
	datac => \inst1|Add2~1_combout\,
	datad => \inst1|Mux2~1_combout\,
	combout => \inst1|Mux2~3_combout\);

-- Location: LCCOMB_X37_Y18_N30
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (!prev_toggle_location(2) & prev_toggle_location(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => prev_toggle_location(2),
	datad => prev_toggle_location(3),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y18_N10
\inst1|toggle_location~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~19_combout\ = (\inst1|Mux0~4_combout\ & (((\inst1|LessThan1~0_combout\ & !prev_toggle_location(1))) # (!\inst1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~4_combout\,
	datab => \inst1|Mux2~3_combout\,
	datac => \inst1|LessThan1~0_combout\,
	datad => prev_toggle_location(1),
	combout => \inst1|toggle_location~19_combout\);

-- Location: LCCOMB_X37_Y18_N18
\inst1|toggle_location~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~51_combout\ = ((!prev_toggle_location(2) & prev_toggle_location(3))) # (!\inst1|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datac => prev_toggle_location(3),
	datad => \inst1|Mux4~2_combout\,
	combout => \inst1|toggle_location~51_combout\);

-- Location: LCCOMB_X37_Y19_N30
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = ((prev_toggle_location(3) & ((!\inst1|Mux7~9_combout\) # (!prev_toggle_location(2))))) # (!\inst1|Mux7~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(3),
	datac => \inst1|Mux7~9_combout\,
	datad => \inst1|Mux7~20_combout\,
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X37_Y18_N22
\inst1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = ((prev_toggle_location(3) & ((!prev_toggle_location(1)) # (!prev_toggle_location(2))))) # (!\inst1|Mux6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(3),
	datab => \inst1|Mux6~2_combout\,
	datac => prev_toggle_location(2),
	datad => prev_toggle_location(1),
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X37_Y18_N0
\inst1|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan4~0_combout\ = (prev_toggle_location(3) & (((!prev_toggle_location(1) & !prev_toggle_location(0))) # (!prev_toggle_location(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(3),
	datac => prev_toggle_location(2),
	datad => prev_toggle_location(0),
	combout => \inst1|LessThan4~0_combout\);

-- Location: LCCOMB_X37_Y18_N26
\inst1|toggle_location~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~50_combout\ = (\inst1|process_0~5_combout\ & (\inst1|Mux5~4_combout\ & ((!\inst1|LessThan4~0_combout\)))) # (!\inst1|process_0~5_combout\ & ((\inst1|process_0~7_combout\) # ((\inst1|Mux5~4_combout\ & !\inst1|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~5_combout\,
	datab => \inst1|Mux5~4_combout\,
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|LessThan4~0_combout\,
	combout => \inst1|toggle_location~50_combout\);

-- Location: LCCOMB_X38_Y17_N6
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (\inst1|Mux3~0_combout\ & (\inst1|LessThan1~0_combout\ & (!\inst1|Mux7~9_combout\))) # (!\inst1|Mux3~0_combout\ & (((\inst1|LessThan1~0_combout\ & !\inst1|Mux7~9_combout\)) # (!\inst1|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|Mux7~9_combout\,
	datad => \inst1|Mux3~2_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X37_Y18_N14
\inst1|toggle_location~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~20_combout\ = (\inst1|toggle_location~19_combout\ & (((\inst1|toggle_location~51_combout\ & \inst1|toggle_location~50_combout\)) # (!\inst1|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location~19_combout\,
	datab => \inst1|toggle_location~51_combout\,
	datac => \inst1|toggle_location~50_combout\,
	datad => \inst1|process_0~4_combout\,
	combout => \inst1|toggle_location~20_combout\);

-- Location: LCCOMB_X38_Y17_N14
\inst1|toggle_location~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~23_combout\ = ((!\inst1|Mux4~2_combout\ & ((\inst1|Mux3~0_combout\) # (\inst1|Mux3~2_combout\)))) # (!\inst1|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \inst1|Mux3~2_combout\,
	datac => \inst1|Mux4~2_combout\,
	datad => \inst1|Mux2~3_combout\,
	combout => \inst1|toggle_location~23_combout\);

-- Location: LCCOMB_X37_Y20_N26
\inst1|toggle_location~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~22_combout\ = (!prev_toggle_location(1) & (prev_toggle_location(3) & (!prev_toggle_location(0) & !prev_toggle_location(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(3),
	datac => prev_toggle_location(0),
	datad => prev_toggle_location(2),
	combout => \inst1|toggle_location~22_combout\);

-- Location: LCCOMB_X38_Y17_N18
\inst1|toggle_location~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~24_combout\ = (\inst1|Mux0~4_combout\ & (((\inst1|toggle_location~22_combout\)) # (!\inst1|Mux1~5_combout\))) # (!\inst1|Mux0~4_combout\ & (\inst1|Mux1~5_combout\ & (\inst1|toggle_location~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~4_combout\,
	datab => \inst1|Mux1~5_combout\,
	datac => \inst1|toggle_location~23_combout\,
	datad => \inst1|toggle_location~22_combout\,
	combout => \inst1|toggle_location~24_combout\);

-- Location: LCCOMB_X37_Y18_N28
\inst1|toggle_location[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[0]~25_combout\ = prev_toggle_location(0) $ (((!\inst1|toggle_location~20_combout\ & ((\inst1|toggle_location~21_combout\) # (\inst1|toggle_location~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location~21_combout\,
	datab => \inst1|toggle_location~20_combout\,
	datac => prev_toggle_location(0),
	datad => \inst1|toggle_location~24_combout\,
	combout => \inst1|toggle_location[0]~25_combout\);

-- Location: LCCOMB_X37_Y17_N18
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\inst1|toggle_location[0]~25_combout\ & (\state.stcompute~q\ & !\Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|toggle_location[0]~25_combout\,
	datac => \state.stcompute~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X37_Y17_N19
\prev_toggle_location[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector20~0_combout\,
	ena => \prev_toggle_location[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_toggle_location(0));

-- Location: LCCOMB_X38_Y17_N26
\inst1|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~11_combout\ = (prev_toggle_location(0) & ((prev_toggle_location(1) & ((mpr(3)))) # (!prev_toggle_location(1) & (mpr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => mpr(5),
	datac => mpr(3),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux7~11_combout\);

-- Location: LCCOMB_X38_Y17_N30
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (!\inst1|Mux7~11_combout\ & (prev_toggle_location(2) & !\inst1|Mux7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~11_combout\,
	datab => prev_toggle_location(2),
	datad => \inst1|Mux7~10_combout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y17_N0
\inst1|toggle_location~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~26_combout\ = (\inst1|Mux0~4_combout\ & (((\inst1|process_0~4_combout\)))) # (!\inst1|Mux0~4_combout\ & ((\inst1|Mux3~0_combout\) # ((\inst1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \inst1|Mux3~2_combout\,
	datac => \inst1|Mux0~4_combout\,
	datad => \inst1|process_0~4_combout\,
	combout => \inst1|toggle_location~26_combout\);

-- Location: LCCOMB_X38_Y18_N26
\inst1|toggle_location~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~28_combout\ = (\inst1|Mux1~5_combout\ & ((\inst1|toggle_location~22_combout\) # (!\inst1|Mux0~4_combout\))) # (!\inst1|Mux1~5_combout\ & (\inst1|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~5_combout\,
	datac => \inst1|Mux0~4_combout\,
	datad => \inst1|toggle_location~22_combout\,
	combout => \inst1|toggle_location~28_combout\);

-- Location: LCCOMB_X37_Y18_N20
\inst1|toggle_location~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~27_combout\ = (\inst1|Mux0~4_combout\ & (((!prev_toggle_location(1) & \inst1|LessThan1~0_combout\)) # (!\inst1|Mux2~3_combout\))) # (!\inst1|Mux0~4_combout\ & (((\inst1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => \inst1|Mux0~4_combout\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|Mux2~3_combout\,
	combout => \inst1|toggle_location~27_combout\);

-- Location: LCCOMB_X38_Y18_N20
\inst1|toggle_location[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~29_combout\ = (\inst1|toggle_location~52_combout\ & (\inst1|toggle_location~26_combout\ & (\inst1|toggle_location~28_combout\ & \inst1|toggle_location~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location~52_combout\,
	datab => \inst1|toggle_location~26_combout\,
	datac => \inst1|toggle_location~28_combout\,
	datad => \inst1|toggle_location~27_combout\,
	combout => \inst1|toggle_location[1]~29_combout\);

-- Location: LCCOMB_X37_Y19_N8
\inst1|toggle_location~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~54_combout\ = (\inst1|Mux0~4_combout\ & ((\inst1|LessThan4~0_combout\) # (!\inst1|Mux5~4_combout\))) # (!\inst1|Mux0~4_combout\ & ((\inst1|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan4~0_combout\,
	datac => \inst1|Mux0~4_combout\,
	datad => \inst1|Mux5~4_combout\,
	combout => \inst1|toggle_location~54_combout\);

-- Location: LCCOMB_X37_Y17_N24
\inst1|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~1_combout\ = prev_toggle_location(3) $ (((prev_toggle_location(2) & ((prev_toggle_location(1)) # (prev_toggle_location(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(3),
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(0),
	combout => \inst1|Add4~1_combout\);

-- Location: LCCOMB_X35_Y18_N16
\inst1|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~1_combout\ = (!prev_toggle_location(2)) # (!prev_toggle_location(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(2),
	combout => \inst1|Add5~1_combout\);

-- Location: LCCOMB_X36_Y18_N24
\inst1|toggle_location~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~31_combout\ = (\inst1|Mux6~2_combout\ & (((\inst1|Add5~1_combout\ & prev_toggle_location(3))) # (!\inst1|Mux0~4_combout\))) # (!\inst1|Mux6~2_combout\ & (((\inst1|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~1_combout\,
	datab => \inst1|Mux6~2_combout\,
	datac => prev_toggle_location(3),
	datad => \inst1|Mux0~4_combout\,
	combout => \inst1|toggle_location~31_combout\);

-- Location: LCCOMB_X36_Y17_N20
\inst1|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~14_combout\ = (prev_toggle_location(0) & (mpr(2))) # (!prev_toggle_location(0) & ((mpr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(2),
	datab => mpr(3),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux7~14_combout\);

-- Location: LCCOMB_X39_Y17_N0
\inst1|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~17_combout\ = (prev_toggle_location(0) & ((mpr(6)))) # (!prev_toggle_location(0) & (mpr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(0),
	datac => mpr(7),
	datad => mpr(6),
	combout => \inst1|Mux7~17_combout\);

-- Location: LCCOMB_X36_Y17_N22
\inst1|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~16_combout\ = (prev_toggle_location(0) & ((mpr(0)))) # (!prev_toggle_location(0) & (mpr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(1),
	datab => prev_toggle_location(0),
	datad => mpr(0),
	combout => \inst1|Mux7~16_combout\);

-- Location: LCCOMB_X36_Y17_N18
\inst1|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~15_combout\ = (prev_toggle_location(0) & (mpr(4))) # (!prev_toggle_location(0) & ((mpr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(4),
	datab => prev_toggle_location(0),
	datad => mpr(5),
	combout => \inst1|Mux7~15_combout\);

-- Location: LCCOMB_X36_Y17_N4
\inst1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = (prev_toggle_location(2) & (\inst1|Mux7~16_combout\ & (prev_toggle_location(1)))) # (!prev_toggle_location(2) & (((\inst1|Mux7~15_combout\) # (!prev_toggle_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~16_combout\,
	datab => prev_toggle_location(2),
	datac => prev_toggle_location(1),
	datad => \inst1|Mux7~15_combout\,
	combout => \inst1|Mux8~0_combout\);

-- Location: LCCOMB_X36_Y17_N2
\inst1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~1_combout\ = (prev_toggle_location(1) & (((\inst1|Mux8~0_combout\)))) # (!prev_toggle_location(1) & ((\inst1|Mux8~0_combout\ & ((\inst1|Mux7~17_combout\))) # (!\inst1|Mux8~0_combout\ & (\inst1|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~14_combout\,
	datab => \inst1|Mux7~17_combout\,
	datac => prev_toggle_location(1),
	datad => \inst1|Mux8~0_combout\,
	combout => \inst1|Mux8~1_combout\);

-- Location: LCCOMB_X36_Y18_N18
\inst1|toggle_location[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~58_combout\ = (\inst1|Mux0~4_combout\ & (((\inst1|Mux8~1_combout\ & \inst1|process_0~5_combout\)))) # (!\inst1|Mux0~4_combout\ & (\inst1|Mux7~20_combout\ & (!\inst1|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~20_combout\,
	datab => \inst1|Mux0~4_combout\,
	datac => \inst1|Mux8~1_combout\,
	datad => \inst1|process_0~5_combout\,
	combout => \inst1|toggle_location[3]~58_combout\);

-- Location: LCCOMB_X36_Y18_N28
\inst1|toggle_location[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~45_combout\ = (\inst1|toggle_location~31_combout\ & (((prev_toggle_location(3)) # (!\inst1|toggle_location[3]~58_combout\)))) # (!\inst1|toggle_location~31_combout\ & (\inst1|Add5~1_combout\ $ ((prev_toggle_location(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~1_combout\,
	datab => \inst1|toggle_location~31_combout\,
	datac => prev_toggle_location(3),
	datad => \inst1|toggle_location[3]~58_combout\,
	combout => \inst1|toggle_location[3]~45_combout\);

-- Location: LCCOMB_X36_Y18_N2
\inst1|toggle_location[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~46_combout\ = (\inst1|toggle_location[1]~29_combout\ & ((\inst1|toggle_location~54_combout\ & ((!\inst1|toggle_location[3]~45_combout\))) # (!\inst1|toggle_location~54_combout\ & (\inst1|Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~29_combout\,
	datab => \inst1|toggle_location~54_combout\,
	datac => \inst1|Add4~1_combout\,
	datad => \inst1|toggle_location[3]~45_combout\,
	combout => \inst1|toggle_location[3]~46_combout\);

-- Location: LCCOMB_X38_Y18_N22
\inst1|toggle_location[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~34_combout\ = (!\inst1|toggle_location~52_combout\ & (\inst1|toggle_location~26_combout\ & (\inst1|toggle_location~28_combout\ & \inst1|toggle_location~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location~52_combout\,
	datab => \inst1|toggle_location~26_combout\,
	datac => \inst1|toggle_location~28_combout\,
	datad => \inst1|toggle_location~27_combout\,
	combout => \inst1|toggle_location[1]~34_combout\);

-- Location: LCCOMB_X37_Y20_N14
\inst1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = prev_toggle_location(3) $ (((prev_toggle_location(1)) # (prev_toggle_location(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datac => prev_toggle_location(2),
	datad => prev_toggle_location(3),
	combout => \inst1|Add1~0_combout\);

-- Location: LCCOMB_X38_Y18_N4
\inst1|toggle_location[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~42_combout\ = (!\inst1|toggle_location~26_combout\ & (\inst1|toggle_location~28_combout\ & \inst1|toggle_location~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|toggle_location~26_combout\,
	datac => \inst1|toggle_location~28_combout\,
	datad => \inst1|toggle_location~27_combout\,
	combout => \inst1|toggle_location[1]~42_combout\);

-- Location: LCCOMB_X38_Y18_N12
\inst1|toggle_location[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~47_combout\ = (\inst1|Add2~1_combout\ & ((\inst1|toggle_location[1]~42_combout\) # ((\inst1|Add1~0_combout\ & \inst1|toggle_location[1]~55_combout\)))) # (!\inst1|Add2~1_combout\ & (\inst1|Add1~0_combout\ & 
-- ((\inst1|toggle_location[1]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~1_combout\,
	datab => \inst1|Add1~0_combout\,
	datac => \inst1|toggle_location[1]~42_combout\,
	datad => \inst1|toggle_location[1]~55_combout\,
	combout => \inst1|toggle_location[3]~47_combout\);

-- Location: LCCOMB_X38_Y18_N18
\inst1|toggle_location[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~48_combout\ = (\inst1|toggle_location[3]~47_combout\) # ((\inst1|toggle_location[1]~34_combout\ & (prev_toggle_location(3) $ (prev_toggle_location(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(3),
	datab => prev_toggle_location(2),
	datac => \inst1|toggle_location[1]~34_combout\,
	datad => \inst1|toggle_location[3]~47_combout\,
	combout => \inst1|toggle_location[3]~48_combout\);

-- Location: LCCOMB_X37_Y19_N0
\Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (!\inst1|toggle_location[3]~46_combout\ & (!\inst1|toggle_location[3]~48_combout\ & (\state.stcompute~q\ & !\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~46_combout\,
	datab => \inst1|toggle_location[3]~48_combout\,
	datac => \state.stcompute~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X37_Y19_N1
\prev_toggle_location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector17~2_combout\,
	ena => \prev_toggle_location[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_toggle_location(3));

-- Location: LCCOMB_X37_Y17_N26
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = prev_toggle_location(3) $ (((!prev_toggle_location(2) & (!prev_toggle_location(1) & !prev_toggle_location(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(3),
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X37_Y17_N8
\inst1|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~0_combout\ = prev_toggle_location(2) $ (((prev_toggle_location(1)) # (prev_toggle_location(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(1),
	datac => prev_toggle_location(2),
	datad => prev_toggle_location(0),
	combout => \inst1|Add4~0_combout\);

-- Location: LCCOMB_X37_Y17_N20
\inst1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (\inst1|Add4~0_combout\ & (((\inst1|Add2~0_combout\)))) # (!\inst1|Add4~0_combout\ & ((\inst1|Add2~0_combout\ & (\inst1|Mux7~4_combout\)) # (!\inst1|Add2~0_combout\ & ((\inst1|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~4_combout\,
	datab => \inst1|Add4~0_combout\,
	datac => \inst1|Add2~0_combout\,
	datad => \inst1|Mux7~5_combout\,
	combout => \inst1|Mux0~2_combout\);

-- Location: LCCOMB_X37_Y17_N10
\inst1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~3_combout\ = (\inst1|Add4~0_combout\ & ((\inst1|Mux0~2_combout\ & (\inst1|Mux7~3_combout\)) # (!\inst1|Mux0~2_combout\ & ((\inst1|Mux7~2_combout\))))) # (!\inst1|Add4~0_combout\ & (((\inst1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~3_combout\,
	datab => \inst1|Mux7~2_combout\,
	datac => \inst1|Add4~0_combout\,
	datad => \inst1|Mux0~2_combout\,
	combout => \inst1|Mux0~3_combout\);

-- Location: LCCOMB_X37_Y17_N0
\inst1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~4_combout\ = (\inst1|Mux0~1_combout\ & (((\inst1|Mux0~3_combout\)))) # (!\inst1|Mux0~1_combout\ & (\inst1|Mux0~0_combout\ & (!\inst1|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|Mux0~0_combout\,
	datac => \inst1|Add4~0_combout\,
	datad => \inst1|Mux0~3_combout\,
	combout => \inst1|Mux0~4_combout\);

-- Location: LCCOMB_X38_Y18_N2
\inst1|toggle_location[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~55_combout\ = (!\inst1|toggle_location~27_combout\ & ((\inst1|Mux0~4_combout\ & ((\inst1|toggle_location~22_combout\) # (!\inst1|Mux1~5_combout\))) # (!\inst1|Mux0~4_combout\ & ((\inst1|Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~4_combout\,
	datab => \inst1|toggle_location~22_combout\,
	datac => \inst1|Mux1~5_combout\,
	datad => \inst1|toggle_location~27_combout\,
	combout => \inst1|toggle_location[1]~55_combout\);

-- Location: LCCOMB_X39_Y18_N14
\inst1|toggle_location[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~33_combout\ = (\inst1|toggle_location~28_combout\ & (!\inst1|toggle_location~26_combout\ & (\inst1|toggle_location~27_combout\ & !\inst1|Add2~0_combout\))) # (!\inst1|toggle_location~28_combout\ & (((\inst1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location~26_combout\,
	datab => \inst1|toggle_location~27_combout\,
	datac => \inst1|toggle_location~28_combout\,
	datad => \inst1|Add2~0_combout\,
	combout => \inst1|toggle_location[1]~33_combout\);

-- Location: LCCOMB_X39_Y18_N8
\inst1|toggle_location[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~35_combout\ = (\inst1|toggle_location[1]~33_combout\) # ((prev_toggle_location(1) & (\inst1|toggle_location[1]~55_combout\)) # (!prev_toggle_location(1) & ((\inst1|toggle_location[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~55_combout\,
	datab => \inst1|toggle_location[1]~34_combout\,
	datac => \inst1|toggle_location[1]~33_combout\,
	datad => prev_toggle_location(1),
	combout => \inst1|toggle_location[1]~35_combout\);

-- Location: LCCOMB_X36_Y18_N20
\inst1|toggle_location~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~30_combout\ = (\inst1|Mux0~4_combout\ & ((\inst1|process_0~5_combout\))) # (!\inst1|Mux0~4_combout\ & (\inst1|Mux7~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux0~4_combout\,
	datac => \inst1|Mux7~20_combout\,
	datad => \inst1|process_0~5_combout\,
	combout => \inst1|toggle_location~30_combout\);

-- Location: LCCOMB_X36_Y18_N12
\inst1|toggle_location[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~53_combout\ = prev_toggle_location(1) $ (((\inst1|toggle_location~31_combout\ & ((\inst1|toggle_location~30_combout\) # (!prev_toggle_location(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(0),
	datac => \inst1|toggle_location~31_combout\,
	datad => \inst1|toggle_location~30_combout\,
	combout => \inst1|toggle_location[1]~53_combout\);

-- Location: LCCOMB_X36_Y18_N4
\inst1|toggle_location[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~32_combout\ = (\inst1|toggle_location[1]~29_combout\ & ((\inst1|toggle_location~54_combout\ & ((\inst1|toggle_location[1]~53_combout\))) # (!\inst1|toggle_location~54_combout\ & (\inst1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~0_combout\,
	datab => \inst1|toggle_location~54_combout\,
	datac => \inst1|toggle_location[1]~29_combout\,
	datad => \inst1|toggle_location[1]~53_combout\,
	combout => \inst1|toggle_location[1]~32_combout\);

-- Location: LCCOMB_X37_Y17_N14
\Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (!\inst1|toggle_location[1]~35_combout\ & (!\inst1|toggle_location[1]~32_combout\ & (\state.stcompute~q\ & !\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~35_combout\,
	datab => \inst1|toggle_location[1]~32_combout\,
	datac => \state.stcompute~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector19~2_combout\);

-- Location: FF_X37_Y17_N15
\prev_toggle_location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector19~2_combout\,
	ena => \prev_toggle_location[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_toggle_location(1));

-- Location: LCCOMB_X38_Y18_N10
\inst1|toggle_location[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~57_combout\ = (!\inst1|toggle_location~27_combout\ & (\inst1|toggle_location~28_combout\ & (prev_toggle_location(1) $ (prev_toggle_location(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => \inst1|toggle_location~27_combout\,
	datac => \inst1|toggle_location~28_combout\,
	datad => prev_toggle_location(2),
	combout => \inst1|toggle_location[2]~57_combout\);

-- Location: LCCOMB_X38_Y18_N8
\inst1|toggle_location[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~43_combout\ = (\inst1|Add4~0_combout\ & (((\inst1|Add6~0_combout\ & \inst1|toggle_location[1]~42_combout\)) # (!\inst1|toggle_location~28_combout\))) # (!\inst1|Add4~0_combout\ & (\inst1|Add6~0_combout\ & 
-- ((\inst1|toggle_location[1]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~0_combout\,
	datab => \inst1|Add6~0_combout\,
	datac => \inst1|toggle_location~28_combout\,
	datad => \inst1|toggle_location[1]~42_combout\,
	combout => \inst1|toggle_location[2]~43_combout\);

-- Location: LCCOMB_X38_Y18_N14
\inst1|toggle_location[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~41_combout\ = (\inst1|toggle_location[1]~34_combout\ & prev_toggle_location(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|toggle_location[1]~34_combout\,
	datad => prev_toggle_location(2),
	combout => \inst1|toggle_location[2]~41_combout\);

-- Location: LCCOMB_X37_Y18_N16
\inst1|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add5~0_combout\ = prev_toggle_location(2) $ (prev_toggle_location(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => prev_toggle_location(2),
	datad => prev_toggle_location(1),
	combout => \inst1|Add5~0_combout\);

-- Location: LCCOMB_X36_Y18_N16
\inst1|toggle_location[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~56_combout\ = ((prev_toggle_location(1) & (prev_toggle_location(0) & prev_toggle_location(2)))) # (!prev_toggle_location(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(3),
	datad => prev_toggle_location(2),
	combout => \inst1|toggle_location[2]~56_combout\);

-- Location: LCCOMB_X37_Y18_N6
\inst1|toggle_location[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~38_combout\ = (!\inst1|Add6~0_combout\ & ((\inst1|Mux0~4_combout\ & (\inst1|toggle_location[2]~56_combout\ & \inst1|Mux7~20_combout\)) # (!\inst1|Mux0~4_combout\ & ((!\inst1|Mux7~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add6~0_combout\,
	datab => \inst1|Mux0~4_combout\,
	datac => \inst1|toggle_location[2]~56_combout\,
	datad => \inst1|Mux7~20_combout\,
	combout => \inst1|toggle_location[2]~38_combout\);

-- Location: LCCOMB_X37_Y18_N12
\inst1|toggle_location[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~37_combout\ = (!prev_toggle_location(2) & ((\inst1|Mux0~4_combout\ & (\inst1|process_0~5_combout\)) # (!\inst1|Mux0~4_combout\ & ((\inst1|Mux7~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => \inst1|Mux0~4_combout\,
	datac => \inst1|process_0~5_combout\,
	datad => \inst1|Mux7~20_combout\,
	combout => \inst1|toggle_location[2]~37_combout\);

-- Location: LCCOMB_X38_Y18_N24
\inst1|toggle_location[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~39_combout\ = (\inst1|toggle_location~31_combout\ & (((\inst1|toggle_location[2]~38_combout\) # (\inst1|toggle_location[2]~37_combout\)))) # (!\inst1|toggle_location~31_combout\ & (!\inst1|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add5~0_combout\,
	datab => \inst1|toggle_location[2]~38_combout\,
	datac => \inst1|toggle_location~31_combout\,
	datad => \inst1|toggle_location[2]~37_combout\,
	combout => \inst1|toggle_location[2]~39_combout\);

-- Location: LCCOMB_X38_Y18_N28
\inst1|toggle_location[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~40_combout\ = (\inst1|toggle_location[1]~29_combout\ & ((\inst1|toggle_location~54_combout\ & ((\inst1|toggle_location[2]~39_combout\))) # (!\inst1|toggle_location~54_combout\ & (!\inst1|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~0_combout\,
	datab => \inst1|toggle_location[1]~29_combout\,
	datac => \inst1|toggle_location~54_combout\,
	datad => \inst1|toggle_location[2]~39_combout\,
	combout => \inst1|toggle_location[2]~40_combout\);

-- Location: LCCOMB_X38_Y18_N0
\inst1|toggle_location[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~44_combout\ = (\inst1|toggle_location[2]~57_combout\) # ((\inst1|toggle_location[2]~43_combout\) # ((\inst1|toggle_location[2]~41_combout\) # (\inst1|toggle_location[2]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[2]~57_combout\,
	datab => \inst1|toggle_location[2]~43_combout\,
	datac => \inst1|toggle_location[2]~41_combout\,
	datad => \inst1|toggle_location[2]~40_combout\,
	combout => \inst1|toggle_location[2]~44_combout\);

-- Location: LCCOMB_X38_Y17_N28
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.stcompute~q\ & (!\inst1|toggle_location[2]~44_combout\ & !\Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.stcompute~q\,
	datac => \inst1|toggle_location[2]~44_combout\,
	datad => \Equal0~2_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X38_Y17_N29
\prev_toggle_location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector18~0_combout\,
	ena => \prev_toggle_location[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_toggle_location(2));

-- Location: LCCOMB_X38_Y18_N16
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = prev_toggle_location(2) $ (!\inst1|toggle_location[2]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(2),
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X36_Y18_N0
\inst1|toggle_location[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~49_combout\ = (\inst1|toggle_location[3]~48_combout\) # (\inst1|toggle_location[3]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|toggle_location[3]~48_combout\,
	datad => \inst1|toggle_location[3]~46_combout\,
	combout => \inst1|toggle_location[3]~49_combout\);

-- Location: LCCOMB_X39_Y18_N0
\inst1|toggle_location[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~36_combout\ = (\inst1|toggle_location[1]~35_combout\) # (\inst1|toggle_location[1]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|toggle_location[1]~35_combout\,
	datad => \inst1|toggle_location[1]~32_combout\,
	combout => \inst1|toggle_location[1]~36_combout\);

-- Location: LCCOMB_X40_Y18_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (prev_toggle_location(1) & (!\inst1|toggle_location[1]~36_combout\ & (prev_toggle_location(0) $ (\inst1|toggle_location[0]~25_combout\)))) # (!prev_toggle_location(1) & (\inst1|toggle_location[1]~36_combout\ & (prev_toggle_location(0) 
-- $ (\inst1|toggle_location[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => prev_toggle_location(0),
	datac => \inst1|toggle_location[1]~36_combout\,
	datad => \inst1|toggle_location[0]~25_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X40_Y18_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Equal0~1_combout\ & (\Equal0~0_combout\ & (prev_toggle_location(3) $ (\inst1|toggle_location[3]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => prev_toggle_location(3),
	datac => \inst1|toggle_location[3]~49_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X40_Y18_N4
\result1[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \result1[8]~0_combout\ = (\go~input_o\ & (((\state.stcompute~q\ & !\Equal0~2_combout\)) # (!\state.stidle~q\))) # (!\go~input_o\ & (\state.stcompute~q\ & ((!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \go~input_o\,
	datab => \state.stcompute~q\,
	datac => \state.stidle~q\,
	datad => \Equal0~2_combout\,
	combout => \result1[8]~0_combout\);

-- Location: FF_X40_Y18_N15
\state.stcompute\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \result1[8]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.stcompute~q\);

-- Location: LCCOMB_X40_Y17_N10
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.stcompute~q\ & \Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.stcompute~q\,
	datac => \Equal0~2_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X40_Y17_N11
\state.stdone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.stdone~q\);

-- Location: LCCOMB_X39_Y20_N26
\prev_toggle_location[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_toggle_location[2]~0_combout\ = (!\state.stdone~q\ & ((\state.stidle~q\) # (\go~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.stidle~q\,
	datac => \state.stdone~q\,
	datad => \go~input_o\,
	combout => \prev_toggle_location[2]~0_combout\);

-- Location: FF_X40_Y18_N13
\state.stidle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \prev_toggle_location[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.stidle~q\);

-- Location: LCCOMB_X39_Y20_N24
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\go~input_o\ & !\state.stidle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \go~input_o\,
	datad => \state.stidle~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X37_Y19_N23
\mpr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \mpr_in[7]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(7));

-- Location: LCCOMB_X37_Y17_N28
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (mpr(7) & (!prev_toggle_location(1) & !prev_toggle_location(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mpr(7),
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y17_N30
\inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst1|Add4~0_combout\ & ((\inst1|Add2~0_combout\ & (\inst1|Mux7~4_combout\)) # (!\inst1|Add2~0_combout\ & ((\inst1|Mux7~5_combout\))))) # (!\inst1|Add4~0_combout\ & (((\inst1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~4_combout\,
	datab => \inst1|Add4~0_combout\,
	datac => \inst1|Add2~0_combout\,
	datad => \inst1|Mux7~5_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y17_N2
\inst1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (\inst1|Mux4~0_combout\ & ((\inst1|Mux7~3_combout\) # ((\inst1|Add4~0_combout\)))) # (!\inst1|Mux4~0_combout\ & (((\inst1|Mux7~2_combout\ & !\inst1|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~3_combout\,
	datab => \inst1|Mux7~2_combout\,
	datac => \inst1|Mux4~0_combout\,
	datad => \inst1|Add4~0_combout\,
	combout => \inst1|Mux4~1_combout\);

-- Location: LCCOMB_X37_Y17_N16
\inst1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~2_combout\ = (\inst1|Add4~1_combout\ & (((!\inst1|Add4~0_combout\)) # (!\inst1|Mux0~0_combout\))) # (!\inst1|Add4~1_combout\ & (((!\inst1|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~0_combout\,
	datab => \inst1|Add4~1_combout\,
	datac => \inst1|Add4~0_combout\,
	datad => \inst1|Mux4~1_combout\,
	combout => \inst1|Mux4~2_combout\);

-- Location: LCCOMB_X37_Y20_N8
\inst1|sig_add~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_add~6_combout\ = (\inst1|Mux4~2_combout\ & (((prev_toggle_location(2))) # (!prev_toggle_location(3)))) # (!\inst1|Mux4~2_combout\ & (\inst1|Mux1~5_combout\ & ((prev_toggle_location(2)) # (!prev_toggle_location(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux4~2_combout\,
	datab => prev_toggle_location(3),
	datac => \inst1|Mux1~5_combout\,
	datad => prev_toggle_location(2),
	combout => \inst1|sig_add~6_combout\);

-- Location: LCCOMB_X37_Y18_N2
\inst1|sig_add~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_add~7_combout\ = (\inst1|sig_add~6_combout\) # (((!\inst1|LessThan4~0_combout\ & \inst1|Mux5~4_combout\)) # (!\inst1|process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sig_add~6_combout\,
	datab => \inst1|LessThan4~0_combout\,
	datac => \inst1|Mux5~4_combout\,
	datad => \inst1|process_0~4_combout\,
	combout => \inst1|sig_add~7_combout\);

-- Location: LCCOMB_X37_Y18_N24
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = ((prev_toggle_location(3) & (!prev_toggle_location(2) & !prev_toggle_location(1)))) # (!\inst1|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(3),
	datab => \inst1|Mux2~3_combout\,
	datac => prev_toggle_location(2),
	datad => prev_toggle_location(1),
	combout => \inst1|process_0~6_combout\);

-- Location: LCCOMB_X36_Y18_N8
\inst1|sig_add~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_add~4_combout\ = (((!prev_toggle_location(3) & !\inst1|Mux8~1_combout\)) # (!\inst1|process_0~7_combout\)) # (!\inst1|process_0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(3),
	datab => \inst1|process_0~6_combout\,
	datac => \inst1|Mux8~1_combout\,
	datad => \inst1|process_0~7_combout\,
	combout => \inst1|sig_add~4_combout\);

-- Location: LCCOMB_X36_Y18_N26
\inst1|sig_add~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_add~5_combout\ = (\inst1|sig_add~4_combout\) # ((\inst1|Mux1~5_combout\ & ((prev_toggle_location(1)) # (prev_toggle_location(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => \inst1|Mux1~5_combout\,
	datac => \inst1|sig_add~4_combout\,
	datad => prev_toggle_location(0),
	combout => \inst1|sig_add~5_combout\);

-- Location: LCCOMB_X36_Y18_N10
\inst1|sig_add\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_add~combout\ = (\inst1|Mux0~4_combout\ & ((\inst1|sig_add~7_combout\) # ((\inst1|sig_add~5_combout\) # (!\inst1|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sig_add~7_combout\,
	datab => \inst1|Mux0~4_combout\,
	datac => \inst1|sig_add~5_combout\,
	datad => \inst1|process_0~5_combout\,
	combout => \inst1|sig_add~combout\);

-- Location: LCCOMB_X37_Y20_N24
\inst1|sig_sub~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_sub~3_combout\ = (((!prev_toggle_location(3) & \inst1|Mux8~1_combout\)) # (!\inst1|Mux7~20_combout\)) # (!\inst1|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux4~2_combout\,
	datab => prev_toggle_location(3),
	datac => \inst1|Mux8~1_combout\,
	datad => \inst1|Mux7~20_combout\,
	combout => \inst1|sig_sub~3_combout\);

-- Location: LCCOMB_X37_Y20_N30
\inst1|sig_sub~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_sub~2_combout\ = (!\inst1|Mux6~2_combout\) # (!\inst1|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mux2~3_combout\,
	datad => \inst1|Mux6~2_combout\,
	combout => \inst1|sig_sub~2_combout\);

-- Location: LCCOMB_X37_Y20_N20
\inst1|sig_sub~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_sub~4_combout\ = (!\inst1|Mux0~4_combout\ & (((\inst1|sig_sub~3_combout\) # (\inst1|sig_sub~2_combout\)) # (!\inst1|toggle_location~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location~18_combout\,
	datab => \inst1|sig_sub~3_combout\,
	datac => \inst1|sig_sub~2_combout\,
	datad => \inst1|Mux0~4_combout\,
	combout => \inst1|sig_sub~4_combout\);

-- Location: IOIBUF_X43_Y34_N22
\mpd_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(0),
	o => \mpd_in[0]~input_o\);

-- Location: FF_X41_Y19_N13
\mpd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mpd_in[0]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(0));

-- Location: LCCOMB_X39_Y19_N30
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (!\inst1|toggle_location[1]~35_combout\ & (!\inst1|toggle_location[1]~32_combout\ & !\inst1|toggle_location[2]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|toggle_location[1]~35_combout\,
	datac => \inst1|toggle_location[1]~32_combout\,
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y18_N12
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (!\inst1|toggle_location[3]~48_combout\ & (!\inst1|toggle_location[3]~46_combout\ & !\inst1|toggle_location[0]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|toggle_location[3]~48_combout\,
	datac => \inst1|toggle_location[3]~46_combout\,
	datad => \inst1|toggle_location[0]~25_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X41_Y19_N26
\inst2|mpd2[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[0]~14_combout\ = (mpd(0) & (\inst2|Equal0~5_combout\ & \inst2|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(0),
	datab => \inst2|Equal0~5_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|mpd2[0]~14_combout\);

-- Location: CLKCTRL_G8
\inst1|toggle_location[3]~49clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|toggle_location[3]~49clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|toggle_location[3]~49clkctrl_outclk\);

-- Location: LCCOMB_X41_Y19_N20
\inst2|mpd2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(0) = (GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & (\inst2|mpd2\(0))) # (!GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & ((\inst2|mpd2[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mpd2\(0),
	datac => \inst2|mpd2[0]~14_combout\,
	datad => \inst1|toggle_location[3]~49clkctrl_outclk\,
	combout => \inst2|mpd2\(0));

-- Location: IOIBUF_X45_Y0_N22
\mpd_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(1),
	o => \mpd_in[1]~input_o\);

-- Location: FF_X41_Y19_N27
\mpd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mpd_in[1]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(1));

-- Location: LCCOMB_X39_Y19_N26
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (!\inst1|toggle_location[3]~48_combout\ & (!\inst1|toggle_location[0]~25_combout\ & (\inst2|Equal0~5_combout\ & !\inst1|toggle_location[3]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~48_combout\,
	datab => \inst1|toggle_location[0]~25_combout\,
	datac => \inst2|Equal0~5_combout\,
	datad => \inst1|toggle_location[3]~46_combout\,
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X41_Y19_N22
\inst2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~2_combout\ = (!\inst1|toggle_location[3]~48_combout\ & (\inst2|Equal0~5_combout\ & (\inst1|toggle_location[0]~25_combout\ & !\inst1|toggle_location[3]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~48_combout\,
	datab => \inst2|Equal0~5_combout\,
	datac => \inst1|toggle_location[0]~25_combout\,
	datad => \inst1|toggle_location[3]~46_combout\,
	combout => \inst2|Equal1~2_combout\);

-- Location: LCCOMB_X41_Y19_N8
\inst2|mpd2[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[1]~15_combout\ = (\inst2|Equal0~6_combout\ & (mpd(1))) # (!\inst2|Equal0~6_combout\ & (((mpd(0) & \inst2|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(1),
	datab => \inst2|Equal0~6_combout\,
	datac => mpd(0),
	datad => \inst2|Equal1~2_combout\,
	combout => \inst2|mpd2[1]~15_combout\);

-- Location: LCCOMB_X41_Y19_N10
\inst2|mpd2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(1) = (GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & (\inst2|mpd2\(1))) # (!GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & ((\inst2|mpd2[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2\(1),
	datac => \inst2|mpd2[1]~15_combout\,
	datad => \inst1|toggle_location[3]~49clkctrl_outclk\,
	combout => \inst2|mpd2\(1));

-- Location: LCCOMB_X40_Y19_N30
\inst2|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal2~2_combout\ = (!\inst1|toggle_location[2]~44_combout\ & (\inst2|Equal0~4_combout\ & ((\inst1|toggle_location[1]~35_combout\) # (\inst1|toggle_location[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~35_combout\,
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => \inst1|toggle_location[1]~32_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal2~2_combout\);

-- Location: LCCOMB_X37_Y19_N16
\inst2|mpd2[2]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[2]~64_combout\ = (\inst1|toggle_location[3]~46_combout\) # ((\inst1|toggle_location[3]~48_combout\) # (!\inst2|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~46_combout\,
	datab => \inst1|toggle_location[3]~48_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|mpd2[2]~64_combout\);

-- Location: IOIBUF_X40_Y34_N8
\mpd_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(2),
	o => \mpd_in[2]~input_o\);

-- Location: FF_X40_Y19_N17
\mpd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mpd_in[2]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(2));

-- Location: LCCOMB_X41_Y19_N30
\inst2|mpd2[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[2]~16_combout\ = (\inst2|Equal0~6_combout\ & (((mpd(2))))) # (!\inst2|Equal0~6_combout\ & (\inst2|Equal1~2_combout\ & ((mpd(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~2_combout\,
	datab => mpd(2),
	datac => \inst2|Equal0~6_combout\,
	datad => mpd(1),
	combout => \inst2|mpd2[2]~16_combout\);

-- Location: LCCOMB_X41_Y19_N24
\inst2|mpd2[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[2]~17_combout\ = (\inst2|mpd2[2]~16_combout\) # ((\inst2|Equal2~2_combout\ & (mpd(0) & \inst2|mpd2[2]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal2~2_combout\,
	datab => mpd(0),
	datac => \inst2|mpd2[2]~64_combout\,
	datad => \inst2|mpd2[2]~16_combout\,
	combout => \inst2|mpd2[2]~17_combout\);

-- Location: LCCOMB_X41_Y19_N0
\inst2|mpd2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(2) = (GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & ((\inst2|mpd2\(2)))) # (!GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & (\inst2|mpd2[2]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[2]~17_combout\,
	datab => \inst2|mpd2\(2),
	datad => \inst1|toggle_location[3]~49clkctrl_outclk\,
	combout => \inst2|mpd2\(2));

-- Location: IOIBUF_X31_Y34_N1
\mpd_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(3),
	o => \mpd_in[3]~input_o\);

-- Location: FF_X38_Y19_N1
\mpd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mpd_in[3]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(3));

-- Location: LCCOMB_X41_Y19_N14
\inst2|mpd2[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[3]~18_combout\ = (mpd(3) & (\inst2|Equal0~5_combout\ & (!\inst1|toggle_location[0]~25_combout\ & !\inst1|toggle_location[3]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(3),
	datab => \inst2|Equal0~5_combout\,
	datac => \inst1|toggle_location[0]~25_combout\,
	datad => \inst1|toggle_location[3]~49_combout\,
	combout => \inst2|mpd2[3]~18_combout\);

-- Location: LCCOMB_X38_Y19_N6
\inst2|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~0_combout\ = (!\inst1|toggle_location[2]~44_combout\ & (\inst1|toggle_location[1]~36_combout\ & (\inst1|toggle_location[0]~25_combout\ & !\inst1|toggle_location[3]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[2]~44_combout\,
	datab => \inst1|toggle_location[1]~36_combout\,
	datac => \inst1|toggle_location[0]~25_combout\,
	datad => \inst1|toggle_location[3]~49_combout\,
	combout => \inst2|Equal3~0_combout\);

-- Location: LCCOMB_X41_Y19_N16
\inst2|mpd2[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[3]~19_combout\ = (mpd(1) & ((\inst2|Equal2~2_combout\) # ((\inst2|Equal3~0_combout\ & mpd(0))))) # (!mpd(1) & (((\inst2|Equal3~0_combout\ & mpd(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(1),
	datab => \inst2|Equal2~2_combout\,
	datac => \inst2|Equal3~0_combout\,
	datad => mpd(0),
	combout => \inst2|mpd2[3]~19_combout\);

-- Location: LCCOMB_X41_Y19_N18
\inst2|mpd2[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[3]~20_combout\ = (\inst2|mpd2[3]~18_combout\) # ((\inst2|mpd2[3]~19_combout\) # ((mpd(2) & \inst2|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(2),
	datab => \inst2|mpd2[3]~18_combout\,
	datac => \inst2|Equal1~2_combout\,
	datad => \inst2|mpd2[3]~19_combout\,
	combout => \inst2|mpd2[3]~20_combout\);

-- Location: LCCOMB_X41_Y19_N12
\inst2|mpd2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(3) = (GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & (\inst2|mpd2\(3))) # (!GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & ((\inst2|mpd2[3]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2\(3),
	datab => \inst2|mpd2[3]~20_combout\,
	datad => \inst1|toggle_location[3]~49clkctrl_outclk\,
	combout => \inst2|mpd2\(3));

-- Location: LCCOMB_X40_Y19_N22
\inst2|mpd2[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~21_combout\ = (\inst1|toggle_location[1]~35_combout\ & (mpd(1))) # (!\inst1|toggle_location[1]~35_combout\ & ((\inst1|toggle_location[1]~32_combout\ & (mpd(1))) # (!\inst1|toggle_location[1]~32_combout\ & ((mpd(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~35_combout\,
	datab => mpd(1),
	datac => \inst1|toggle_location[1]~32_combout\,
	datad => mpd(3),
	combout => \inst2|mpd2[4]~21_combout\);

-- Location: LCCOMB_X39_Y19_N4
\inst2|mpd2[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~22_combout\ = (!\inst1|toggle_location[3]~48_combout\ & (!\inst1|toggle_location[2]~44_combout\ & (\inst1|toggle_location[0]~25_combout\ & !\inst1|toggle_location[3]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~48_combout\,
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => \inst1|toggle_location[0]~25_combout\,
	datad => \inst1|toggle_location[3]~46_combout\,
	combout => \inst2|mpd2[4]~22_combout\);

-- Location: IOIBUF_X40_Y34_N1
\mpd_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(4),
	o => \mpd_in[4]~input_o\);

-- Location: FF_X40_Y19_N25
\mpd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mpd_in[4]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(4));

-- Location: LCCOMB_X40_Y19_N24
\inst2|mpd2[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~23_combout\ = (\inst1|toggle_location[2]~44_combout\ & (mpd(0))) # (!\inst1|toggle_location[2]~44_combout\ & ((mpd(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mpd(0),
	datac => mpd(4),
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \inst2|mpd2[4]~23_combout\);

-- Location: LCCOMB_X40_Y19_N2
\inst2|mpd2[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~24_combout\ = (\inst1|toggle_location[1]~36_combout\ & (!\inst1|toggle_location[2]~44_combout\ & (mpd(2)))) # (!\inst1|toggle_location[1]~36_combout\ & (((\inst2|mpd2[4]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~36_combout\,
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => mpd(2),
	datad => \inst2|mpd2[4]~23_combout\,
	combout => \inst2|mpd2[4]~24_combout\);

-- Location: LCCOMB_X40_Y19_N12
\inst2|mpd2[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~25_combout\ = (\inst2|Equal0~4_combout\ & ((\inst2|mpd2[4]~24_combout\) # ((\inst2|mpd2[4]~21_combout\ & \inst2|mpd2[4]~22_combout\)))) # (!\inst2|Equal0~4_combout\ & (\inst2|mpd2[4]~21_combout\ & (\inst2|mpd2[4]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|mpd2[4]~21_combout\,
	datac => \inst2|mpd2[4]~22_combout\,
	datad => \inst2|mpd2[4]~24_combout\,
	combout => \inst2|mpd2[4]~25_combout\);

-- Location: LCCOMB_X40_Y19_N6
\inst2|mpd2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(4) = (GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & (\inst2|mpd2\(4))) # (!GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & ((\inst2|mpd2[4]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2\(4),
	datac => \inst2|mpd2[4]~25_combout\,
	datad => \inst1|toggle_location[3]~49clkctrl_outclk\,
	combout => \inst2|mpd2\(4));

-- Location: IOIBUF_X45_Y34_N8
\mpd_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(5),
	o => \mpd_in[5]~input_o\);

-- Location: FF_X41_Y19_N1
\mpd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mpd_in[5]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(5));

-- Location: LCCOMB_X40_Y19_N10
\inst2|mpd2[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~26_combout\ = (\inst1|toggle_location[1]~32_combout\ & (((mpd(3))))) # (!\inst1|toggle_location[1]~32_combout\ & ((\inst1|toggle_location[1]~35_combout\ & ((mpd(3)))) # (!\inst1|toggle_location[1]~35_combout\ & (mpd(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(5),
	datab => \inst1|toggle_location[1]~32_combout\,
	datac => \inst1|toggle_location[1]~35_combout\,
	datad => mpd(3),
	combout => \inst2|mpd2[4]~26_combout\);

-- Location: LCCOMB_X40_Y19_N0
\inst2|mpd2[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~27_combout\ = (\inst1|toggle_location[2]~44_combout\ & (!\inst1|toggle_location[1]~36_combout\ & ((mpd(1))))) # (!\inst1|toggle_location[2]~44_combout\ & (((\inst2|mpd2[4]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~36_combout\,
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => \inst2|mpd2[4]~26_combout\,
	datad => mpd(1),
	combout => \inst2|mpd2[4]~27_combout\);

-- Location: LCCOMB_X40_Y19_N14
\inst2|mpd2[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[5]~28_combout\ = (!\inst1|toggle_location[3]~49_combout\ & ((\inst1|toggle_location[0]~25_combout\ & ((\inst2|mpd2[4]~24_combout\))) # (!\inst1|toggle_location[0]~25_combout\ & (\inst2|mpd2[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[4]~27_combout\,
	datab => \inst1|toggle_location[3]~49_combout\,
	datac => \inst1|toggle_location[0]~25_combout\,
	datad => \inst2|mpd2[4]~24_combout\,
	combout => \inst2|mpd2[5]~28_combout\);

-- Location: LCCOMB_X40_Y19_N16
\inst2|mpd2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(5) = (GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & (\inst2|mpd2\(5))) # (!GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & ((\inst2|mpd2[5]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2\(5),
	datab => \inst2|mpd2[5]~28_combout\,
	datad => \inst1|toggle_location[3]~49clkctrl_outclk\,
	combout => \inst2|mpd2\(5));

-- Location: LCCOMB_X39_Y17_N22
\inst2|mpd2[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[6]~30_combout\ = prev_toggle_location(0) $ (((\inst1|toggle_location~20_combout\) # ((!\inst1|toggle_location~24_combout\ & !\inst1|toggle_location~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location~20_combout\,
	datab => prev_toggle_location(0),
	datac => \inst1|toggle_location~24_combout\,
	datad => \inst1|toggle_location~21_combout\,
	combout => \inst2|mpd2[6]~30_combout\);

-- Location: IOIBUF_X53_Y17_N22
\mpd_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(6),
	o => \mpd_in[6]~input_o\);

-- Location: LCCOMB_X41_Y19_N2
\mpd[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpd[6]~feeder_combout\ = \mpd_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mpd_in[6]~input_o\,
	combout => \mpd[6]~feeder_combout\);

-- Location: FF_X41_Y19_N3
\mpd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mpd[6]~feeder_combout\,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(6));

-- Location: LCCOMB_X39_Y19_N20
\inst2|mpd2[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[8]~29_combout\ = (\inst1|toggle_location[2]~44_combout\ & (mpd(2))) # (!\inst1|toggle_location[2]~44_combout\ & ((mpd(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(2),
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => mpd(6),
	combout => \inst2|mpd2[8]~29_combout\);

-- Location: LCCOMB_X40_Y19_N8
\inst2|mpd2[4]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~65_combout\ = (\inst1|toggle_location[1]~35_combout\ & (((\inst2|mpd2[4]~23_combout\)))) # (!\inst1|toggle_location[1]~35_combout\ & ((\inst1|toggle_location[1]~32_combout\ & ((\inst2|mpd2[4]~23_combout\))) # 
-- (!\inst1|toggle_location[1]~32_combout\ & (\inst2|mpd2[8]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~35_combout\,
	datab => \inst2|mpd2[8]~29_combout\,
	datac => \inst1|toggle_location[1]~32_combout\,
	datad => \inst2|mpd2[4]~23_combout\,
	combout => \inst2|mpd2[4]~65_combout\);

-- Location: LCCOMB_X40_Y19_N28
\inst2|mpd2[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[6]~31_combout\ = (!\inst1|toggle_location[3]~49_combout\ & ((\inst2|mpd2[6]~30_combout\ & (\inst2|mpd2[4]~65_combout\)) # (!\inst2|mpd2[6]~30_combout\ & ((\inst2|mpd2[4]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~49_combout\,
	datab => \inst2|mpd2[6]~30_combout\,
	datac => \inst2|mpd2[4]~65_combout\,
	datad => \inst2|mpd2[4]~27_combout\,
	combout => \inst2|mpd2[6]~31_combout\);

-- Location: LCCOMB_X40_Y17_N0
\inst2|mpd2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(6) = (GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & (\inst2|mpd2\(6))) # (!GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & ((\inst2|mpd2[6]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mpd2\(6),
	datac => \inst2|mpd2[6]~31_combout\,
	datad => \inst1|toggle_location[3]~49clkctrl_outclk\,
	combout => \inst2|mpd2\(6));

-- Location: LCCOMB_X39_Y19_N0
\inst2|mpd2[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~32_combout\ = (\inst1|toggle_location[1]~36_combout\ & ((\inst1|toggle_location[2]~44_combout\ & ((mpd(1)))) # (!\inst1|toggle_location[2]~44_combout\ & (mpd(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(5),
	datab => mpd(1),
	datac => \inst1|toggle_location[1]~36_combout\,
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \inst2|mpd2[4]~32_combout\);

-- Location: IOIBUF_X53_Y17_N15
\mpd_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(7),
	o => \mpd_in[7]~input_o\);

-- Location: FF_X39_Y19_N15
\mpd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mpd_in[7]~input_o\,
	sload => VCC,
	ena => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(7));

-- Location: LCCOMB_X39_Y19_N14
\inst2|mpd2[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~33_combout\ = (!\inst1|toggle_location[1]~36_combout\ & ((\inst1|toggle_location[2]~44_combout\ & (mpd(3))) # (!\inst1|toggle_location[2]~44_combout\ & ((mpd(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(3),
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => mpd(7),
	datad => \inst1|toggle_location[1]~36_combout\,
	combout => \inst2|mpd2[4]~33_combout\);

-- Location: LCCOMB_X40_Y19_N26
\inst2|mpd2[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[7]~34_combout\ = (\inst2|mpd2[6]~30_combout\ & (!\inst1|toggle_location[3]~49_combout\ & ((\inst2|mpd2[4]~32_combout\) # (\inst2|mpd2[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[6]~30_combout\,
	datab => \inst1|toggle_location[3]~49_combout\,
	datac => \inst2|mpd2[4]~32_combout\,
	datad => \inst2|mpd2[4]~33_combout\,
	combout => \inst2|mpd2[7]~34_combout\);

-- Location: LCCOMB_X40_Y19_N18
\inst2|mpd2[7]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[7]~68_combout\ = (\inst1|toggle_location[3]~46_combout\ & (((mpd(0))))) # (!\inst1|toggle_location[3]~46_combout\ & (!\inst2|mpd2[6]~30_combout\ & ((\inst2|mpd2[4]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[6]~30_combout\,
	datab => mpd(0),
	datac => \inst1|toggle_location[3]~46_combout\,
	datad => \inst2|mpd2[4]~65_combout\,
	combout => \inst2|mpd2[7]~68_combout\);

-- Location: LCCOMB_X40_Y19_N20
\inst2|mpd2[7]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[7]~69_combout\ = (\inst2|mpd2[7]~34_combout\) # ((\inst1|toggle_location[3]~48_combout\ & (mpd(0))) # (!\inst1|toggle_location[3]~48_combout\ & ((\inst2|mpd2[7]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~48_combout\,
	datab => mpd(0),
	datac => \inst2|mpd2[7]~34_combout\,
	datad => \inst2|mpd2[7]~68_combout\,
	combout => \inst2|mpd2[7]~69_combout\);

-- Location: LCCOMB_X40_Y17_N18
\inst2|mpd2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(7) = (GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & (\inst2|mpd2\(7))) # (!GLOBAL(\inst1|toggle_location[3]~49clkctrl_outclk\) & ((\inst2|mpd2[7]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mpd2\(7),
	datac => \inst2|mpd2[7]~69_combout\,
	datad => \inst1|toggle_location[3]~49clkctrl_outclk\,
	combout => \inst2|mpd2\(7));

-- Location: LCCOMB_X39_Y19_N28
\inst2|mpd2[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[8]~37_combout\ = (\inst1|toggle_location[1]~36_combout\ & (((\inst2|mpd2[8]~29_combout\)))) # (!\inst1|toggle_location[1]~36_combout\ & (mpd(4) & ((\inst1|toggle_location[2]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~36_combout\,
	datab => mpd(4),
	datac => \inst2|mpd2[8]~29_combout\,
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \inst2|mpd2[8]~37_combout\);

-- Location: LCCOMB_X39_Y19_N12
\inst2|mpd2[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[8]~36_combout\ = (mpd(1) & ((\inst1|toggle_location[3]~49_combout\) # ((\inst2|Equal0~5_combout\ & !\inst1|toggle_location[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datab => mpd(1),
	datac => \inst1|toggle_location[3]~49_combout\,
	datad => \inst1|toggle_location[0]~25_combout\,
	combout => \inst2|mpd2[8]~36_combout\);

-- Location: LCCOMB_X39_Y19_N24
\inst2|mpd2[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[8]~35_combout\ = (!\inst1|toggle_location[3]~49_combout\ & (\inst1|toggle_location[0]~25_combout\ & ((\inst2|mpd2[4]~33_combout\) # (\inst2|mpd2[4]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[4]~33_combout\,
	datab => \inst1|toggle_location[3]~49_combout\,
	datac => \inst2|mpd2[4]~32_combout\,
	datad => \inst1|toggle_location[0]~25_combout\,
	combout => \inst2|mpd2[8]~35_combout\);

-- Location: LCCOMB_X39_Y19_N18
\inst2|mpd2[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[8]~38_combout\ = (\inst2|mpd2[8]~36_combout\) # ((\inst2|mpd2[8]~35_combout\) # ((\inst2|Equal0~4_combout\ & \inst2|mpd2[8]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|mpd2[8]~37_combout\,
	datac => \inst2|mpd2[8]~36_combout\,
	datad => \inst2|mpd2[8]~35_combout\,
	combout => \inst2|mpd2[8]~38_combout\);

-- Location: LCCOMB_X36_Y19_N24
\inst2|mpd2[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[16]~39_combout\ = (!\inst1|toggle_location[3]~49_combout\ & ((\inst1|toggle_location[1]~36_combout\) # ((\inst1|toggle_location[0]~25_combout\) # (\inst1|toggle_location[2]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~36_combout\,
	datab => \inst1|toggle_location[3]~49_combout\,
	datac => \inst1|toggle_location[0]~25_combout\,
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \inst2|mpd2[16]~39_combout\);

-- Location: LCCOMB_X39_Y19_N2
\inst2|mpd2[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(8) = (!\inst2|Equal0~6_combout\ & ((\inst2|mpd2[16]~39_combout\ & (\inst2|mpd2[8]~38_combout\)) # (!\inst2|mpd2[16]~39_combout\ & ((\inst2|mpd2\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[8]~38_combout\,
	datab => \inst2|mpd2\(8),
	datac => \inst2|Equal0~6_combout\,
	datad => \inst2|mpd2[16]~39_combout\,
	combout => \inst2|mpd2\(8));

-- Location: LCCOMB_X38_Y19_N20
\inst2|mpd2[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[9]~46_combout\ = (!\inst1|toggle_location[1]~36_combout\ & ((\inst1|toggle_location[0]~25_combout\ & ((mpd(4)))) # (!\inst1|toggle_location[0]~25_combout\ & (mpd(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(5),
	datab => mpd(4),
	datac => \inst1|toggle_location[0]~25_combout\,
	datad => \inst1|toggle_location[1]~36_combout\,
	combout => \inst2|mpd2[9]~46_combout\);

-- Location: LCCOMB_X37_Y19_N4
\inst2|mpd2[16]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[16]~45_combout\ = (\inst1|toggle_location[2]~44_combout\ & (!\inst1|toggle_location[3]~46_combout\ & !\inst1|toggle_location[3]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => \inst1|toggle_location[3]~46_combout\,
	datad => \inst1|toggle_location[3]~48_combout\,
	combout => \inst2|mpd2[16]~45_combout\);

-- Location: LCCOMB_X38_Y19_N26
\inst2|mpd2[14]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[14]~40_combout\ = (!\inst1|toggle_location[3]~49_combout\ & (((!\inst1|toggle_location[1]~36_combout\) # (!\inst1|toggle_location[0]~25_combout\)) # (!\inst1|toggle_location[2]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[2]~44_combout\,
	datab => \inst1|toggle_location[0]~25_combout\,
	datac => \inst1|toggle_location[1]~36_combout\,
	datad => \inst1|toggle_location[3]~49_combout\,
	combout => \inst2|mpd2[14]~40_combout\);

-- Location: LCCOMB_X38_Y19_N30
\inst2|mpd2[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[9]~41_combout\ = (mpd(2) & ((\inst2|Equal0~5_combout\) # (!\inst2|mpd2[14]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mpd(2),
	datac => \inst2|mpd2[14]~40_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|mpd2[9]~41_combout\);

-- Location: LCCOMB_X38_Y19_N22
\inst2|mpd2[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[9]~43_combout\ = (!\inst1|toggle_location[2]~44_combout\ & ((\inst1|toggle_location[0]~25_combout\ & (mpd(6))) # (!\inst1|toggle_location[0]~25_combout\ & ((mpd(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[0]~25_combout\,
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => mpd(6),
	datad => mpd(7),
	combout => \inst2|mpd2[9]~43_combout\);

-- Location: LCCOMB_X38_Y19_N0
\inst2|mpd2[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[9]~42_combout\ = (!\inst1|toggle_location[0]~25_combout\ & (mpd(3) & \inst1|toggle_location[2]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[0]~25_combout\,
	datac => mpd(3),
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \inst2|mpd2[9]~42_combout\);

-- Location: LCCOMB_X38_Y19_N18
\inst2|mpd2[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[9]~44_combout\ = (\inst1|toggle_location[1]~36_combout\ & (!\inst1|toggle_location[3]~49_combout\ & ((\inst2|mpd2[9]~43_combout\) # (\inst2|mpd2[9]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[9]~43_combout\,
	datab => \inst2|mpd2[9]~42_combout\,
	datac => \inst1|toggle_location[1]~36_combout\,
	datad => \inst1|toggle_location[3]~49_combout\,
	combout => \inst2|mpd2[9]~44_combout\);

-- Location: LCCOMB_X37_Y19_N14
\inst2|mpd2[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[9]~47_combout\ = (\inst2|mpd2[9]~41_combout\) # ((\inst2|mpd2[9]~44_combout\) # ((\inst2|mpd2[9]~46_combout\ & \inst2|mpd2[16]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[9]~46_combout\,
	datab => \inst2|mpd2[16]~45_combout\,
	datac => \inst2|mpd2[9]~41_combout\,
	datad => \inst2|mpd2[9]~44_combout\,
	combout => \inst2|mpd2[9]~47_combout\);

-- Location: LCCOMB_X37_Y19_N2
\inst2|mpd2[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[16]~66_combout\ = (!\inst1|toggle_location[3]~49_combout\ & ((\inst1|toggle_location[1]~32_combout\) # ((\inst1|toggle_location[2]~44_combout\) # (\inst1|toggle_location[1]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~32_combout\,
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => \inst1|toggle_location[3]~49_combout\,
	datad => \inst1|toggle_location[1]~35_combout\,
	combout => \inst2|mpd2[16]~66_combout\);

-- Location: LCCOMB_X37_Y19_N28
\inst2|mpd2[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(9) = (\inst2|mpd2[2]~64_combout\ & ((\inst2|mpd2[16]~66_combout\ & ((\inst2|mpd2[9]~47_combout\))) # (!\inst2|mpd2[16]~66_combout\ & (\inst2|mpd2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[2]~64_combout\,
	datab => \inst2|mpd2\(9),
	datac => \inst2|mpd2[9]~47_combout\,
	datad => \inst2|mpd2[16]~66_combout\,
	combout => \inst2|mpd2\(9));

-- Location: LCCOMB_X38_Y19_N14
\inst2|mpd2[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[12]~53_combout\ = (\inst1|toggle_location[3]~49_combout\) # ((\inst1|toggle_location[2]~44_combout\) # ((\inst1|toggle_location[1]~36_combout\ & \inst1|toggle_location[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~36_combout\,
	datab => \inst1|toggle_location[0]~25_combout\,
	datac => \inst1|toggle_location[3]~49_combout\,
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \inst2|mpd2[12]~53_combout\);

-- Location: LCCOMB_X39_Y18_N18
\inst2|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal4~2_combout\ = (\inst2|Equal0~4_combout\ & (!\inst1|toggle_location[1]~32_combout\ & (!\inst1|toggle_location[1]~35_combout\ & \inst1|toggle_location[2]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst1|toggle_location[1]~32_combout\,
	datac => \inst1|toggle_location[1]~35_combout\,
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \inst2|Equal4~2_combout\);

-- Location: LCCOMB_X38_Y19_N4
\inst2|mpd2[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[10]~48_combout\ = (mpd(7) & ((\inst2|Equal3~0_combout\) # ((mpd(6) & \inst2|Equal4~2_combout\)))) # (!mpd(7) & (((mpd(6) & \inst2|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(7),
	datab => \inst2|Equal3~0_combout\,
	datac => mpd(6),
	datad => \inst2|Equal4~2_combout\,
	combout => \inst2|mpd2[10]~48_combout\);

-- Location: LCCOMB_X39_Y18_N30
\inst2|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~2_combout\ = (\inst2|Equal0~4_combout\ & (\inst1|toggle_location[2]~44_combout\ & ((\inst1|toggle_location[1]~32_combout\) # (\inst1|toggle_location[1]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst1|toggle_location[1]~32_combout\,
	datac => \inst1|toggle_location[1]~35_combout\,
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \inst2|Equal6~2_combout\);

-- Location: LCCOMB_X39_Y18_N20
\inst2|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~0_combout\ = (\inst1|toggle_location[2]~44_combout\ & (\inst1|toggle_location[0]~25_combout\ & (!\inst1|toggle_location[3]~49_combout\ & !\inst1|toggle_location[1]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[2]~44_combout\,
	datab => \inst1|toggle_location[0]~25_combout\,
	datac => \inst1|toggle_location[3]~49_combout\,
	datad => \inst1|toggle_location[1]~36_combout\,
	combout => \inst2|Equal5~0_combout\);

-- Location: LCCOMB_X38_Y19_N2
\inst2|mpd2[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[10]~49_combout\ = (mpd(5) & ((\inst2|Equal5~0_combout\) # ((mpd(4) & \inst2|Equal6~2_combout\)))) # (!mpd(5) & (mpd(4) & (\inst2|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(5),
	datab => mpd(4),
	datac => \inst2|Equal6~2_combout\,
	datad => \inst2|Equal5~0_combout\,
	combout => \inst2|mpd2[10]~49_combout\);

-- Location: LCCOMB_X38_Y19_N12
\inst2|mpd2[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[10]~50_combout\ = (\inst1|toggle_location[3]~49_combout\) # (\inst1|toggle_location[2]~44_combout\ $ (((!\inst1|toggle_location[1]~36_combout\) # (!\inst1|toggle_location[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[2]~44_combout\,
	datab => \inst1|toggle_location[0]~25_combout\,
	datac => \inst1|toggle_location[1]~36_combout\,
	datad => \inst1|toggle_location[3]~49_combout\,
	combout => \inst2|mpd2[10]~50_combout\);

-- Location: LCCOMB_X38_Y19_N10
\inst2|mpd2[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[10]~51_combout\ = (\inst2|mpd2[10]~48_combout\) # ((\inst2|mpd2[10]~49_combout\) # ((mpd(3) & \inst2|mpd2[10]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[10]~48_combout\,
	datab => mpd(3),
	datac => \inst2|mpd2[10]~49_combout\,
	datad => \inst2|mpd2[10]~50_combout\,
	combout => \inst2|mpd2[10]~51_combout\);

-- Location: LCCOMB_X38_Y19_N16
\inst2|mpd2[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[16]~52_combout\ = (!\inst1|toggle_location[3]~49_combout\ & ((\inst1|toggle_location[2]~44_combout\) # ((\inst1|toggle_location[1]~36_combout\ & \inst1|toggle_location[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~36_combout\,
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => \inst1|toggle_location[3]~49_combout\,
	datad => \inst1|toggle_location[0]~25_combout\,
	combout => \inst2|mpd2[16]~52_combout\);

-- Location: LCCOMB_X38_Y19_N24
\inst2|mpd2[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(10) = (\inst2|mpd2[12]~53_combout\ & ((\inst2|mpd2[16]~52_combout\ & ((\inst2|mpd2[10]~51_combout\))) # (!\inst2|mpd2[16]~52_combout\ & (\inst2|mpd2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[12]~53_combout\,
	datab => \inst2|mpd2\(10),
	datac => \inst2|mpd2[10]~51_combout\,
	datad => \inst2|mpd2[16]~52_combout\,
	combout => \inst2|mpd2\(10));

-- Location: LCCOMB_X39_Y18_N24
\inst2|mpd2[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[3]~57_combout\ = (!\inst1|toggle_location[2]~44_combout\ & (!\inst1|toggle_location[3]~48_combout\ & !\inst1|toggle_location[3]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[2]~44_combout\,
	datab => \inst1|toggle_location[3]~48_combout\,
	datad => \inst1|toggle_location[3]~46_combout\,
	combout => \inst2|mpd2[3]~57_combout\);

-- Location: LCCOMB_X39_Y18_N16
\inst2|mpd2[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[11]~54_combout\ = (\inst2|Equal4~2_combout\ & (((mpd(7))))) # (!\inst2|Equal4~2_combout\ & (mpd(6) & (\inst2|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(6),
	datab => \inst2|Equal5~0_combout\,
	datac => mpd(7),
	datad => \inst2|Equal4~2_combout\,
	combout => \inst2|mpd2[11]~54_combout\);

-- Location: LCCOMB_X39_Y18_N26
\inst2|mpd2[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[11]~55_combout\ = (\inst2|Equal6~2_combout\ & ((mpd(5)))) # (!\inst2|Equal6~2_combout\ & (mpd(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(4),
	datac => mpd(5),
	datad => \inst2|Equal6~2_combout\,
	combout => \inst2|mpd2[11]~55_combout\);

-- Location: LCCOMB_X39_Y18_N10
\inst2|mpd2[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[11]~56_combout\ = (\inst2|mpd2[11]~54_combout\) # ((\inst2|mpd2[11]~55_combout\ & (!\inst2|Equal5~0_combout\ & !\inst2|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[11]~54_combout\,
	datab => \inst2|mpd2[11]~55_combout\,
	datac => \inst2|Equal5~0_combout\,
	datad => \inst2|Equal4~2_combout\,
	combout => \inst2|mpd2[11]~56_combout\);

-- Location: LCCOMB_X39_Y18_N4
\inst2|mpd2[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(11) = (!\inst2|mpd2[3]~57_combout\ & ((\inst2|mpd2[16]~45_combout\ & ((\inst2|mpd2[11]~56_combout\))) # (!\inst2|mpd2[16]~45_combout\ & (\inst2|mpd2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[3]~57_combout\,
	datab => \inst2|mpd2\(11),
	datac => \inst2|mpd2[11]~56_combout\,
	datad => \inst2|mpd2[16]~45_combout\,
	combout => \inst2|mpd2\(11));

-- Location: LCCOMB_X39_Y18_N28
\inst2|mpd2[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[12]~58_combout\ = (!\inst2|Equal5~0_combout\ & ((\inst2|Equal6~2_combout\ & (mpd(6))) # (!\inst2|Equal6~2_combout\ & ((mpd(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(6),
	datab => mpd(5),
	datac => \inst2|Equal5~0_combout\,
	datad => \inst2|Equal6~2_combout\,
	combout => \inst2|mpd2[12]~58_combout\);

-- Location: LCCOMB_X39_Y18_N22
\inst2|mpd2[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[12]~59_combout\ = (\inst2|mpd2[12]~58_combout\) # ((mpd(7) & \inst2|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[12]~58_combout\,
	datac => mpd(7),
	datad => \inst2|Equal5~0_combout\,
	combout => \inst2|mpd2[12]~59_combout\);

-- Location: LCCOMB_X39_Y18_N6
\inst2|mpd2[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[12]~61_combout\ = (!\inst1|toggle_location[3]~49_combout\ & (((!\inst1|toggle_location[0]~25_combout\ & !\inst1|toggle_location[1]~36_combout\)) # (!\inst1|toggle_location[2]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~49_combout\,
	datab => \inst1|toggle_location[0]~25_combout\,
	datac => \inst1|toggle_location[2]~44_combout\,
	datad => \inst1|toggle_location[1]~36_combout\,
	combout => \inst2|mpd2[12]~61_combout\);

-- Location: LCCOMB_X38_Y19_N28
\inst2|mpd2[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[16]~60_combout\ = (\inst1|toggle_location[2]~44_combout\ & (!\inst1|toggle_location[3]~49_combout\ & ((\inst1|toggle_location[1]~36_combout\) # (\inst1|toggle_location[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~36_combout\,
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => \inst1|toggle_location[3]~49_combout\,
	datad => \inst1|toggle_location[0]~25_combout\,
	combout => \inst2|mpd2[16]~60_combout\);

-- Location: LCCOMB_X39_Y18_N2
\inst2|mpd2[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(12) = (!\inst2|mpd2[12]~61_combout\ & ((\inst2|mpd2[16]~60_combout\ & (\inst2|mpd2[12]~59_combout\)) # (!\inst2|mpd2[16]~60_combout\ & ((\inst2|mpd2\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[12]~59_combout\,
	datab => \inst2|mpd2[12]~61_combout\,
	datac => \inst2|mpd2[16]~60_combout\,
	datad => \inst2|mpd2\(12),
	combout => \inst2|mpd2\(12));

-- Location: LCCOMB_X39_Y19_N8
\inst2|mpd2[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[16]~67_combout\ = (!\inst1|toggle_location[3]~49_combout\ & (\inst1|toggle_location[2]~44_combout\ & ((\inst1|toggle_location[1]~32_combout\) # (\inst1|toggle_location[1]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~49_combout\,
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => \inst1|toggle_location[1]~32_combout\,
	datad => \inst1|toggle_location[1]~35_combout\,
	combout => \inst2|mpd2[16]~67_combout\);

-- Location: LCCOMB_X39_Y19_N16
\inst2|mpd2[13]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[13]~63_combout\ = (!\inst1|toggle_location[3]~48_combout\ & (!\inst1|toggle_location[3]~46_combout\ & ((!\inst1|toggle_location[1]~36_combout\) # (!\inst1|toggle_location[2]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~48_combout\,
	datab => \inst1|toggle_location[2]~44_combout\,
	datac => \inst1|toggle_location[1]~36_combout\,
	datad => \inst1|toggle_location[3]~46_combout\,
	combout => \inst2|mpd2[13]~63_combout\);

-- Location: LCCOMB_X39_Y19_N10
\inst2|mpd2[13]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[13]~62_combout\ = (\inst2|Equal6~2_combout\ & ((mpd(7)))) # (!\inst2|Equal6~2_combout\ & (mpd(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal6~2_combout\,
	datab => mpd(6),
	datac => mpd(7),
	combout => \inst2|mpd2[13]~62_combout\);

-- Location: LCCOMB_X39_Y19_N22
\inst2|mpd2[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(13) = (!\inst2|mpd2[13]~63_combout\ & ((\inst2|mpd2[16]~67_combout\ & ((\inst2|mpd2[13]~62_combout\))) # (!\inst2|mpd2[16]~67_combout\ & (\inst2|mpd2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2\(13),
	datab => \inst2|mpd2[16]~67_combout\,
	datac => \inst2|mpd2[13]~63_combout\,
	datad => \inst2|mpd2[13]~62_combout\,
	combout => \inst2|mpd2\(13));

-- Location: LCCOMB_X39_Y19_N6
\inst2|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal7~0_combout\ = (!\inst1|toggle_location[3]~49_combout\ & (\inst1|toggle_location[1]~36_combout\ & (\inst1|toggle_location[0]~25_combout\ & \inst1|toggle_location[2]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~49_combout\,
	datab => \inst1|toggle_location[1]~36_combout\,
	datac => \inst1|toggle_location[0]~25_combout\,
	datad => \inst1|toggle_location[2]~44_combout\,
	combout => \inst2|Equal7~0_combout\);

-- Location: LCCOMB_X38_Y19_N8
\inst2|mpd2[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(14) = (!\inst2|mpd2[14]~40_combout\ & ((\inst2|Equal7~0_combout\ & (mpd(7))) # (!\inst2|Equal7~0_combout\ & ((\inst2|mpd2\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(7),
	datab => \inst2|mpd2\(14),
	datac => \inst2|mpd2[14]~40_combout\,
	datad => \inst2|Equal7~0_combout\,
	combout => \inst2|mpd2\(14));

-- Location: LCCOMB_X41_Y18_N0
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst1|sig_sub~4_combout\ $ (\inst2|mpd2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sig_sub~4_combout\,
	datad => \inst2|mpd2\(0),
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X37_Y20_N18
\inst1|sig_sub~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_sub~5_combout\ = (((\inst1|sig_sub~3_combout\) # (!\inst1|Mux2~3_combout\)) # (!\inst1|toggle_location~18_combout\)) # (!\inst1|Mux6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux6~2_combout\,
	datab => \inst1|toggle_location~18_combout\,
	datac => \inst1|sig_sub~3_combout\,
	datad => \inst1|Mux2~3_combout\,
	combout => \inst1|sig_sub~5_combout\);

-- Location: LCCOMB_X41_Y18_N14
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_cout\ = CARRY((!\inst1|Mux0~4_combout\ & \inst1|sig_sub~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~4_combout\,
	datab => \inst1|sig_sub~5_combout\,
	datad => VCC,
	cout => \inst2|Add0~2_cout\);

-- Location: LCCOMB_X41_Y18_N16
\inst2|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~3_combout\ = (result1(0) & ((\inst2|Add0~0_combout\ & (\inst2|Add0~2_cout\ & VCC)) # (!\inst2|Add0~0_combout\ & (!\inst2|Add0~2_cout\)))) # (!result1(0) & ((\inst2|Add0~0_combout\ & (!\inst2|Add0~2_cout\)) # (!\inst2|Add0~0_combout\ & 
-- ((\inst2|Add0~2_cout\) # (GND)))))
-- \inst2|Add0~4\ = CARRY((result1(0) & (!\inst2|Add0~0_combout\ & !\inst2|Add0~2_cout\)) # (!result1(0) & ((!\inst2|Add0~2_cout\) # (!\inst2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(0),
	datab => \inst2|Add0~0_combout\,
	datad => VCC,
	cin => \inst2|Add0~2_cout\,
	combout => \inst2|Add0~3_combout\,
	cout => \inst2|Add0~4\);

-- Location: LCCOMB_X37_Y20_N28
\inst2|next_result1[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1[16]~0_combout\ = (\inst1|sig_add~combout\) # (\inst1|sig_sub~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sig_add~combout\,
	datad => \inst1|sig_sub~4_combout\,
	combout => \inst2|next_result1[16]~0_combout\);

-- Location: CLKCTRL_G5
\inst2|next_result1[16]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|next_result1[16]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|next_result1[16]~0clkctrl_outclk\);

-- Location: LCCOMB_X40_Y18_N14
\inst2|next_result1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(0) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|Add0~3_combout\))) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|next_result1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|next_result1\(0),
	datab => \inst2|Add0~3_combout\,
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(0));

-- Location: LCCOMB_X40_Y18_N28
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(0),
	combout => \Selector16~0_combout\);

-- Location: FF_X40_Y18_N29
\result1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(0));

-- Location: LCCOMB_X41_Y19_N28
\inst2|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_combout\ = \inst1|sig_sub~4_combout\ $ (\inst2|mpd2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sig_sub~4_combout\,
	datad => \inst2|mpd2\(1),
	combout => \inst2|Add0~5_combout\);

-- Location: LCCOMB_X41_Y18_N18
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = ((result1(1) $ (\inst2|Add0~5_combout\ $ (!\inst2|Add0~4\)))) # (GND)
-- \inst2|Add0~7\ = CARRY((result1(1) & ((\inst2|Add0~5_combout\) # (!\inst2|Add0~4\))) # (!result1(1) & (\inst2|Add0~5_combout\ & !\inst2|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(1),
	datab => \inst2|Add0~5_combout\,
	datad => VCC,
	cin => \inst2|Add0~4\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X41_Y18_N4
\inst2|next_result1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(1) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|Add0~6_combout\))) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|next_result1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_result1\(1),
	datac => \inst2|Add0~6_combout\,
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(1));

-- Location: LCCOMB_X40_Y18_N30
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(1),
	combout => \Selector15~0_combout\);

-- Location: FF_X40_Y18_N31
\result1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(1));

-- Location: LCCOMB_X41_Y19_N6
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = \inst1|sig_sub~4_combout\ $ (\inst2|mpd2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sig_sub~4_combout\,
	datad => \inst2|mpd2\(2),
	combout => \inst2|Add0~8_combout\);

-- Location: LCCOMB_X41_Y18_N20
\inst2|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_combout\ = (result1(2) & ((\inst2|Add0~8_combout\ & (\inst2|Add0~7\ & VCC)) # (!\inst2|Add0~8_combout\ & (!\inst2|Add0~7\)))) # (!result1(2) & ((\inst2|Add0~8_combout\ & (!\inst2|Add0~7\)) # (!\inst2|Add0~8_combout\ & ((\inst2|Add0~7\) # 
-- (GND)))))
-- \inst2|Add0~10\ = CARRY((result1(2) & (!\inst2|Add0~8_combout\ & !\inst2|Add0~7\)) # (!result1(2) & ((!\inst2|Add0~7\) # (!\inst2|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(2),
	datab => \inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~9_combout\,
	cout => \inst2|Add0~10\);

-- Location: LCCOMB_X40_Y18_N2
\inst2|next_result1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(2) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|Add0~9_combout\)) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|next_result1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~9_combout\,
	datac => \inst2|next_result1[16]~0clkctrl_outclk\,
	datad => \inst2|next_result1\(2),
	combout => \inst2|next_result1\(2));

-- Location: LCCOMB_X40_Y18_N16
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(2),
	combout => \Selector14~0_combout\);

-- Location: FF_X40_Y18_N17
\result1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(2));

-- Location: LCCOMB_X41_Y19_N4
\inst2|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~11_combout\ = \inst1|sig_sub~4_combout\ $ (\inst2|mpd2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sig_sub~4_combout\,
	datad => \inst2|mpd2\(3),
	combout => \inst2|Add0~11_combout\);

-- Location: LCCOMB_X41_Y18_N22
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = ((result1(3) $ (\inst2|Add0~11_combout\ $ (!\inst2|Add0~10\)))) # (GND)
-- \inst2|Add0~13\ = CARRY((result1(3) & ((\inst2|Add0~11_combout\) # (!\inst2|Add0~10\))) # (!result1(3) & (\inst2|Add0~11_combout\ & !\inst2|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(3),
	datab => \inst2|Add0~11_combout\,
	datad => VCC,
	cin => \inst2|Add0~10\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X41_Y18_N6
\inst2|next_result1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(3) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|Add0~12_combout\))) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|next_result1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|next_result1\(3),
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(3));

-- Location: LCCOMB_X40_Y18_N22
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(3),
	combout => \Selector13~0_combout\);

-- Location: FF_X40_Y18_N23
\result1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(3));

-- Location: LCCOMB_X40_Y19_N4
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = \inst1|sig_sub~4_combout\ $ (\inst2|mpd2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sig_sub~4_combout\,
	datad => \inst2|mpd2\(4),
	combout => \inst2|Add0~14_combout\);

-- Location: LCCOMB_X41_Y18_N24
\inst2|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~15_combout\ = (result1(4) & ((\inst2|Add0~14_combout\ & (\inst2|Add0~13\ & VCC)) # (!\inst2|Add0~14_combout\ & (!\inst2|Add0~13\)))) # (!result1(4) & ((\inst2|Add0~14_combout\ & (!\inst2|Add0~13\)) # (!\inst2|Add0~14_combout\ & 
-- ((\inst2|Add0~13\) # (GND)))))
-- \inst2|Add0~16\ = CARRY((result1(4) & (!\inst2|Add0~14_combout\ & !\inst2|Add0~13\)) # (!result1(4) & ((!\inst2|Add0~13\) # (!\inst2|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(4),
	datab => \inst2|Add0~14_combout\,
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~15_combout\,
	cout => \inst2|Add0~16\);

-- Location: LCCOMB_X41_Y18_N8
\inst2|next_result1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(4) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|Add0~15_combout\))) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|next_result1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_result1\(4),
	datac => \inst2|Add0~15_combout\,
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(4));

-- Location: LCCOMB_X40_Y18_N24
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(4),
	combout => \Selector12~0_combout\);

-- Location: FF_X40_Y18_N25
\result1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(4));

-- Location: LCCOMB_X41_Y18_N10
\inst2|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_combout\ = \inst2|mpd2\(5) $ (\inst1|sig_sub~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|mpd2\(5),
	datad => \inst1|sig_sub~4_combout\,
	combout => \inst2|Add0~17_combout\);

-- Location: LCCOMB_X41_Y18_N26
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = ((result1(5) $ (\inst2|Add0~17_combout\ $ (!\inst2|Add0~16\)))) # (GND)
-- \inst2|Add0~19\ = CARRY((result1(5) & ((\inst2|Add0~17_combout\) # (!\inst2|Add0~16\))) # (!result1(5) & (\inst2|Add0~17_combout\ & !\inst2|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(5),
	datab => \inst2|Add0~17_combout\,
	datad => VCC,
	cin => \inst2|Add0~16\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X41_Y18_N2
\inst2|next_result1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(5) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|Add0~18_combout\))) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|next_result1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_result1\(5),
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(5));

-- Location: LCCOMB_X40_Y18_N10
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(5),
	combout => \Selector11~0_combout\);

-- Location: FF_X40_Y18_N11
\result1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(5));

-- Location: LCCOMB_X40_Y17_N16
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = \inst1|sig_sub~4_combout\ $ (\inst2|mpd2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sig_sub~4_combout\,
	datad => \inst2|mpd2\(6),
	combout => \inst2|Add0~20_combout\);

-- Location: LCCOMB_X41_Y18_N28
\inst2|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~21_combout\ = (\inst2|Add0~20_combout\ & ((result1(6) & (\inst2|Add0~19\ & VCC)) # (!result1(6) & (!\inst2|Add0~19\)))) # (!\inst2|Add0~20_combout\ & ((result1(6) & (!\inst2|Add0~19\)) # (!result1(6) & ((\inst2|Add0~19\) # (GND)))))
-- \inst2|Add0~22\ = CARRY((\inst2|Add0~20_combout\ & (!result1(6) & !\inst2|Add0~19\)) # (!\inst2|Add0~20_combout\ & ((!\inst2|Add0~19\) # (!result1(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~20_combout\,
	datab => result1(6),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~21_combout\,
	cout => \inst2|Add0~22\);

-- Location: LCCOMB_X41_Y18_N12
\inst2|next_result1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(6) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|Add0~21_combout\)) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|next_result1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~21_combout\,
	datac => \inst2|next_result1\(6),
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(6));

-- Location: LCCOMB_X40_Y18_N8
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.stcompute~q\,
	datac => \inst2|next_result1\(6),
	combout => \Selector10~0_combout\);

-- Location: FF_X40_Y18_N9
\result1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(6));

-- Location: LCCOMB_X40_Y17_N30
\inst2|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~23_combout\ = \inst1|sig_sub~4_combout\ $ (\inst2|mpd2\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sig_sub~4_combout\,
	datad => \inst2|mpd2\(7),
	combout => \inst2|Add0~23_combout\);

-- Location: LCCOMB_X41_Y18_N30
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = ((\inst2|Add0~23_combout\ $ (result1(7) $ (!\inst2|Add0~22\)))) # (GND)
-- \inst2|Add0~25\ = CARRY((\inst2|Add0~23_combout\ & ((result1(7)) # (!\inst2|Add0~22\))) # (!\inst2|Add0~23_combout\ & (result1(7) & !\inst2|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~23_combout\,
	datab => result1(7),
	datad => VCC,
	cin => \inst2|Add0~22\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X40_Y18_N12
\inst2|next_result1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(7) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|Add0~24_combout\))) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|next_result1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|next_result1\(7),
	datab => \inst2|Add0~24_combout\,
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(7));

-- Location: LCCOMB_X40_Y18_N6
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(7),
	combout => \Selector9~0_combout\);

-- Location: FF_X40_Y18_N7
\result1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(7));

-- Location: LCCOMB_X40_Y20_N8
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = \inst2|mpd2\(8) $ (\inst1|sig_sub~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2\(8),
	datab => \inst1|sig_sub~4_combout\,
	combout => \inst2|Add0~26_combout\);

-- Location: LCCOMB_X41_Y17_N0
\inst2|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~27_combout\ = (\inst2|Add0~26_combout\ & ((result1(8) & (\inst2|Add0~25\ & VCC)) # (!result1(8) & (!\inst2|Add0~25\)))) # (!\inst2|Add0~26_combout\ & ((result1(8) & (!\inst2|Add0~25\)) # (!result1(8) & ((\inst2|Add0~25\) # (GND)))))
-- \inst2|Add0~28\ = CARRY((\inst2|Add0~26_combout\ & (!result1(8) & !\inst2|Add0~25\)) # (!\inst2|Add0~26_combout\ & ((!\inst2|Add0~25\) # (!result1(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~26_combout\,
	datab => result1(8),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~27_combout\,
	cout => \inst2|Add0~28\);

-- Location: LCCOMB_X41_Y17_N18
\inst2|next_result1[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(8) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|Add0~27_combout\))) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|next_result1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_result1\(8),
	datac => \inst2|Add0~27_combout\,
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(8));

-- Location: LCCOMB_X40_Y17_N12
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.stcompute~q\,
	datad => \inst2|next_result1\(8),
	combout => \Selector8~0_combout\);

-- Location: FF_X40_Y17_N13
\result1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(8));

-- Location: LCCOMB_X37_Y20_N22
\inst2|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~29_combout\ = \inst1|sig_sub~4_combout\ $ (\inst2|mpd2\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sig_sub~4_combout\,
	datad => \inst2|mpd2\(9),
	combout => \inst2|Add0~29_combout\);

-- Location: LCCOMB_X41_Y17_N2
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = ((\inst2|Add0~29_combout\ $ (result1(9) $ (!\inst2|Add0~28\)))) # (GND)
-- \inst2|Add0~31\ = CARRY((\inst2|Add0~29_combout\ & ((result1(9)) # (!\inst2|Add0~28\))) # (!\inst2|Add0~29_combout\ & (result1(9) & !\inst2|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~29_combout\,
	datab => result1(9),
	datad => VCC,
	cin => \inst2|Add0~28\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X40_Y17_N4
\inst2|next_result1[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(9) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|Add0~30_combout\)) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|next_result1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~30_combout\,
	datab => \inst2|next_result1\(9),
	datac => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(9));

-- Location: LCCOMB_X40_Y17_N6
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.stcompute~q\,
	datac => \inst2|next_result1\(9),
	combout => \Selector7~0_combout\);

-- Location: FF_X40_Y17_N7
\result1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(9));

-- Location: LCCOMB_X37_Y20_N4
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = \inst2|mpd2\(10) $ (\inst1|sig_sub~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|mpd2\(10),
	datad => \inst1|sig_sub~4_combout\,
	combout => \inst2|Add0~32_combout\);

-- Location: LCCOMB_X41_Y17_N4
\inst2|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~33_combout\ = (result1(10) & ((\inst2|Add0~32_combout\ & (\inst2|Add0~31\ & VCC)) # (!\inst2|Add0~32_combout\ & (!\inst2|Add0~31\)))) # (!result1(10) & ((\inst2|Add0~32_combout\ & (!\inst2|Add0~31\)) # (!\inst2|Add0~32_combout\ & 
-- ((\inst2|Add0~31\) # (GND)))))
-- \inst2|Add0~34\ = CARRY((result1(10) & (!\inst2|Add0~32_combout\ & !\inst2|Add0~31\)) # (!result1(10) & ((!\inst2|Add0~31\) # (!\inst2|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(10),
	datab => \inst2|Add0~32_combout\,
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~33_combout\,
	cout => \inst2|Add0~34\);

-- Location: LCCOMB_X40_Y17_N14
\inst2|next_result1[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(10) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|Add0~33_combout\)) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|next_result1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~33_combout\,
	datab => \inst2|next_result1\(10),
	datac => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(10));

-- Location: LCCOMB_X40_Y17_N28
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.stcompute~q\,
	datac => \inst2|next_result1\(10),
	combout => \Selector6~0_combout\);

-- Location: FF_X40_Y17_N29
\result1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(10));

-- Location: LCCOMB_X40_Y17_N8
\inst2|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~35_combout\ = \inst1|sig_sub~4_combout\ $ (\inst2|mpd2\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sig_sub~4_combout\,
	datac => \inst2|mpd2\(11),
	combout => \inst2|Add0~35_combout\);

-- Location: LCCOMB_X41_Y17_N6
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = ((\inst2|Add0~35_combout\ $ (result1(11) $ (!\inst2|Add0~34\)))) # (GND)
-- \inst2|Add0~37\ = CARRY((\inst2|Add0~35_combout\ & ((result1(11)) # (!\inst2|Add0~34\))) # (!\inst2|Add0~35_combout\ & (result1(11) & !\inst2|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~35_combout\,
	datab => result1(11),
	datad => VCC,
	cin => \inst2|Add0~34\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X41_Y17_N28
\inst2|next_result1[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(11) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|Add0~36_combout\)) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|next_result1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~36_combout\,
	datab => \inst2|next_result1\(11),
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(11));

-- Location: LCCOMB_X40_Y17_N22
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.stcompute~q\,
	datad => \inst2|next_result1\(11),
	combout => \Selector5~0_combout\);

-- Location: FF_X40_Y17_N23
\result1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(11));

-- Location: LCCOMB_X40_Y17_N26
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = \inst2|mpd2\(12) $ (\inst1|sig_sub~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|mpd2\(12),
	datad => \inst1|sig_sub~4_combout\,
	combout => \inst2|Add0~38_combout\);

-- Location: LCCOMB_X41_Y17_N8
\inst2|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~39_combout\ = (result1(12) & ((\inst2|Add0~38_combout\ & (\inst2|Add0~37\ & VCC)) # (!\inst2|Add0~38_combout\ & (!\inst2|Add0~37\)))) # (!result1(12) & ((\inst2|Add0~38_combout\ & (!\inst2|Add0~37\)) # (!\inst2|Add0~38_combout\ & 
-- ((\inst2|Add0~37\) # (GND)))))
-- \inst2|Add0~40\ = CARRY((result1(12) & (!\inst2|Add0~38_combout\ & !\inst2|Add0~37\)) # (!result1(12) & ((!\inst2|Add0~37\) # (!\inst2|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(12),
	datab => \inst2|Add0~38_combout\,
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~39_combout\,
	cout => \inst2|Add0~40\);

-- Location: LCCOMB_X41_Y17_N26
\inst2|next_result1[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(12) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|Add0~39_combout\)) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|next_result1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~39_combout\,
	datac => \inst2|next_result1\(12),
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(12));

-- Location: LCCOMB_X40_Y17_N24
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.stcompute~q\,
	datad => \inst2|next_result1\(12),
	combout => \Selector4~0_combout\);

-- Location: FF_X40_Y17_N25
\result1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(12));

-- Location: LCCOMB_X40_Y20_N30
\inst2|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~41_combout\ = \inst1|sig_sub~4_combout\ $ (\inst2|mpd2\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sig_sub~4_combout\,
	datad => \inst2|mpd2\(13),
	combout => \inst2|Add0~41_combout\);

-- Location: LCCOMB_X41_Y17_N10
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = ((\inst2|Add0~41_combout\ $ (result1(13) $ (!\inst2|Add0~40\)))) # (GND)
-- \inst2|Add0~43\ = CARRY((\inst2|Add0~41_combout\ & ((result1(13)) # (!\inst2|Add0~40\))) # (!\inst2|Add0~41_combout\ & (result1(13) & !\inst2|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~41_combout\,
	datab => result1(13),
	datad => VCC,
	cin => \inst2|Add0~40\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X41_Y17_N24
\inst2|next_result1[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(13) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|Add0~42_combout\))) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|next_result1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_result1\(13),
	datac => \inst2|Add0~42_combout\,
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(13));

-- Location: LCCOMB_X40_Y17_N2
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.stcompute~q\,
	datad => \inst2|next_result1\(13),
	combout => \Selector3~0_combout\);

-- Location: FF_X40_Y17_N3
\result1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(13));

-- Location: LCCOMB_X37_Y20_N12
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = \inst2|mpd2\(14) $ (\inst1|sig_sub~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mpd2\(14),
	datac => \inst1|sig_sub~4_combout\,
	combout => \inst2|Add0~44_combout\);

-- Location: LCCOMB_X41_Y17_N12
\inst2|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~45_combout\ = (result1(14) & ((\inst2|Add0~44_combout\ & (\inst2|Add0~43\ & VCC)) # (!\inst2|Add0~44_combout\ & (!\inst2|Add0~43\)))) # (!result1(14) & ((\inst2|Add0~44_combout\ & (!\inst2|Add0~43\)) # (!\inst2|Add0~44_combout\ & 
-- ((\inst2|Add0~43\) # (GND)))))
-- \inst2|Add0~46\ = CARRY((result1(14) & (!\inst2|Add0~44_combout\ & !\inst2|Add0~43\)) # (!result1(14) & ((!\inst2|Add0~43\) # (!\inst2|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(14),
	datab => \inst2|Add0~44_combout\,
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~45_combout\,
	cout => \inst2|Add0~46\);

-- Location: LCCOMB_X41_Y17_N22
\inst2|next_result1[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(14) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|Add0~45_combout\))) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|next_result1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|next_result1\(14),
	datac => \inst2|Add0~45_combout\,
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(14));

-- Location: LCCOMB_X40_Y17_N20
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.stcompute~q\,
	datad => \inst2|next_result1\(14),
	combout => \Selector2~0_combout\);

-- Location: FF_X40_Y17_N21
\result1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(14));

-- Location: LCCOMB_X41_Y17_N14
\inst2|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~47_combout\ = ((\inst1|sig_sub~4_combout\ $ (result1(15) $ (!\inst2|Add0~46\)))) # (GND)
-- \inst2|Add0~48\ = CARRY((\inst1|sig_sub~4_combout\ & ((result1(15)) # (!\inst2|Add0~46\))) # (!\inst1|sig_sub~4_combout\ & (result1(15) & !\inst2|Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sig_sub~4_combout\,
	datab => result1(15),
	datad => VCC,
	cin => \inst2|Add0~46\,
	combout => \inst2|Add0~47_combout\,
	cout => \inst2|Add0~48\);

-- Location: LCCOMB_X41_Y17_N20
\inst2|next_result1[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(15) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|Add0~47_combout\)) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|next_result1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~47_combout\,
	datab => \inst2|next_result1\(15),
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(15));

-- Location: LCCOMB_X40_Y18_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(15),
	combout => \Selector1~0_combout\);

-- Location: FF_X40_Y18_N21
\result1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(15));

-- Location: LCCOMB_X41_Y17_N16
\inst2|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~49_combout\ = result1(16) $ (\inst2|Add0~48\ $ (\inst1|sig_sub~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(16),
	datad => \inst1|sig_sub~4_combout\,
	cin => \inst2|Add0~48\,
	combout => \inst2|Add0~49_combout\);

-- Location: LCCOMB_X41_Y17_N30
\inst2|next_result1[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(16) = (GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & (\inst2|Add0~49_combout\)) # (!GLOBAL(\inst2|next_result1[16]~0clkctrl_outclk\) & ((\inst2|next_result1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~49_combout\,
	datac => \inst2|next_result1\(16),
	datad => \inst2|next_result1[16]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(16));

-- Location: LCCOMB_X40_Y18_N26
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(16),
	combout => \Selector0~0_combout\);

-- Location: FF_X40_Y18_N27
\result1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \result1[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result1(16));

ww_add <= \add~output_o\;

ww_sub <= \sub~output_o\;

ww_toggle_position(0) <= \toggle_position[0]~output_o\;

ww_toggle_position(1) <= \toggle_position[1]~output_o\;

ww_toggle_position(2) <= \toggle_position[2]~output_o\;

ww_toggle_position(3) <= \toggle_position[3]~output_o\;

ww_shifted_mpd(0) <= \shifted_mpd[0]~output_o\;

ww_shifted_mpd(1) <= \shifted_mpd[1]~output_o\;

ww_shifted_mpd(2) <= \shifted_mpd[2]~output_o\;

ww_shifted_mpd(3) <= \shifted_mpd[3]~output_o\;

ww_shifted_mpd(4) <= \shifted_mpd[4]~output_o\;

ww_shifted_mpd(5) <= \shifted_mpd[5]~output_o\;

ww_shifted_mpd(6) <= \shifted_mpd[6]~output_o\;

ww_shifted_mpd(7) <= \shifted_mpd[7]~output_o\;

ww_shifted_mpd(8) <= \shifted_mpd[8]~output_o\;

ww_shifted_mpd(9) <= \shifted_mpd[9]~output_o\;

ww_shifted_mpd(10) <= \shifted_mpd[10]~output_o\;

ww_shifted_mpd(11) <= \shifted_mpd[11]~output_o\;

ww_shifted_mpd(12) <= \shifted_mpd[12]~output_o\;

ww_shifted_mpd(13) <= \shifted_mpd[13]~output_o\;

ww_shifted_mpd(14) <= \shifted_mpd[14]~output_o\;

ww_shifted_mpd(15) <= \shifted_mpd[15]~output_o\;

ww_shifted_mpd(16) <= \shifted_mpd[16]~output_o\;

ww_prev_toggle_position(0) <= \prev_toggle_position[0]~output_o\;

ww_prev_toggle_position(1) <= \prev_toggle_position[1]~output_o\;

ww_prev_toggle_position(2) <= \prev_toggle_position[2]~output_o\;

ww_prev_toggle_position(3) <= \prev_toggle_position[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(16) <= \result[16]~output_o\;

ww_next_result(0) <= \next_result[0]~output_o\;

ww_next_result(1) <= \next_result[1]~output_o\;

ww_next_result(2) <= \next_result[2]~output_o\;

ww_next_result(3) <= \next_result[3]~output_o\;

ww_next_result(4) <= \next_result[4]~output_o\;

ww_next_result(5) <= \next_result[5]~output_o\;

ww_next_result(6) <= \next_result[6]~output_o\;

ww_next_result(7) <= \next_result[7]~output_o\;

ww_next_result(8) <= \next_result[8]~output_o\;

ww_next_result(9) <= \next_result[9]~output_o\;

ww_next_result(10) <= \next_result[10]~output_o\;

ww_next_result(11) <= \next_result[11]~output_o\;

ww_next_result(12) <= \next_result[12]~output_o\;

ww_next_result(13) <= \next_result[13]~output_o\;

ww_next_result(14) <= \next_result[14]~output_o\;

ww_next_result(15) <= \next_result[15]~output_o\;

ww_next_result(16) <= \next_result[16]~output_o\;
END structure;


