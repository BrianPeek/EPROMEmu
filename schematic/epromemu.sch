EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "EPROM Emulator"
Date "2021-12-09"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0102
U 1 1 61A6C548
P 8300 2450
F 0 "#PWR0102" H 8300 2200 50  0001 C CNN
F 1 "GND" H 8305 2277 50  0000 C CNN
F 2 "" H 8300 2450 50  0001 C CNN
F 3 "" H 8300 2450 50  0001 C CNN
	1    8300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2450 8300 2450
$Comp
L teensy:Teensy4.1 U1
U 1 1 61A52DD6
P 5350 3300
F 0 "U1" H 5350 5865 50  0000 C CNN
F 1 "Teensy4.1" H 5350 5774 50  0000 C CNN
F 2 "teensy:Teensy41" H 4950 3700 50  0001 C CNN
F 3 "" H 4950 3700 50  0001 C CNN
	1    5350 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x16_Counter_Clockwise J1
U 1 1 61A9BE2D
P 5300 5750
F 0 "J1" H 5400 6600 50  0000 R CNN
F 1 "EPROM Connector" H 5650 6700 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x16_P2.54mm_Vertical" H 5300 5750 50  0001 C CNN
F 3 "~" H 5300 5750 50  0001 C CNN
	1    5300 5750
	1    0    0    1   
$EndComp
Text GLabel 3300 1400 2    50   Input ~ 0
D4_3V3
Text GLabel 3300 1500 2    50   Input ~ 0
D7_3V3
Text GLabel 3300 1600 2    50   Input ~ 0
D5_3V3
Text GLabel 4250 1850 0    50   Input ~ 0
D4_3V3
Text GLabel 4250 2050 0    50   Input ~ 0
D7_3V3
Text GLabel 4250 2150 0    50   Input ~ 0
D5_3V3
Text GLabel 4250 2250 0    50   Input ~ 0
D0_3V3
Text GLabel 3300 1700 2    50   Input ~ 0
D0_3V3
Text GLabel 3300 1800 2    50   Input ~ 0
D2_3V3
Text GLabel 4250 2350 0    50   Input ~ 0
D2_3V3
Text GLabel 4250 2450 0    50   Input ~ 0
D1_3V3
Text GLabel 3300 1900 2    50   Input ~ 0
D1_3V3
Text GLabel 4250 2650 0    50   Input ~ 0
A0_3V3
Text GLabel 3300 2000 2    50   Input ~ 0
A0_3V3
Text GLabel 3300 2100 2    50   Input ~ 0
A1_3V3
Text GLabel 4250 2750 0    50   Input ~ 0
A1_3V3
Text GLabel 2500 1400 0    50   Input ~ 0
D4_5V
Text GLabel 2500 1500 0    50   Input ~ 0
D7_5V
$Comp
L power:+3V3 #PWR0109
U 1 1 61B41B66
P 3150 2500
F 0 "#PWR0109" H 3150 2350 50  0001 C CNN
F 1 "+3V3" H 3165 2673 50  0000 C CNN
F 2 "" H 3150 2500 50  0001 C CNN
F 3 "" H 3150 2500 50  0001 C CNN
	1    3150 2500
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0110
U 1 1 61B4ACB6
P 7550 1050
F 0 "#PWR0110" H 7550 900 50  0001 C CNN
F 1 "+3V3" H 7565 1223 50  0000 C CNN
F 2 "" H 7550 1050 50  0001 C CNN
F 3 "" H 7550 1050 50  0001 C CNN
	1    7550 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 61B4B7D2
P 7600 3150
F 0 "#PWR0111" H 7600 3000 50  0001 C CNN
F 1 "+3V3" H 7615 3323 50  0000 C CNN
F 2 "" H 7600 3150 50  0001 C CNN
F 3 "" H 7600 3150 50  0001 C CNN
	1    7600 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0105
U 1 1 61B4C2EE
P 3600 2550
F 0 "#PWR0105" H 3600 2400 50  0001 C CNN
F 1 "+3V3" H 3615 2723 50  0000 C CNN
F 2 "" H 3600 2550 50  0001 C CNN
F 3 "" H 3600 2550 50  0001 C CNN
	1    3600 2550
	-1   0    0    1   
