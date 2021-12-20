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
Text GLabel 3300 1800 2    50   Input ~ 0
D4_3V3
Text GLabel 3300 2100 2    50   Input ~ 0
D7_3V3
Text GLabel 3300 1900 2    50   Input ~ 0
D5_3V3
Text GLabel 4250 1850 0    50   Input ~ 0
D4_3V3
Text GLabel 4250 2050 0    50   Input ~ 0
D7_3V3
Text GLabel 4250 2150 0    50   Input ~ 0
D5_3V3
Text GLabel 4250 2250 0    50   Input ~ 0
D0_3V3
Text GLabel 3300 1400 2    50   Input ~ 0
D0_3V3
Text GLabel 3300 1600 2    50   Input ~ 0
D2_3V3
Text GLabel 4250 2350 0    50   Input ~ 0
D2_3V3
Text GLabel 4250 2450 0    50   Input ~ 0
D1_3V3
Text GLabel 3300 1500 2    50   Input ~ 0
D1_3V3
Text GLabel 4250 2650 0    50   Input ~ 0
A0_3V3
Text GLabel 2300 3550 0    50   Input ~ 0
A0_3V3
Text GLabel 2300 3650 0    50   Input ~ 0
A1_3V3
Text GLabel 4250 2750 0    50   Input ~ 0
A1_3V3
Text GLabel 2300 1800 0    50   Input ~ 0
D4_5V
Text GLabel 2300 2100 0    50   Input ~ 0
D7_5V
Text GLabel 2300 1900 0    50   Input ~ 0
D5_5V
Text GLabel 2300 1400 0    50   Input ~ 0
D0_5V
Text GLabel 2300 1600 0    50   Input ~ 0
D2_5V
Text GLabel 2300 1500 0    50   Input ~ 0
D1_5V
Text GLabel 3300 3550 2    50   Input ~ 0
A0_5V
Text GLabel 3300 3650 2    50   Input ~ 0
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
P 5900 6650
F 0 "#PWR0112" H 5900 6500 50  0001 C CNN
F 1 "+5V" H 5850 6800 50  0000 L CNN
F 2 "" H 5900 6650 50  0001 C CNN
F 3 "" H 5900 6650 50  0001 C CNN
	1    5900 6650
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 61B58CD7
P 2800 1100
F 0 "#PWR0114" H 2800 950 50  0001 C CNN
F 1 "+5V" V 2815 1273 50  0000 C CNN
F 2 "" H 2800 1100 50  0001 C CNN
F 3 "" H 2800 1100 50  0001 C CNN
	1    2800 1100
	0    1    1    0   
