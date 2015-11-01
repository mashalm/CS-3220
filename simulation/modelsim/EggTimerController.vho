-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/01/2015 15:59:20"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EggTimerController IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END EggTimerController;

-- Design Ports Information
-- HEX3[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[3]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF EggTimerController IS
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
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cd|counter[5]~43_combout\ : std_logic;
SIGNAL \cd|counter[6]~45_combout\ : std_logic;
SIGNAL \cd|counter[24]~81_combout\ : std_logic;
SIGNAL \cd|counter[26]~85_combout\ : std_logic;
SIGNAL \cd|counter[30]~94\ : std_logic;
SIGNAL \cd|counter[31]~95_combout\ : std_logic;
SIGNAL \decSecs|outputTime~2_combout\ : std_logic;
SIGNAL \sm|state.Reset~regout\ : std_logic;
SIGNAL \decSecs|outputTime~7_combout\ : std_logic;
SIGNAL \cd|Equal0~1_combout\ : std_logic;
SIGNAL \cd|Equal0~7_combout\ : std_logic;
SIGNAL \sm|Selector0~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \svMins|swVal[5]~feeder_combout\ : std_logic;
SIGNAL \svMins|swVal[6]~0_combout\ : std_logic;
SIGNAL \svMins|swVal~4_combout\ : std_logic;
SIGNAL \sm|Selector3~0_combout\ : std_logic;
SIGNAL \sm|Selector4~0_combout\ : std_logic;
SIGNAL \sm|state.RunTimer~regout\ : std_logic;
SIGNAL \sm|Selector3~1_combout\ : std_logic;
SIGNAL \sm|state.SetTimer~regout\ : std_logic;
SIGNAL \sm|Selector1~0_combout\ : std_logic;
SIGNAL \sm|Selector1~1_combout\ : std_logic;
SIGNAL \sm|state.SetSec~regout\ : std_logic;
SIGNAL \sm|Selector2~0_combout\ : std_logic;
SIGNAL \sm|state.SetMin~regout\ : std_logic;
SIGNAL \svMins|swVal[6]~3_combout\ : std_logic;
SIGNAL \decMins|outputTime~5_combout\ : std_logic;
SIGNAL \svMins|swVal~7_combout\ : std_logic;
SIGNAL \decMins|outputTime[7]~3_combout\ : std_logic;
SIGNAL \svMins|swVal~8_combout\ : std_logic;
SIGNAL \decMins|outputTime~12_combout\ : std_logic;
SIGNAL \decMins|outputTime[3]~9_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \decMins|outputTime~8_combout\ : std_logic;
SIGNAL \decMins|outputTime[2]~feeder_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \svMins|swVal~10_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \decMins|Add0~0_combout\ : std_logic;
SIGNAL \decMins|outputTime~11_combout\ : std_logic;
SIGNAL \decMins|outputTime~10_combout\ : std_logic;
SIGNAL \svMins|swVal~9_combout\ : std_logic;
SIGNAL \decMins|Equal0~0_combout\ : std_logic;
SIGNAL \decMins|outputTime[7]~4_combout\ : std_logic;
SIGNAL \d4|display[6]~0_combout\ : std_logic;
SIGNAL \decMins|outputTime~6_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \svMins|swVal~6_combout\ : std_logic;
SIGNAL \decMins|outputTime~7_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \svMins|swVal~1_combout\ : std_logic;
SIGNAL \decMins|outputTime~2_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \d4|display[0]~1_combout\ : std_logic;
SIGNAL \d4|display[1]~2_combout\ : std_logic;
SIGNAL \d4|display[2]~3_combout\ : std_logic;
SIGNAL \d4|display[3]~4_combout\ : std_logic;
SIGNAL \d4|display[4]~5_combout\ : std_logic;
SIGNAL \d4|display[5]~6_combout\ : std_logic;
SIGNAL \d4|display[6]~7_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \d3|display[0]~0_combout\ : std_logic;
SIGNAL \d3|display[1]~1_combout\ : std_logic;
SIGNAL \d3|display[2]~2_combout\ : std_logic;
SIGNAL \d3|display[3]~3_combout\ : std_logic;
SIGNAL \d3|display[4]~4_combout\ : std_logic;
SIGNAL \d3|display[5]~5_combout\ : std_logic;
SIGNAL \d3|display[6]~6_combout\ : std_logic;
SIGNAL \svMins|swVal~5_combout\ : std_logic;
SIGNAL \svMins|swVal[6]~2_combout\ : std_logic;
SIGNAL \svSecs|swVal[7]~0_combout\ : std_logic;
SIGNAL \decSecs|outputTime~6_combout\ : std_logic;
SIGNAL \cd|counter[0]~32_combout\ : std_logic;
SIGNAL \cd|counter[11]~56\ : std_logic;
SIGNAL \cd|counter[12]~58\ : std_logic;
SIGNAL \cd|counter[13]~59_combout\ : std_logic;
SIGNAL \cd|counter[13]~60\ : std_logic;
SIGNAL \cd|counter[14]~61_combout\ : std_logic;
SIGNAL \cd|counter[14]~62\ : std_logic;
SIGNAL \cd|counter[15]~63_combout\ : std_logic;
SIGNAL \cd|counter[15]~64\ : std_logic;
SIGNAL \cd|counter[16]~65_combout\ : std_logic;
SIGNAL \cd|counter[16]~66\ : std_logic;
SIGNAL \cd|counter[17]~67_combout\ : std_logic;
SIGNAL \cd|counter[17]~68\ : std_logic;
SIGNAL \cd|counter[18]~69_combout\ : std_logic;
SIGNAL \cd|counter[18]~70\ : std_logic;
SIGNAL \cd|counter[19]~71_combout\ : std_logic;
SIGNAL \cd|Equal0~5_combout\ : std_logic;
SIGNAL \cd|counter[19]~72\ : std_logic;
SIGNAL \cd|counter[20]~73_combout\ : std_logic;
SIGNAL \cd|counter[20]~74\ : std_logic;
SIGNAL \cd|counter[21]~76\ : std_logic;
SIGNAL \cd|counter[22]~78\ : std_logic;
SIGNAL \cd|counter[23]~79_combout\ : std_logic;
SIGNAL \cd|counter[23]~80\ : std_logic;
SIGNAL \cd|counter[24]~82\ : std_logic;
SIGNAL \cd|counter[25]~83_combout\ : std_logic;
SIGNAL \cd|counter[25]~84\ : std_logic;
SIGNAL \cd|counter[26]~86\ : std_logic;
SIGNAL \cd|counter[27]~87_combout\ : std_logic;
SIGNAL \cd|counter[27]~88\ : std_logic;
SIGNAL \cd|counter[28]~90\ : std_logic;
SIGNAL \cd|counter[29]~91_combout\ : std_logic;
SIGNAL \cd|counter[28]~89_combout\ : std_logic;
SIGNAL \cd|counter[29]~92\ : std_logic;
SIGNAL \cd|counter[30]~93_combout\ : std_logic;
SIGNAL \cd|Equal0~8_combout\ : std_logic;
SIGNAL \cd|counter[22]~77_combout\ : std_logic;
SIGNAL \cd|counter[21]~75_combout\ : std_logic;
SIGNAL \cd|Equal0~6_combout\ : std_logic;
SIGNAL \cd|Equal0~9_combout\ : std_logic;
SIGNAL \cd|counter[26]~34_combout\ : std_logic;
SIGNAL \cd|counter[0]~33\ : std_logic;
SIGNAL \cd|counter[1]~35_combout\ : std_logic;
SIGNAL \cd|counter[1]~36\ : std_logic;
SIGNAL \cd|counter[2]~37_combout\ : std_logic;
SIGNAL \cd|counter[2]~38\ : std_logic;
SIGNAL \cd|counter[3]~40\ : std_logic;
SIGNAL \cd|counter[4]~41_combout\ : std_logic;
SIGNAL \cd|counter[4]~42\ : std_logic;
SIGNAL \cd|counter[5]~44\ : std_logic;
SIGNAL \cd|counter[6]~46\ : std_logic;
SIGNAL \cd|counter[7]~47_combout\ : std_logic;
SIGNAL \cd|counter[7]~48\ : std_logic;
SIGNAL \cd|counter[8]~50\ : std_logic;
SIGNAL \cd|counter[9]~51_combout\ : std_logic;
SIGNAL \cd|counter[9]~52\ : std_logic;
SIGNAL \cd|counter[10]~54\ : std_logic;
SIGNAL \cd|counter[11]~55_combout\ : std_logic;
SIGNAL \cd|counter[8]~49_combout\ : std_logic;
SIGNAL \cd|counter[10]~53_combout\ : std_logic;
SIGNAL \cd|Equal0~2_combout\ : std_logic;
SIGNAL \cd|counter[12]~57_combout\ : std_logic;
SIGNAL \cd|Equal0~3_combout\ : std_logic;
SIGNAL \cd|counter[3]~39_combout\ : std_logic;
SIGNAL \cd|Equal0~0_combout\ : std_logic;
SIGNAL \cd|Equal0~4_combout\ : std_logic;
SIGNAL \cd|clockReg~0_combout\ : std_logic;
SIGNAL \cd|clockReg~regout\ : std_logic;
SIGNAL \decSecs|outputTime[6]~3_combout\ : std_logic;
SIGNAL \decSecs|outputTime~12_combout\ : std_logic;
SIGNAL \decSecs|outputTime[1]~8_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \decSecs|outputTime~10_combout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \decSecs|outputTime~9_combout\ : std_logic;
SIGNAL \decSecs|outputTime[2]~feeder_combout\ : std_logic;
SIGNAL \svSecs|swVal[2]~feeder_combout\ : std_logic;
SIGNAL \d1|display[0]~0_combout\ : std_logic;
SIGNAL \d1|display[0]~8_combout\ : std_logic;
SIGNAL \decSecs|outputTime~11_combout\ : std_logic;
SIGNAL \decSecs|outputTime[3]~feeder_combout\ : std_logic;
SIGNAL \decSecs|Equal0~0_combout\ : std_logic;
SIGNAL \decSecs|outputTime[6]~4_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \svSecs|swVal[7]~feeder_combout\ : std_logic;
SIGNAL \d2|display[6]~0_combout\ : std_logic;
SIGNAL \svSecs|swVal[6]~feeder_combout\ : std_logic;
SIGNAL \decSecs|outputTime~5_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \d2|display[0]~1_combout\ : std_logic;
SIGNAL \d2|display[1]~2_combout\ : std_logic;
SIGNAL \d2|display[2]~3_combout\ : std_logic;
SIGNAL \d2|display[3]~4_combout\ : std_logic;
SIGNAL \d2|display[4]~5_combout\ : std_logic;
SIGNAL \d2|display[5]~6_combout\ : std_logic;
SIGNAL \d2|display[6]~7_combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \d1|display[0]~1_combout\ : std_logic;
SIGNAL \d1|display[1]~2_combout\ : std_logic;
SIGNAL \d1|display[2]~3_combout\ : std_logic;
SIGNAL \d1|display[3]~4_combout\ : std_logic;
SIGNAL \d1|display[4]~5_combout\ : std_logic;
SIGNAL \d1|display[5]~6_combout\ : std_logic;
SIGNAL \d1|display[6]~7_combout\ : std_logic;
SIGNAL \svSecs|swVal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cd|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \decSecs|outputTime\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \svMins|swVal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decMins|outputTime\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);

