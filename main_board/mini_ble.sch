EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date "2017-10-08"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4100 4000 1450 800 
U 59B3AA77
F0 "Power Supplies" 60
F1 "mini_ble_psu.sch" 60
F2 "VOLED_1V2_EN" I R 5550 4100 60 
F3 "VOLED_3V3_EN" I R 5550 4200 60 
F4 "SWDET_ENABLE" I R 5550 4600 60 
F5 "SWITCH_HIGH" I R 5550 4400 60 
F6 "SWITCH_LOW" I R 5550 4500 60 
F7 "3V3_USB" O R 5550 4300 60 
F8 "BAT+" I L 4100 4100 60 
F9 "VOLED_DC_IN" O R 5550 4700 60 
$EndSheet
$Sheet
S 4100 1350 1500 2150
U 59B3AA97
F0 "Bluetooth and USB" 60
F1 "mini_ble_usb.sch" 60
F2 "AUX_Rx" I R 5600 2200 60 
F3 "BLE_CHIP_SEC_EN" I R 5600 2100 60 
F4 "AUX_Tx" O R 5600 2300 60 
F5 "CURSENSE_LOW" I L 4100 3150 60 
F6 "CURSENSE_HIGH" I L 4100 2750 60 
F7 "MOS_CHARGE" I L 4100 3400 60 
F8 "VFBBIAS" I L 4100 1550 60 
F9 "CHARGE_EN" I L 4100 1450 60 
F10 "NO_COMMS" I R 5600 2400 60 
$EndSheet
Text Notes 7300 6250 0    60   ~ 0
Copyright Stephan Electronics, 2019\n\nThis documentation describes Open Hardware and is licensed under the\nCERN OHL v. 1.2.\n\nYou may redistribute and modify this documentation under the terms of the\nCERN OHL v.1.2. (http://ohwr.org/cernohl). This documentation is distributed\nWITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY,\nSATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. \nPlease see the CERN OHL v.1.2 for applicable conditions
Text Notes 8600 2100 0    60   ~ 0
Changelog:\n1) Proto v2 (May 2018)\n- MAIN_MCU_WAKE removed (AUX_Tx used for wakeup)\n- FORCE_RESET_AUX removed (little added benefits)\n- NO_COMMS added (see github pages)\n2) BLE testers version (August 2019)\n- 1M pullup on card detect\n- 100R in series with switch low\n- PA19 used as pullup for nocomms\n3) Pre-production version (December 2019)\n- SOD-523 3V3 ESD Diodes (D1 & D2)\n- VOLED_1V2_EN (pin 13) with SMC_PGM (pin 7) \n   to use SMC_PGM as SDA and SMC_SCK as SCL\n- extra 3V3 ESD Diode on SMC_SCK\n4) Mass production version (July 2020)\n- changed Q7 for low Ciss 2N7002ET1G\n
$Comp
L Device:Battery_Cell BT1
U 1 1 5AF24982
P 3600 4400
F 0 "BT1" H 3700 4500 50  0000 L CNN
F 1 "NiMH" H 3700 4400 50  0000 L CNN
F 2 "footprints:BAT_TWOTHIRD_AAA" V 3600 4460 50  0001 C CNN
F 3 "" V 3600 4460 50  0001 C CNN
	1    3600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5AF24CE3
P 3600 4550
F 0 "#PWR07" H 3600 4300 50  0001 C CNN
F 1 "GND" H 3600 4400 50  0000 C CNN
F 2 "" H 3600 4550 50  0001 C CNN
F 3 "" H 3600 4550 50  0001 C CNN
	1    3600 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q5
U 1 1 5AF26FCB
P 3700 3400
F 0 "Q5" H 3900 3400 50  0000 L CNN
F 1 "DMN1019USN" H 3900 3300 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 3900 3500 50  0001 C CNN
F 3 "" H 3700 3400 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/diodes-incorporated/DMN1019USN-7/DMN1019USN-7DICT-ND/4898886" H 3700 3400 60  0001 C CNN "Field4"
	1    3700 3400
	-1   0    0    -1  