$EndComp
Text GLabel 2500 1600 0    50   Input ~ 0
D5_5V
Text GLabel 2500 1700 0    50   Input ~ 0
D0_5V
Text GLabel 2500 1800 0    50   Input ~ 0
D2_5V
Text GLabel 2500 1900 0    50   Input ~ 0
D1_5V
Text GLabel 2500 2000 0    50   Input ~ 0
A0_5V
Text GLabel 2500 2100 0    50   Input ~ 0
A1_5V
$Comp
L power:GND #PWR0107
U 1 1 61B51E9B
P 4950 4900
F 0 "#PWR0107" H 4950 4650 50  0001 C CNN
F 1 "GND" H 4955 4727 50  0000 C CNN
F 2 "" H 4950 4900 50  0001 C CNN
F 3 "" H 4950 4900 50  0001 C CNN
	1    4950 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 4950 4950 4950
Wire Wire Line
	4950 4950 4950 4900
$Comp
L power:+5V #PWR0112
U 1 1 61B52D90
P 5900 6450
F 0 "#PWR0112" H 5900 6300 50  0001 C CNN
F 1 "+5V" H 5850 6600 50  0000 L CNN
F 2 "" H 5900 6450 50  0001 C CNN
F 3 "" H 5900 6450 50  0001 C CNN
	1    5900 6450
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 61B423C6
P 3150 4550
F 0 "#PWR0108" H 3150 4400 50  0001 C CNN
F 1 "+3.3V" H 3165 4723 50  0000 C CNN
F 2 "" H 3150 4550 50  0001 C CNN
F 3 "" H 3150 4550 50  0001 C CNN
	1    3150 4550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 61B53ADF
P 2650 4550
F 0 "#PWR0113" H 2650 4400 50  0001 C CNN
F 1 "+5V" H 2665 4723 50  0000 C CNN
F 2 "" H 2650 4550 50  0001 C CNN
F 3 "" H 2650 4550 50  0001 C CNN
	1    2650 4550
	-1   0    0    1   
$EndComp
$Comp
L Logic_LevelTranslator:TXS0108EPW U3
U 1 1 61A55DAA
P 2900 3850
F 0 "U3" H 2900 3061 50  0000 C CNN
F 1 "TXS0108EPW" H 2900 2970 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 2900 3100 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/txs0108e.pdf" H 2900 3750 50  0001 C CNN
	1    2900 3850
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 61B58CD7
P 2650 2500
F 0 "#PWR0114" H 2650 2350 50  0001 C CNN
F 1 "+5V" H 2665 2673 50  0000 C CNN
F 2 "" H 2650 2500 50  0001 C CNN
F 3 "" H 2650 2500 50  0001 C CNN
	1    2650 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 2500 3150 2500
Wire Wire Line
	2800 2500 2650 2500
Wire Wire Line
	2650 4550 2800 4550
Wire Wire Line
	3000 4550 3150 4550
Wire Wire Line
	7600 3150 7700 3150
$Comp
L power:+5V #PWR0115
U 1 1 61B66B1F
P 8000 3150
F 0 "#PWR0115" H 8000 3000 50  0001 C CNN
F 1 "+5V" H 8015 3323 50  0000 C CNN
F 2 "" H 8000 3150 50  0001 C CNN
F 3 "" H 8000 3150 50  0001 C CNN
	1    8000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3150 7900 3150
Wire Wire Line
	7650 1050 7550 1050
$Comp
L power:+5V #PWR0116
U 1 1 61B6924B
P 7950 1050
F 0 "#PWR0116" H 7950 900 50  0001 C CNN
F 1 "+5V" H 7965 1223 50  0000 C CNN
F 2 "" H 7950 1050 50  0001 C CNN
F 3 "" H 7950 1050 50  0001 C CNN
	1    7950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1050 7850 1050