-- Location: LCFF_X31_Y24_N11
\cd|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[5]~43_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(5));

-- Location: LCFF_X31_Y24_N13
\cd|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[6]~45_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(6));

-- Location: LCFF_X31_Y23_N17
\cd|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[24]~81_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(24));

-- Location: LCFF_X31_Y23_N21
\cd|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[26]~85_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(26));

-- Location: LCFF_X31_Y23_N31
\cd|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[31]~95_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(31));

-- Location: LCCOMB_X31_Y24_N10
\cd|counter[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[5]~43_combout\ = (\cd|counter\(5) & (!\cd|counter[4]~42\)) # (!\cd|counter\(5) & ((\cd|counter[4]~42\) # (GND)))
-- \cd|counter[5]~44\ = CARRY((!\cd|counter[4]~42\) # (!\cd|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(5),
	datad => VCC,
	cin => \cd|counter[4]~42\,
	combout => \cd|counter[5]~43_combout\,
	cout => \cd|counter[5]~44\);

-- Location: LCCOMB_X31_Y24_N12
\cd|counter[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[6]~45_combout\ = (\cd|counter\(6) & (\cd|counter[5]~44\ $ (GND))) # (!\cd|counter\(6) & (!\cd|counter[5]~44\ & VCC))
-- \cd|counter[6]~46\ = CARRY((\cd|counter\(6) & !\cd|counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(6),
	datad => VCC,
	cin => \cd|counter[5]~44\,
	combout => \cd|counter[6]~45_combout\,
	cout => \cd|counter[6]~46\);

-- Location: LCCOMB_X31_Y23_N16
\cd|counter[24]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[24]~81_combout\ = (\cd|counter\(24) & (\cd|counter[23]~80\ $ (GND))) # (!\cd|counter\(24) & (!\cd|counter[23]~80\ & VCC))
-- \cd|counter[24]~82\ = CARRY((\cd|counter\(24) & !\cd|counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(24),
	datad => VCC,
	cin => \cd|counter[23]~80\,
	combout => \cd|counter[24]~81_combout\,
	cout => \cd|counter[24]~82\);

-- Location: LCCOMB_X31_Y23_N20
\cd|counter[26]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[26]~85_combout\ = (\cd|counter\(26) & (\cd|counter[25]~84\ $ (GND))) # (!\cd|counter\(26) & (!\cd|counter[25]~84\ & VCC))
-- \cd|counter[26]~86\ = CARRY((\cd|counter\(26) & !\cd|counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(26),
	datad => VCC,
	cin => \cd|counter[25]~84\,
	combout => \cd|counter[26]~85_combout\,
	cout => \cd|counter[26]~86\);

-- Location: LCCOMB_X31_Y23_N28
\cd|counter[30]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[30]~93_combout\ = (\cd|counter\(30) & (\cd|counter[29]~92\ $ (GND))) # (!\cd|counter\(30) & (!\cd|counter[29]~92\ & VCC))
-- \cd|counter[30]~94\ = CARRY((\cd|counter\(30) & !\cd|counter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(30),
	datad => VCC,
	cin => \cd|counter[29]~92\,
	combout => \cd|counter[30]~93_combout\,
	cout => \cd|counter[30]~94\);

-- Location: LCCOMB_X31_Y23_N30
\cd|counter[31]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[31]~95_combout\ = \cd|counter[30]~94\ $ (\cd|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cd|counter\(31),
	cin => \cd|counter[30]~94\,
	combout => \cd|counter[31]~95_combout\);

-- Location: LCFF_X32_Y26_N13
\svMins|swVal[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \svMins|swVal[5]~feeder_combout\,
	ena => \svMins|swVal[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svMins|swVal\(5));

-- Location: LCFF_X31_Y26_N7
\decSecs|outputTime[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decSecs|outputTime~2_combout\,
	ena => \decSecs|outputTime[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decSecs|outputTime\(4));

-- Location: LCFF_X31_Y26_N13
\decSecs|outputTime[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decSecs|outputTime~7_combout\,
	ena => \decSecs|outputTime[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decSecs|outputTime\(7));

-- Location: LCCOMB_X31_Y26_N6
\decSecs|outputTime~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime~2_combout\ = (!\KEY~combout\(0) & ((\svSecs|swVal\(4)) # (!\sm|state.SetSec~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datac => \svSecs|swVal\(4),
	datad => \sm|state.SetSec~regout\,
	combout => \decSecs|outputTime~2_combout\);

-- Location: LCFF_X34_Y26_N15
\sm|state.Reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.Reset~regout\);

-- Location: LCCOMB_X31_Y26_N12
\decSecs|outputTime~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime~7_combout\ = (\svSecs|swVal\(7) & (!\KEY~combout\(0) & \sm|state.SetSec~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \svSecs|swVal\(7),
	datac => \KEY~combout\(0),
	datad => \sm|state.SetSec~regout\,
	combout => \decSecs|outputTime~7_combout\);

-- Location: LCCOMB_X32_Y24_N12
\cd|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~1_combout\ = (!\cd|counter\(4) & (\cd|counter\(7) & (!\cd|counter\(6) & !\cd|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(4),
	datab => \cd|counter\(7),
	datac => \cd|counter\(6),
	datad => \cd|counter\(5),
	combout => \cd|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y23_N12
\cd|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~7_combout\ = (!\cd|counter\(26) & (!\cd|counter\(27) & (!\cd|counter\(24) & \cd|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(26),
	datab => \cd|counter\(27),
	datac => \cd|counter\(24),
	datad => \cd|counter\(25),
	combout => \cd|Equal0~7_combout\);

-- Location: LCCOMB_X34_Y26_N14
\sm|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector0~0_combout\ = (!\KEY~combout\(0)) # (!\sm|state.Reset~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|state.Reset~regout\,
	datad => \KEY~combout\(0),
	combout => \sm|Selector0~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: CLKCTRL_G3
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y26_N12
\svMins|swVal[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal[5]~feeder_combout\ = \svMins|swVal~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \svMins|swVal~5_combout\,
	combout => \svMins|swVal[5]~feeder_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X35_Y26_N30
\svMins|swVal[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal[6]~0_combout\ = (\SW~combout\(3) & ((\SW~combout\(2)) # (\SW~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(2),
	datad => \SW~combout\(1),
	combout => \svMins|swVal[6]~0_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X32_Y26_N28
\svMins|swVal~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal~4_combout\ = (!\KEY~combout\(0) & ((\svMins|swVal[6]~0_combout\) # (\SW~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \svMins|swVal[6]~0_combout\,
	datac => \SW~combout\(6),
	datad => \KEY~combout\(0),
	combout => \svMins|swVal~4_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCCOMB_X36_Y26_N26
\sm|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector3~0_combout\ = (\KEY~combout\(1) & ((\sm|state.SetMin~regout\) # ((!\KEY~combout\(2) & \sm|state.SetTimer~regout\)))) # (!\KEY~combout\(1) & (((!\KEY~combout\(2) & \sm|state.SetTimer~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \sm|state.SetMin~regout\,
	datac => \KEY~combout\(2),
	datad => \sm|state.SetTimer~regout\,
	combout => \sm|Selector3~0_combout\);

-- Location: LCCOMB_X36_Y26_N10
\sm|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector4~0_combout\ = (!\KEY~combout\(0) & ((\KEY~combout\(2) & (\sm|state.SetTimer~regout\)) # (!\KEY~combout\(2) & ((\sm|state.RunTimer~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \sm|state.SetTimer~regout\,
	datac => \sm|state.RunTimer~regout\,
	datad => \KEY~combout\(2),
	combout => \sm|Selector4~0_combout\);

-- Location: LCFF_X36_Y26_N11
\sm|state.RunTimer\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.RunTimer~regout\);

-- Location: LCCOMB_X36_Y26_N22
\sm|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector3~1_combout\ = (!\KEY~combout\(0) & ((\sm|Selector3~0_combout\) # ((\KEY~combout\(2) & \sm|state.RunTimer~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \sm|Selector3~0_combout\,
	datac => \KEY~combout\(2),
	datad => \sm|state.RunTimer~regout\,
	combout => \sm|Selector3~1_combout\);

-- Location: LCFF_X36_Y26_N23
\sm|state.SetTimer\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.SetTimer~regout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X36_Y26_N20
\sm|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector1~0_combout\ = (!\KEY~combout\(1) & (((!\sm|state.RunTimer~regout\ & !\sm|state.SetTimer~regout\)) # (!\KEY~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.RunTimer~regout\,
	datab => \sm|state.SetTimer~regout\,
	datac => \KEY~combout\(2),
	datad => \KEY~combout\(1),
	combout => \sm|Selector1~0_combout\);

-- Location: LCCOMB_X35_Y26_N28
\sm|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector1~1_combout\ = ((!\KEY~combout\(0) & (\sm|state.SetSec~regout\ & \sm|Selector1~0_combout\))) # (!\sm|state.Reset~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.Reset~regout\,
	datab => \KEY~combout\(0),
	datac => \sm|state.SetSec~regout\,
	datad => \sm|Selector1~0_combout\,
	combout => \sm|Selector1~1_combout\);

-- Location: LCFF_X35_Y26_N29
\sm|state.SetSec\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.SetSec~regout\);

-- Location: LCCOMB_X34_Y26_N24
\sm|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector2~0_combout\ = (!\KEY~combout\(0) & ((\KEY~combout\(1) & (\sm|state.SetSec~regout\)) # (!\KEY~combout\(1) & ((\sm|state.SetMin~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(1),
	datab => \sm|state.SetSec~regout\,
	datac => \sm|state.SetMin~regout\,
	datad => \KEY~combout\(0),
	combout => \sm|Selector2~0_combout\);

-- Location: LCFF_X34_Y26_N25
\sm|state.SetMin\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.SetMin~regout\);

-- Location: LCCOMB_X32_Y26_N4
\svMins|swVal[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal[6]~3_combout\ = (\KEY~combout\(0)) # ((\svMins|swVal[6]~2_combout\ & \sm|state.SetMin~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \svMins|swVal[6]~2_combout\,
	datab => \KEY~combout\(0),
	datad => \sm|state.SetMin~regout\,
	combout => \svMins|swVal[6]~3_combout\);

-- Location: LCFF_X32_Y26_N19
\svMins|swVal[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~4_combout\,
	sload => VCC,
	ena => \svMins|swVal[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svMins|swVal\(6));

-- Location: LCCOMB_X32_Y26_N16
\decMins|outputTime~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime~5_combout\ = (!\KEY~combout\(0) & ((\svMins|swVal\(6)) # (!\sm|state.SetMin~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|state.SetMin~regout\,
	datac => \KEY~combout\(0),
	datad => \svMins|swVal\(6),
	combout => \decMins|outputTime~5_combout\);

-- Location: LCCOMB_X35_Y26_N8
\svMins|swVal~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal~7_combout\ = (!\SW~combout\(3) & (\SW~combout\(2) & !\KEY~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(2),
	datad => \KEY~combout\(0),
	combout => \svMins|swVal~7_combout\);

-- Location: LCCOMB_X33_Y26_N22
\decMins|outputTime[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime[7]~3_combout\ = (\KEY~combout\(0)) # (\sm|state.SetMin~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datad => \sm|state.SetMin~regout\,
	combout => \decMins|outputTime[7]~3_combout\);

-- Location: LCFF_X34_Y26_N31
\svMins|swVal[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~7_combout\,
	sload => VCC,
	ena => \decMins|outputTime[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svMins|swVal\(2));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X35_Y26_N4
\svMins|swVal~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal~8_combout\ = (!\KEY~combout\(0) & ((\svMins|swVal[6]~0_combout\) # (\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \svMins|swVal[6]~0_combout\,
	datab => \SW~combout\(0),
	datad => \KEY~combout\(0),
	combout => \svMins|swVal~8_combout\);

-- Location: LCFF_X34_Y26_N21
\svMins|swVal[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~8_combout\,
	sload => VCC,
	ena => \decMins|outputTime[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svMins|swVal\(0));

-- Location: LCCOMB_X33_Y26_N10
\decMins|outputTime~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime~12_combout\ = ((\sm|state.SetMin~regout\ & (!\svMins|swVal\(0))) # (!\sm|state.SetMin~regout\ & ((!\decMins|outputTime\(0))))) # (!\decMins|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \svMins|swVal\(0),
	datab => \sm|state.SetMin~regout\,
	datac => \decMins|outputTime\(0),
	datad => \decMins|Equal0~0_combout\,
	combout => \decMins|outputTime~12_combout\);

-- Location: LCCOMB_X33_Y26_N26
\decMins|outputTime[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime[3]~9_combout\ = (\sm|state.SetMin~regout\) # ((\KEY~combout\(0)) # ((\cd|clockReg~regout\ & \sm|state.RunTimer~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|clockReg~regout\,
	datab => \sm|state.RunTimer~regout\,
	datac => \sm|state.SetMin~regout\,
	datad => \KEY~combout\(0),
	combout => \decMins|outputTime[3]~9_combout\);

-- Location: LCFF_X33_Y26_N11
\decMins|outputTime[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decMins|outputTime~12_combout\,
	sdata => \svMins|swVal\(0),
	sclr => \KEY~combout\(0),
	sload => \sm|state.SetMin~regout\,
	ena => \decMins|outputTime[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decMins|outputTime\(0));

-- Location: LCCOMB_X34_Y26_N20
\comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\sm|state.SetMin~regout\ & (\svMins|swVal\(0))) # (!\sm|state.SetMin~regout\ & ((\decMins|outputTime\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.SetMin~regout\,
	datac => \svMins|swVal\(0),
	datad => \decMins|outputTime\(0),
	combout => \comb~4_combout\);

-- Location: LCCOMB_X33_Y26_N0
\decMins|outputTime~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime~8_combout\ = (\decMins|Equal0~0_combout\ & (\comb~3_combout\ $ (((!\comb~5_combout\ & !\comb~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \comb~4_combout\,
	datac => \comb~3_combout\,
	datad => \decMins|Equal0~0_combout\,
	combout => \decMins|outputTime~8_combout\);

-- Location: LCCOMB_X33_Y26_N12
\decMins|outputTime[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime[2]~feeder_combout\ = \decMins|outputTime~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decMins|outputTime~8_combout\,
	combout => \decMins|outputTime[2]~feeder_combout\);

-- Location: LCFF_X33_Y26_N13
\decMins|outputTime[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decMins|outputTime[2]~feeder_combout\,
	sdata => \svMins|swVal\(2),
	sclr => \KEY~combout\(0),
	sload => \sm|state.SetMin~regout\,
	ena => \decMins|outputTime[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decMins|outputTime\(2));

-- Location: LCCOMB_X34_Y26_N30
\comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\sm|state.SetMin~regout\ & (\svMins|swVal\(2))) # (!\sm|state.SetMin~regout\ & ((\decMins|outputTime\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.SetMin~regout\,
	datac => \svMins|swVal\(2),
	datad => \decMins|outputTime\(2),
	combout => \comb~3_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCCOMB_X35_Y26_N0
\svMins|swVal~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal~10_combout\ = (\SW~combout\(3) & !\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(3),
	datad => \KEY~combout\(0),
	combout => \svMins|swVal~10_combout\);

-- Location: LCFF_X34_Y26_N17
\svMins|swVal[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~10_combout\,
	sload => VCC,
	ena => \decMins|outputTime[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svMins|swVal\(3));

-- Location: LCCOMB_X34_Y26_N16
\comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\sm|state.SetMin~regout\ & (\svMins|swVal\(3))) # (!\sm|state.SetMin~regout\ & ((\decMins|outputTime\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.SetMin~regout\,
	datac => \svMins|swVal\(3),
	datad => \decMins|outputTime\(3),
	combout => \comb~6_combout\);

-- Location: LCCOMB_X33_Y26_N4
\decMins|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|Add0~0_combout\ = \comb~6_combout\ $ (((\comb~5_combout\) # ((\comb~3_combout\) # (\comb~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \comb~3_combout\,
	datac => \comb~6_combout\,
	datad => \comb~4_combout\,
	combout => \decMins|Add0~0_combout\);

-- Location: LCCOMB_X33_Y26_N14
\decMins|outputTime~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime~11_combout\ = (!\decMins|Equal0~0_combout\) # (!\decMins|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decMins|Add0~0_combout\,
	datad => \decMins|Equal0~0_combout\,
	combout => \decMins|outputTime~11_combout\);

-- Location: LCFF_X33_Y26_N15
\decMins|outputTime[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decMins|outputTime~11_combout\,
	sdata => \svMins|swVal\(3),
	sclr => \KEY~combout\(0),
	sload => \sm|state.SetMin~regout\,
	ena => \decMins|outputTime[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decMins|outputTime\(3));

-- Location: LCCOMB_X33_Y26_N16
\decMins|outputTime~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime~10_combout\ = (\decMins|Equal0~0_combout\ & (\comb~5_combout\ $ (!\comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \comb~4_combout\,
	datad => \decMins|Equal0~0_combout\,
	combout => \decMins|outputTime~10_combout\);

-- Location: LCCOMB_X35_Y26_N14
\svMins|swVal~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal~9_combout\ = (!\KEY~combout\(0) & (!\SW~combout\(3) & \SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \SW~combout\(3),
	datad => \SW~combout\(1),
	combout => \svMins|swVal~9_combout\);

-- Location: LCFF_X34_Y26_N3
\svMins|swVal[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~9_combout\,
	sload => VCC,
	ena => \decMins|outputTime[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svMins|swVal\(1));

-- Location: LCFF_X33_Y26_N17
\decMins|outputTime[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decMins|outputTime~10_combout\,
	sdata => \svMins|swVal\(1),
	sclr => \KEY~combout\(0),
	sload => \sm|state.SetMin~regout\,
	ena => \decMins|outputTime[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decMins|outputTime\(1));

-- Location: LCCOMB_X33_Y26_N28
\decMins|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|Equal0~0_combout\ = (\decMins|outputTime\(0)) # ((\decMins|outputTime\(3)) # ((\decMins|outputTime\(1)) # (\decMins|outputTime\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decMins|outputTime\(0),
	datab => \decMins|outputTime\(3),
	datac => \decMins|outputTime\(1),
	datad => \decMins|outputTime\(2),
	combout => \decMins|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y26_N2
\decMins|outputTime[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime[7]~4_combout\ = (\decMins|outputTime[7]~3_combout\) # ((\cd|clockReg~regout\ & (!\decMins|Equal0~0_combout\ & \sm|state.RunTimer~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|clockReg~regout\,
	datab => \decMins|Equal0~0_combout\,
	datac => \sm|state.RunTimer~regout\,
	datad => \decMins|outputTime[7]~3_combout\,
	combout => \decMins|outputTime[7]~4_combout\);

-- Location: LCFF_X32_Y26_N17
\decMins|outputTime[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decMins|outputTime~5_combout\,
	ena => \decMins|outputTime[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decMins|outputTime\(6));

-- Location: LCCOMB_X32_Y26_N6
\d4|display[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4|display[6]~0_combout\ = (\sm|state.SetMin~regout\ & (\svMins|swVal\(6))) # (!\sm|state.SetMin~regout\ & ((\decMins|outputTime\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \svMins|swVal\(6),
	datac => \decMins|outputTime\(6),
	datad => \sm|state.SetMin~regout\,
	combout => \d4|display[6]~0_combout\);

-- Location: LCCOMB_X32_Y26_N14
\decMins|outputTime~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime~6_combout\ = (\svMins|swVal\(5) & (!\KEY~combout\(0) & \sm|state.SetMin~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \svMins|swVal\(5),
	datab => \KEY~combout\(0),
	datad => \sm|state.SetMin~regout\,
	combout => \decMins|outputTime~6_combout\);

-- Location: LCFF_X32_Y26_N15
\decMins|outputTime[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decMins|outputTime~6_combout\,
	ena => \decMins|outputTime[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decMins|outputTime\(5));

-- Location: LCCOMB_X32_Y26_N20
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\sm|state.SetMin~regout\ & (\svMins|swVal\(5))) # (!\sm|state.SetMin~regout\ & ((\decMins|outputTime\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \svMins|swVal\(5),
	datab => \decMins|outputTime\(5),
	datad => \sm|state.SetMin~regout\,
	combout => \comb~1_combout\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCCOMB_X32_Y26_N2
\svMins|swVal~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal~6_combout\ = (!\svMins|swVal[6]~0_combout\ & (\SW~combout\(7) & !\KEY~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \svMins|swVal[6]~0_combout\,
	datac => \SW~combout\(7),
	datad => \KEY~combout\(0),
	combout => \svMins|swVal~6_combout\);

-- Location: LCFF_X32_Y26_N3
\svMins|swVal[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \svMins|swVal~6_combout\,
	ena => \svMins|swVal[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svMins|swVal\(7));

-- Location: LCCOMB_X32_Y26_N0
\decMins|outputTime~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime~7_combout\ = (\sm|state.SetMin~regout\ & (!\KEY~combout\(0) & \svMins|swVal\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|state.SetMin~regout\,
	datac => \KEY~combout\(0),
	datad => \svMins|swVal\(7),
	combout => \decMins|outputTime~7_combout\);

-- Location: LCFF_X32_Y26_N1
\decMins|outputTime[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decMins|outputTime~7_combout\,
	ena => \decMins|outputTime[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decMins|outputTime\(7));

-- Location: LCCOMB_X32_Y26_N10
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\sm|state.SetMin~regout\ & ((\svMins|swVal\(7)))) # (!\sm|state.SetMin~regout\ & (\decMins|outputTime\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decMins|outputTime\(7),
	datac => \sm|state.SetMin~regout\,
	datad => \svMins|swVal\(7),
	combout => \comb~2_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCCOMB_X32_Y26_N8
\svMins|swVal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal~1_combout\ = (!\KEY~combout\(0) & ((\svMins|swVal[6]~0_combout\) # (\SW~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \svMins|swVal[6]~0_combout\,
	datac => \SW~combout\(4),
	datad => \KEY~combout\(0),
	combout => \svMins|swVal~1_combout\);

-- Location: LCFF_X32_Y26_N5
\svMins|swVal[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~1_combout\,
	sload => VCC,
	ena => \svMins|swVal[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svMins|swVal\(4));

-- Location: LCCOMB_X32_Y26_N22
\decMins|outputTime~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decMins|outputTime~2_combout\ = (!\KEY~combout\(0) & ((\svMins|swVal\(4)) # (!\sm|state.SetMin~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|state.SetMin~regout\,
	datac => \svMins|swVal\(4),
	datad => \KEY~combout\(0),
	combout => \decMins|outputTime~2_combout\);

-- Location: LCFF_X32_Y26_N23
\decMins|outputTime[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decMins|outputTime~2_combout\,
	ena => \decMins|outputTime[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decMins|outputTime\(4));

-- Location: LCCOMB_X32_Y26_N24
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\sm|state.SetMin~regout\ & ((\svMins|swVal\(4)))) # (!\sm|state.SetMin~regout\ & (\decMins|outputTime\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decMins|outputTime\(4),
	datac => \svMins|swVal\(4),
	datad => \sm|state.SetMin~regout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X20_Y26_N0
\d4|display[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4|display[0]~1_combout\ = (!\comb~1_combout\ & (!\comb~2_combout\ & (\d4|display[6]~0_combout\ $ (\comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d4|display[6]~0_combout\,
	datab => \comb~1_combout\,
	datac => \comb~2_combout\,
	datad => \comb~0_combout\,
	combout => \d4|display[0]~1_combout\);

-- Location: LCCOMB_X20_Y26_N22
\d4|display[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4|display[1]~2_combout\ = (\d4|display[6]~0_combout\ & (!\comb~2_combout\ & (\comb~1_combout\ $ (\comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d4|display[6]~0_combout\,
	datab => \comb~1_combout\,
	datac => \comb~2_combout\,
	datad => \comb~0_combout\,
	combout => \d4|display[1]~2_combout\);

-- Location: LCCOMB_X20_Y26_N28
\d4|display[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4|display[2]~3_combout\ = (!\d4|display[6]~0_combout\ & (\comb~1_combout\ & (!\comb~2_combout\ & !\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d4|display[6]~0_combout\,
	datab => \comb~1_combout\,
	datac => \comb~2_combout\,
	datad => \comb~0_combout\,
	combout => \d4|display[2]~3_combout\);

-- Location: LCCOMB_X20_Y26_N26
\d4|display[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4|display[3]~4_combout\ = (\d4|display[6]~0_combout\ & ((\comb~2_combout\) # (\comb~1_combout\ $ (!\comb~0_combout\)))) # (!\d4|display[6]~0_combout\ & ((\comb~1_combout\ & (\comb~2_combout\)) # (!\comb~1_combout\ & ((\comb~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d4|display[6]~0_combout\,
	datab => \comb~1_combout\,
	datac => \comb~2_combout\,
	datad => \comb~0_combout\,
	combout => \d4|display[3]~4_combout\);

-- Location: LCCOMB_X20_Y26_N12
\d4|display[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4|display[4]~5_combout\ = (\comb~0_combout\) # ((\comb~1_combout\ & ((\comb~2_combout\))) # (!\comb~1_combout\ & (\d4|display[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d4|display[6]~0_combout\,
	datab => \comb~1_combout\,
	datac => \comb~2_combout\,
	datad => \comb~0_combout\,
	combout => \d4|display[4]~5_combout\);

-- Location: LCCOMB_X20_Y26_N2
\d4|display[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4|display[5]~6_combout\ = (!\comb~2_combout\ & ((\d4|display[6]~0_combout\ & (\comb~1_combout\ & \comb~0_combout\)) # (!\d4|display[6]~0_combout\ & ((\comb~1_combout\) # (\comb~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d4|display[6]~0_combout\,
	datab => \comb~1_combout\,
	datac => \comb~2_combout\,
	datad => \comb~0_combout\,
	combout => \d4|display[5]~6_combout\);

-- Location: LCCOMB_X20_Y26_N24
\d4|display[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4|display[6]~7_combout\ = (!\comb~2_combout\ & ((\d4|display[6]~0_combout\ & (\comb~1_combout\ & \comb~0_combout\)) # (!\d4|display[6]~0_combout\ & (!\comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d4|display[6]~0_combout\,
	datab => \comb~1_combout\,
	datac => \comb~2_combout\,
	datad => \comb~0_combout\,
	combout => \d4|display[6]~7_combout\);

-- Location: LCCOMB_X34_Y26_N2
\comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\sm|state.SetMin~regout\ & (\svMins|swVal\(1))) # (!\sm|state.SetMin~regout\ & ((\decMins|outputTime\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.SetMin~regout\,
	datac => \svMins|swVal\(1),
	datad => \decMins|outputTime\(1),
	combout => \comb~5_combout\);

-- Location: LCCOMB_X33_Y26_N24
\d3|display[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d3|display[0]~0_combout\ = (!\comb~5_combout\ & (!\comb~6_combout\ & (\comb~3_combout\ $ (\comb~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \comb~3_combout\,
	datac => \comb~6_combout\,
	datad => \comb~4_combout\,
	combout => \d3|display[0]~0_combout\);

-- Location: LCCOMB_X34_Y26_N18
\d3|display[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d3|display[1]~1_combout\ = (\comb~3_combout\ & (!\comb~6_combout\ & (\comb~5_combout\ $ (\comb~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \comb~3_combout\,
	datac => \comb~4_combout\,
	datad => \comb~6_combout\,
	combout => \d3|display[1]~1_combout\);

-- Location: LCCOMB_X33_Y26_N18
\d3|display[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d3|display[2]~2_combout\ = (\comb~5_combout\ & (!\comb~3_combout\ & (!\comb~6_combout\ & !\comb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \comb~3_combout\,
	datac => \comb~6_combout\,
	datad => \comb~4_combout\,
	combout => \d3|display[2]~2_combout\);

-- Location: LCCOMB_X34_Y26_N28
\d3|display[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \d3|display[3]~3_combout\ = (\comb~3_combout\ & ((\comb~6_combout\) # (\comb~5_combout\ $ (!\comb~4_combout\)))) # (!\comb~3_combout\ & ((\comb~5_combout\ & ((\comb~6_combout\))) # (!\comb~5_combout\ & (\comb~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \comb~3_combout\,
	datac => \comb~4_combout\,
	datad => \comb~6_combout\,
	combout => \d3|display[3]~3_combout\);

-- Location: LCCOMB_X34_Y26_N22
\d3|display[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \d3|display[4]~4_combout\ = (\comb~4_combout\) # ((\comb~5_combout\ & ((\comb~6_combout\))) # (!\comb~5_combout\ & (\comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \comb~3_combout\,
	datac => \comb~4_combout\,
	datad => \comb~6_combout\,
	combout => \d3|display[4]~4_combout\);

-- Location: LCCOMB_X33_Y26_N20
\d3|display[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \d3|display[5]~5_combout\ = (!\comb~6_combout\ & ((\comb~5_combout\ & ((\comb~4_combout\) # (!\comb~3_combout\))) # (!\comb~5_combout\ & (!\comb~3_combout\ & \comb~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \comb~3_combout\,
	datac => \comb~6_combout\,
	datad => \comb~4_combout\,
	combout => \d3|display[5]~5_combout\);

-- Location: LCCOMB_X34_Y26_N12
\d3|display[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \d3|display[6]~6_combout\ = (!\comb~6_combout\ & ((\comb~5_combout\ & (\comb~3_combout\ & \comb~4_combout\)) # (!\comb~5_combout\ & (!\comb~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datab => \comb~3_combout\,
	datac => \comb~4_combout\,
	datad => \comb~6_combout\,
	combout => \d3|display[6]~6_combout\);

-- Location: LCCOMB_X32_Y26_N26
\svMins|swVal~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal~5_combout\ = (\SW~combout\(5) & (!\svMins|swVal[6]~0_combout\ & !\KEY~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \svMins|swVal[6]~0_combout\,
	datad => \KEY~combout\(0),
	combout => \svMins|swVal~5_combout\);

-- Location: LCCOMB_X32_Y26_N30
\svMins|swVal[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \svMins|swVal[6]~2_combout\ = (\SW~combout\(7)) # (((\SW~combout\(5) & \SW~combout\(6))) # (!\svMins|swVal[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datab => \SW~combout\(6),
	datac => \SW~combout\(7),
	datad => \svMins|swVal[6]~0_combout\,
	combout => \svMins|swVal[6]~2_combout\);

-- Location: LCCOMB_X31_Y26_N4
\svSecs|swVal[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \svSecs|swVal[7]~0_combout\ = (\KEY~combout\(0)) # ((\svMins|swVal[6]~2_combout\ & \sm|state.SetSec~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \svMins|swVal[6]~2_combout\,
	datad => \sm|state.SetSec~regout\,
	combout => \svSecs|swVal[7]~0_combout\);

-- Location: LCFF_X31_Y26_N17
\svSecs|swVal[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~5_combout\,
	sload => VCC,
	ena => \svSecs|swVal[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svSecs|swVal\(5));

-- Location: LCCOMB_X31_Y26_N26
\decSecs|outputTime~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime~6_combout\ = (!\KEY~combout\(0) & (\svSecs|swVal\(5) & \sm|state.SetSec~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datac => \svSecs|swVal\(5),
	datad => \sm|state.SetSec~regout\,
	combout => \decSecs|outputTime~6_combout\);

-- Location: LCCOMB_X31_Y24_N0
\cd|counter[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[0]~32_combout\ = \cd|counter\(0) $ (VCC)
-- \cd|counter[0]~33\ = CARRY(\cd|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(0),
	datad => VCC,
	combout => \cd|counter[0]~32_combout\,
	cout => \cd|counter[0]~33\);

-- Location: LCCOMB_X31_Y24_N22
\cd|counter[11]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[11]~55_combout\ = (\cd|counter\(11) & (!\cd|counter[10]~54\)) # (!\cd|counter\(11) & ((\cd|counter[10]~54\) # (GND)))
-- \cd|counter[11]~56\ = CARRY((!\cd|counter[10]~54\) # (!\cd|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(11),
	datad => VCC,
	cin => \cd|counter[10]~54\,
	combout => \cd|counter[11]~55_combout\,
	cout => \cd|counter[11]~56\);

-- Location: LCCOMB_X31_Y24_N24
\cd|counter[12]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[12]~57_combout\ = (\cd|counter\(12) & (\cd|counter[11]~56\ $ (GND))) # (!\cd|counter\(12) & (!\cd|counter[11]~56\ & VCC))
-- \cd|counter[12]~58\ = CARRY((\cd|counter\(12) & !\cd|counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(12),
	datad => VCC,
	cin => \cd|counter[11]~56\,
	combout => \cd|counter[12]~57_combout\,
	cout => \cd|counter[12]~58\);

-- Location: LCCOMB_X31_Y24_N26
\cd|counter[13]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[13]~59_combout\ = (\cd|counter\(13) & (!\cd|counter[12]~58\)) # (!\cd|counter\(13) & ((\cd|counter[12]~58\) # (GND)))
-- \cd|counter[13]~60\ = CARRY((!\cd|counter[12]~58\) # (!\cd|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(13),
	datad => VCC,
	cin => \cd|counter[12]~58\,
	combout => \cd|counter[13]~59_combout\,
	cout => \cd|counter[13]~60\);

-- Location: LCFF_X31_Y24_N27
\cd|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[13]~59_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(13));

-- Location: LCCOMB_X31_Y24_N28
\cd|counter[14]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[14]~61_combout\ = (\cd|counter\(14) & (\cd|counter[13]~60\ $ (GND))) # (!\cd|counter\(14) & (!\cd|counter[13]~60\ & VCC))
-- \cd|counter[14]~62\ = CARRY((\cd|counter\(14) & !\cd|counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(14),
	datad => VCC,
	cin => \cd|counter[13]~60\,
	combout => \cd|counter[14]~61_combout\,
	cout => \cd|counter[14]~62\);

-- Location: LCFF_X31_Y24_N29
\cd|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[14]~61_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(14));

-- Location: LCCOMB_X31_Y24_N30
\cd|counter[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[15]~63_combout\ = (\cd|counter\(15) & (!\cd|counter[14]~62\)) # (!\cd|counter\(15) & ((\cd|counter[14]~62\) # (GND)))
-- \cd|counter[15]~64\ = CARRY((!\cd|counter[14]~62\) # (!\cd|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(15),
	datad => VCC,
	cin => \cd|counter[14]~62\,
	combout => \cd|counter[15]~63_combout\,
	cout => \cd|counter[15]~64\);

-- Location: LCFF_X31_Y24_N31
\cd|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[15]~63_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(15));

-- Location: LCCOMB_X31_Y23_N0
\cd|counter[16]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[16]~65_combout\ = (\cd|counter\(16) & (\cd|counter[15]~64\ $ (GND))) # (!\cd|counter\(16) & (!\cd|counter[15]~64\ & VCC))
-- \cd|counter[16]~66\ = CARRY((\cd|counter\(16) & !\cd|counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(16),
	datad => VCC,
	cin => \cd|counter[15]~64\,
	combout => \cd|counter[16]~65_combout\,
	cout => \cd|counter[16]~66\);

-- Location: LCFF_X31_Y23_N1
\cd|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[16]~65_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(16));

-- Location: LCCOMB_X31_Y23_N2
\cd|counter[17]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[17]~67_combout\ = (\cd|counter\(17) & (!\cd|counter[16]~66\)) # (!\cd|counter\(17) & ((\cd|counter[16]~66\) # (GND)))
-- \cd|counter[17]~68\ = CARRY((!\cd|counter[16]~66\) # (!\cd|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(17),
	datad => VCC,
	cin => \cd|counter[16]~66\,
	combout => \cd|counter[17]~67_combout\,
	cout => \cd|counter[17]~68\);

-- Location: LCFF_X31_Y23_N3
\cd|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[17]~67_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(17));

-- Location: LCCOMB_X31_Y23_N4
\cd|counter[18]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[18]~69_combout\ = (\cd|counter\(18) & (\cd|counter[17]~68\ $ (GND))) # (!\cd|counter\(18) & (!\cd|counter[17]~68\ & VCC))
-- \cd|counter[18]~70\ = CARRY((\cd|counter\(18) & !\cd|counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(18),
	datad => VCC,
	cin => \cd|counter[17]~68\,
	combout => \cd|counter[18]~69_combout\,
	cout => \cd|counter[18]~70\);

-- Location: LCFF_X31_Y23_N5
\cd|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[18]~69_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(18));

-- Location: LCCOMB_X31_Y23_N6
\cd|counter[19]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[19]~71_combout\ = (\cd|counter\(19) & (!\cd|counter[18]~70\)) # (!\cd|counter\(19) & ((\cd|counter[18]~70\) # (GND)))
-- \cd|counter[19]~72\ = CARRY((!\cd|counter[18]~70\) # (!\cd|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(19),
	datad => VCC,
	cin => \cd|counter[18]~70\,
	combout => \cd|counter[19]~71_combout\,
	cout => \cd|counter[19]~72\);

-- Location: LCFF_X31_Y23_N7
\cd|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[19]~71_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(19));

-- Location: LCCOMB_X32_Y23_N0
\cd|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~5_combout\ = (!\cd|counter\(16) & (\cd|counter\(19) & (!\cd|counter\(18) & \cd|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(16),
	datab => \cd|counter\(19),
	datac => \cd|counter\(18),
	datad => \cd|counter\(17),
	combout => \cd|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y23_N8
\cd|counter[20]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[20]~73_combout\ = (\cd|counter\(20) & (\cd|counter[19]~72\ $ (GND))) # (!\cd|counter\(20) & (!\cd|counter[19]~72\ & VCC))
-- \cd|counter[20]~74\ = CARRY((\cd|counter\(20) & !\cd|counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(20),
	datad => VCC,
	cin => \cd|counter[19]~72\,
	combout => \cd|counter[20]~73_combout\,
	cout => \cd|counter[20]~74\);

-- Location: LCFF_X31_Y23_N9
\cd|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[20]~73_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(20));

-- Location: LCCOMB_X31_Y23_N10
\cd|counter[21]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[21]~75_combout\ = (\cd|counter\(21) & (!\cd|counter[20]~74\)) # (!\cd|counter\(21) & ((\cd|counter[20]~74\) # (GND)))
-- \cd|counter[21]~76\ = CARRY((!\cd|counter[20]~74\) # (!\cd|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(21),
	datad => VCC,
	cin => \cd|counter[20]~74\,
	combout => \cd|counter[21]~75_combout\,
	cout => \cd|counter[21]~76\);

-- Location: LCCOMB_X31_Y23_N12
\cd|counter[22]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[22]~77_combout\ = (\cd|counter\(22) & (\cd|counter[21]~76\ $ (GND))) # (!\cd|counter\(22) & (!\cd|counter[21]~76\ & VCC))
-- \cd|counter[22]~78\ = CARRY((\cd|counter\(22) & !\cd|counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(22),
	datad => VCC,
	cin => \cd|counter[21]~76\,
	combout => \cd|counter[22]~77_combout\,
	cout => \cd|counter[22]~78\);

-- Location: LCCOMB_X31_Y23_N14
\cd|counter[23]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[23]~79_combout\ = (\cd|counter\(23) & (!\cd|counter[22]~78\)) # (!\cd|counter\(23) & ((\cd|counter[22]~78\) # (GND)))
-- \cd|counter[23]~80\ = CARRY((!\cd|counter[22]~78\) # (!\cd|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(23),
	datad => VCC,
	cin => \cd|counter[22]~78\,
	combout => \cd|counter[23]~79_combout\,
	cout => \cd|counter[23]~80\);

-- Location: LCFF_X31_Y23_N15
\cd|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[23]~79_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(23));

-- Location: LCCOMB_X31_Y23_N18
\cd|counter[25]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[25]~83_combout\ = (\cd|counter\(25) & (!\cd|counter[24]~82\)) # (!\cd|counter\(25) & ((\cd|counter[24]~82\) # (GND)))
-- \cd|counter[25]~84\ = CARRY((!\cd|counter[24]~82\) # (!\cd|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(25),
	datad => VCC,
	cin => \cd|counter[24]~82\,
	combout => \cd|counter[25]~83_combout\,
	cout => \cd|counter[25]~84\);

-- Location: LCFF_X31_Y23_N19
\cd|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[25]~83_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(25));

-- Location: LCCOMB_X31_Y23_N22
\cd|counter[27]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[27]~87_combout\ = (\cd|counter\(27) & (!\cd|counter[26]~86\)) # (!\cd|counter\(27) & ((\cd|counter[26]~86\) # (GND)))
-- \cd|counter[27]~88\ = CARRY((!\cd|counter[26]~86\) # (!\cd|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(27),
	datad => VCC,
	cin => \cd|counter[26]~86\,
	combout => \cd|counter[27]~87_combout\,
	cout => \cd|counter[27]~88\);

-- Location: LCFF_X31_Y23_N23
\cd|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[27]~87_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(27));

-- Location: LCCOMB_X31_Y23_N24
\cd|counter[28]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[28]~89_combout\ = (\cd|counter\(28) & (\cd|counter[27]~88\ $ (GND))) # (!\cd|counter\(28) & (!\cd|counter[27]~88\ & VCC))
-- \cd|counter[28]~90\ = CARRY((\cd|counter\(28) & !\cd|counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(28),
	datad => VCC,
	cin => \cd|counter[27]~88\,
	combout => \cd|counter[28]~89_combout\,
	cout => \cd|counter[28]~90\);

-- Location: LCCOMB_X31_Y23_N26
\cd|counter[29]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[29]~91_combout\ = (\cd|counter\(29) & (!\cd|counter[28]~90\)) # (!\cd|counter\(29) & ((\cd|counter[28]~90\) # (GND)))
-- \cd|counter[29]~92\ = CARRY((!\cd|counter[28]~90\) # (!\cd|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(29),
	datad => VCC,
	cin => \cd|counter[28]~90\,
	combout => \cd|counter[29]~91_combout\,
	cout => \cd|counter[29]~92\);

-- Location: LCFF_X31_Y23_N27
\cd|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[29]~91_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(29));

-- Location: LCFF_X31_Y23_N25
\cd|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[28]~89_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(28));

-- Location: LCFF_X31_Y23_N29
\cd|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[30]~93_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(30));

-- Location: LCCOMB_X32_Y23_N10
\cd|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~8_combout\ = (!\cd|counter\(31) & (!\cd|counter\(29) & (!\cd|counter\(28) & !\cd|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(31),
	datab => \cd|counter\(29),
	datac => \cd|counter\(28),
	datad => \cd|counter\(30),
	combout => \cd|Equal0~8_combout\);

-- Location: LCFF_X31_Y23_N13
\cd|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[22]~77_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(22));

-- Location: LCFF_X31_Y23_N11
\cd|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[21]~75_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(21));

-- Location: LCCOMB_X32_Y23_N2
\cd|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~6_combout\ = (\cd|counter\(23) & (\cd|counter\(22) & (\cd|counter\(20) & \cd|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(23),
	datab => \cd|counter\(22),
	datac => \cd|counter\(20),
	datad => \cd|counter\(21),
	combout => \cd|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y24_N28
\cd|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~9_combout\ = (\cd|Equal0~7_combout\ & (\cd|Equal0~5_combout\ & (\cd|Equal0~8_combout\ & \cd|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~7_combout\,
	datab => \cd|Equal0~5_combout\,
	datac => \cd|Equal0~8_combout\,
	datad => \cd|Equal0~6_combout\,
	combout => \cd|Equal0~9_combout\);

-- Location: LCCOMB_X32_Y24_N26
\cd|counter[26]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[26]~34_combout\ = (\KEY~combout\(0)) # ((\cd|Equal0~4_combout\ & \cd|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datac => \cd|Equal0~4_combout\,
	datad => \cd|Equal0~9_combout\,
	combout => \cd|counter[26]~34_combout\);

-- Location: LCFF_X31_Y24_N1
\cd|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[0]~32_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(0));

-- Location: LCCOMB_X31_Y24_N2
\cd|counter[1]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[1]~35_combout\ = (\cd|counter\(1) & (!\cd|counter[0]~33\)) # (!\cd|counter\(1) & ((\cd|counter[0]~33\) # (GND)))
-- \cd|counter[1]~36\ = CARRY((!\cd|counter[0]~33\) # (!\cd|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(1),
	datad => VCC,
	cin => \cd|counter[0]~33\,
	combout => \cd|counter[1]~35_combout\,
	cout => \cd|counter[1]~36\);

-- Location: LCFF_X31_Y24_N3
\cd|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[1]~35_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(1));

-- Location: LCCOMB_X31_Y24_N4
\cd|counter[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[2]~37_combout\ = (\cd|counter\(2) & (\cd|counter[1]~36\ $ (GND))) # (!\cd|counter\(2) & (!\cd|counter[1]~36\ & VCC))
-- \cd|counter[2]~38\ = CARRY((\cd|counter\(2) & !\cd|counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(2),
	datad => VCC,
	cin => \cd|counter[1]~36\,
	combout => \cd|counter[2]~37_combout\,
	cout => \cd|counter[2]~38\);

-- Location: LCFF_X31_Y24_N5
\cd|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[2]~37_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(2));

-- Location: LCCOMB_X31_Y24_N6
\cd|counter[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[3]~39_combout\ = (\cd|counter\(3) & (!\cd|counter[2]~38\)) # (!\cd|counter\(3) & ((\cd|counter[2]~38\) # (GND)))
-- \cd|counter[3]~40\ = CARRY((!\cd|counter[2]~38\) # (!\cd|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(3),
	datad => VCC,
	cin => \cd|counter[2]~38\,
	combout => \cd|counter[3]~39_combout\,
	cout => \cd|counter[3]~40\);

-- Location: LCCOMB_X31_Y24_N8
\cd|counter[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[4]~41_combout\ = (\cd|counter\(4) & (\cd|counter[3]~40\ $ (GND))) # (!\cd|counter\(4) & (!\cd|counter[3]~40\ & VCC))
-- \cd|counter[4]~42\ = CARRY((\cd|counter\(4) & !\cd|counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(4),
	datad => VCC,
	cin => \cd|counter[3]~40\,
	combout => \cd|counter[4]~41_combout\,
	cout => \cd|counter[4]~42\);

-- Location: LCFF_X31_Y24_N9
\cd|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[4]~41_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(4));

-- Location: LCCOMB_X31_Y24_N14
\cd|counter[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[7]~47_combout\ = (\cd|counter\(7) & (!\cd|counter[6]~46\)) # (!\cd|counter\(7) & ((\cd|counter[6]~46\) # (GND)))
-- \cd|counter[7]~48\ = CARRY((!\cd|counter[6]~46\) # (!\cd|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(7),
	datad => VCC,
	cin => \cd|counter[6]~46\,
	combout => \cd|counter[7]~47_combout\,
	cout => \cd|counter[7]~48\);

-- Location: LCFF_X31_Y24_N15
\cd|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[7]~47_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(7));

-- Location: LCCOMB_X31_Y24_N16
\cd|counter[8]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[8]~49_combout\ = (\cd|counter\(8) & (\cd|counter[7]~48\ $ (GND))) # (!\cd|counter\(8) & (!\cd|counter[7]~48\ & VCC))
-- \cd|counter[8]~50\ = CARRY((\cd|counter\(8) & !\cd|counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(8),
	datad => VCC,
	cin => \cd|counter[7]~48\,
	combout => \cd|counter[8]~49_combout\,
	cout => \cd|counter[8]~50\);

-- Location: LCCOMB_X31_Y24_N18
\cd|counter[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[9]~51_combout\ = (\cd|counter\(9) & (!\cd|counter[8]~50\)) # (!\cd|counter\(9) & ((\cd|counter[8]~50\) # (GND)))
-- \cd|counter[9]~52\ = CARRY((!\cd|counter[8]~50\) # (!\cd|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(9),
	datad => VCC,
	cin => \cd|counter[8]~50\,
	combout => \cd|counter[9]~51_combout\,
	cout => \cd|counter[9]~52\);

-- Location: LCFF_X31_Y24_N19
\cd|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[9]~51_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(9));

-- Location: LCCOMB_X31_Y24_N20
\cd|counter[10]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[10]~53_combout\ = (\cd|counter\(10) & (\cd|counter[9]~52\ $ (GND))) # (!\cd|counter\(10) & (!\cd|counter[9]~52\ & VCC))
-- \cd|counter[10]~54\ = CARRY((\cd|counter\(10) & !\cd|counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(10),
	datad => VCC,
	cin => \cd|counter[9]~52\,
	combout => \cd|counter[10]~53_combout\,
	cout => \cd|counter[10]~54\);

-- Location: LCFF_X31_Y24_N23
\cd|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[11]~55_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(11));

-- Location: LCFF_X31_Y24_N17
\cd|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[8]~49_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(8));

-- Location: LCFF_X31_Y24_N21
\cd|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[10]~53_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(10));

-- Location: LCCOMB_X32_Y24_N22
\cd|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~2_combout\ = (!\cd|counter\(9) & (!\cd|counter\(11) & (!\cd|counter\(8) & !\cd|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(9),
	datab => \cd|counter\(11),
	datac => \cd|counter\(8),
	datad => \cd|counter\(10),
	combout => \cd|Equal0~2_combout\);

-- Location: LCFF_X31_Y24_N25
\cd|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[12]~57_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(12));

-- Location: LCCOMB_X32_Y24_N20
\cd|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~3_combout\ = (\cd|counter\(15) & (\cd|counter\(14) & (\cd|counter\(12) & \cd|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(15),
	datab => \cd|counter\(14),
	datac => \cd|counter\(12),
	datad => \cd|counter\(13),
	combout => \cd|Equal0~3_combout\);

-- Location: LCFF_X31_Y24_N7
\cd|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[3]~39_combout\,
	sclr => \cd|counter[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(3));

-- Location: LCCOMB_X32_Y24_N30
\cd|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~0_combout\ = (!\cd|counter\(0) & (!\cd|counter\(2) & (!\cd|counter\(3) & !\cd|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(0),
	datab => \cd|counter\(2),
	datac => \cd|counter\(3),
	datad => \cd|counter\(1),
	combout => \cd|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y24_N14
\cd|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~4_combout\ = (\cd|Equal0~1_combout\ & (\cd|Equal0~2_combout\ & (\cd|Equal0~3_combout\ & \cd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~1_combout\,
	datab => \cd|Equal0~2_combout\,
	datac => \cd|Equal0~3_combout\,
	datad => \cd|Equal0~0_combout\,
	combout => \cd|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y24_N24
\cd|clockReg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~0_combout\ = \cd|clockReg~regout\ $ (((!\KEY~combout\(0) & (\cd|Equal0~4_combout\ & \cd|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \cd|Equal0~4_combout\,
	datac => \cd|clockReg~regout\,
	datad => \cd|Equal0~9_combout\,
	combout => \cd|clockReg~0_combout\);

-- Location: LCFF_X32_Y24_N25
\cd|clockReg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|clockReg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|clockReg~regout\);

-- Location: LCCOMB_X35_Y26_N2
\decSecs|outputTime[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime[6]~3_combout\ = (\KEY~combout\(0)) # (\sm|state.SetSec~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datad => \sm|state.SetSec~regout\,
	combout => \decSecs|outputTime[6]~3_combout\);

-- Location: LCFF_X35_Y26_N5
\svSecs|swVal[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~9_combout\,
	sload => VCC,
	ena => \decSecs|outputTime[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svSecs|swVal\(1));

-- Location: LCFF_X35_Y26_N31
\svSecs|swVal[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~8_combout\,
	sload => VCC,
	ena => \decSecs|outputTime[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svSecs|swVal\(0));

-- Location: LCCOMB_X36_Y26_N28
\decSecs|outputTime~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime~12_combout\ = ((\sm|state.SetSec~regout\ & (!\svSecs|swVal\(0))) # (!\sm|state.SetSec~regout\ & ((!\decSecs|outputTime\(0))))) # (!\decSecs|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \svSecs|swVal\(0),
	datab => \decSecs|Equal0~0_combout\,
	datac => \decSecs|outputTime\(0),
	datad => \sm|state.SetSec~regout\,
	combout => \decSecs|outputTime~12_combout\);

-- Location: LCCOMB_X36_Y26_N2
\decSecs|outputTime[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime[1]~8_combout\ = (\sm|state.SetSec~regout\) # ((\KEY~combout\(0)) # ((\sm|state.RunTimer~regout\ & \cd|clockReg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.RunTimer~regout\,
	datab => \sm|state.SetSec~regout\,
	datac => \KEY~combout\(0),
	datad => \cd|clockReg~regout\,
	combout => \decSecs|outputTime[1]~8_combout\);

-- Location: LCFF_X36_Y26_N29
\decSecs|outputTime[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decSecs|outputTime~12_combout\,
	sdata => \svSecs|swVal\(0),
	sclr => \KEY~combout\(0),
	sload => \sm|state.SetSec~regout\,
	ena => \decSecs|outputTime[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decSecs|outputTime\(0));

-- Location: LCCOMB_X35_Y26_N12
\comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (\sm|state.SetSec~regout\ & (\svSecs|swVal\(0))) # (!\sm|state.SetSec~regout\ & ((\decSecs|outputTime\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \svSecs|swVal\(0),
	datac => \sm|state.SetSec~regout\,
	datad => \decSecs|outputTime\(0),
	combout => \comb~10_combout\);

-- Location: LCCOMB_X36_Y26_N24
\decSecs|outputTime~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime~10_combout\ = (\decSecs|Equal0~0_combout\ & (\comb~11_combout\ $ (!\comb~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decSecs|Equal0~0_combout\,
	datab => \comb~11_combout\,
	datad => \comb~10_combout\,
	combout => \decSecs|outputTime~10_combout\);

-- Location: LCFF_X36_Y26_N25
\decSecs|outputTime[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decSecs|outputTime~10_combout\,
	sdata => \svSecs|swVal\(1),
	sclr => \KEY~combout\(0),
	sload => \sm|state.SetSec~regout\,
	ena => \decSecs|outputTime[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decSecs|outputTime\(1));

-- Location: LCCOMB_X35_Y26_N6
\comb~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (\sm|state.SetSec~regout\ & (\svSecs|swVal\(1))) # (!\sm|state.SetSec~regout\ & ((\decSecs|outputTime\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|state.SetSec~regout\,
	datac => \svSecs|swVal\(1),
	datad => \decSecs|outputTime\(1),
	combout => \comb~11_combout\);

-- Location: LCCOMB_X36_Y26_N0
\decSecs|outputTime~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime~9_combout\ = (\decSecs|Equal0~0_combout\ & (\d1|display[0]~0_combout\ $ (((!\comb~11_combout\ & !\comb~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decSecs|Equal0~0_combout\,
	datab => \comb~11_combout\,
	datac => \d1|display[0]~0_combout\,
	datad => \comb~10_combout\,
	combout => \decSecs|outputTime~9_combout\);

-- Location: LCCOMB_X36_Y26_N6
\decSecs|outputTime[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime[2]~feeder_combout\ = \decSecs|outputTime~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decSecs|outputTime~9_combout\,
	combout => \decSecs|outputTime[2]~feeder_combout\);

-- Location: LCCOMB_X35_Y26_N10
\svSecs|swVal[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \svSecs|swVal[2]~feeder_combout\ = \svMins|swVal~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \svMins|swVal~7_combout\,
	combout => \svSecs|swVal[2]~feeder_combout\);

-- Location: LCFF_X35_Y26_N11
\svSecs|swVal[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \svSecs|swVal[2]~feeder_combout\,
	ena => \decSecs|outputTime[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svSecs|swVal\(2));

-- Location: LCFF_X36_Y26_N7
\decSecs|outputTime[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decSecs|outputTime[2]~feeder_combout\,
	sdata => \svSecs|swVal\(2),
	sclr => \KEY~combout\(0),
	sload => \sm|state.SetSec~regout\,
	ena => \decSecs|outputTime[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decSecs|outputTime\(2));

-- Location: LCCOMB_X36_Y26_N4
\d1|display[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|display[0]~0_combout\ = (\sm|state.SetSec~regout\ & (\svSecs|swVal\(2))) # (!\sm|state.SetSec~regout\ & ((\decSecs|outputTime\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \svSecs|swVal\(2),
	datab => \sm|state.SetSec~regout\,
	datad => \decSecs|outputTime\(2),
	combout => \d1|display[0]~0_combout\);

-- Location: LCCOMB_X36_Y26_N18
\d1|display[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|display[0]~8_combout\ = (!\comb~11_combout\ & ((\sm|state.SetSec~regout\ & (!\svSecs|swVal\(0))) # (!\sm|state.SetSec~regout\ & ((!\decSecs|outputTime\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \svSecs|swVal\(0),
	datab => \sm|state.SetSec~regout\,
	datac => \comb~11_combout\,
	datad => \decSecs|outputTime\(0),
	combout => \d1|display[0]~8_combout\);

-- Location: LCCOMB_X36_Y26_N12
\decSecs|outputTime~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime~11_combout\ = (\comb~12_combout\ $ (((!\d1|display[0]~0_combout\ & \d1|display[0]~8_combout\)))) # (!\decSecs|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~12_combout\,
	datab => \d1|display[0]~0_combout\,
	datac => \decSecs|Equal0~0_combout\,
	datad => \d1|display[0]~8_combout\,
	combout => \decSecs|outputTime~11_combout\);

-- Location: LCCOMB_X36_Y26_N30
\decSecs|outputTime[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime[3]~feeder_combout\ = \decSecs|outputTime~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decSecs|outputTime~11_combout\,
	combout => \decSecs|outputTime[3]~feeder_combout\);

-- Location: LCFF_X35_Y26_N9
\svSecs|swVal[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~10_combout\,
	sload => VCC,
	ena => \decSecs|outputTime[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svSecs|swVal\(3));

-- Location: LCFF_X36_Y26_N31
\decSecs|outputTime[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decSecs|outputTime[3]~feeder_combout\,
	sdata => \svSecs|swVal\(3),
	sclr => \KEY~combout\(0),
	sload => \sm|state.SetSec~regout\,
	ena => \decSecs|outputTime[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decSecs|outputTime\(3));

-- Location: LCCOMB_X36_Y26_N8
\decSecs|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|Equal0~0_combout\ = (\decSecs|outputTime\(2)) # ((\decSecs|outputTime\(3)) # ((\decSecs|outputTime\(1)) # (\decSecs|outputTime\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decSecs|outputTime\(2),
	datab => \decSecs|outputTime\(3),
	datac => \decSecs|outputTime\(1),
	datad => \decSecs|outputTime\(0),
	combout => \decSecs|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y26_N10
\decSecs|outputTime[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime[6]~4_combout\ = (\decSecs|outputTime[6]~3_combout\) # ((\cd|clockReg~regout\ & (\sm|state.RunTimer~regout\ & !\decSecs|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decSecs|outputTime[6]~3_combout\,
	datab => \cd|clockReg~regout\,
	datac => \sm|state.RunTimer~regout\,
	datad => \decSecs|Equal0~0_combout\,
	combout => \decSecs|outputTime[6]~4_combout\);

-- Location: LCFF_X31_Y26_N27
\decSecs|outputTime[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decSecs|outputTime~6_combout\,
	ena => \decSecs|outputTime[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decSecs|outputTime\(5));

-- Location: LCCOMB_X31_Y26_N8
\comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (\sm|state.SetSec~regout\ & ((\svSecs|swVal\(5)))) # (!\sm|state.SetSec~regout\ & (\decSecs|outputTime\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decSecs|outputTime\(5),
	datac => \svSecs|swVal\(5),
	datad => \sm|state.SetSec~regout\,
	combout => \comb~9_combout\);

-- Location: LCCOMB_X31_Y26_N18
\svSecs|swVal[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \svSecs|swVal[7]~feeder_combout\ = \svMins|swVal~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \svMins|swVal~6_combout\,
	combout => \svSecs|swVal[7]~feeder_combout\);

-- Location: LCFF_X31_Y26_N19
\svSecs|swVal[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \svSecs|swVal[7]~feeder_combout\,
	ena => \svSecs|swVal[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svSecs|swVal\(7));

-- Location: LCCOMB_X31_Y26_N2
\d2|display[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2|display[6]~0_combout\ = (\sm|state.SetSec~regout\ & ((\svSecs|swVal\(7)))) # (!\sm|state.SetSec~regout\ & (\decSecs|outputTime\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decSecs|outputTime\(7),
	datab => \svSecs|swVal\(7),
	datad => \sm|state.SetSec~regout\,
	combout => \d2|display[6]~0_combout\);

-- Location: LCCOMB_X31_Y26_N30
\svSecs|swVal[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \svSecs|swVal[6]~feeder_combout\ = \svMins|swVal~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \svMins|swVal~4_combout\,
	combout => \svSecs|swVal[6]~feeder_combout\);

-- Location: LCFF_X31_Y26_N31
\svSecs|swVal[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \svSecs|swVal[6]~feeder_combout\,
	ena => \svSecs|swVal[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svSecs|swVal\(6));

-- Location: LCCOMB_X31_Y26_N24
\decSecs|outputTime~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decSecs|outputTime~5_combout\ = (!\KEY~combout\(0) & ((\svSecs|swVal\(6)) # (!\sm|state.SetSec~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \svSecs|swVal\(6),
	datac => \KEY~combout\(0),
	datad => \sm|state.SetSec~regout\,
	combout => \decSecs|outputTime~5_combout\);

-- Location: LCFF_X31_Y26_N25
\decSecs|outputTime[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \decSecs|outputTime~5_combout\,
	ena => \decSecs|outputTime[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \decSecs|outputTime\(6));

-- Location: LCCOMB_X31_Y26_N22
\comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (\sm|state.SetSec~regout\ & (\svSecs|swVal\(6))) # (!\sm|state.SetSec~regout\ & ((\decSecs|outputTime\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \svSecs|swVal\(6),
	datac => \decSecs|outputTime\(6),
	datad => \sm|state.SetSec~regout\,
	combout => \comb~8_combout\);

-- Location: LCFF_X31_Y26_N5
\svSecs|swVal[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \svMins|swVal~1_combout\,
	sload => VCC,
	ena => \svSecs|swVal[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \svSecs|swVal\(4));

-- Location: LCCOMB_X31_Y26_N20
\comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\sm|state.SetSec~regout\ & ((\svSecs|swVal\(4)))) # (!\sm|state.SetSec~regout\ & (\decSecs|outputTime\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decSecs|outputTime\(4),
	datac => \svSecs|swVal\(4),
	datad => \sm|state.SetSec~regout\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X27_Y26_N16
\d2|display[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2|display[0]~1_combout\ = (!\comb~9_combout\ & (!\d2|display[6]~0_combout\ & (\comb~8_combout\ $ (\comb~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \d2|display[6]~0_combout\,
	datac => \comb~8_combout\,
	datad => \comb~7_combout\,
	combout => \d2|display[0]~1_combout\);

-- Location: LCCOMB_X27_Y26_N10
\d2|display[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2|display[1]~2_combout\ = (!\d2|display[6]~0_combout\ & (\comb~8_combout\ & (\comb~9_combout\ $ (\comb~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \d2|display[6]~0_combout\,
	datac => \comb~8_combout\,
	datad => \comb~7_combout\,
	combout => \d2|display[1]~2_combout\);

-- Location: LCCOMB_X27_Y26_N12
\d2|display[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2|display[2]~3_combout\ = (\comb~9_combout\ & (!\d2|display[6]~0_combout\ & (!\comb~8_combout\ & !\comb~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \d2|display[6]~0_combout\,
	datac => \comb~8_combout\,
	datad => \comb~7_combout\,
	combout => \d2|display[2]~3_combout\);

-- Location: LCCOMB_X27_Y26_N22
\d2|display[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2|display[3]~4_combout\ = (\comb~8_combout\ & ((\d2|display[6]~0_combout\) # (\comb~9_combout\ $ (!\comb~7_combout\)))) # (!\comb~8_combout\ & ((\comb~9_combout\ & (\d2|display[6]~0_combout\)) # (!\comb~9_combout\ & ((\comb~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \d2|display[6]~0_combout\,
	datac => \comb~8_combout\,
	datad => \comb~7_combout\,
	combout => \d2|display[3]~4_combout\);

-- Location: LCCOMB_X27_Y26_N8
\d2|display[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2|display[4]~5_combout\ = (\comb~7_combout\) # ((\comb~9_combout\ & (\d2|display[6]~0_combout\)) # (!\comb~9_combout\ & ((\comb~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \d2|display[6]~0_combout\,
	datac => \comb~8_combout\,
	datad => \comb~7_combout\,
	combout => \d2|display[4]~5_combout\);

-- Location: LCCOMB_X31_Y26_N28
\d2|display[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2|display[5]~6_combout\ = (!\d2|display[6]~0_combout\ & ((\comb~9_combout\ & ((\comb~7_combout\) # (!\comb~8_combout\))) # (!\comb~9_combout\ & (\comb~7_combout\ & !\comb~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|display[6]~0_combout\,
	datab => \comb~9_combout\,
	datac => \comb~7_combout\,
	datad => \comb~8_combout\,
	combout => \d2|display[5]~6_combout\);

-- Location: LCCOMB_X27_Y26_N2
\d2|display[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2|display[6]~7_combout\ = (!\d2|display[6]~0_combout\ & ((\comb~9_combout\ & (\comb~8_combout\ & \comb~7_combout\)) # (!\comb~9_combout\ & (!\comb~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~9_combout\,
	datab => \d2|display[6]~0_combout\,
	datac => \comb~8_combout\,
	datad => \comb~7_combout\,
	combout => \d2|display[6]~7_combout\);

-- Location: LCCOMB_X35_Y26_N22
\comb~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = (\sm|state.SetSec~regout\ & (\svSecs|swVal\(3))) # (!\sm|state.SetSec~regout\ & ((\decSecs|outputTime\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|state.SetSec~regout\,
	datac => \svSecs|swVal\(3),
	datad => \decSecs|outputTime\(3),
	combout => \comb~12_combout\);

-- Location: LCCOMB_X35_Y26_N24
\d1|display[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|display[0]~1_combout\ = (!\comb~11_combout\ & (!\comb~12_combout\ & (\comb~10_combout\ $ (\d1|display[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~11_combout\,
	datab => \comb~12_combout\,
	datac => \comb~10_combout\,
	datad => \d1|display[0]~0_combout\,
	combout => \d1|display[0]~1_combout\);

-- Location: LCCOMB_X35_Y26_N18
\d1|display[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|display[1]~2_combout\ = (!\comb~12_combout\ & (\d1|display[0]~0_combout\ & (\comb~11_combout\ $ (\comb~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~11_combout\,
	datab => \comb~12_combout\,
	datac => \comb~10_combout\,
	datad => \d1|display[0]~0_combout\,
	combout => \d1|display[1]~2_combout\);

-- Location: LCCOMB_X35_Y26_N20
\d1|display[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|display[2]~3_combout\ = (\comb~11_combout\ & (!\comb~12_combout\ & (!\comb~10_combout\ & !\d1|display[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~11_combout\,
	datab => \comb~12_combout\,
	datac => \comb~10_combout\,
	datad => \d1|display[0]~0_combout\,
	combout => \d1|display[2]~3_combout\);

-- Location: LCCOMB_X35_Y26_N26
\d1|display[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|display[3]~4_combout\ = (\comb~10_combout\ & ((\comb~12_combout\) # (\comb~11_combout\ $ (!\d1|display[0]~0_combout\)))) # (!\comb~10_combout\ & ((\comb~11_combout\ & (\comb~12_combout\)) # (!\comb~11_combout\ & ((\d1|display[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~11_combout\,
	datab => \comb~12_combout\,
	datac => \comb~10_combout\,
	datad => \d1|display[0]~0_combout\,
	combout => \d1|display[3]~4_combout\);

-- Location: LCCOMB_X36_Y26_N14
\d1|display[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|display[4]~5_combout\ = (\comb~10_combout\) # ((\comb~11_combout\ & (\comb~12_combout\)) # (!\comb~11_combout\ & ((\d1|display[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~12_combout\,
	datab => \d1|display[0]~0_combout\,
	datac => \comb~11_combout\,
	datad => \comb~10_combout\,
	combout => \d1|display[4]~5_combout\);

-- Location: LCCOMB_X36_Y26_N16
\d1|display[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|display[5]~6_combout\ = (!\comb~12_combout\ & ((\d1|display[0]~0_combout\ & (\comb~11_combout\ & \comb~10_combout\)) # (!\d1|display[0]~0_combout\ & ((\comb~11_combout\) # (\comb~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~12_combout\,
	datab => \d1|display[0]~0_combout\,
	datac => \comb~11_combout\,
	datad => \comb~10_combout\,
	combout => \d1|display[5]~6_combout\);

-- Location: LCCOMB_X35_Y26_N16
\d1|display[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1|display[6]~7_combout\ = (!\comb~12_combout\ & ((\comb~11_combout\ & (\comb~10_combout\ & \d1|display[0]~0_combout\)) # (!\comb~11_combout\ & ((!\d1|display[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~11_combout\,
	datab => \comb~12_combout\,
	datac => \comb~10_combout\,
	datad => \d1|display[0]~0_combout\,
	combout => \d1|display[6]~7_combout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d4|display[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d4|display[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d4|display[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d4|display[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d4|display[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d4|display[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d4|display[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d3|display[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d3|display[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d3|display[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d3|display[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d3|display[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d3|display[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d3|display[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d2|display[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d2|display[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d2|display[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d2|display[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d2|display[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d2|display[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d2|display[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d1|display[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d1|display[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d1|display[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d1|display[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d1|display[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d1|display[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \d1|display[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));
END structure;