$EndComp
$Sheet
S 5950 2000 1250 2800
U 59B3AAC5
F0 "Main MCU & OLED" 60
F1 "mini_ble_core.sch" 60
F2 "VOLED_1V2_EN" O L 5950 4100 60 
F3 "VOLED_3V3_EN" O L 5950 4200 60 
F4 "3V3_USB" I L 5950 4300 60 
F5 "SWITCH_HIGH" O L 5950 4400 60 
F6 "SWITCH_LOW" O L 5950 4500 60 
F7 "SWDET_ENABLE" O L 5950 4600 60 
F8 "AUX_TX" I L 5950 2300 60 
F9 "AUX_RX" O L 5950 2200 60 
F10 "BLE_EN" O L 5950 2100 60 
F11 "NO_COMMS" O L 5950 2400 60 
F12 "VOLED_DC_IN" I L 5950 4700 60 
$EndSheet
$Comp
L Device:R R9
U 1 1 5AF292B6
P 3600 2950
F 0 "R9" V 3680 2950 50  0000 C CNN
F 1 "1" V 3600 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3530 2950 50  0001 C CNN
F 3 "" H 3600 2950 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RNCP0603FTD1R00/RNCP0603FTD1R00CT-ND/2240411" V 3600 2950 60  0001 C CNN "Field4"
	1    3600 2950
	1    0    0    -1  
$EndComp
$Comp
L mini_ble:LM3670 U18
U 1 1 5AF2FA11
P 2600 2150
F 0 "U18" H 2400 2350 60  0000 C CNN
F 1 "LM3670" H 2600 1950 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2600 2150 60  0001 C CNN
F 3 "" H 2600 2150 60  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/texas-instruments/LM3670MFX-ADJ-NOPB/LM3670MFX-ADJ-NOPBCT-ND/953510" H 2600 2150 60  0001 C CNN "Field4"
	1    2600 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5AF2FB56
P 2100 2300
F 0 "#PWR05" H 2100 2050 50  0001 C CNN
F 1 "GND" H 2100 2150 50  0000 C CNN
F 2 "" H 2100 2300 50  0001 C CNN
F 3 "" H 2100 2300 50  0001 C CNN
	1    2100 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C29
U 1 1 5AF30132
P 1500 2350
F 0 "C29" H 1525 2450 50  0000 L CNN
F 1 "4.7uF" H 1525 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1538 2200 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/__icsFiles/afieldfile/2018/08/23/Data%20sheet_CL10A475KA8NQNC.pdf" H 1500 2350 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics-america-inc/CL10A475KA8NQNC/1276-1900-1-ND/3889986" H 1500 2350 60  0001 C CNN "Field4"
	1    1500 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5AF30340
P 1500 2550
F 0 "#PWR02" H 1500 2300 50  0001 C CNN
F 1 "GND" H 1500 2400 50  0000 C CNN
F 2 "" H 1500 2550 50  0001 C CNN
F 3 "" H 1500 2550 50  0001 C CNN
	1    1500 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5AF305D3
P 1500 2000
F 0 "#PWR01" H 1500 1850 50  0001 C CNN
F 1 "+5V" H 1500 2140 50  0000 C CNN
F 2 "" H 1500 2000 50  0001 C CNN
F 3 "" H 1500 2000 50  0001 C CNN
	1    1500 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C49
U 1 1 5AF31956
P 3150 2950
F 0 "C49" H 3000 3050 50  0000 L CNN
F 1 "10uF/6.3V" V 3300 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3188 2800 50  0001 C CNN
F 3 "" H 3150 2950 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R60J106ME47D/490-3896-1-ND/965938" H 3150 2950 60  0001 C CNN "Field4"
	1    3150 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:L L6
U 1 1 5AF327F1
P 3150 2500
F 0 "L6" V 3100 2500 50  0000 C CNN
F 1 "4.7uH" V 3225 2500 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 3150 2500 50  0001 C CNN
F 3 "" H 3150 2500 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/LQM2MPN4R7MG0L/490-12073-1-ND/5403074" V 3150 2500 60  0001 C CNN "Field4"
	1    3150 2500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5AF33A0F
P 3150 3150
F 0 "#PWR06" H 3150 2900 50  0001 C CNN
F 1 "GND" H 3150 3000 50  0000 C CNN
F 2 "" H 3150 3150 50  0001 C CNN
F 3 "" H 3150 3150 50  0001 C CNN
	1    3150 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q9
U 1 1 5AF26F43
P 3700 3850
F 0 "Q9" H 3900 3650 50  0000 L CNN
F 1 "DMN1019USN" H 3900 3750 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59" H 3900 3950 50  0001 C CNN
F 3 "" H 3700 3850 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/diodes-incorporated/DMN1019USN-7/DMN1019USN-7DICT-ND/4898886" H 3700 3850 60  0001 C CNN "Field4"
	1    3700 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5AF35A49