Text GLabel 5100 6350 0    50   Input ~ 0
A16_5V
Text GLabel 5100 6250 0    50   Input ~ 0
A15_5V
Text GLabel 5100 6150 0    50   Input ~ 0
A12_5V
Text GLabel 5100 6050 0    50   Input ~ 0
A7_5V
Text GLabel 5100 5950 0    50   Input ~ 0
A6_5V
Text GLabel 5100 5850 0    50   Input ~ 0
A5_5V
Text GLabel 5100 5750 0    50   Input ~ 0
A4_5V
Text GLabel 5100 5650 0    50   Input ~ 0
A3_5V
Text GLabel 5100 5550 0    50   Input ~ 0
A2_5V
Text GLabel 5100 5450 0    50   Input ~ 0
A1_5V
Text GLabel 5100 5350 0    50   Input ~ 0
A0_5V
Text GLabel 5100 5250 0    50   Input ~ 0
D0_5V
Text GLabel 5100 5150 0    50   Input ~ 0
D1_5V
Text GLabel 5100 5050 0    50   Input ~ 0
D2_5V
Text GLabel 5600 4950 2    50   Input ~ 0
D3_5V
Text GLabel 5600 5050 2    50   Input ~ 0
D4_5V
Text GLabel 5600 5150 2    50   Input ~ 0
D5_5V
Text GLabel 5600 5250 2    50   Input ~ 0
D6_5V
Text GLabel 5600 5350 2    50   Input ~ 0
D7_5V
Text GLabel 5600 5550 2    50   Input ~ 0
A10_5V
Text GLabel 5600 5750 2    50   Input ~ 0
A11_5V
Text GLabel 5600 5850 2    50   Input ~ 0
A9_5V
Text GLabel 5600 5950 2    50   Input ~ 0
A8_5V
Text GLabel 5600 6050 2    50   Input ~ 0
A13_5V
Text GLabel 5600 6150 2    50   Input ~ 0
A14_5V
Text GLabel 5600 6250 2    50   Input ~ 0
A17_5V
$Comp
L power:GND #PWR0117
U 1 1 61B44525
P 6050 5650
F 0 "#PWR0117" H 6050 5400 50  0001 C CNN
F 1 "GND" H 6055 5477 50  0000 C CNN
F 2 "" H 6050 5650 50  0001 C CNN
F 3 "" H 6050 5650 50  0001 C CNN
	1    6050 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5650 5600 5650