$EndComp
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
Text GLabel 3300 2000 2    50   Input ~ 0
D6_3V3
Text GLabel 2300 2000 0    50   Input ~ 0
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
Text GLabel 7350 1750 0    50   Input ~ 0
A11_3V3
Text GLabel 7350 1650 0    50   Input ~ 0
A10_3V3
Text GLabel 7350 1950 0    50   Input ~ 0
A13_3V3
Text GLabel 7350 1850 0    50   Input ~ 0
A12_3V3
Text GLabel 2300 3750 0    50   Input ~ 0
A2_3V3
Text GLabel 2300 3850 0    50   Input ~ 0
A3_3V3
Text GLabel 7350 1450 0    50   Input ~ 0
A8_3V3
Text GLabel 7350 1550 0    50   Input ~ 0
A9_3V3
Text GLabel 8350 1750 2    50   Input ~ 0
A11_5V
Text GLabel 8350 1650 2    50   Input ~ 0
A10_5V
Text GLabel 8350 1950 2    50   Input ~ 0
A13_5V
Text GLabel 8350 1850 2    50   Input ~ 0
A12_5V
Text GLabel 3300 3750 2    50   Input ~ 0
A2_5V
Text GLabel 3300 3850 2    50   Input ~ 0
A3_5V
Text GLabel 8350 1450 2    50   Input ~ 0
A8_5V
Text GLabel 8350 1550 2    50   Input ~ 0
A9_5V
Text GLabel 7350 2050 0    50   Input ~ 0
A14_3V3
Text GLabel 7350 2150 0    50   Input ~ 0
A15_3V3
Text GLabel 2300 4150 0    50   Input ~ 0
A6_3V3
Text GLabel 2300 4250 0    50   Input ~ 0
A7_3V3
Text GLabel 3300 1700 2    50   Input ~ 0
D3_3V3
Text GLabel 2300 3950 0    50   Input ~ 0
A4_3V3
Text GLabel 2300 4050 0    50   Input ~ 0
A5_3V3
Text GLabel 3300 4050 2    50   Input ~ 0
A5_5V
Text GLabel 3300 3950 2    50   Input ~ 0
A4_5V
Text GLabel 2300 1700 0    50   Input ~ 0
D3_5V
Text GLabel 3300 4250 2    50   Input ~ 0
A7_5V
Text GLabel 3300 4150 2    50   Input ~ 0
A6_5V
Text GLabel 8350 2150 2    50   Input ~ 0
A15_5V
Text GLabel 8350 2050 2    50   Input ~ 0
A14_5V
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
L power:GND #PWR0103
U 1 1 61B6B98A
P 2800 2700
F 0 "#PWR0103" H 2800 2450 50  0001 C CNN
F 1 "GND" H 2805 2527 50  0000 C CNN
F 2 "" H 2800 2700 50  0001 C CNN
F 3 "" H 2800 2700 50  0001 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
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
$Comp
L 74xx:74HC245 U2
U 1 1 61BFF42A
P 2800 1900
F 0 "U2" H 2800 2881 50  0000 C CNN
F 1 "74HC245" H 2800 2790 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 2800 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 2800 1900 50  0001 C CNN
	1    2800 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U3
U 1 1 61C044A4
P 2800 4050
F 0 "U3" H 2800 5031 50  0000 C CNN
F 1 "74HC245" H 2800 4940 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 2800 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 2800 4050 50  0001 C CNN
	1    2800 4050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U4
U 1 1 61C0A79A
P 7850 1950
F 0 "U4" H 7850 2931 50  0000 C CNN
F 1 "74HC245" H 7850 2840 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 7850 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 7850 1950 50  0001 C CNN
	1    7850 1950
	1    0    0    -1  
$EndComp
Text GLabel 7350 3550 0    50   Input ~ 0
A16_3V3
Text GLabel 7350 3650 0    50   Input ~ 0
A17_3V3
Text GLabel 8350 3550 2    50   Input ~ 0
A16_5V
Text GLabel 8350 3650 2    50   Input ~ 0
A17_5V
$Comp
L power:GND #PWR0101
U 1 1 61C10C6A
P 2800 4850
F 0 "#PWR0101" H 2800 4600 50  0001 C CNN
F 1 "GND" H 2805 4677 50  0000 C CNN
F 2 "" H 2800 4850 50  0001 C CNN
F 3 "" H 2800 4850 50  0001 C CNN
	1    2800 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61C11276
P 7850 2750
F 0 "#PWR0102" H 7850 2500 50  0001 C CNN
F 1 "GND" H 7855 2577 50  0000 C CNN
F 2 "" H 7850 2750 50  0001 C CNN
F 3 "" H 7850 2750 50  0001 C CNN
	1    7850 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61C117F6
P 7850 4850
F 0 "#PWR0104" H 7850 4600 50  0001 C CNN
F 1 "GND" H 7855 4677 50  0000 C CNN
F 2 "" H 7850 4850 50  0001 C CNN
F 3 "" H 7850 4850 50  0001 C CNN
	1    7850 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 61C11FE4
