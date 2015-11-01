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

-- DATE "11/01/2015 16:45:01"

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
-- SW[0]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \cd|counter[3]~39_combout\ : std_logic;
SIGNAL \cd|counter[6]~45_combout\ : std_logic;
SIGNAL \cd|counter[10]~53_combout\ : std_logic;
SIGNAL \cd|counter[20]~73_combout\ : std_logic;
SIGNAL \cd|counter[25]~84\ : std_logic;
SIGNAL \cd|counter[26]~85_combout\ : std_logic;
SIGNAL \cd|counter[26]~86\ : std_logic;
SIGNAL \cd|counter[27]~87_combout\ : std_logic;
SIGNAL \cd|counter[27]~88\ : std_logic;
SIGNAL \cd|counter[28]~89_combout\ : std_logic;
SIGNAL \cd|counter[28]~90\ : std_logic;
SIGNAL \cd|counter[29]~91_combout\ : std_logic;
SIGNAL \cd|counter[29]~92\ : std_logic;
SIGNAL \cd|counter[30]~93_combout\ : std_logic;
SIGNAL \cd|counter[30]~94\ : std_logic;
SIGNAL \cd|counter[31]~95_combout\ : std_logic;
SIGNAL \cd|clockReg~0_combout\ : std_logic;
SIGNAL \cd|clockReg~5_combout\ : std_logic;
SIGNAL \cd|clockReg~6_combout\ : std_logic;
SIGNAL \sm|state.SetTimer~regout\ : std_logic;
SIGNAL \sm|Selector3~0_combout\ : std_logic;
SIGNAL \sm|state.SetMin~regout\ : std_logic;
SIGNAL \sm|Selector3~1_combout\ : std_logic;
SIGNAL \sm|state.SetSec~regout\ : std_logic;
SIGNAL \sm|Selector2~0_combout\ : std_logic;
SIGNAL \sm|Selector1~0_combout\ : std_logic;
SIGNAL \sm|Selector1~1_combout\ : std_logic;
SIGNAL \sm|state.Reset~regout\ : std_logic;
SIGNAL \sm|Selector1~2_combout\ : std_logic;
SIGNAL \sm|Selector0~0_combout\ : std_logic;
SIGNAL \sm|Selector0~1_combout\ : std_logic;
SIGNAL \sm|Selector0~2_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \sm|Selector4~0_combout\ : std_logic;
SIGNAL \sm|state.RunTimer~regout\ : std_logic;
SIGNAL \sm|Selector5~0_combout\ : std_logic;
SIGNAL \sm|state.Flash~regout\ : std_logic;
SIGNAL \cd|counter[0]~32_combout\ : std_logic;
SIGNAL \cd|counter[0]~34_combout\ : std_logic;
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
SIGNAL \cd|counter[19]~72\ : std_logic;
SIGNAL \cd|counter[20]~74\ : std_logic;
SIGNAL \cd|counter[21]~76\ : std_logic;
SIGNAL \cd|counter[22]~77_combout\ : std_logic;
SIGNAL \cd|counter[22]~78\ : std_logic;
SIGNAL \cd|counter[23]~79_combout\ : std_logic;
SIGNAL \cd|counter[23]~80\ : std_logic;
SIGNAL \cd|counter[24]~81_combout\ : std_logic;
SIGNAL \cd|counter[24]~82\ : std_logic;
SIGNAL \cd|counter[25]~83_combout\ : std_logic;
SIGNAL \cd|clockReg~13_combout\ : std_logic;
SIGNAL \cd|clockReg~12_combout\ : std_logic;
SIGNAL \cd|clockReg~11_combout\ : std_logic;
SIGNAL \cd|clockReg~14_combout\ : std_logic;
SIGNAL \cd|clockReg~9_combout\ : std_logic;
SIGNAL \cd|clockReg~8_combout\ : std_logic;
SIGNAL \cd|clockReg~7_combout\ : std_logic;
SIGNAL \cd|clockReg~10_combout\ : std_logic;
SIGNAL \cd|counter[21]~75_combout\ : std_logic;
SIGNAL \cd|clockReg~3_combout\ : std_logic;
SIGNAL \cd|counter[12]~57_combout\ : std_logic;
SIGNAL \cd|clockReg~2_combout\ : std_logic;
SIGNAL \cd|counter[8]~49_combout\ : std_logic;
SIGNAL \cd|counter[5]~43_combout\ : std_logic;
SIGNAL \cd|clockReg~1_combout\ : std_logic;
SIGNAL \cd|clockReg~4_combout\ : std_logic;
SIGNAL \cd|clockReg~15_combout\ : std_logic;
SIGNAL \cd|clockReg~16_combout\ : std_logic;
SIGNAL \cd|clockReg~regout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \fl|ledr[0]~feeder_combout\ : std_logic;
SIGNAL \fl|ledr[1]~feeder_combout\ : std_logic;
SIGNAL \fl|ledr[2]~feeder_combout\ : std_logic;
SIGNAL \fl|ledr[3]~feeder_combout\ : std_logic;
SIGNAL \fl|ledr[4]~feeder_combout\ : std_logic;
SIGNAL \fl|ledr[5]~feeder_combout\ : std_logic;
SIGNAL \fl|ledr[6]~feeder_combout\ : std_logic;
SIGNAL \fl|ledr[7]~feeder_combout\ : std_logic;
SIGNAL \fl|ledr[8]~feeder_combout\ : std_logic;
SIGNAL \fl|ledr[9]~feeder_combout\ : std_logic;
SIGNAL \cd|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fl|ledr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(2 DOWNTO 0);

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