Text GLabel 4250 2850 0    50   Input ~ 0
A16_3V3
Text GLabel 4250 2950 0    50   Input ~ 0
A17_3V3
Text GLabel 4250 3450 0    50   Input ~ 0
D6_3V3
Text GLabel 6450 2950 2    50   Input ~ 0
A14_3V3
Text GLabel 6450 2850 2    50   Input ~ 0
A15_3V3
Text GLabel 6450 2750 2    50   Input ~ 0
A6_3V3
Text GLabel 6450 2650 2    50   Input ~ 0
A7_3V3
Text GLabel 3300 3450 2    50   Input ~ 0
A16_3V3
Text GLabel 3300 3550 2    50   Input ~ 0
A17_3V3
Text GLabel 3300 3650 2    50   Input ~ 0
D6_3V3
Text GLabel 2500 3450 0    50   Input ~ 0
A16_5V
Text GLabel 2500 3550 0    50   Input ~ 0
A17_5V
Text GLabel 2500 3650 0    50   Input ~ 0
D6_5V
NoConn ~ 4250 1250
NoConn ~ 4250 1350
NoConn ~ 4250 1450
NoConn ~ 4250 1550
NoConn ~ 4250 1650
NoConn ~ 4250 1750
NoConn ~ 4250 1950
NoConn ~ 4250 3050
NoConn ~ 4250 3150
NoConn ~ 4250 3250
NoConn ~ 4250 3350
NoConn ~ 4250 3650
NoConn ~ 4250 3750
NoConn ~ 4250 3900
NoConn ~ 4250 4000
NoConn ~ 4250 4100
NoConn ~ 4250 4200
NoConn ~ 4250 4300
NoConn ~ 5050 4600
NoConn ~ 5200 4600
NoConn ~ 5350 4600
NoConn ~ 5500 4600
NoConn ~ 5650 4600
NoConn ~ 6450 4200
NoConn ~ 6450 4100
NoConn ~ 6450 4000
NoConn ~ 6450 3900
NoConn ~ 6450 3800
NoConn ~ 6450 3700
NoConn ~ 6450 3450
NoConn ~ 6450 3350
NoConn ~ 6450 3250
NoConn ~ 6450 3150
NoConn ~ 6450 3050
Text GLabel 6450 2450 2    50   Input ~ 0
D3_3V3
Text GLabel 6450 2350 2    50   Input ~ 0
A4_3V3
Text GLabel 6450 2250 2    50   Input ~ 0
A5_3V3
Text GLabel 6450 2150 2    50   Input ~ 0
A9_3V3
Text GLabel 6450 2050 2    50   Input ~ 0
A8_3V3
Text GLabel 6450 1950 2    50   Input ~ 0
A3_3V3
Text GLabel 6450 1850 2    50   Input ~ 0
A2_3V3
Text GLabel 6450 1750 2    50   Input ~ 0
A12_3V3
Text GLabel 6450 1650 2    50   Input ~ 0
A13_3V3
Text GLabel 6450 1550 2    50   Input ~ 0
A10_3V3
Text GLabel 6450 1450 2    50   Input ~ 0
A11_3V3
NoConn ~ 6450 1350
NoConn ~ 6450 1250
NoConn ~ 6450 1150
NoConn ~ 6450 1000
NoConn ~ 6450 2550
Text GLabel 7350 1450 0    50   Input ~ 0
A11_3V3
Text GLabel 7350 1550 0    50   Input ~ 0
A10_3V3
Text GLabel 7350 1650 0    50   Input ~ 0
A13_3V3
Text GLabel 7350 1750 0    50   Input ~ 0
A12_3V3
Text GLabel 7350 1850 0    50   Input ~ 0
A2_3V3
Text GLabel 7350 1950 0    50   Input ~ 0
A3_3V3
Text GLabel 7350 2050 0    50   Input ~ 0
A8_3V3
Text GLabel 7350 2150 0    50   Input ~ 0
A9_3V3
$Comp
L Logic_LevelTranslator:TXS0108EPW U4
U 1 1 61A5865B
P 7800 3850
F 0 "U4" H 7800 3061 50  0000 C CNN
F 1 "TXS0108EPW" H 7800 2970 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 7800 3100 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/txs0108e.pdf" H 7800 3750 50  0001 C CNN
	1    7800 3850
	1    0    0    -1  
$EndComp
NoConn ~ 7400 4250
NoConn ~ 8200 4250
NoConn ~ 2500 3950
NoConn ~ 2500 4050
NoConn ~ 2500 4150
NoConn ~ 3300 4150
NoConn ~ 3300 4050
NoConn ~ 3300 3950
Text GLabel 8150 1450 2    50   Input ~ 0
A11_5V
Text GLabel 8150 1550 2    50   Input ~ 0
A10_5V
Text GLabel 8150 1650 2    50   Input ~ 0
A13_5V
Text GLabel 8150 1750 2    50   Input ~ 0
A12_5V
Text GLabel 8150 1850 2    50   Input ~ 0
A2_5V
Text GLabel 8150 1950 2    50   Input ~ 0
A3_5V
Text GLabel 8150 2050 2    50   Input ~ 0
A8_5V
Text GLabel 8150 2150 2    50   Input ~ 0
A9_5V
Text GLabel 7400 4150 0    50   Input ~ 0
A14_3V3
Text GLabel 7400 4050 0    50   Input ~ 0
A15_3V3
Text GLabel 7400 3950 0    50   Input ~ 0
A6_3V3
Text GLabel 7400 3850 0    50   Input ~ 0
A7_3V3
Text GLabel 7400 3750 0    50   Input ~ 0
D3_3V3
Text GLabel 7400 3650 0    50   Input ~ 0
A4_3V3
Text GLabel 7400 3550 0    50   Input ~ 0
A5_3V3
Text GLabel 8200 3550 2    50   Input ~ 0
A5_5V
Text GLabel 8200 3650 2    50   Input ~ 0
A4_5V
Text GLabel 8200 3750 2    50   Input ~ 0
D3_5V
Text GLabel 8200 3850 2    50   Input ~ 0
A7_5V
Text GLabel 8200 3950 2    50   Input ~ 0
A6_5V
Text GLabel 8200 4050 2    50   Input ~ 0
A15_5V
Text GLabel 8200 4150 2    50   Input ~ 0
A14_5V
NoConn ~ 5600 6350
NoConn ~ 5100 6450
NoConn ~ 2500 3850
NoConn ~ 2500 3750
NoConn ~ 3300 3750
NoConn ~ 3300 3850
Wire Wire Line
	4100 1150 4250 1150