P 4250 3750
F 0 "R15" V 4330 3750 50  0000 C CNN
F 1 "100k" V 4250 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4180 3750 50  0001 C CNN
F 3 "" H 4250 3750 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/yageo/AC0402FR-07100KL/YAG3434CT-ND/6006283" V 4250 3750 60  0001 C CNN "Field4"
	1    4250 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5AF35BA4
P 4450 3750
F 0 "#PWR08" H 4450 3500 50  0001 C CNN
F 1 "GND" H 4450 3600 50  0000 C CNN
F 2 "" H 4450 3750 50  0001 C CNN
F 3 "" H 4450 3750 50  0001 C CNN
	1    4450 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5AF37CC3
P 3600 1800
F 0 "R8" V 3680 1800 50  0000 C CNN
F 1 "20k" V 3600 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3530 1800 50  0001 C CNN
F 3 "" H 3600 1800 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-0720KL/311-20.0KLRCT-ND/729504" V 3600 1800 60  0001 C CNN "Field4"
	1    3600 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C51
U 1 1 5AF37E38
P 3850 2400
F 0 "C51" H 3875 2500 50  0000 L CNN
F 1 "C" H 3875 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3888 2250 50  0001 C CNN
F 3 "" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5AF39200
P 1900 2350
F 0 "R1" V 1980 2350 50  0000 C CNN
F 1 "100k" V 1900 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1830 2350 50  0001 C CNN
F 3 "" H 1900 2350 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/yageo/AC0402FR-07100KL/YAG3434CT-ND/6006283" V 1900 2350 60  0001 C CNN "Field4"
	1    1900 2350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5AF39301
P 1900 2550
F 0 "#PWR04" H 1900 2300 50  0001 C CNN
F 1 "GND" H 1900 2400 50  0000 C CNN
F 2 "" H 1900 2550 50  0001 C CNN
F 3 "" H 1900 2550 50  0001 C CNN
	1    1900 2550
	1    0    0    -1  
$EndComp
Connection ~ 3600 4100
Wire Wire Line
	1900 2500 1900 2550
Wire Wire Line
	1900 1450 1900 2150
Wire Wire Line
	2150 2150 1900 2150
Connection ~ 3600 2050
Wire Wire Line
	3850 1950 3850 2050
Connection ~ 3850 2750
Wire Wire Line
	3850 2750 3850 2550
Wire Wire Line
	3600 1950 3600 2050
Wire Wire Line
	3050 2050 3600 2050
Wire Wire Line
	3150 2250 3050 2250
Wire Wire Line
	3150 2350 3150 2250
Connection ~ 3150 2750
Connection ~ 3600 2750
Wire Wire Line
	3600 2550 3600 2750
Connection ~ 3600 3150
Wire Wire Line
	3600 3100 3600 3150
Wire Wire Line
	4100 3150 3600 3150
Wire Wire Line
	4400 3750 4450 3750
Connection ~ 4000 3750
Wire Wire Line
	4100 3750 4000 3750
Connection ~ 4000 3400
Wire Wire Line
	3600 4050 3600 4100
Wire Wire Line
	3900 3400 4000 3400
Wire Wire Line
	4000 3400 4000 3750
Wire Wire Line
	4000 3850 3900 3850
Wire Wire Line
	3150 2650 3150 2750
Wire Wire Line
	3150 2750 3600 2750
Wire Wire Line
	3150 3150 3150 3100
Wire Wire Line
	1500 2050 2150 2050
Connection ~ 1500 2050
Wire Wire Line
	1500 2000 1500 2050
Wire Wire Line
	1500 2550 1500 2500
Wire Wire Line
	2100 2250 2100 2300
Wire Wire Line
	2150 2250 2100 2250
Wire Wire Line
	3600 3650 3600 3600
Wire Wire Line
	3600 4500 3600 4550
Wire Wire Line
	5950 4500 5550 4500
Wire Wire Line
	5950 4600 5550 4600
Wire Wire Line
	5550 4400 5950 4400
Wire Wire Line
	5950 4300 5550 4300
Wire Wire Line
	5950 4200 5550 4200
Wire Wire Line
	5550 4100 5950 4100
Wire Wire Line
	4100 4100 3600 4100
$Comp
L Device:R R7
U 1 1 5AF3C2C3
P 3600 2400
F 0 "R7" V 3680 2400 50  0000 C CNN
F 1 "54k9" V 3600 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3530 2400 50  0001 C CNN
F 3 "" H 3600 2400 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-0754K9L/YAG3185CT-ND/5282050" V 3600 2400 60  0001 C CNN "Field4"
	1    3600 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C50