-- Location: LCFF_X44_Y17_N7
\cd|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[3]~39_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(3));

-- Location: LCFF_X44_Y17_N21
\cd|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[10]~53_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(10));

-- Location: LCFF_X46_Y16_N29
\cd|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \cd|counter[20]~73_combout\,
	sclr => \cd|counter[0]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(20));

-- Location: LCFF_X44_Y16_N21
\cd|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[26]~85_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(26));

-- Location: LCFF_X44_Y16_N23
\cd|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[27]~87_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(27));

-- Location: LCFF_X44_Y16_N25
\cd|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[28]~89_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(28));

-- Location: LCFF_X44_Y16_N27
\cd|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[29]~91_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(29));

-- Location: LCFF_X44_Y16_N29
\cd|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[30]~93_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(30));

-- Location: LCFF_X44_Y16_N31
\cd|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[31]~95_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(31));

-- Location: LCFF_X44_Y17_N13
\cd|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[6]~45_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(6));

-- Location: LCCOMB_X44_Y17_N6
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

-- Location: LCCOMB_X44_Y17_N12
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

-- Location: LCCOMB_X44_Y17_N20
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

-- Location: LCCOMB_X44_Y16_N8
\cd|counter[20]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[20]~73_combout\ = (\cd|counter\(20) & (\cd|counter[19]~72\ $ (GND))) # (!\cd|counter\(20) & (!\cd|counter[19]~72\ & VCC))
-- \cd|counter[20]~74\ = CARRY((\cd|counter\(20) & !\cd|counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(20),
	datad => VCC,
	cin => \cd|counter[19]~72\,
	combout => \cd|counter[20]~73_combout\,
	cout => \cd|counter[20]~74\);

-- Location: LCCOMB_X44_Y16_N18
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

-- Location: LCCOMB_X44_Y16_N20
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

-- Location: LCCOMB_X44_Y16_N22
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

-- Location: LCCOMB_X44_Y16_N24
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

-- Location: LCCOMB_X44_Y16_N26
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

-- Location: LCCOMB_X44_Y16_N28
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

-- Location: LCCOMB_X44_Y16_N30
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

-- Location: LCCOMB_X45_Y17_N16
\cd|clockReg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~0_combout\ = (!\cd|counter\(0) & (!\cd|counter\(3) & (!\cd|counter\(2) & !\cd|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(0),
	datab => \cd|counter\(3),
	datac => \cd|counter\(2),
	datad => \cd|counter\(1),
	combout => \cd|clockReg~0_combout\);

-- Location: LCCOMB_X45_Y16_N12
\cd|clockReg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~5_combout\ = (!\cd|counter\(29) & (!\cd|counter\(27) & (!\cd|counter\(26) & !\cd|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(29),
	datab => \cd|counter\(27),
	datac => \cd|counter\(26),
	datad => \cd|counter\(28),
	combout => \cd|clockReg~5_combout\);

-- Location: LCCOMB_X45_Y16_N6
\cd|clockReg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~6_combout\ = (!\cd|counter\(31) & (!\cd|counter\(30) & \cd|clockReg~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(31),
	datab => \cd|counter\(30),
	datad => \cd|clockReg~5_combout\,
	combout => \cd|clockReg~6_combout\);

-- Location: LCFF_X47_Y16_N11
\sm|state.SetTimer\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.SetTimer~regout\);

-- Location: LCCOMB_X47_Y16_N24
\sm|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector3~0_combout\ = (\KEY~combout\(2) & ((\sm|state.RunTimer~regout\))) # (!\KEY~combout\(2) & (\sm|state.SetTimer~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.SetTimer~regout\,
	datab => \sm|state.RunTimer~regout\,
	datac => \KEY~combout\(2),
	combout => \sm|Selector3~0_combout\);

-- Location: LCFF_X47_Y16_N19
\sm|state.SetMin\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.SetMin~regout\);

-- Location: LCCOMB_X47_Y16_N10
\sm|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector3~1_combout\ = (!\KEY~combout\(0) & ((\sm|Selector3~0_combout\) # ((\sm|state.SetMin~regout\ & \KEY~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Selector3~0_combout\,
	datab => \sm|state.SetMin~regout\,
	datac => \KEY~combout\(1),
	datad => \KEY~combout\(0),
	combout => \sm|Selector3~1_combout\);

-- Location: LCFF_X47_Y16_N17
\sm|state.SetSec\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.SetSec~regout\);

-- Location: LCCOMB_X47_Y16_N18
\sm|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector2~0_combout\ = (!\KEY~combout\(0) & ((\KEY~combout\(1) & (\sm|state.SetSec~regout\)) # (!\KEY~combout\(1) & ((\sm|state.SetMin~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.SetSec~regout\,
	datab => \KEY~combout\(1),
	datac => \sm|state.SetMin~regout\,
	datad => \KEY~combout\(0),
	combout => \sm|Selector2~0_combout\);

-- Location: LCCOMB_X47_Y16_N14
\sm|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector1~0_combout\ = (\sm|state.SetTimer~regout\ & (!\KEY~combout\(2) & ((\sm|state.Flash~regout\) # (!\KEY~combout\(1))))) # (!\sm|state.SetTimer~regout\ & (((\sm|state.Flash~regout\)) # (!\KEY~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.SetTimer~regout\,
	datab => \KEY~combout\(1),
	datac => \KEY~combout\(2),
	datad => \sm|state.Flash~regout\,
	combout => \sm|Selector1~0_combout\);

-- Location: LCCOMB_X47_Y16_N12
\sm|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector1~1_combout\ = (\sm|state.SetSec~regout\ & !\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|state.SetSec~regout\,
	datad => \KEY~combout\(0),
	combout => \sm|Selector1~1_combout\);

-- Location: LCFF_X47_Y16_N3
\sm|state.Reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.Reset~regout\);

-- Location: LCCOMB_X47_Y16_N16
\sm|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector1~2_combout\ = (!\sm|state.RunTimer~regout\ & (((\sm|Selector1~1_combout\ & \sm|Selector1~0_combout\)) # (!\sm|state.Reset~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Selector1~1_combout\,
	datab => \sm|state.Reset~regout\,
	datac => \sm|Selector1~0_combout\,
	datad => \sm|state.RunTimer~regout\,
	combout => \sm|Selector1~2_combout\);

-- Location: LCCOMB_X47_Y16_N28
\sm|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector0~0_combout\ = (\KEY~combout\(0) & ((\sm|state.SetTimer~regout\) # ((\sm|state.RunTimer~regout\) # (\sm|state.Flash~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.SetTimer~regout\,
	datab => \sm|state.RunTimer~regout\,
	datac => \KEY~combout\(0),
	datad => \sm|state.Flash~regout\,
	combout => \sm|Selector0~0_combout\);

-- Location: LCCOMB_X47_Y16_N6
\sm|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector0~1_combout\ = (\KEY~combout\(0)) # ((!\sm|state.Reset~regout\ & !\KEY~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sm|state.Reset~regout\,
	datac => \KEY~combout\(1),
	datad => \KEY~combout\(0),
	combout => \sm|Selector0~1_combout\);

-- Location: LCCOMB_X47_Y16_N2
\sm|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector0~2_combout\ = (!\sm|Selector0~0_combout\ & (((!\sm|state.SetMin~regout\ & !\sm|state.SetSec~regout\)) # (!\sm|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|Selector0~1_combout\,
	datab => \sm|state.SetMin~regout\,
	datac => \sm|state.SetSec~regout\,
	datad => \sm|Selector0~0_combout\,
	combout => \sm|Selector0~2_combout\);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X47_Y16_N0
\sm|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector4~0_combout\ = (\sm|state.SetTimer~regout\ & (\KEY~combout\(2) & (!\sm|state.RunTimer~regout\ & !\KEY~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sm|state.SetTimer~regout\,
	datab => \KEY~combout\(2),
	datac => \sm|state.RunTimer~regout\,
	datad => \KEY~combout\(0),
	combout => \sm|Selector4~0_combout\);

-- Location: LCFF_X47_Y16_N1
\sm|state.RunTimer\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.RunTimer~regout\);

-- Location: LCCOMB_X46_Y16_N24
\sm|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sm|Selector5~0_combout\ = (!\KEY~combout\(0) & ((\sm|state.Flash~regout\) # ((!\KEY~combout\(2) & \sm|state.RunTimer~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(2),
	datab => \sm|state.RunTimer~regout\,
	datac => \sm|state.Flash~regout\,
	datad => \KEY~combout\(0),
	combout => \sm|Selector5~0_combout\);

-- Location: LCFF_X46_Y16_N25
\sm|state.Flash\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \sm|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sm|state.Flash~regout\);

-- Location: LCCOMB_X44_Y17_N0
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

-- Location: LCCOMB_X45_Y16_N0
\cd|counter[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[0]~34_combout\ = (\KEY~combout\(0)) # (\cd|clockReg~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datad => \cd|clockReg~15_combout\,
	combout => \cd|counter[0]~34_combout\);

-- Location: LCFF_X44_Y17_N1
\cd|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[0]~32_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(0));

-- Location: LCCOMB_X44_Y17_N2
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

-- Location: LCFF_X44_Y17_N3
\cd|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[1]~35_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(1));

-- Location: LCCOMB_X44_Y17_N4
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

-- Location: LCFF_X44_Y17_N5
\cd|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[2]~37_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(2));

-- Location: LCCOMB_X44_Y17_N8
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

-- Location: LCFF_X44_Y17_N9
\cd|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[4]~41_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(4));

-- Location: LCCOMB_X44_Y17_N10
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

-- Location: LCCOMB_X44_Y17_N14
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

-- Location: LCFF_X44_Y17_N15
\cd|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[7]~47_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(7));

-- Location: LCCOMB_X44_Y17_N16
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

-- Location: LCCOMB_X44_Y17_N18
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

-- Location: LCFF_X44_Y17_N19
\cd|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[9]~51_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(9));

-- Location: LCCOMB_X44_Y17_N22
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

-- Location: LCFF_X44_Y17_N23
\cd|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[11]~55_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(11));

-- Location: LCCOMB_X44_Y17_N24
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

-- Location: LCCOMB_X44_Y17_N26
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

-- Location: LCFF_X44_Y17_N27
\cd|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[13]~59_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(13));