P 2800 3250
F 0 "#PWR0108" H 2800 3100 50  0001 C CNN
F 1 "+3.3V" V 2815 3378 50  0000 L CNN
F 2 "" H 2800 3250 50  0001 C CNN
F 3 "" H 2800 3250 50  0001 C CNN
	1    2800 3250
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 61C12CCA
P 7850 3250
F 0 "#PWR0109" H 7850 3100 50  0001 C CNN
F 1 "+3.3V" V 7865 3378 50  0000 L CNN
F 2 "" H 7850 3250 50  0001 C CNN
F 3 "" H 7850 3250 50  0001 C CNN
	1    7850 3250
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 61C1329C
P 7850 1150
F 0 "#PWR0110" H 7850 1000 50  0001 C CNN
F 1 "+3.3V" V 7865 1278 50  0000 L CNN
F 2 "" H 7850 1150 50  0001 C CNN
F 3 "" H 7850 1150 50  0001 C CNN
	1    7850 1150
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 61C14256
P 3600 2550
F 0 "#PWR0105" H 3600 2400 50  0001 C CNN
F 1 "+3.3V" H 3615 2723 50  0000 C CNN
F 2 "" H 3600 2550 50  0001 C CNN
F 3 "" H 3600 2550 50  0001 C CNN
	1    3600 2550
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC245 U5
U 1 1 61C0D6BD
P 7850 4050
F 0 "U5" H 7850 5031 50  0000 C CNN
F 1 "74HC245" H 7850 4940 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 7850 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 7850 4050 50  0001 C CNN
	1    7850 4050
	1    0    0    -1  
$EndComp
NoConn ~ 7350 4050
NoConn ~ 7350 4150
NoConn ~ 7350 4250
NoConn ~ 8350 4250
NoConn ~ 8350 4150
NoConn ~ 8350 4050
Text GLabel 5600 5450 2    50   Input ~ 0
CE_5V
Text GLabel 5600 5650 2    50   Input ~ 0
OE_5V
Text GLabel 8350 3850 2    50   Input ~ 0
CE_5V
Text GLabel 7350 3850 0    50   Input ~ 0
CE_3V3
Text GLabel 5600 6350 2    50   Input ~ 0
PGM_5V
Text GLabel 7350 3950 0    50   Input ~ 0
PGM_3V3
Text GLabel 8350 3950 2    50   Input ~ 0
PGM_5V
Text GLabel 6450 3450 2    50   Input ~ 0
PGM_3V3
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
Text GLabel 6450 3350 2    50   Input ~ 0
CE_3V3
Wire Wire Line
	5100 6450 5100 6550
Wire Wire Line
	5100 6550 5900 6550
Wire Wire Line
	5900 6450 5900 6550
Connection ~ 5900 6550
Connection ~ 5900 6450
Wire Wire Line
	5900 6550 5900 6650
Wire Wire Line
	2800 2700 2150 2700
Wire Wire Line
	2150 2700 2150 2300
Wire Wire Line
	2150 2300 2300 2300
Connection ~ 2800 2700
Wire Wire Line
	7850 2750 7350 2750
Wire Wire Line
	7200 2750 7200 2350
Wire Wire Line
	7200 2350 7350 2350
Connection ~ 7850 2750
Wire Wire Line
	7850 4850 7350 4850
Wire Wire Line
	7200 4850 7200 4450
Wire Wire Line
	7200 4450 7350 4450
Connection ~ 7850 4850
Wire Wire Line
	2800 4850 2300 4850
Wire Wire Line
	2150 4850 2150 4450
Wire Wire Line
	2150 4450 2300 4450
Connection ~ 2800 4850
Wire Wire Line
	7350 4550 7350 4850
Connection ~ 7350 4850
Wire Wire Line
	7350 4850 7200 4850
Wire Wire Line
	7350 2450 7350 2750
Connection ~ 7350 2750
Wire Wire Line
	7350 2750 7200 2750
Wire Wire Line
	2300 4550 2300 4850
Connection ~ 2300 4850
Wire Wire Line
	2300 4850 2150 4850
Text GLabel 2300 2400 0    50   Input ~ 0
OE_5V
NoConn ~ 6450 3250
NoConn ~ 8350 3750
NoConn ~ 7350 3750
$EndSCHEMATC
