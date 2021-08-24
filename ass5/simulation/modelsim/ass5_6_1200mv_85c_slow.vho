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

-- DATE "11/11/2020 20:09:54"

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

ENTITY 	ass5 IS
    PORT (
	mpd_in : IN std_logic_vector(7 DOWNTO 0);
	mpr_in : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	go : IN std_logic;
	add : OUT std_logic;
	sub : OUT std_logic;
	toggle_position : OUT STD.STANDARD.integer range -1 TO 7;
	shifted_mpd : OUT std_logic_vector(8 DOWNTO 0);
	prev_toggle_position : OUT STD.STANDARD.integer range -1 TO 7;
	next_result : OUT std_logic_vector(8 DOWNTO 0);
	result : OUT std_logic_vector(8 DOWNTO 0)
	);
END ass5;

-- Design Ports Information
-- add	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle_position[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle_position[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle_position[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle_position[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shifted_mpd[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prev_toggle_position[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prev_toggle_position[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prev_toggle_position[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prev_toggle_position[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[2]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[6]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_result[8]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- go	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpr_in[7]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[4]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mpd_in[7]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ass5 IS
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
SIGNAL ww_shifted_mpd : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_prev_toggle_position : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_next_result : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|mpd2[7]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|next_result1[8]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \prev_toggle_position[0]~output_o\ : std_logic;
SIGNAL \prev_toggle_position[1]~output_o\ : std_logic;
SIGNAL \prev_toggle_position[2]~output_o\ : std_logic;
SIGNAL \prev_toggle_position[3]~output_o\ : std_logic;
SIGNAL \next_result[0]~output_o\ : std_logic;
SIGNAL \next_result[1]~output_o\ : std_logic;
SIGNAL \next_result[2]~output_o\ : std_logic;
SIGNAL \next_result[3]~output_o\ : std_logic;
SIGNAL \next_result[4]~output_o\ : std_logic;
SIGNAL \next_result[5]~output_o\ : std_logic;
SIGNAL \next_result[6]~output_o\ : std_logic;
SIGNAL \next_result[7]~output_o\ : std_logic;
SIGNAL \next_result[8]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \go~input_o\ : std_logic;
SIGNAL \mpr_in[7]~input_o\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add2~2_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Add2~1_combout\ : std_logic;
SIGNAL \mpr_in[3]~input_o\ : std_logic;
SIGNAL \mpr_in[4]~input_o\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \mpr_in[6]~input_o\ : std_logic;
SIGNAL \mpr_in[5]~input_o\ : std_logic;
SIGNAL \inst1|Mux4~3_combout\ : std_logic;
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \mpr_in[1]~input_o\ : std_logic;
SIGNAL \mpr_in[2]~input_o\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \mpr_in[0]~input_o\ : std_logic;
SIGNAL \inst1|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|Mux2~3_combout\ : std_logic;
SIGNAL \inst1|Mux2~4_combout\ : std_logic;
SIGNAL \inst1|Add4~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~8_combout\ : std_logic;
SIGNAL \inst1|Mux4~9_combout\ : std_logic;
SIGNAL \inst1|Mux4~10_combout\ : std_logic;
SIGNAL \inst1|Mux4~7_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~3_combout\ : std_logic;
SIGNAL \inst1|Mux3~4_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~15_combout\ : std_logic;
SIGNAL \inst1|Add3~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|Mux4~4_combout\ : std_logic;
SIGNAL \inst1|Mux4~5_combout\ : std_logic;
SIGNAL \inst1|Mux4~6_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~16_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~17_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~12_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~18_combout\ : std_logic;
SIGNAL \inst1|toggle_location[3]~20_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~3_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|Mux1~4_combout\ : std_logic;
SIGNAL \inst1|toggle_location~7_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~11_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~19_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~13_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~14_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~8_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~9_combout\ : std_logic;
SIGNAL \inst1|toggle_location[1]~10_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \inst1|toggle_location~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \state.stdone~q\ : std_logic;
SIGNAL \prev_toggle_location[3]~0_combout\ : std_logic;
SIGNAL \state.stidle~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \result1[8]~0_combout\ : std_logic;
SIGNAL \state.stcompute~q\ : std_logic;
SIGNAL \inst1|toggle_location[0]~6_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|toggle_location[2]~4_combout\ : std_logic;
SIGNAL \inst1|sig_add~0_combout\ : std_logic;
SIGNAL \inst1|sig_sub~1_combout\ : std_logic;
SIGNAL \inst1|sig_sub~0_combout\ : std_logic;
SIGNAL \inst1|sig_sub~2_combout\ : std_logic;
SIGNAL \inst1|sig_sub~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \mpd_in[0]~input_o\ : std_logic;
SIGNAL \mpd[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|mpd2[0]~0_combout\ : std_logic;
SIGNAL \inst2|mpd2[7]~1_combout\ : std_logic;
SIGNAL \inst2|mpd2[7]~1clkctrl_outclk\ : std_logic;
SIGNAL \mpd_in[1]~input_o\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|mpd2[1]~2_combout\ : std_logic;
SIGNAL \inst2|mpd2[2]~3_combout\ : std_logic;
SIGNAL \mpd_in[2]~input_o\ : std_logic;
SIGNAL \inst2|mpd2[2]~4_combout\ : std_logic;
SIGNAL \inst2|mpd2[3]~6_combout\ : std_logic;
SIGNAL \mpd_in[3]~input_o\ : std_logic;
SIGNAL \mpd[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|mpd2[3]~5_combout\ : std_logic;
SIGNAL \inst2|mpd2[3]~7_combout\ : std_logic;
SIGNAL \mpd_in[4]~input_o\ : std_logic;
SIGNAL \inst2|mpd2[4]~8_combout\ : std_logic;
SIGNAL \inst2|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|Equal3~0_combout\ : std_logic;
SIGNAL \inst2|mpd2[4]~9_combout\ : std_logic;
SIGNAL \inst2|mpd2[4]~10_combout\ : std_logic;
SIGNAL \mpd_in[5]~input_o\ : std_logic;
SIGNAL \inst2|mpd2[5]~11_combout\ : std_logic;
SIGNAL \inst2|mpd2[5]~12_combout\ : std_logic;
SIGNAL \inst2|mpd2[5]~13_combout\ : std_logic;
SIGNAL \inst2|mpd2[6]~15_combout\ : std_logic;
SIGNAL \mpd_in[6]~input_o\ : std_logic;
SIGNAL \mpd[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|mpd2[6]~14_combout\ : std_logic;
SIGNAL \inst2|mpd2[6]~16_combout\ : std_logic;
SIGNAL \mpd_in[7]~input_o\ : std_logic;
SIGNAL \inst2|mpd2[7]~17_combout\ : std_logic;
SIGNAL \inst2|mpd2[7]~18_combout\ : std_logic;
SIGNAL \inst2|mpd2[7]~19_combout\ : std_logic;
SIGNAL \inst2|mpd2[8]~20_combout\ : std_logic;
SIGNAL \inst2|mpd2[8]~21_combout\ : std_logic;
SIGNAL \inst2|mpd2[8]~22_combout\ : std_logic;
SIGNAL \inst2|mpd2[8]~23_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \inst2|Add0~2_cout\ : std_logic;
SIGNAL \inst2|Add0~3_combout\ : std_logic;
SIGNAL \inst2|next_result1[8]~0_combout\ : std_logic;
SIGNAL \inst2|next_result1[8]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~5_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \inst2|Add0~4\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9_combout\ : std_logic;
SIGNAL \inst2|Add0~11_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~15_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Add0~17_combout\ : std_logic;
SIGNAL \inst2|Add0~16\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~21_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \inst2|Add0~23_combout\ : std_logic;
SIGNAL \inst2|Add0~22\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~27_combout\ : std_logic;
SIGNAL mpr : std_logic_vector(7 DOWNTO 0);
SIGNAL prev_toggle_location : std_logic_vector(3 DOWNTO 0);
SIGNAL result1 : std_logic_vector(8 DOWNTO 0);
SIGNAL mpd : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|mpd2\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|next_result1\ : std_logic_vector(8 DOWNTO 0);
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
next_result <= ww_next_result;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|mpd2[7]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|mpd2[7]~1_combout\);

\inst2|next_result1[8]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|next_result1[8]~0_combout\);

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

-- Location: IOOBUF_X0_Y27_N2
\add~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sig_add~0_combout\,
	devoe => ww_devoe,
	o => \add~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\sub~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sig_sub~3_combout\,
	devoe => ww_devoe,
	o => \sub~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\toggle_position[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|toggle_location[0]~6_combout\,
	devoe => ww_devoe,
	o => \toggle_position[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\toggle_position[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|toggle_location[1]~10_combout\,
	devoe => ww_devoe,
	o => \toggle_position[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\toggle_position[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|toggle_location[2]~14_combout\,
	devoe => ww_devoe,
	o => \toggle_position[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\toggle_position[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|toggle_location[3]~20_combout\,
	devoe => ww_devoe,
	o => \toggle_position[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X5_Y0_N2
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

-- Location: IOOBUF_X0_Y25_N9
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X9_Y34_N23
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X25_Y0_N16
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X0_Y8_N23
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X14_Y0_N23
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X0_Y7_N9
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

-- Location: IOOBUF_X5_Y0_N9
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X34_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOIBUF_X0_Y24_N15
\go~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go,
	o => \go~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\mpr_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(7),
	o => \mpr_in[7]~input_o\);

-- Location: FF_X10_Y11_N3
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(7));

-- Location: LCCOMB_X8_Y11_N4
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = prev_toggle_location(3) $ (((prev_toggle_location(2)) # ((prev_toggle_location(0)) # (prev_toggle_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(3),
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X8_Y11_N30
\inst1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~2_combout\ = prev_toggle_location(3) $ (((prev_toggle_location(2)) # ((prev_toggle_location(0) & prev_toggle_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(3),
	combout => \inst1|Add2~2_combout\);

-- Location: LCCOMB_X10_Y11_N22
\inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (mpr(7) & !prev_toggle_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mpr(7),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X8_Y11_N8
\inst1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (!prev_toggle_location(2) & (prev_toggle_location(3) & (prev_toggle_location(0) $ (prev_toggle_location(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(3),
	combout => \inst1|Mux2~1_combout\);

-- Location: LCCOMB_X9_Y11_N14
\inst1|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~1_combout\ = prev_toggle_location(2) $ (((prev_toggle_location(1) & prev_toggle_location(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(2),
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(0),
	combout => \inst1|Add2~1_combout\);

-- Location: IOIBUF_X0_Y23_N1
\mpr_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(3),
	o => \mpr_in[3]~input_o\);

-- Location: FF_X9_Y11_N5
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(3));

-- Location: IOIBUF_X0_Y15_N8
\mpr_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(4),
	o => \mpr_in[4]~input_o\);

-- Location: FF_X7_Y11_N31
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(4));

-- Location: LCCOMB_X9_Y11_N24
\inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (prev_toggle_location(0) & ((mpr(4)))) # (!prev_toggle_location(0) & (mpr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(3),
	datac => mpr(4),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux4~0_combout\);

-- Location: IOIBUF_X7_Y34_N15
\mpr_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(6),
	o => \mpr_in[6]~input_o\);

-- Location: FF_X7_Y11_N19
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(6));

-- Location: IOIBUF_X0_Y23_N15
\mpr_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(5),
	o => \mpr_in[5]~input_o\);

-- Location: FF_X9_Y11_N31
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(5));

-- Location: LCCOMB_X9_Y11_N30
\inst1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~3_combout\ = (prev_toggle_location(0) & (mpr(6))) # (!prev_toggle_location(0) & ((mpr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(6),
	datac => mpr(5),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux4~3_combout\);

-- Location: LCCOMB_X9_Y11_N4
\inst1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = prev_toggle_location(1) $ (prev_toggle_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datad => prev_toggle_location(0),
	combout => \inst1|Add2~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\mpr_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(1),
	o => \mpr_in[1]~input_o\);

-- Location: FF_X9_Y11_N23
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(1));

-- Location: IOIBUF_X0_Y23_N22
\mpr_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(2),
	o => \mpr_in[2]~input_o\);

-- Location: FF_X7_Y11_N9
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(2));

-- Location: LCCOMB_X9_Y11_N22
\inst1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (prev_toggle_location(0) & ((mpr(2)))) # (!prev_toggle_location(0) & (mpr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(0),
	datac => mpr(1),
	datad => mpr(2),
	combout => \inst1|Mux4~1_combout\);

-- Location: IOIBUF_X9_Y34_N8
\mpr_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpr_in(0),
	o => \mpr_in[0]~input_o\);

-- Location: FF_X9_Y11_N9
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpr(0));

-- Location: LCCOMB_X9_Y11_N16
\inst1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~2_combout\ = (mpr(0) & prev_toggle_location(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mpr(0),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux4~2_combout\);

-- Location: LCCOMB_X9_Y11_N0
\inst1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~2_combout\ = (\inst1|Add2~1_combout\ & (\inst1|Add2~0_combout\)) # (!\inst1|Add2~1_combout\ & ((\inst1|Add2~0_combout\ & ((\inst1|Mux4~2_combout\))) # (!\inst1|Add2~0_combout\ & (\inst1|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~1_combout\,
	datab => \inst1|Add2~0_combout\,
	datac => \inst1|Mux4~1_combout\,
	datad => \inst1|Mux4~2_combout\,
	combout => \inst1|Mux2~2_combout\);

-- Location: LCCOMB_X9_Y11_N28
\inst1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~3_combout\ = (\inst1|Add2~1_combout\ & ((\inst1|Mux2~2_combout\ & (\inst1|Mux4~0_combout\)) # (!\inst1|Mux2~2_combout\ & ((\inst1|Mux4~3_combout\))))) # (!\inst1|Add2~1_combout\ & (((\inst1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~1_combout\,
	datab => \inst1|Mux4~0_combout\,
	datac => \inst1|Mux4~3_combout\,
	datad => \inst1|Mux2~2_combout\,
	combout => \inst1|Mux2~3_combout\);

-- Location: LCCOMB_X8_Y11_N18
\inst1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~4_combout\ = (\inst1|Add2~2_combout\ & (\inst1|Mux2~0_combout\ & (\inst1|Mux2~1_combout\))) # (!\inst1|Add2~2_combout\ & ((\inst1|Mux2~3_combout\) # ((\inst1|Mux2~0_combout\ & \inst1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~2_combout\,
	datab => \inst1|Mux2~0_combout\,
	datac => \inst1|Mux2~1_combout\,
	datad => \inst1|Mux2~3_combout\,
	combout => \inst1|Mux2~4_combout\);

-- Location: LCCOMB_X10_Y11_N4
\inst1|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add4~0_combout\ = prev_toggle_location(3) $ (prev_toggle_location(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => prev_toggle_location(3),
	datad => prev_toggle_location(2),
	combout => \inst1|Add4~0_combout\);

-- Location: LCCOMB_X10_Y11_N16
\inst1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (mpr(7) & !prev_toggle_location(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mpr(7),
	datad => prev_toggle_location(2),
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X10_Y11_N6
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (prev_toggle_location(0) & prev_toggle_location(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => prev_toggle_location(0),
	datad => prev_toggle_location(1),
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X7_Y11_N8
\inst1|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~8_combout\ = (prev_toggle_location(0) & ((mpr(1)))) # (!prev_toggle_location(0) & (mpr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(0),
	datac => mpr(2),
	datad => mpr(1),
	combout => \inst1|Mux4~8_combout\);

-- Location: LCCOMB_X7_Y11_N30
\inst1|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~9_combout\ = (!prev_toggle_location(0) & mpr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(0),
	datad => mpr(0),
	combout => \inst1|Mux4~9_combout\);

-- Location: LCCOMB_X7_Y11_N12
\inst1|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~10_combout\ = (prev_toggle_location(0) & ((mpr(3)))) # (!prev_toggle_location(0) & (mpr(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mpr(4),
	datac => mpr(3),
	datad => prev_toggle_location(0),
	combout => \inst1|Mux4~10_combout\);

-- Location: LCCOMB_X7_Y11_N18
\inst1|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~7_combout\ = (prev_toggle_location(0) & ((mpr(5)))) # (!prev_toggle_location(0) & (mpr(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prev_toggle_location(0),
	datac => mpr(6),
	datad => mpr(5),
	combout => \inst1|Mux4~7_combout\);

-- Location: LCCOMB_X7_Y11_N2
\inst1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (prev_toggle_location(2) & ((prev_toggle_location(1) & (\inst1|Mux4~10_combout\)) # (!prev_toggle_location(1) & ((\inst1|Mux4~7_combout\))))) # (!prev_toggle_location(2) & (!prev_toggle_location(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(1),
	datac => \inst1|Mux4~10_combout\,
	datad => \inst1|Mux4~7_combout\,
	combout => \inst1|Mux3~2_combout\);

-- Location: LCCOMB_X7_Y11_N16
\inst1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~3_combout\ = (prev_toggle_location(2) & (((\inst1|Mux3~2_combout\)))) # (!prev_toggle_location(2) & ((\inst1|Mux3~2_combout\ & (\inst1|Mux4~8_combout\)) # (!\inst1|Mux3~2_combout\ & ((\inst1|Mux4~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => \inst1|Mux4~8_combout\,
	datac => \inst1|Mux4~9_combout\,
	datad => \inst1|Mux3~2_combout\,
	combout => \inst1|Mux3~3_combout\);

-- Location: LCCOMB_X7_Y11_N22
\inst1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~4_combout\ = (\inst1|Add4~0_combout\ & (\inst1|Mux3~1_combout\ & (\inst1|Mux3~0_combout\))) # (!\inst1|Add4~0_combout\ & (((\inst1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~1_combout\,
	datab => \inst1|Mux3~0_combout\,
	datac => \inst1|Add4~0_combout\,
	datad => \inst1|Mux3~3_combout\,
	combout => \inst1|Mux3~4_combout\);

-- Location: LCCOMB_X7_Y11_N4
\inst1|toggle_location[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~15_combout\ = (\inst1|Add2~2_combout\ & ((\inst1|Add4~0_combout\) # (\inst1|Mux3~4_combout\ $ (\inst1|Mux2~4_combout\)))) # (!\inst1|Add2~2_combout\ & (\inst1|Add4~0_combout\ & (\inst1|Mux3~4_combout\ $ 
-- (!\inst1|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~2_combout\,
	datab => \inst1|Add4~0_combout\,
	datac => \inst1|Mux3~4_combout\,
	datad => \inst1|Mux2~4_combout\,
	combout => \inst1|toggle_location[3]~15_combout\);

-- Location: LCCOMB_X8_Y11_N14
\inst1|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~1_combout\ = prev_toggle_location(3) $ (((prev_toggle_location(2) & ((prev_toggle_location(0)) # (prev_toggle_location(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(3),
	combout => \inst1|Add3~1_combout\);

-- Location: LCCOMB_X10_Y11_N10
\inst1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (mpr(7) & (!prev_toggle_location(0) & !prev_toggle_location(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mpr(7),
	datac => prev_toggle_location(0),
	datad => prev_toggle_location(1),
	combout => \inst1|Mux0~2_combout\);

-- Location: LCCOMB_X9_Y11_N18
\inst1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~4_combout\ = (\inst1|Add3~0_combout\ & (\inst1|Add2~0_combout\)) # (!\inst1|Add3~0_combout\ & ((\inst1|Add2~0_combout\ & (!\inst1|Mux4~3_combout\)) # (!\inst1|Add2~0_combout\ & ((!\inst1|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|Add2~0_combout\,
	datac => \inst1|Mux4~3_combout\,
	datad => \inst1|Mux4~0_combout\,
	combout => \inst1|Mux4~4_combout\);

-- Location: LCCOMB_X9_Y11_N6
\inst1|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~5_combout\ = (\inst1|Add3~0_combout\ & ((\inst1|Mux4~4_combout\ & ((!\inst1|Mux4~1_combout\))) # (!\inst1|Mux4~4_combout\ & (!\inst1|Mux4~2_combout\)))) # (!\inst1|Add3~0_combout\ & (((\inst1|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|Mux4~2_combout\,
	datac => \inst1|Mux4~1_combout\,
	datad => \inst1|Mux4~4_combout\,
	combout => \inst1|Mux4~5_combout\);

-- Location: LCCOMB_X9_Y11_N20
\inst1|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~6_combout\ = (\inst1|Add3~1_combout\ & (((!\inst1|Mux0~2_combout\)) # (!\inst1|Add3~0_combout\))) # (!\inst1|Add3~1_combout\ & (((\inst1|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|Add3~1_combout\,
	datac => \inst1|Mux0~2_combout\,
	datad => \inst1|Mux4~5_combout\,
	combout => \inst1|Mux4~6_combout\);

-- Location: LCCOMB_X7_Y11_N28
\inst1|toggle_location[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~16_combout\ = (\inst1|Mux3~4_combout\ & ((\inst1|Mux4~6_combout\) # (!\inst1|Mux2~4_combout\))) # (!\inst1|Mux3~4_combout\ & ((\inst1|Mux2~4_combout\) # (!\inst1|Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datac => \inst1|Mux4~6_combout\,
	datad => \inst1|Mux2~4_combout\,
	combout => \inst1|toggle_location[3]~16_combout\);

-- Location: LCCOMB_X7_Y11_N24
\inst1|toggle_location[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~17_combout\ = (\inst1|toggle_location[3]~15_combout\ & ((\inst1|toggle_location[3]~16_combout\) # (\inst1|Mux0~3_combout\ $ (\inst1|Mux2~4_combout\)))) # (!\inst1|toggle_location[3]~15_combout\ & (\inst1|Mux0~3_combout\ $ 
-- ((\inst1|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~3_combout\,
	datab => \inst1|Mux2~4_combout\,
	datac => \inst1|toggle_location[3]~15_combout\,
	datad => \inst1|toggle_location[3]~16_combout\,
	combout => \inst1|toggle_location[3]~17_combout\);

-- Location: LCCOMB_X5_Y11_N24
\inst1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = (!prev_toggle_location(1) & !prev_toggle_location(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(2),
	combout => \inst1|Add1~0_combout\);

-- Location: LCCOMB_X6_Y11_N14
\inst1|toggle_location[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~12_combout\ = (\inst1|Mux0~3_combout\ & (((!\inst1|Mux4~6_combout\ & \inst1|Mux3~4_combout\)) # (!\inst1|Mux2~4_combout\))) # (!\inst1|Mux0~3_combout\ & ((\inst1|Mux2~4_combout\) # ((\inst1|Mux4~6_combout\ & 
-- !\inst1|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux4~6_combout\,
	datab => \inst1|Mux0~3_combout\,
	datac => \inst1|Mux2~4_combout\,
	datad => \inst1|Mux3~4_combout\,
	combout => \inst1|toggle_location[2]~12_combout\);

-- Location: LCCOMB_X7_Y11_N14
\inst1|toggle_location[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~18_combout\ = (\inst1|toggle_location[2]~12_combout\ & (prev_toggle_location(3) $ (((!\inst1|Add1~0_combout\) # (!\inst1|toggle_location[3]~17_combout\))))) # (!\inst1|toggle_location[2]~12_combout\ & 
-- (((\inst1|toggle_location[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(3),
	datab => \inst1|toggle_location[3]~17_combout\,
	datac => \inst1|Add1~0_combout\,
	datad => \inst1|toggle_location[2]~12_combout\,
	combout => \inst1|toggle_location[3]~18_combout\);

-- Location: LCCOMB_X8_Y11_N10
\inst1|toggle_location[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[3]~20_combout\ = (\inst1|Mux0~3_combout\ & ((\inst1|Mux1~4_combout\ & ((\inst1|toggle_location[3]~18_combout\))) # (!\inst1|Mux1~4_combout\ & (\inst1|Add0~0_combout\)))) # (!\inst1|Mux0~3_combout\ & ((\inst1|Mux1~4_combout\ & 
-- (\inst1|Add0~0_combout\)) # (!\inst1|Mux1~4_combout\ & ((\inst1|toggle_location[3]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~3_combout\,
	datab => \inst1|Mux1~4_combout\,
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|toggle_location[3]~18_combout\,
	combout => \inst1|toggle_location[3]~20_combout\);

-- Location: LCCOMB_X8_Y11_N2
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.stcompute~q\ & (!\inst1|toggle_location[3]~20_combout\ & ((\Equal0~3_combout\) # (!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.stcompute~q\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \inst1|toggle_location[3]~20_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X8_Y11_N3
\prev_toggle_location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector9~0_combout\,
	ena => \prev_toggle_location[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_toggle_location(3));

-- Location: LCCOMB_X8_Y11_N20
\inst1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~3_combout\ = (prev_toggle_location(0) & ((prev_toggle_location(2) & (prev_toggle_location(1) & !prev_toggle_location(3))) # (!prev_toggle_location(2) & (!prev_toggle_location(1) & prev_toggle_location(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(0),
	datac => prev_toggle_location(1),
	datad => prev_toggle_location(3),
	combout => \inst1|Mux1~3_combout\);

-- Location: LCCOMB_X7_Y11_N0
\inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (prev_toggle_location(2) & (prev_toggle_location(1))) # (!prev_toggle_location(2) & ((prev_toggle_location(1) & ((\inst1|Mux4~7_combout\))) # (!prev_toggle_location(1) & (\inst1|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(1),
	datac => \inst1|Mux4~9_combout\,
	datad => \inst1|Mux4~7_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X7_Y11_N6
\inst1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (prev_toggle_location(2) & ((\inst1|Mux1~0_combout\ & ((\inst1|Mux4~8_combout\))) # (!\inst1|Mux1~0_combout\ & (\inst1|Mux4~10_combout\)))) # (!prev_toggle_location(2) & (((\inst1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => \inst1|Mux4~10_combout\,
	datac => \inst1|Mux4~8_combout\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst1|Mux1~1_combout\);

-- Location: LCCOMB_X7_Y11_N10
\inst1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (\inst1|Mux1~1_combout\ & (prev_toggle_location(3) $ (((!prev_toggle_location(2) & !prev_toggle_location(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(1),
	datac => prev_toggle_location(3),
	datad => \inst1|Mux1~1_combout\,
	combout => \inst1|Mux1~2_combout\);

-- Location: LCCOMB_X7_Y11_N20
\inst1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~4_combout\ = (\inst1|Mux1~2_combout\) # ((mpr(7) & (!prev_toggle_location(1) & \inst1|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpr(7),
	datab => prev_toggle_location(1),
	datac => \inst1|Mux1~3_combout\,
	datad => \inst1|Mux1~2_combout\,
	combout => \inst1|Mux1~4_combout\);

-- Location: LCCOMB_X7_Y11_N26
\inst1|toggle_location~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~7_combout\ = \inst1|Mux0~3_combout\ $ (\inst1|Mux1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mux0~3_combout\,
	datad => \inst1|Mux1~4_combout\,
	combout => \inst1|toggle_location~7_combout\);

-- Location: LCCOMB_X6_Y11_N28
\inst1|toggle_location[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~11_combout\ = (\inst1|Mux0~3_combout\ & ((!\inst1|Mux3~4_combout\) # (!\inst1|Mux2~4_combout\))) # (!\inst1|Mux0~3_combout\ & ((\inst1|Mux2~4_combout\) # (\inst1|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux0~3_combout\,
	datac => \inst1|Mux2~4_combout\,
	datad => \inst1|Mux3~4_combout\,
	combout => \inst1|toggle_location[2]~11_combout\);

-- Location: LCCOMB_X6_Y11_N6
\inst1|toggle_location[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~19_combout\ = (\inst1|toggle_location[2]~12_combout\ & (prev_toggle_location(2) $ (((prev_toggle_location(1)) # (!\inst1|toggle_location[2]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => prev_toggle_location(1),
	datac => \inst1|toggle_location[2]~12_combout\,
	datad => \inst1|toggle_location[2]~11_combout\,
	combout => \inst1|toggle_location[2]~19_combout\);

-- Location: LCCOMB_X6_Y11_N16
\inst1|toggle_location[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~13_combout\ = (!\inst1|toggle_location[2]~12_combout\ & ((\inst1|toggle_location[2]~11_combout\ & ((\inst1|Add2~1_combout\))) # (!\inst1|toggle_location[2]~11_combout\ & (prev_toggle_location(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => \inst1|Add2~1_combout\,
	datac => \inst1|toggle_location[2]~12_combout\,
	datad => \inst1|toggle_location[2]~11_combout\,
	combout => \inst1|toggle_location[2]~13_combout\);

-- Location: LCCOMB_X8_Y11_N24
\inst1|toggle_location[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~14_combout\ = (\inst1|toggle_location~7_combout\ & (\inst1|Add3~0_combout\)) # (!\inst1|toggle_location~7_combout\ & (((\inst1|toggle_location[2]~19_combout\) # (\inst1|toggle_location[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location~7_combout\,
	datab => \inst1|Add3~0_combout\,
	datac => \inst1|toggle_location[2]~19_combout\,
	datad => \inst1|toggle_location[2]~13_combout\,
	combout => \inst1|toggle_location[2]~14_combout\);

-- Location: LCCOMB_X8_Y11_N26
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = prev_toggle_location(2) $ (!\inst1|toggle_location[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datad => \inst1|toggle_location[2]~14_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X9_Y11_N2
\inst1|toggle_location[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~8_combout\ = (prev_toggle_location(1) & ((\inst1|Mux0~3_combout\ & (\inst1|Mux3~4_combout\ & \inst1|Mux2~4_combout\)) # (!\inst1|Mux0~3_combout\ & (!\inst1|Mux3~4_combout\ & !\inst1|Mux2~4_combout\)))) # (!prev_toggle_location(1) 
-- & (\inst1|Mux0~3_combout\ $ (((\inst1|Mux2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~3_combout\,
	datab => prev_toggle_location(1),
	datac => \inst1|Mux3~4_combout\,
	datad => \inst1|Mux2~4_combout\,
	combout => \inst1|toggle_location[1]~8_combout\);

-- Location: LCCOMB_X5_Y11_N14
\inst1|toggle_location[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~9_combout\ = (\inst1|Mux0~3_combout\ & (!\inst1|Mux3~4_combout\ & \inst1|Mux2~4_combout\)) # (!\inst1|Mux0~3_combout\ & (\inst1|Mux3~4_combout\ & !\inst1|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux0~3_combout\,
	datac => \inst1|Mux3~4_combout\,
	datad => \inst1|Mux2~4_combout\,
	combout => \inst1|toggle_location[1]~9_combout\);

-- Location: LCCOMB_X6_Y11_N30
\inst1|toggle_location[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[1]~10_combout\ = (\inst1|toggle_location~7_combout\ & (\inst1|Add2~0_combout\)) # (!\inst1|toggle_location~7_combout\ & ((\inst1|toggle_location[1]~8_combout\ & ((\inst1|toggle_location[1]~9_combout\))) # 
-- (!\inst1|toggle_location[1]~8_combout\ & ((!\inst1|toggle_location[1]~9_combout\) # (!\inst1|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~0_combout\,
	datab => \inst1|toggle_location~7_combout\,
	datac => \inst1|toggle_location[1]~8_combout\,
	datad => \inst1|toggle_location[1]~9_combout\,
	combout => \inst1|toggle_location[1]~10_combout\);

-- Location: LCCOMB_X8_Y11_N0
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.stcompute~q\ & (!\inst1|toggle_location[1]~10_combout\ & ((\Equal0~3_combout\) # (!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.stcompute~q\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \inst1|toggle_location[1]~10_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X8_Y11_N1
\prev_toggle_location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector11~0_combout\,
	ena => \prev_toggle_location[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_toggle_location(1));

-- Location: LCCOMB_X5_Y11_N30
\inst1|toggle_location~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location~5_combout\ = prev_toggle_location(0) $ (((\inst1|Mux0~3_combout\ & ((\inst1|Mux3~4_combout\) # (!\inst1|Mux2~4_combout\))) # (!\inst1|Mux0~3_combout\ & ((\inst1|Mux2~4_combout\) # (!\inst1|Mux3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(0),
	datab => \inst1|Mux0~3_combout\,
	datac => \inst1|Mux3~4_combout\,
	datad => \inst1|Mux2~4_combout\,
	combout => \inst1|toggle_location~5_combout\);

-- Location: LCCOMB_X5_Y11_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\inst1|Mux0~3_combout\ & ((\inst1|toggle_location~5_combout\ $ (!prev_toggle_location(0))) # (!\inst1|Mux1~4_combout\))) # (!\inst1|Mux0~3_combout\ & ((\inst1|Mux1~4_combout\) # (\inst1|toggle_location~5_combout\ $ 
-- (!prev_toggle_location(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~3_combout\,
	datab => \inst1|Mux1~4_combout\,
	datac => \inst1|toggle_location~5_combout\,
	datad => prev_toggle_location(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X8_Y11_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = prev_toggle_location(3) $ (((\inst1|toggle_location~7_combout\ & (!\inst1|Add0~0_combout\)) # (!\inst1|toggle_location~7_combout\ & ((!\inst1|toggle_location[3]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location~7_combout\,
	datab => prev_toggle_location(3),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|toggle_location[3]~18_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X8_Y11_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Equal0~0_combout\ & (!\Equal0~1_combout\ & (prev_toggle_location(1) $ (\inst1|toggle_location[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(1),
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \inst1|toggle_location[1]~10_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X8_Y11_N6
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\state.stcompute~q\ & (!\inst1|toggle_location[2]~14_combout\ & ((!prev_toggle_location(2)) # (!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.stcompute~q\,
	datab => \Equal0~2_combout\,
	datac => prev_toggle_location(2),
	datad => \inst1|toggle_location[2]~14_combout\,
	combout => \Selector10~2_combout\);

-- Location: FF_X8_Y11_N7
\prev_toggle_location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector10~2_combout\,
	ena => \prev_toggle_location[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_toggle_location(2));

-- Location: LCCOMB_X5_Y11_N22
\Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\Equal0~2_combout\ & (\state.stcompute~q\ & (prev_toggle_location(2) $ (\inst1|toggle_location[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(2),
	datab => \inst1|toggle_location[2]~14_combout\,
	datac => \Equal0~2_combout\,
	datad => \state.stcompute~q\,
	combout => \Selector15~2_combout\);

-- Location: FF_X5_Y11_N23
\state.stdone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.stdone~q\);

-- Location: LCCOMB_X11_Y11_N28
\prev_toggle_location[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_toggle_location[3]~0_combout\ = (!\state.stdone~q\ & ((\go~input_o\) # (\state.stidle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \go~input_o\,
	datac => \state.stidle~q\,
	datad => \state.stdone~q\,
	combout => \prev_toggle_location[3]~0_combout\);

-- Location: FF_X11_Y11_N29
\state.stidle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_toggle_location[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.stidle~q\);

-- Location: LCCOMB_X11_Y11_N2
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\go~input_o\ & !\state.stidle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \go~input_o\,
	datad => \state.stidle~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X8_Y11_N16
\result1[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \result1[8]~0_combout\ = (\Selector14~0_combout\) # ((\state.stcompute~q\ & ((\Equal0~3_combout\) # (!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \state.stcompute~q\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \result1[8]~0_combout\);

-- Location: FF_X8_Y11_N27
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

-- Location: LCCOMB_X5_Y11_N28
\inst1|toggle_location[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[0]~6_combout\ = (\inst1|toggle_location~5_combout\ & ((prev_toggle_location(0)) # (\inst1|Mux0~3_combout\ $ (!\inst1|Mux1~4_combout\)))) # (!\inst1|toggle_location~5_combout\ & (prev_toggle_location(0) & (\inst1|Mux0~3_combout\ $ 
-- (\inst1|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location~5_combout\,
	datab => \inst1|Mux0~3_combout\,
	datac => prev_toggle_location(0),
	datad => \inst1|Mux1~4_combout\,
	combout => \inst1|toggle_location[0]~6_combout\);

-- Location: LCCOMB_X8_Y11_N28
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.stcompute~q\ & (!\inst1|toggle_location[0]~6_combout\ & ((\Equal0~3_combout\) # (!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.stcompute~q\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \inst1|toggle_location[0]~6_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X8_Y11_N29
\prev_toggle_location[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector12~0_combout\,
	ena => \prev_toggle_location[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_toggle_location(0));

-- Location: LCCOMB_X9_Y11_N8
\inst1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = prev_toggle_location(2) $ (((prev_toggle_location(0)) # (prev_toggle_location(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_toggle_location(0),
	datab => prev_toggle_location(2),
	datad => prev_toggle_location(1),
	combout => \inst1|Add3~0_combout\);

-- Location: LCCOMB_X9_Y11_N12
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|Add3~0_combout\ & (((\inst1|Add2~0_combout\)))) # (!\inst1|Add3~0_combout\ & ((\inst1|Add2~0_combout\ & ((\inst1|Mux4~1_combout\))) # (!\inst1|Add2~0_combout\ & (\inst1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|Mux4~2_combout\,
	datac => \inst1|Add2~0_combout\,
	datad => \inst1|Mux4~1_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y11_N10
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|Add3~0_combout\ & ((\inst1|Mux0~0_combout\ & ((\inst1|Mux4~3_combout\))) # (!\inst1|Mux0~0_combout\ & (\inst1|Mux4~0_combout\)))) # (!\inst1|Add3~0_combout\ & (((\inst1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|Mux4~0_combout\,
	datac => \inst1|Mux4~3_combout\,
	datad => \inst1|Mux0~0_combout\,
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X9_Y11_N26
\inst1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~3_combout\ = (\inst1|Add0~0_combout\ & (!\inst1|Add3~0_combout\ & (\inst1|Mux0~2_combout\))) # (!\inst1|Add0~0_combout\ & (((\inst1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|Mux0~2_combout\,
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|Mux0~3_combout\);

-- Location: LCCOMB_X10_Y11_N20
\inst1|toggle_location[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|toggle_location[2]~4_combout\ = (\inst1|Mux2~4_combout\ & !\inst1|Mux4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mux2~4_combout\,
	datad => \inst1|Mux4~6_combout\,
	combout => \inst1|toggle_location[2]~4_combout\);

-- Location: LCCOMB_X10_Y11_N12
\inst1|sig_add~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_add~0_combout\ = (\inst1|Mux0~3_combout\ & (((!\inst1|toggle_location[2]~4_combout\) # (!\inst1|Mux3~4_combout\)) # (!\inst1|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~3_combout\,
	datab => \inst1|Mux1~4_combout\,
	datac => \inst1|Mux3~4_combout\,
	datad => \inst1|toggle_location[2]~4_combout\,
	combout => \inst1|sig_add~0_combout\);

-- Location: LCCOMB_X10_Y11_N8
\inst1|sig_sub~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_sub~1_combout\ = (\inst1|Mux4~6_combout\ & (((prev_toggle_location(1)) # (!mpr(7))) # (!\inst1|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~3_combout\,
	datab => mpr(7),
	datac => prev_toggle_location(1),
	datad => \inst1|Mux4~6_combout\,
	combout => \inst1|sig_sub~1_combout\);

-- Location: LCCOMB_X10_Y11_N18
\inst1|sig_sub~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_sub~0_combout\ = (\inst1|Add4~0_combout\ & (\inst1|Mux3~0_combout\ & (\inst1|Mux3~1_combout\))) # (!\inst1|Add4~0_combout\ & (((\inst1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \inst1|Mux3~1_combout\,
	datac => \inst1|Add4~0_combout\,
	datad => \inst1|Mux3~3_combout\,
	combout => \inst1|sig_sub~0_combout\);

-- Location: LCCOMB_X10_Y11_N0
\inst1|sig_sub~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_sub~2_combout\ = (\inst1|Mux1~2_combout\) # (((\inst1|Mux2~4_combout\) # (\inst1|sig_sub~0_combout\)) # (!\inst1|sig_sub~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~2_combout\,
	datab => \inst1|sig_sub~1_combout\,
	datac => \inst1|Mux2~4_combout\,
	datad => \inst1|sig_sub~0_combout\,
	combout => \inst1|sig_sub~2_combout\);

-- Location: LCCOMB_X10_Y7_N8
\inst1|sig_sub~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sig_sub~3_combout\ = (!\inst1|Mux0~3_combout\ & \inst1|sig_sub~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mux0~3_combout\,
	datad => \inst1|sig_sub~2_combout\,
	combout => \inst1|sig_sub~3_combout\);

-- Location: LCCOMB_X6_Y11_N4
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst1|toggle_location~7_combout\ & (((!\inst1|Add0~0_combout\ & !\inst1|Add3~0_combout\)))) # (!\inst1|toggle_location~7_combout\ & (!\inst1|toggle_location[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[2]~13_combout\,
	datab => \inst1|toggle_location~7_combout\,
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|Add3~0_combout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y11_N2
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst1|toggle_location[2]~12_combout\ & (prev_toggle_location(3) $ (((\inst1|toggle_location[3]~17_combout\ & \inst1|Add1~0_combout\))))) # (!\inst1|toggle_location[2]~12_combout\ & (!\inst1|toggle_location[3]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[2]~12_combout\,
	datab => \inst1|toggle_location[3]~17_combout\,
	datac => \inst1|Add1~0_combout\,
	datad => prev_toggle_location(3),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y11_N20
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|Equal0~1_combout\ & ((\inst1|toggle_location~7_combout\) # ((\inst2|Equal0~0_combout\ & !\inst1|toggle_location[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst1|toggle_location~7_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst1|toggle_location[2]~19_combout\,
	combout => \inst2|Equal0~2_combout\);

-- Location: IOIBUF_X3_Y0_N1
\mpd_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(0),
	o => \mpd_in[0]~input_o\);

-- Location: LCCOMB_X7_Y7_N8
\mpd[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpd[0]~feeder_combout\ = \mpd_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mpd_in[0]~input_o\,
	combout => \mpd[0]~feeder_combout\);

-- Location: FF_X7_Y7_N9
\mpd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mpd[0]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(0));

-- Location: LCCOMB_X7_Y7_N26
\inst2|mpd2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[0]~0_combout\ = (!\inst1|toggle_location[0]~6_combout\ & (!\inst1|toggle_location[1]~10_combout\ & (\inst2|Equal0~2_combout\ & mpd(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[0]~6_combout\,
	datab => \inst1|toggle_location[1]~10_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => mpd(0),
	combout => \inst2|mpd2[0]~0_combout\);

-- Location: LCCOMB_X5_Y11_N0
\inst2|mpd2[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[7]~1_combout\ = (!\inst1|toggle_location[3]~20_combout\ & (((!\inst1|toggle_location[0]~6_combout\ & !\inst1|toggle_location[1]~10_combout\)) # (!\inst1|toggle_location[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~20_combout\,
	datab => \inst1|toggle_location[0]~6_combout\,
	datac => \inst1|toggle_location[1]~10_combout\,
	datad => \inst1|toggle_location[2]~14_combout\,
	combout => \inst2|mpd2[7]~1_combout\);

-- Location: CLKCTRL_G4
\inst2|mpd2[7]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|mpd2[7]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|mpd2[7]~1clkctrl_outclk\);

-- Location: LCCOMB_X9_Y7_N2
\inst2|mpd2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(0) = (GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & ((\inst2|mpd2[0]~0_combout\))) # (!GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & (\inst2|mpd2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mpd2\(0),
	datac => \inst2|mpd2[0]~0_combout\,
	datad => \inst2|mpd2[7]~1clkctrl_outclk\,
	combout => \inst2|mpd2\(0));

-- Location: IOIBUF_X1_Y0_N15
\mpd_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(1),
	o => \mpd_in[1]~input_o\);

-- Location: FF_X7_Y7_N5
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(1));

-- Location: LCCOMB_X6_Y11_N8
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst1|toggle_location[1]~10_combout\ & (!\inst1|toggle_location[0]~6_combout\ & \inst2|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~10_combout\,
	datac => \inst1|toggle_location[0]~6_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y11_N10
\inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (\inst2|Equal0~2_combout\ & (\inst1|toggle_location[0]~6_combout\ & !\inst1|toggle_location[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~2_combout\,
	datac => \inst1|toggle_location[0]~6_combout\,
	datad => \inst1|toggle_location[1]~10_combout\,
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X7_Y7_N30
\inst2|mpd2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[1]~2_combout\ = (\inst2|Equal0~3_combout\ & (mpd(1))) # (!\inst2|Equal0~3_combout\ & (((mpd(0) & \inst2|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(1),
	datab => mpd(0),
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|mpd2[1]~2_combout\);

-- Location: LCCOMB_X7_Y7_N16
\inst2|mpd2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(1) = (GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & ((\inst2|mpd2[1]~2_combout\))) # (!GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & (\inst2|mpd2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mpd2\(1),
	datac => \inst2|mpd2[1]~2_combout\,
	datad => \inst2|mpd2[7]~1clkctrl_outclk\,
	combout => \inst2|mpd2\(1));

-- Location: LCCOMB_X7_Y7_N22
\inst2|mpd2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[2]~3_combout\ = (\inst1|toggle_location[1]~10_combout\ & (mpd(0) & ((!\inst1|toggle_location[0]~6_combout\)))) # (!\inst1|toggle_location[1]~10_combout\ & (((mpd(1) & \inst1|toggle_location[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[1]~10_combout\,
	datab => mpd(0),
	datac => mpd(1),
	datad => \inst1|toggle_location[0]~6_combout\,
	combout => \inst2|mpd2[2]~3_combout\);

-- Location: IOIBUF_X0_Y4_N15
\mpd_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(2),
	o => \mpd_in[2]~input_o\);

-- Location: FF_X7_Y7_N29
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(2));

-- Location: LCCOMB_X7_Y7_N12
\inst2|mpd2[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[2]~4_combout\ = (\inst2|mpd2[2]~3_combout\ & ((\inst2|Equal0~2_combout\) # ((mpd(2) & \inst2|Equal0~3_combout\)))) # (!\inst2|mpd2[2]~3_combout\ & (mpd(2) & (\inst2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[2]~3_combout\,
	datab => mpd(2),
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|mpd2[2]~4_combout\);

-- Location: LCCOMB_X7_Y7_N6
\inst2|mpd2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(2) = (GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & ((\inst2|mpd2[2]~4_combout\))) # (!GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & (\inst2|mpd2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2\(2),
	datac => \inst2|mpd2[2]~4_combout\,
	datad => \inst2|mpd2[7]~1clkctrl_outclk\,
	combout => \inst2|mpd2\(2));

-- Location: LCCOMB_X7_Y7_N18
\inst2|mpd2[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[3]~6_combout\ = (\inst1|toggle_location[0]~6_combout\ & ((mpd(0)))) # (!\inst1|toggle_location[0]~6_combout\ & (mpd(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[0]~6_combout\,
	datac => mpd(1),
	datad => mpd(0),
	combout => \inst2|mpd2[3]~6_combout\);

-- Location: IOIBUF_X14_Y0_N8
\mpd_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(3),
	o => \mpd_in[3]~input_o\);

-- Location: LCCOMB_X7_Y7_N10
\mpd[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mpd[3]~feeder_combout\ = \mpd_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mpd_in[3]~input_o\,
	combout => \mpd[3]~feeder_combout\);

-- Location: FF_X7_Y7_N11
\mpd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mpd[3]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(3));

-- Location: LCCOMB_X7_Y7_N24
\inst2|mpd2[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[3]~5_combout\ = (\inst1|toggle_location[0]~6_combout\ & ((mpd(2)))) # (!\inst1|toggle_location[0]~6_combout\ & (mpd(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mpd(3),
	datac => mpd(2),
	datad => \inst1|toggle_location[0]~6_combout\,
	combout => \inst2|mpd2[3]~5_combout\);

-- Location: LCCOMB_X7_Y7_N20
\inst2|mpd2[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[3]~7_combout\ = (\inst2|Equal0~2_combout\ & ((\inst1|toggle_location[1]~10_combout\ & (\inst2|mpd2[3]~6_combout\)) # (!\inst1|toggle_location[1]~10_combout\ & ((\inst2|mpd2[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[3]~6_combout\,
	datab => \inst2|mpd2[3]~5_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst1|toggle_location[1]~10_combout\,
	combout => \inst2|mpd2[3]~7_combout\);

-- Location: LCCOMB_X10_Y11_N28
\inst2|mpd2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(3) = (GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & ((\inst2|mpd2[3]~7_combout\))) # (!GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & (\inst2|mpd2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mpd2\(3),
	datac => \inst2|mpd2[3]~7_combout\,
	datad => \inst2|mpd2[7]~1clkctrl_outclk\,
	combout => \inst2|mpd2\(3));

-- Location: IOIBUF_X0_Y15_N1
\mpd_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(4),
	o => \mpd_in[4]~input_o\);

-- Location: FF_X6_Y11_N19
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(4));

-- Location: LCCOMB_X10_Y7_N10
\inst2|mpd2[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~8_combout\ = (mpd(4) & ((\inst2|Equal0~3_combout\) # ((mpd(3) & \inst2|Equal1~0_combout\)))) # (!mpd(4) & (mpd(3) & ((\inst2|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(4),
	datab => mpd(3),
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|mpd2[4]~8_combout\);

-- Location: LCCOMB_X6_Y11_N22
\inst2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal2~0_combout\ = (\inst2|Equal0~2_combout\ & (!\inst1|toggle_location[0]~6_combout\ & \inst1|toggle_location[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~2_combout\,
	datac => \inst1|toggle_location[0]~6_combout\,
	datad => \inst1|toggle_location[1]~10_combout\,
	combout => \inst2|Equal2~0_combout\);

-- Location: LCCOMB_X6_Y11_N12
\inst2|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~0_combout\ = (\inst2|Equal0~2_combout\ & (\inst1|toggle_location[0]~6_combout\ & \inst1|toggle_location[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~2_combout\,
	datac => \inst1|toggle_location[0]~6_combout\,
	datad => \inst1|toggle_location[1]~10_combout\,
	combout => \inst2|Equal3~0_combout\);

-- Location: LCCOMB_X10_Y7_N4
\inst2|mpd2[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~9_combout\ = (mpd(2) & ((\inst2|Equal2~0_combout\) # ((mpd(1) & \inst2|Equal3~0_combout\)))) # (!mpd(2) & (mpd(1) & ((\inst2|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(2),
	datab => mpd(1),
	datac => \inst2|Equal2~0_combout\,
	datad => \inst2|Equal3~0_combout\,
	combout => \inst2|mpd2[4]~9_combout\);

-- Location: LCCOMB_X10_Y7_N22
\inst2|mpd2[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[4]~10_combout\ = (\inst2|mpd2[4]~8_combout\) # ((\inst2|mpd2[4]~9_combout\) # ((mpd(0) & !\inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[4]~8_combout\,
	datab => mpd(0),
	datac => \inst2|mpd2[4]~9_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|mpd2[4]~10_combout\);

-- Location: LCCOMB_X10_Y7_N6
\inst2|mpd2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(4) = (GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & ((\inst2|mpd2[4]~10_combout\))) # (!GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & (\inst2|mpd2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2\(4),
	datac => \inst2|mpd2[4]~10_combout\,
	datad => \inst2|mpd2[7]~1clkctrl_outclk\,
	combout => \inst2|mpd2\(4));

-- Location: IOIBUF_X18_Y0_N22
\mpd_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mpd_in(5),
	o => \mpd_in[5]~input_o\);

-- Location: FF_X11_Y7_N13
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(5));

-- Location: LCCOMB_X10_Y7_N28
\inst2|mpd2[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[5]~11_combout\ = (mpd(4) & ((\inst2|Equal1~0_combout\) # ((mpd(5) & \inst2|Equal0~3_combout\)))) # (!mpd(4) & (mpd(5) & (\inst2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(4),
	datab => mpd(5),
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|mpd2[5]~11_combout\);

-- Location: LCCOMB_X10_Y7_N30
\inst2|mpd2[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[5]~12_combout\ = (mpd(2) & ((\inst2|Equal3~0_combout\) # ((mpd(3) & \inst2|Equal2~0_combout\)))) # (!mpd(2) & (mpd(3) & (\inst2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(2),
	datab => mpd(3),
	datac => \inst2|Equal2~0_combout\,
	datad => \inst2|Equal3~0_combout\,
	combout => \inst2|mpd2[5]~12_combout\);

-- Location: LCCOMB_X10_Y7_N16
\inst2|mpd2[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[5]~13_combout\ = (\inst2|mpd2[5]~11_combout\) # ((\inst2|mpd2[5]~12_combout\) # ((mpd(1) & !\inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(1),
	datab => \inst2|mpd2[5]~11_combout\,
	datac => \inst2|mpd2[5]~12_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|mpd2[5]~13_combout\);

-- Location: LCCOMB_X10_Y7_N20
\inst2|mpd2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(5) = (GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & ((\inst2|mpd2[5]~13_combout\))) # (!GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & (\inst2|mpd2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mpd2\(5),
	datac => \inst2|mpd2[5]~13_combout\,
	datad => \inst2|mpd2[7]~1clkctrl_outclk\,
	combout => \inst2|mpd2\(5));

-- Location: LCCOMB_X10_Y7_N0
\inst2|mpd2[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[6]~15_combout\ = (mpd(4) & ((\inst2|Equal2~0_combout\) # ((mpd(3) & \inst2|Equal3~0_combout\)))) # (!mpd(4) & (mpd(3) & ((\inst2|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(4),
	datab => mpd(3),
	datac => \inst2|Equal2~0_combout\,
	datad => \inst2|Equal3~0_combout\,
	combout => \inst2|mpd2[6]~15_combout\);

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

-- Location: LCCOMB_X11_Y11_N16
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

-- Location: FF_X11_Y11_N17
\mpd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mpd[6]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(6));

-- Location: LCCOMB_X10_Y7_N14
\inst2|mpd2[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[6]~14_combout\ = (mpd(6) & ((\inst2|Equal0~3_combout\) # ((mpd(5) & \inst2|Equal1~0_combout\)))) # (!mpd(6) & (mpd(5) & ((\inst2|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(6),
	datab => mpd(5),
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|mpd2[6]~14_combout\);

-- Location: LCCOMB_X10_Y7_N26
\inst2|mpd2[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[6]~16_combout\ = (\inst2|mpd2[6]~15_combout\) # ((\inst2|mpd2[6]~14_combout\) # ((mpd(2) & !\inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[6]~15_combout\,
	datab => mpd(2),
	datac => \inst2|mpd2[6]~14_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|mpd2[6]~16_combout\);

-- Location: LCCOMB_X10_Y7_N18
\inst2|mpd2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(6) = (GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & ((\inst2|mpd2[6]~16_combout\))) # (!GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & (\inst2|mpd2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mpd2\(6),
	datac => \inst2|mpd2[6]~16_combout\,
	datad => \inst2|mpd2[7]~1clkctrl_outclk\,
	combout => \inst2|mpd2\(6));

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

-- Location: FF_X6_Y11_N25
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
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mpd(7));

-- Location: LCCOMB_X11_Y11_N26
\inst2|mpd2[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[7]~17_combout\ = (\inst2|Equal0~3_combout\ & ((mpd(7)) # ((mpd(6) & \inst2|Equal1~0_combout\)))) # (!\inst2|Equal0~3_combout\ & (((mpd(6) & \inst2|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~3_combout\,
	datab => mpd(7),
	datac => mpd(6),
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|mpd2[7]~17_combout\);

-- Location: LCCOMB_X11_Y11_N24
\inst2|mpd2[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[7]~18_combout\ = (mpd(4) & ((\inst2|Equal3~0_combout\) # ((\inst2|Equal2~0_combout\ & mpd(5))))) # (!mpd(4) & (((\inst2|Equal2~0_combout\ & mpd(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mpd(4),
	datab => \inst2|Equal3~0_combout\,
	datac => \inst2|Equal2~0_combout\,
	datad => mpd(5),
	combout => \inst2|mpd2[7]~18_combout\);

-- Location: LCCOMB_X10_Y11_N14
\inst2|mpd2[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[7]~19_combout\ = (\inst2|mpd2[7]~17_combout\) # ((\inst2|mpd2[7]~18_combout\) # ((!\inst2|Equal0~2_combout\ & mpd(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2[7]~17_combout\,
	datab => \inst2|mpd2[7]~18_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => mpd(3),
	combout => \inst2|mpd2[7]~19_combout\);

-- Location: LCCOMB_X10_Y11_N24
\inst2|mpd2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(7) = (GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & ((\inst2|mpd2[7]~19_combout\))) # (!GLOBAL(\inst2|mpd2[7]~1clkctrl_outclk\) & (\inst2|mpd2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mpd2\(7),
	datac => \inst2|mpd2[7]~19_combout\,
	datad => \inst2|mpd2[7]~1clkctrl_outclk\,
	combout => \inst2|mpd2\(7));

-- Location: LCCOMB_X6_Y11_N24
\inst2|mpd2[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[8]~20_combout\ = (\inst2|Equal1~0_combout\ & (((mpd(7))))) # (!\inst2|Equal1~0_combout\ & (\inst2|Equal2~0_combout\ & (mpd(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal2~0_combout\,
	datab => mpd(6),
	datac => mpd(7),
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|mpd2[8]~20_combout\);

-- Location: LCCOMB_X6_Y11_N18
\inst2|mpd2[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[8]~21_combout\ = (\inst2|Equal3~0_combout\ & (mpd(5))) # (!\inst2|Equal3~0_combout\ & ((mpd(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mpd(5),
	datac => mpd(4),
	datad => \inst2|Equal3~0_combout\,
	combout => \inst2|mpd2[8]~21_combout\);

-- Location: LCCOMB_X6_Y11_N0
\inst2|mpd2[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[8]~22_combout\ = (\inst2|mpd2[8]~20_combout\) # ((!\inst2|Equal1~0_combout\ & (\inst2|mpd2[8]~21_combout\ & !\inst2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~0_combout\,
	datab => \inst2|mpd2[8]~20_combout\,
	datac => \inst2|mpd2[8]~21_combout\,
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|mpd2[8]~22_combout\);

-- Location: LCCOMB_X5_Y11_N12
\inst2|mpd2[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2[8]~23_combout\ = (\inst1|toggle_location[3]~20_combout\) # (\inst1|toggle_location[2]~14_combout\ $ (((!\inst1|toggle_location[0]~6_combout\ & !\inst1|toggle_location[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|toggle_location[3]~20_combout\,
	datab => \inst1|toggle_location[0]~6_combout\,
	datac => \inst1|toggle_location[1]~10_combout\,
	datad => \inst1|toggle_location[2]~14_combout\,
	combout => \inst2|mpd2[8]~23_combout\);

-- Location: LCCOMB_X6_Y11_N26
\inst2|mpd2[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|mpd2\(8) = (!\inst2|Equal0~3_combout\ & ((\inst2|mpd2[8]~23_combout\ & (\inst2|mpd2\(8))) # (!\inst2|mpd2[8]~23_combout\ & ((\inst2|mpd2[8]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mpd2\(8),
	datab => \inst2|Equal0~3_combout\,
	datac => \inst2|mpd2[8]~22_combout\,
	datad => \inst2|mpd2[8]~23_combout\,
	combout => \inst2|mpd2\(8));

-- Location: LCCOMB_X9_Y7_N0
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|mpd2\(0) $ (((!\inst1|Mux0~3_combout\ & \inst1|sig_sub~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux0~3_combout\,
	datac => \inst1|sig_sub~2_combout\,
	datad => \inst2|mpd2\(0),
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X8_Y7_N28
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(0),
	combout => \Selector8~0_combout\);

-- Location: FF_X8_Y7_N29
\result1[0]\ : dffeas
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
	q => result1(0));

-- Location: LCCOMB_X9_Y7_N4
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_cout\ = CARRY((!\inst1|Mux0~3_combout\ & \inst1|sig_sub~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~3_combout\,
	datab => \inst1|sig_sub~2_combout\,
	datad => VCC,
	cout => \inst2|Add0~2_cout\);

-- Location: LCCOMB_X9_Y7_N6
\inst2|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~3_combout\ = (\inst2|Add0~0_combout\ & ((result1(0) & (\inst2|Add0~2_cout\ & VCC)) # (!result1(0) & (!\inst2|Add0~2_cout\)))) # (!\inst2|Add0~0_combout\ & ((result1(0) & (!\inst2|Add0~2_cout\)) # (!result1(0) & ((\inst2|Add0~2_cout\) # 
-- (GND)))))
-- \inst2|Add0~4\ = CARRY((\inst2|Add0~0_combout\ & (!result1(0) & !\inst2|Add0~2_cout\)) # (!\inst2|Add0~0_combout\ & ((!\inst2|Add0~2_cout\) # (!result1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => result1(0),
	datad => VCC,
	cin => \inst2|Add0~2_cout\,
	combout => \inst2|Add0~3_combout\,
	cout => \inst2|Add0~4\);

-- Location: LCCOMB_X10_Y11_N2
\inst2|next_result1[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1[8]~0_combout\ = (\inst1|sig_add~0_combout\) # ((!\inst1|Mux0~3_combout\ & \inst1|sig_sub~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~3_combout\,
	datab => \inst1|sig_sub~2_combout\,
	datad => \inst1|sig_add~0_combout\,
	combout => \inst2|next_result1[8]~0_combout\);

-- Location: CLKCTRL_G3
\inst2|next_result1[8]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|next_result1[8]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|next_result1[8]~0clkctrl_outclk\);

-- Location: LCCOMB_X8_Y7_N6
\inst2|next_result1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(0) = (GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & (\inst2|Add0~3_combout\)) # (!GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & ((\inst2|next_result1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~3_combout\,
	datac => \inst2|next_result1[8]~0clkctrl_outclk\,
	datad => \inst2|next_result1\(0),
	combout => \inst2|next_result1\(0));

-- Location: LCCOMB_X9_Y7_N30
\inst2|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_combout\ = \inst2|mpd2\(1) $ (((\inst1|sig_sub~2_combout\ & !\inst1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sig_sub~2_combout\,
	datac => \inst1|Mux0~3_combout\,
	datad => \inst2|mpd2\(1),
	combout => \inst2|Add0~5_combout\);

-- Location: LCCOMB_X8_Y7_N14
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(1),
	combout => \Selector7~0_combout\);

-- Location: FF_X8_Y7_N15
\result1[1]\ : dffeas
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
	q => result1(1));

-- Location: LCCOMB_X9_Y7_N8
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = ((\inst2|Add0~5_combout\ $ (result1(1) $ (!\inst2|Add0~4\)))) # (GND)
-- \inst2|Add0~7\ = CARRY((\inst2|Add0~5_combout\ & ((result1(1)) # (!\inst2|Add0~4\))) # (!\inst2|Add0~5_combout\ & (result1(1) & !\inst2|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~5_combout\,
	datab => result1(1),
	datad => VCC,
	cin => \inst2|Add0~4\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X8_Y7_N24
\inst2|next_result1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(1) = (GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & ((\inst2|Add0~6_combout\))) # (!GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & (\inst2|next_result1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_result1\(1),
	datac => \inst2|Add0~6_combout\,
	datad => \inst2|next_result1[8]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(1));

-- Location: LCCOMB_X8_Y7_N20
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(2),
	combout => \Selector6~0_combout\);

-- Location: FF_X8_Y7_N21
\result1[2]\ : dffeas
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
	q => result1(2));

-- Location: LCCOMB_X7_Y7_N14
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = \inst2|mpd2\(2) $ (((\inst1|sig_sub~2_combout\ & !\inst1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sig_sub~2_combout\,
	datac => \inst1|Mux0~3_combout\,
	datad => \inst2|mpd2\(2),
	combout => \inst2|Add0~8_combout\);

-- Location: LCCOMB_X9_Y7_N10
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

-- Location: LCCOMB_X8_Y7_N18
\inst2|next_result1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(2) = (GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & ((\inst2|Add0~9_combout\))) # (!GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & (\inst2|next_result1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_result1\(2),
	datac => \inst2|Add0~9_combout\,
	datad => \inst2|next_result1[8]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(2));

-- Location: LCCOMB_X10_Y11_N30
\inst2|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~11_combout\ = \inst2|mpd2\(3) $ (((!\inst1|Mux0~3_combout\ & \inst1|sig_sub~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux0~3_combout\,
	datac => \inst1|sig_sub~2_combout\,
	datad => \inst2|mpd2\(3),
	combout => \inst2|Add0~11_combout\);

-- Location: LCCOMB_X8_Y7_N26
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(3),
	combout => \Selector5~0_combout\);

-- Location: FF_X8_Y7_N27
\result1[3]\ : dffeas
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
	q => result1(3));

-- Location: LCCOMB_X9_Y7_N12
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = ((\inst2|Add0~11_combout\ $ (result1(3) $ (!\inst2|Add0~10\)))) # (GND)
-- \inst2|Add0~13\ = CARRY((\inst2|Add0~11_combout\ & ((result1(3)) # (!\inst2|Add0~10\))) # (!\inst2|Add0~11_combout\ & (result1(3) & !\inst2|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~11_combout\,
	datab => result1(3),
	datad => VCC,
	cin => \inst2|Add0~10\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X8_Y7_N0
\inst2|next_result1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(3) = (GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & (\inst2|Add0~12_combout\)) # (!GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & ((\inst2|next_result1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datac => \inst2|next_result1[8]~0clkctrl_outclk\,
	datad => \inst2|next_result1\(3),
	combout => \inst2|next_result1\(3));

-- Location: LCCOMB_X8_Y7_N12
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(4),
	combout => \Selector4~0_combout\);

-- Location: FF_X8_Y7_N13
\result1[4]\ : dffeas
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
	q => result1(4));

-- Location: LCCOMB_X9_Y7_N24
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = \inst2|mpd2\(4) $ (((\inst1|sig_sub~2_combout\ & !\inst1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sig_sub~2_combout\,
	datac => \inst1|Mux0~3_combout\,
	datad => \inst2|mpd2\(4),
	combout => \inst2|Add0~14_combout\);

-- Location: LCCOMB_X9_Y7_N14
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

-- Location: LCCOMB_X8_Y7_N10
\inst2|next_result1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(4) = (GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & (\inst2|Add0~15_combout\)) # (!GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & ((\inst2|next_result1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~15_combout\,
	datac => \inst2|next_result1\(4),
	datad => \inst2|next_result1[8]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(4));

-- Location: LCCOMB_X8_Y7_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(5),
	combout => \Selector3~0_combout\);

-- Location: FF_X8_Y7_N31
\result1[5]\ : dffeas
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
	q => result1(5));

-- Location: LCCOMB_X10_Y7_N12
\inst2|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_combout\ = \inst2|mpd2\(5) $ (((\inst1|sig_sub~2_combout\ & !\inst1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sig_sub~2_combout\,
	datac => \inst1|Mux0~3_combout\,
	datad => \inst2|mpd2\(5),
	combout => \inst2|Add0~17_combout\);

-- Location: LCCOMB_X9_Y7_N16
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

-- Location: LCCOMB_X9_Y7_N28
\inst2|next_result1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(5) = (GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & (\inst2|Add0~18_combout\)) # (!GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & ((\inst2|next_result1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~18_combout\,
	datac => \inst2|next_result1[8]~0clkctrl_outclk\,
	datad => \inst2|next_result1\(5),
	combout => \inst2|next_result1\(5));

-- Location: LCCOMB_X8_Y7_N4
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(6),
	combout => \Selector2~0_combout\);

-- Location: FF_X8_Y7_N5
\result1[6]\ : dffeas
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
	q => result1(6));

-- Location: LCCOMB_X10_Y7_N2
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = \inst2|mpd2\(6) $ (((\inst1|sig_sub~2_combout\ & !\inst1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sig_sub~2_combout\,
	datac => \inst1|Mux0~3_combout\,
	datad => \inst2|mpd2\(6),
	combout => \inst2|Add0~20_combout\);

-- Location: LCCOMB_X9_Y7_N18
\inst2|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~21_combout\ = (result1(6) & ((\inst2|Add0~20_combout\ & (\inst2|Add0~19\ & VCC)) # (!\inst2|Add0~20_combout\ & (!\inst2|Add0~19\)))) # (!result1(6) & ((\inst2|Add0~20_combout\ & (!\inst2|Add0~19\)) # (!\inst2|Add0~20_combout\ & 
-- ((\inst2|Add0~19\) # (GND)))))
-- \inst2|Add0~22\ = CARRY((result1(6) & (!\inst2|Add0~20_combout\ & !\inst2|Add0~19\)) # (!result1(6) & ((!\inst2|Add0~19\) # (!\inst2|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(6),
	datab => \inst2|Add0~20_combout\,
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~21_combout\,
	cout => \inst2|Add0~22\);

-- Location: LCCOMB_X9_Y7_N26
\inst2|next_result1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(6) = (GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & (\inst2|Add0~21_combout\)) # (!GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & ((\inst2|next_result1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~21_combout\,
	datac => \inst2|next_result1[8]~0clkctrl_outclk\,
	datad => \inst2|next_result1\(6),
	combout => \inst2|next_result1\(6));

-- Location: LCCOMB_X8_Y7_N22
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(7),
	combout => \Selector1~0_combout\);

-- Location: FF_X8_Y7_N23
\result1[7]\ : dffeas
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
	q => result1(7));

-- Location: LCCOMB_X10_Y11_N26
\inst2|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~23_combout\ = \inst2|mpd2\(7) $ (((!\inst1|Mux0~3_combout\ & \inst1|sig_sub~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux0~3_combout\,
	datac => \inst1|sig_sub~2_combout\,
	datad => \inst2|mpd2\(7),
	combout => \inst2|Add0~23_combout\);

-- Location: LCCOMB_X9_Y7_N20
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = ((result1(7) $ (\inst2|Add0~23_combout\ $ (!\inst2|Add0~22\)))) # (GND)
-- \inst2|Add0~25\ = CARRY((result1(7) & ((\inst2|Add0~23_combout\) # (!\inst2|Add0~22\))) # (!result1(7) & (\inst2|Add0~23_combout\ & !\inst2|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(7),
	datab => \inst2|Add0~23_combout\,
	datad => VCC,
	cin => \inst2|Add0~22\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X8_Y7_N16
\inst2|next_result1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(7) = (GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & ((\inst2|Add0~24_combout\))) # (!GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & (\inst2|next_result1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_result1\(7),
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|next_result1[8]~0clkctrl_outclk\,
	combout => \inst2|next_result1\(7));

-- Location: LCCOMB_X8_Y7_N8
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.stcompute~q\ & \inst2|next_result1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.stcompute~q\,
	datad => \inst2|next_result1\(8),
	combout => \Selector0~0_combout\);

-- Location: FF_X8_Y7_N9
\result1[8]\ : dffeas
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
	q => result1(8));

-- Location: LCCOMB_X10_Y7_N24
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = \inst2|mpd2\(8) $ (((\inst1|sig_sub~2_combout\ & !\inst1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sig_sub~2_combout\,
	datab => \inst2|mpd2\(8),
	datad => \inst1|Mux0~3_combout\,
	combout => \inst2|Add0~26_combout\);

-- Location: LCCOMB_X9_Y7_N22
\inst2|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~27_combout\ = result1(8) $ (\inst2|Add0~25\ $ (\inst2|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result1(8),
	datad => \inst2|Add0~26_combout\,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~27_combout\);

-- Location: LCCOMB_X8_Y7_N2
\inst2|next_result1[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|next_result1\(8) = (GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & (\inst2|Add0~27_combout\)) # (!GLOBAL(\inst2|next_result1[8]~0clkctrl_outclk\) & ((\inst2|next_result1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~27_combout\,
	datac => \inst2|next_result1[8]~0clkctrl_outclk\,
	datad => \inst2|next_result1\(8),
	combout => \inst2|next_result1\(8));

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

ww_prev_toggle_position(0) <= \prev_toggle_position[0]~output_o\;

ww_prev_toggle_position(1) <= \prev_toggle_position[1]~output_o\;

ww_prev_toggle_position(2) <= \prev_toggle_position[2]~output_o\;

ww_prev_toggle_position(3) <= \prev_toggle_position[3]~output_o\;

ww_next_result(0) <= \next_result[0]~output_o\;

ww_next_result(1) <= \next_result[1]~output_o\;

ww_next_result(2) <= \next_result[2]~output_o\;

ww_next_result(3) <= \next_result[3]~output_o\;

ww_next_result(4) <= \next_result[4]~output_o\;

ww_next_result(5) <= \next_result[5]~output_o\;

ww_next_result(6) <= \next_result[6]~output_o\;

ww_next_result(7) <= \next_result[7]~output_o\;

ww_next_result(8) <= \next_result[8]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;
END structure;