-- Location: LCCOMB_X44_Y17_N28
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

-- Location: LCFF_X44_Y17_N29
\cd|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[14]~61_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(14));

-- Location: LCCOMB_X44_Y17_N30
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

-- Location: LCFF_X44_Y17_N31
\cd|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[15]~63_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(15));

-- Location: LCCOMB_X44_Y16_N0
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

-- Location: LCFF_X44_Y16_N1
\cd|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[16]~65_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(16));

-- Location: LCCOMB_X44_Y16_N2
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

-- Location: LCFF_X44_Y16_N3
\cd|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[17]~67_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(17));

-- Location: LCCOMB_X44_Y16_N4
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

-- Location: LCFF_X44_Y16_N5
\cd|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[18]~69_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(18));

-- Location: LCCOMB_X44_Y16_N6
\cd|counter[19]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[19]~71_combout\ = (\cd|counter\(19) & (!\cd|counter[18]~70\)) # (!\cd|counter\(19) & ((\cd|counter[18]~70\) # (GND)))
-- \cd|counter[19]~72\ = CARRY((!\cd|counter[18]~70\) # (!\cd|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(19),
	datad => VCC,
	cin => \cd|counter[18]~70\,
	combout => \cd|counter[19]~71_combout\,
	cout => \cd|counter[19]~72\);