$Comp
L power:GND #PWR0106
U 1 1 61B2EF8F
P 4100 1150
F 0 "#PWR0106" H 4100 900 50  0001 C CNN
F 1 "GND" H 4105 977 50  0000 C CNN
F 2 "" H 4100 1150 50  0001 C CNN
F 3 "" H 4100 1150 50  0001 C CNN
	1    4100 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2550 3700 2550
$Comp
L Logic_LevelTranslator:TXS0108EPW U2
U 1 1 61A54FCD
P 2900 1800
F 0 "U2" H 2900 1011 50  0000 C CNN
F 1 "TXS0108EPW" H 2900 920 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 2900 1050 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/txs0108e.pdf" H 2900 1700 50  0001 C CNN
	1    2900 1800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61B6B98A
P 2000 1100
F 0 "#PWR0103" H 2000 850 50  0001 C CNN
F 1 "GND" H 2005 927 50  0000 C CNN
F 2 "" H 2000 1100 50  0001 C CNN
F 3 "" H 2000 1100 50  0001 C CNN
	1    2000 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1100 2000 1100
$Comp
L power:GND #PWR0101
U 1 1 61B70682
P 2000 3150
F 0 "#PWR0101" H 2000 2900 50  0001 C CNN
F 1 "GND" H 2005 2977 50  0000 C CNN
F 2 "" H 2000 3150 50  0001 C CNN
F 3 "" H 2000 3150 50  0001 C CNN
	1    2000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3150 2900 3150
$Comp
L power:GND #PWR0104
U 1 1 61B7133C
P 8400 4550
F 0 "#PWR0104" H 8400 4300 50  0001 C CNN
F 1 "GND" H 8405 4377 50  0000 C CNN
F 2 "" H 8400 4550 50  0001 C CNN
F 3 "" H 8400 4550 50  0001 C CNN
	1    8400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4550 7800 4550
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61B71FE1
P 4250 1150
F 0 "#FLG0101" H 4250 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 4250 1323 50  0000 C CNN
F 2 "" H 4250 1150 50  0001 C CNN
F 3 "~" H 4250 1150 50  0001 C CNN
	1    4250 1150
	1    0    0    -1  
$EndComp
Connection ~ 4250 1150
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61B73F25
P 3700 2550
F 0 "#FLG0102" H 3700 2625 50  0001 C CNN
F 1 "PWR_FLAG" H 3700 2723 50  0000 C CNN
F 2 "" H 3700 2550 50  0001 C CNN
F 3 "~" H 3700 2550 50  0001 C CNN
	1    3700 2550
	1    0    0    -1  
$EndComp
Connection ~ 3700 2550
Wire Wire Line
	3700 2550 4250 2550
Wire Wire Line
	5600 6450 5900 6450
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61B79017
P 5900 6450
F 0 "#FLG0103" H 5900 6525 50  0001 C CNN
F 1 "PWR_FLAG" V 5900 6578 50  0000 L CNN
F 2 "" H 5900 6450 50  0001 C CNN
F 3 "~" H 5900 6450 50  0001 C CNN
	1    5900 6450
	0    1    1    0   
$EndComp
Connection ~ 5900 6450
$Comp
L Logic_LevelTranslator:TXS0108EPW U5
U 1 1 61A56F94
P 7750 1750
F 0 "U5" H 7750 961 50  0000 C CNN
F 1 "TXS0108EPW" H 7750 870 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 7750 1000 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/txs0108e.pdf" H 7750 1650 50  0001 C CNN
	1    7750 1750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
