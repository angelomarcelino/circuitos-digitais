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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "08/31/2018 15:28:39"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Counter2_VHDL IS
    PORT (
	Clock_enable_B : IN std_logic;
	Clock : IN std_logic;
	Reset : IN std_logic;
	Output : OUT std_logic_vector(0 TO 6)
	);
END Counter2_VHDL;

-- Design Ports Information
-- Output[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Output[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clock	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock_enable_B	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Counter2_VHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock_enable_B : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Output : std_logic_vector(0 TO 6);
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock_enable_B~combout\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \temp[2]~2_combout\ : std_logic;
SIGNAL \temp[1]~1_combout\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \Output~0_combout\ : std_logic;
SIGNAL \Output~1_combout\ : std_logic;
SIGNAL \Output~2_combout\ : std_logic;
SIGNAL \Output~3_combout\ : std_logic;
SIGNAL \Output~4_combout\ : std_logic;
SIGNAL \Output~5_combout\ : std_logic;
SIGNAL \Output~6_combout\ : std_logic;
SIGNAL temp : std_logic_vector(0 TO 3);
SIGNAL \ALT_INV_Clock_enable_B~combout\ : std_logic;
SIGNAL \ALT_INV_Output~2_combout\ : std_logic;
SIGNAL \ALT_INV_Output~1_combout\ : std_logic;

BEGIN

ww_Clock_enable_B <= Clock_enable_B;
ww_Clock <= Clock;
ww_Reset <= Reset;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Clock_enable_B~combout\ <= NOT \Clock_enable_B~combout\;
\ALT_INV_Output~2_combout\ <= NOT \Output~2_combout\;
\ALT_INV_Output~1_combout\ <= NOT \Output~1_combout\;

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
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
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock_enable_B~I\ : cycloneii_io
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
	padio => ww_Clock_enable_B,
	combout => \Clock_enable_B~combout\);

-- Location: LCCOMB_X1_Y12_N30
\temp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~3_combout\ = (!temp(3) & (((temp(2)) # (temp(1))) # (!temp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(2),
	datac => temp(3),
	datad => temp(1),
	combout => \temp~3_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
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
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LCFF_X1_Y12_N31
\temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \temp~3_combout\,
	aclr => \Reset~combout\,
	ena => \ALT_INV_Clock_enable_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(3));

-- Location: LCCOMB_X1_Y12_N28
\temp[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[2]~2_combout\ = temp(2) $ (((!\Clock_enable_B~combout\ & temp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Clock_enable_B~combout\,
	datac => temp(2),
	datad => temp(3),
	combout => \temp[2]~2_combout\);

-- Location: LCFF_X1_Y12_N29
\temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \temp[2]~2_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(2));

-- Location: LCCOMB_X1_Y12_N26
\temp[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp[1]~1_combout\ = temp(1) $ (((!\Clock_enable_B~combout\ & (temp(2) & temp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_enable_B~combout\,
	datab => temp(2),
	datac => temp(1),
	datad => temp(3),
	combout => \temp[1]~1_combout\);

-- Location: LCFF_X1_Y12_N27
\temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \temp[1]~1_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(1));

-- Location: LCCOMB_X1_Y12_N24
\temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = (temp(3) & (temp(0) $ (((temp(1) & temp(2)))))) # (!temp(3) & (temp(0) & ((temp(1)) # (temp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(1),
	datac => temp(0),
	datad => temp(2),
	combout => \temp~0_combout\);

-- Location: LCFF_X1_Y12_N25
\temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \temp~0_combout\,
	aclr => \Reset~combout\,
	ena => \ALT_INV_Clock_enable_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(0));

-- Location: LCCOMB_X24_Y4_N20
\Output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Output~0_combout\ = (temp(1) & (temp(2) & temp(0))) # (!temp(1) & (!temp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datac => temp(2),
	datad => temp(0),
	combout => \Output~0_combout\);

-- Location: LCCOMB_X24_Y4_N22
\Output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Output~1_combout\ = (temp(2) & ((temp(0)))) # (!temp(2) & (!temp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datac => temp(2),
	datad => temp(0),
	combout => \Output~1_combout\);

-- Location: LCCOMB_X24_Y4_N16
\Output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Output~2_combout\ = (temp(2) & (temp(1) & temp(0))) # (!temp(2) & ((!temp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datac => temp(2),
	datad => temp(0),
	combout => \Output~2_combout\);

-- Location: LCCOMB_X24_Y4_N10
\Output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Output~3_combout\ = (temp(2) & ((!temp(0)))) # (!temp(2) & (!temp(1) & temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datac => temp(2),
	datad => temp(0),
	combout => \Output~3_combout\);

-- Location: LCCOMB_X24_Y4_N12
\Output~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Output~4_combout\ = (temp(1) & !temp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(1),
	datad => temp(0),
	combout => \Output~4_combout\);

-- Location: LCCOMB_X24_Y4_N18
\Output~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Output~5_combout\ = (!temp(1) & (temp(2) & temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datac => temp(2),
	datad => temp(0),
	combout => \Output~5_combout\);

-- Location: LCCOMB_X24_Y4_N24
\Output~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Output~6_combout\ = (temp(1) & (temp(2) $ (temp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datac => temp(2),
	datad => temp(0),
	combout => \Output~6_combout\);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[6]~I\ : cycloneii_io
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
	datain => \Output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_Output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_Output~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[3]~I\ : cycloneii_io
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
	datain => \Output~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[2]~I\ : cycloneii_io
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
	datain => \Output~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[1]~I\ : cycloneii_io
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
	datain => \Output~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Output[0]~I\ : cycloneii_io
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
	datain => \Output~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Output(0));
END structure;