-- Location: LCFF_X45_Y16_N1
\cd|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \cd|counter[19]~71_combout\,
	sclr => \cd|counter[0]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(19));

-- Location: LCCOMB_X44_Y16_N10
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

-- Location: LCCOMB_X44_Y16_N12
\cd|counter[22]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter[22]~77_combout\ = (\cd|counter\(22) & (\cd|counter[21]~76\ $ (GND))) # (!\cd|counter\(22) & (!\cd|counter[21]~76\ & VCC))
-- \cd|counter[22]~78\ = CARRY((\cd|counter\(22) & !\cd|counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(22),
	datad => VCC,
	cin => \cd|counter[21]~76\,
	combout => \cd|counter[22]~77_combout\,
	cout => \cd|counter[22]~78\);

-- Location: LCFF_X46_Y16_N27
\cd|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \cd|counter[22]~77_combout\,
	sclr => \cd|counter[0]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(22));

-- Location: LCCOMB_X44_Y16_N14
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

-- Location: LCFF_X44_Y16_N15
\cd|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[23]~79_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(23));

-- Location: LCCOMB_X44_Y16_N16
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

-- Location: LCFF_X44_Y16_N17
\cd|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[24]~81_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(24));

-- Location: LCFF_X44_Y16_N19
\cd|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[25]~83_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(25));