U 1 1 5AF3C4BD
P 3850 1800
F 0 "C50" H 3875 1900 50  0000 L CNN
F 1 "C" H 3875 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3888 1650 50  0001 C CNN
F 3 "" H 3850 1800 50  0001 C CNN
	1    3850 1800
	1    0    0    -1  
$EndComp
Connection ~ 3850 2050
Wire Wire Line
	3600 1650 3600 1550
Wire Wire Line
	3600 1550 3850 1550
Wire Wire Line
	3850 1650 3850 1550
Connection ~ 3850 1550
Wire Wire Line
	4100 1450 1900 1450
Connection ~ 1900 2150
Wire Wire Line
	5600 2100 5950 2100
Wire Wire Line
	5950 2200 5600 2200
Wire Wire Line
	5600 2300 5950 2300
Text Notes 2350 2500 0    60   ~ 0
350mA max
Text Notes 2700 1900 0    60   ~ 0
Vout set to 1.8V\n1.5V + 0.3A*1R
Text Notes 3750 3000 0    60   ~ 0
0.1W
$Comp
L Connector:Screw_Terminal_01x01 J1
U 1 1 5B002C82
P 1400 3900
F 0 "J1" H 1400 4000 50  0000 C CNN
F 1 "FIX_M1.4" H 1400 3800 50  0000 C CNN
F 2 "footprints:FIX_M1.4" H 1400 3900 50  0001 C CNN
F 3 "" H 1400 3900 50  0001 C CNN
	1    1400 3900
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J2
U 1 1 5B002FD6
P 1400 4200
F 0 "J2" H 1400 4300 50  0000 C CNN
F 1 "FIX_M1.4" H 1400 4100 50  0000 C CNN
F 2 "footprints:FIX_M1.4" H 1400 4200 50  0001 C CNN
F 3 "" H 1400 4200 50  0001 C CNN
	1    1400 4200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J4
U 1 1 5B0030AE
P 1400 4500
F 0 "J4" H 1400 4600 50  0000 C CNN
F 1 "FIX_M1.4" H 1400 4400 50  0000 C CNN
F 2 "footprints:FIX_M1.4" H 1400 4500 50  0001 C CNN
F 3 "" H 1400 4500 50  0001 C CNN
	1    1400 4500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J7
U 1 1 5B00334A
P 1400 4800
F 0 "J7" H 1400 4900 50  0000 C CNN
F 1 "FIX_M1.4" H 1400 4700 50  0000 C CNN
F 2 "footprints:FIX_M1.4" H 1400 4800 50  0001 C CNN
F 3 "" H 1400 4800 50  0001 C CNN
	1    1400 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5B0035EE
P 1650 4850
F 0 "#PWR03" H 1650 4600 50  0001 C CNN
F 1 "GND" H 1650 4700 50  0000 C CNN
F 2 "" H 1650 4850 50  0001 C CNN
F 3 "" H 1650 4850 50  0001 C CNN
	1    1650 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4850 1650 4800
Wire Wire Line
	1650 3900 1600 3900
Wire Wire Line
	1600 4200 1650 4200
Connection ~ 1650 4200
Wire Wire Line
	1600 4500 1650 4500
Connection ~ 1650 4500
Wire Wire Line
	1600 4800 1650 4800
Connection ~ 1650 4800
Wire Wire Line
	5600 2400 5950 2400
Wire Wire Line
	5550 4700 5950 4700
Wire Wire Line
	3600 4100 3600 4200
Wire Wire Line
	3600 2050 3600 2250
Wire Wire Line
	3600 2050 3850 2050
Wire Wire Line
	3850 2750 4100 2750
Wire Wire Line
	3150 2750 3150 2800
Wire Wire Line
	3600 2750 3600 2800
Wire Wire Line
	3600 2750 3850 2750
Wire Wire Line
	3600 3150 3600 3200
Wire Wire Line
	4000 3750 4000 3850
Wire Wire Line
	4000 3400 4100 3400
Wire Wire Line
	1500 2050 1500 2200
Wire Wire Line
	3850 2050 3850 2250
Wire Wire Line
	3850 1550 4100 1550
Wire Wire Line
	1900 2150 1900 2200
Wire Wire Line
	1650 4200 1650 3900
Wire Wire Line
	1650 4500 1650 4200
Wire Wire Line
	1650 4800 1650 4500
$EndSCHEMATC