-- Location: LCCOMB_X45_Y16_N22
\cd|clockReg~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~13_combout\ = (\cd|counter\(23) & (!\cd|counter\(24) & \cd|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(23),
	datab => \cd|counter\(24),
	datad => \cd|counter\(25),
	combout => \cd|clockReg~13_combout\);

-- Location: LCCOMB_X45_Y16_N8
\cd|clockReg~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~12_combout\ = (!\cd|counter\(16) & (!\cd|counter\(18) & (\cd|counter\(17) & \cd|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(16),
	datab => \cd|counter\(18),
	datac => \cd|counter\(17),
	datad => \cd|counter\(15),
	combout => \cd|clockReg~12_combout\);

-- Location: LCCOMB_X45_Y16_N30
\cd|clockReg~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~11_combout\ = (!\cd|counter\(6) & (!\sm|state.Flash~regout\ & (\cd|counter\(7) & !\cd|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(6),
	datab => \sm|state.Flash~regout\,
	datac => \cd|counter\(7),
	datad => \cd|counter\(11),
	combout => \cd|clockReg~11_combout\);

-- Location: LCCOMB_X45_Y16_N28
\cd|clockReg~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~14_combout\ = (\cd|clockReg~13_combout\ & (\cd|clockReg~12_combout\ & \cd|clockReg~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|clockReg~13_combout\,
	datac => \cd|clockReg~12_combout\,
	datad => \cd|clockReg~11_combout\,
	combout => \cd|clockReg~14_combout\);

-- Location: LCCOMB_X45_Y16_N14
\cd|clockReg~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~9_combout\ = (!\cd|counter\(23) & (\cd|counter\(24) & !\cd|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(23),
	datab => \cd|counter\(24),
	datad => \cd|counter\(25),
	combout => \cd|clockReg~9_combout\);

-- Location: LCCOMB_X45_Y16_N4
\cd|clockReg~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~8_combout\ = (\cd|counter\(16) & (\cd|counter\(18) & (!\cd|counter\(17) & !\cd|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(16),
	datab => \cd|counter\(18),
	datac => \cd|counter\(17),
	datad => \cd|counter\(15),
	combout => \cd|clockReg~8_combout\);

-- Location: LCCOMB_X45_Y16_N2
\cd|clockReg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~7_combout\ = (\cd|counter\(6) & (\sm|state.Flash~regout\ & (!\cd|counter\(7) & \cd|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(6),
	datab => \sm|state.Flash~regout\,
	datac => \cd|counter\(7),
	datad => \cd|counter\(11),
	combout => \cd|clockReg~7_combout\);

-- Location: LCCOMB_X45_Y16_N20
\cd|clockReg~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~10_combout\ = (\cd|clockReg~9_combout\ & (\cd|clockReg~8_combout\ & \cd|clockReg~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|clockReg~9_combout\,
	datac => \cd|clockReg~8_combout\,
	datad => \cd|clockReg~7_combout\,
	combout => \cd|clockReg~10_combout\);

-- Location: LCFF_X45_Y16_N7
\cd|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \cd|counter[21]~75_combout\,
	sclr => \cd|counter[0]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(21));

-- Location: LCCOMB_X46_Y16_N8
\cd|clockReg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~3_combout\ = (\cd|counter\(20) & (\cd|counter\(22) & (\cd|counter\(19) & \cd|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(20),
	datab => \cd|counter\(22),
	datac => \cd|counter\(19),
	datad => \cd|counter\(21),
	combout => \cd|clockReg~3_combout\);

-- Location: LCFF_X44_Y17_N25
\cd|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[12]~57_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(12));

-- Location: LCCOMB_X45_Y16_N24
\cd|clockReg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~2_combout\ = (!\cd|counter\(10) & (\cd|counter\(13) & (\cd|counter\(12) & \cd|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(10),
	datab => \cd|counter\(13),
	datac => \cd|counter\(12),
	datad => \cd|counter\(14),
	combout => \cd|clockReg~2_combout\);

-- Location: LCFF_X44_Y17_N17
\cd|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[8]~49_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(8));

-- Location: LCFF_X44_Y17_N11
\cd|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|counter[5]~43_combout\,
	sclr => \cd|counter[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(5));

-- Location: LCCOMB_X45_Y16_N10
\cd|clockReg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~1_combout\ = (!\cd|counter\(9) & (!\cd|counter\(4) & (!\cd|counter\(8) & !\cd|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(9),
	datab => \cd|counter\(4),
	datac => \cd|counter\(8),
	datad => \cd|counter\(5),
	combout => \cd|clockReg~1_combout\);

-- Location: LCCOMB_X45_Y16_N26
\cd|clockReg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~4_combout\ = (\cd|clockReg~0_combout\ & (\cd|clockReg~3_combout\ & (\cd|clockReg~2_combout\ & \cd|clockReg~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|clockReg~0_combout\,
	datab => \cd|clockReg~3_combout\,
	datac => \cd|clockReg~2_combout\,
	datad => \cd|clockReg~1_combout\,
	combout => \cd|clockReg~4_combout\);

-- Location: LCCOMB_X45_Y16_N18
\cd|clockReg~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~15_combout\ = (\cd|clockReg~6_combout\ & (\cd|clockReg~4_combout\ & ((\cd|clockReg~14_combout\) # (\cd|clockReg~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|clockReg~6_combout\,
	datab => \cd|clockReg~14_combout\,
	datac => \cd|clockReg~10_combout\,
	datad => \cd|clockReg~4_combout\,
	combout => \cd|clockReg~15_combout\);

-- Location: LCCOMB_X45_Y16_N16
\cd|clockReg~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clockReg~16_combout\ = \cd|clockReg~regout\ $ (((!\KEY~combout\(0) & \cd|clockReg~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \cd|clockReg~regout\,
	datad => \cd|clockReg~15_combout\,
	combout => \cd|clockReg~16_combout\);

-- Location: LCFF_X45_Y16_N17
\cd|clockReg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \cd|clockReg~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|clockReg~regout\);

-- Location: LCCOMB_X46_Y16_N22
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\sm|state.Flash~regout\ & \cd|clockReg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sm|state.Flash~regout\,
	datad => \cd|clockReg~regout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X49_Y16_N20
\fl|ledr[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fl|ledr[0]~feeder_combout\ = \comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb~0_combout\,
	combout => \fl|ledr[0]~feeder_combout\);

-- Location: LCFF_X49_Y16_N21
\fl|ledr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \fl|ledr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fl|ledr\(0));

-- Location: LCCOMB_X49_Y16_N26
\fl|ledr[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fl|ledr[1]~feeder_combout\ = \comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb~0_combout\,
	combout => \fl|ledr[1]~feeder_combout\);

-- Location: LCFF_X49_Y16_N27
\fl|ledr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \fl|ledr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fl|ledr\(1));

-- Location: LCCOMB_X49_Y16_N4
\fl|ledr[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fl|ledr[2]~feeder_combout\ = \comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb~0_combout\,
	combout => \fl|ledr[2]~feeder_combout\);

-- Location: LCFF_X49_Y16_N5
\fl|ledr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \fl|ledr[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fl|ledr\(2));

-- Location: LCCOMB_X49_Y16_N2
\fl|ledr[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fl|ledr[3]~feeder_combout\ = \comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb~0_combout\,
	combout => \fl|ledr[3]~feeder_combout\);

-- Location: LCFF_X49_Y16_N3
\fl|ledr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \fl|ledr[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fl|ledr\(3));

-- Location: LCCOMB_X49_Y16_N0
\fl|ledr[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fl|ledr[4]~feeder_combout\ = \comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb~0_combout\,
	combout => \fl|ledr[4]~feeder_combout\);

-- Location: LCFF_X49_Y16_N1
\fl|ledr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \fl|ledr[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fl|ledr\(4));

-- Location: LCCOMB_X49_Y16_N10
\fl|ledr[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fl|ledr[5]~feeder_combout\ = \comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb~0_combout\,
	combout => \fl|ledr[5]~feeder_combout\);

-- Location: LCFF_X49_Y16_N11
\fl|ledr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \fl|ledr[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fl|ledr\(5));

-- Location: LCCOMB_X49_Y16_N12
\fl|ledr[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fl|ledr[6]~feeder_combout\ = \comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb~0_combout\,
	combout => \fl|ledr[6]~feeder_combout\);

-- Location: LCFF_X49_Y16_N13
\fl|ledr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \fl|ledr[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fl|ledr\(6));

-- Location: LCCOMB_X49_Y16_N22
\fl|ledr[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fl|ledr[7]~feeder_combout\ = \comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb~0_combout\,
	combout => \fl|ledr[7]~feeder_combout\);

-- Location: LCFF_X49_Y16_N23
\fl|ledr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \fl|ledr[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fl|ledr\(7));

-- Location: LCCOMB_X49_Y16_N16
\fl|ledr[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fl|ledr[8]~feeder_combout\ = \comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb~0_combout\,
	combout => \fl|ledr[8]~feeder_combout\);

-- Location: LCFF_X49_Y16_N17
\fl|ledr[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \fl|ledr[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fl|ledr\(8));

-- Location: LCCOMB_X49_Y16_N6
\fl|ledr[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \fl|ledr[9]~feeder_combout\ = \comb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb~0_combout\,
	combout => \fl|ledr[9]~feeder_combout\);

-- Location: LCFF_X49_Y16_N7
\fl|ledr[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \fl|ledr[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fl|ledr\(9));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(0));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(1));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(2));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(3));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(4));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(5));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(6));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW(7));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \fl|ledr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \fl|ledr\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \fl|ledr\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \fl|ledr\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \fl|ledr\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \fl|ledr\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \fl|ledr\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \fl|ledr\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \fl|ledr\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \fl|ledr\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));
END structure;


