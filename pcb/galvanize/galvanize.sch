EESchema Schematic File Version 4
LIBS:galvanize-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L teensy:Teensy-LC U1
U 1 1 5E4B578A
P 8200 2150
F 0 "U1" H 8225 3387 60  0000 C CNN
F 1 "Teensy-LC" H 8225 3281 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC" H 8200 1600 60  0001 C CNN
F 3 "" H 8200 1600 60  0000 C CNN
	1    8200 2150
	1    0    0    -1  
$EndComp
Text GLabel 9400 1900 2    50   Input ~ 0
VIN
Text GLabel 9400 2000 2    50   Input ~ 0
GND
Text GLabel 9400 2100 2    50   Input ~ 0
3V3
Text GLabel 9400 2200 2    50   Input ~ 0
PIN_23
Text GLabel 9400 2300 2    50   Input ~ 0
PIN_22
Text GLabel 9400 2400 2    50   Input ~ 0
PIN_21
Text GLabel 9400 2500 2    50   Input ~ 0
PIN_20
Text GLabel 9400 2600 2    50   Input ~ 0
PIN_19
Text GLabel 9400 2700 2    50   Input ~ 0
PIN_18
Text GLabel 9400 2800 2    50   Input ~ 0
PIN_17
Text GLabel 9400 2900 2    50   Input ~ 0
PIN_16
Text GLabel 9400 3000 2    50   Input ~ 0
PIN_15
Text GLabel 9400 3100 2    50   Input ~ 0
PIN_14
Text GLabel 7050 1200 0    50   Input ~ 0
GND
Text GLabel 7050 1500 0    50   Input ~ 0
PIN_2
Text GLabel 7050 1600 0    50   Input ~ 0
PIN_3
Text GLabel 7050 1700 0    50   Input ~ 0
PIN_4
Text GLabel 7050 1800 0    50   Input ~ 0
PIN_5
Text GLabel 7050 1900 0    50   Input ~ 0
PIN_6
Text GLabel 7050 2000 0    50   Input ~ 0
PIN_7
Text GLabel 7050 2100 0    50   Input ~ 0
PIN_8
Text GLabel 7050 2200 0    50   Input ~ 0
PIN_9
Text GLabel 7050 2300 0    50   Input ~ 0
PIN_10
Text GLabel 7050 2400 0    50   Input ~ 0
PIN_11
$Comp
L Connector_Generic:Conn_01x03 J15
U 1 1 5E4E3CDF
P 4450 1300
F 0 "J15" H 4368 1617 50  0000 C CNN
F 1 "L_X" H 4368 1526 50  0000 C CNN
F 2 "galvanize:PinHeader_1x03_P2.54mm_Vertical_Labeled" H 4450 1300 50  0001 C CNN
F 3 "~" H 4450 1300 50  0001 C CNN
	1    4450 1300
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J16
U 1 1 5E4E5527
P 4450 1850
F 0 "J16" H 4368 2167 50  0000 C CNN
F 1 "L_Y" H 4368 2076 50  0000 C CNN
F 2 "galvanize:PinHeader_1x03_P2.54mm_Vertical_Labeled" H 4450 1850 50  0001 C CNN
F 3 "~" H 4450 1850 50  0001 C CNN
	1    4450 1850
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J17
U 1 1 5E4E5B86
P 4450 2400
F 0 "J17" H 4368 2717 50  0000 C CNN
F 1 "R_X" H 4368 2626 50  0000 C CNN
F 2 "galvanize:PinHeader_1x03_P2.54mm_Vertical_Labeled" H 4450 2400 50  0001 C CNN
F 3 "~" H 4450 2400 50  0001 C CNN
	1    4450 2400
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J18
U 1 1 5E4E60E8
P 4450 2950
F 0 "J18" H 4368 3267 50  0000 C CNN
F 1 "R_Y" H 4368 3176 50  0000 C CNN
F 2 "galvanize:PinHeader_1x03_P2.54mm_Vertical_Labeled" H 4450 2950 50  0001 C CNN
F 3 "~" H 4450 2950 50  0001 C CNN
	1    4450 2950
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J19
U 1 1 5E4E64FA
P 4450 3500
F 0 "J19" H 4368 3817 50  0000 C CNN
F 1 "L_Tr" H 4368 3726 50  0000 C CNN
F 2 "galvanize:PinHeader_1x03_P2.54mm_Vertical_Labeled" H 4450 3500 50  0001 C CNN
F 3 "~" H 4450 3500 50  0001 C CNN
	1    4450 3500
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J20
U 1 1 5E4E68F8
P 4450 4050
F 0 "J20" H 4368 4367 50  0000 C CNN
F 1 "R_Tr" H 4368 4276 50  0000 C CNN
F 2 "galvanize:PinHeader_1x03_P2.54mm_Vertical_Labeled" H 4450 4050 50  0001 C CNN
F 3 "~" H 4450 4050 50  0001 C CNN
	1    4450 4050
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5E4E6C83
P 2100 1150
F 0 "J1" H 2018 1367 50  0000 C CNN
F 1 "RIGHT" H 2018 1276 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 2100 1150 50  0001 C CNN
F 3 "~" H 2100 1150 50  0001 C CNN
	1    2100 1150
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5E4E7C58
P 2100 1600
F 0 "J2" H 2018 1817 50  0000 C CNN
F 1 "LEFT" H 2018 1726 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 2100 1600 50  0001 C CNN
F 3 "~" H 2100 1600 50  0001 C CNN
	1    2100 1600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5E4E83A2
P 2100 2050
F 0 "J3" H 2018 2267 50  0000 C CNN
F 1 "DOWN" H 2018 2176 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 2100 2050 50  0001 C CNN
F 3 "~" H 2100 2050 50  0001 C CNN
	1    2100 2050
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5E4E8B5F
P 2100 2500
F 0 "J4" H 2018 2717 50  0000 C CNN
F 1 "UP" H 2018 2626 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 2100 2500 50  0001 C CNN
F 3 "~" H 2100 2500 50  0001 C CNN
	1    2100 2500
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5E4E9DE2
P 3150 2100
F 0 "J7" H 3068 2317 50  0000 C CNN
F 1 "B3" H 3068 2226 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 3150 2100 50  0001 C CNN
F 3 "~" H 3150 2100 50  0001 C CNN
	1    3150 2100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5E4E9DE8
P 3150 2550
F 0 "J8" H 3068 2767 50  0000 C CNN
F 1 "B4" H 3068 2676 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 3150 2550 50  0001 C CNN
F 3 "~" H 3150 2550 50  0001 C CNN
	1    3150 2550
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5E4E9DEE
P 3150 3000
F 0 "J9" H 3068 3217 50  0000 C CNN
F 1 "B5" H 3068 3126 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 3150 3000 50  0001 C CNN
F 3 "~" H 3150 3000 50  0001 C CNN
	1    3150 3000
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5E4E9DF4
P 3150 3450
F 0 "J10" H 3068 3667 50  0000 C CNN
F 1 "B6" H 3068 3576 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 3150 3450 50  0001 C CNN
F 3 "~" H 3150 3450 50  0001 C CNN
	1    3150 3450
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 5E4EAF3A
P 3150 3900
F 0 "J11" H 3068 4117 50  0000 C CNN
F 1 "B7" H 3068 4026 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 3150 3900 50  0001 C CNN
F 3 "~" H 3150 3900 50  0001 C CNN
	1    3150 3900
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 5E4EAF40
P 3150 4350
F 0 "J12" H 3068 4567 50  0000 C CNN
F 1 "B8" H 3068 4476 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 3150 4350 50  0001 C CNN
F 3 "~" H 3150 4350 50  0001 C CNN
	1    3150 4350
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 5E4EAF46
P 3150 4800
F 0 "J13" H 3068 5017 50  0000 C CNN
F 1 "B9" H 3068 4926 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 3150 4800 50  0001 C CNN
F 3 "~" H 3150 4800 50  0001 C CNN
	1    3150 4800
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 5E4EAF4C
P 3150 5250
F 0 "J14" H 3068 5467 50  0000 C CNN
F 1 "10" H 3068 5376 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 3150 5250 50  0001 C CNN
F 3 "~" H 3150 5250 50  0001 C CNN
	1    3150 5250
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5E4EB53A
P 3150 1150
F 0 "J5" H 3068 1367 50  0000 C CNN
F 1 "B1" H 3068 1276 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 3150 1150 50  0001 C CNN
F 3 "~" H 3150 1150 50  0001 C CNN
	1    3150 1150
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5E4EB540
P 3150 1600
F 0 "J6" H 3068 1817 50  0000 C CNN
F 1 "B2" H 3068 1726 50  0000 C CNN
F 2 "galvanize:PinHeader_1x02_P2.54mm_Vertical_Labeled" H 3150 1600 50  0001 C CNN
F 3 "~" H 3150 1600 50  0001 C CNN
	1    3150 1600
	-1   0    0    -1  
$EndComp
Text Notes 1650 800  0    50   ~ 0
DPad Buttons\n
Text Notes 3050 800  0    50   ~ 0
Buttons
Text Notes 4250 800  0    50   ~ 0
Joysticik Axis
Text Notes 5600 800  0    50   ~ 0
Teensy Header
Wire Notes Line
	11000 650  11000 3500
Wire Notes Line
	11000 3500 5400 3500
Wire Notes Line
	5400 5650 1600 5650
Wire Notes Line
	1600 5650 1600 650 
Wire Notes Line
	5400 650  5400 5650
Wire Notes Line
	1600 650  11000 650 
Wire Notes Line
	4150 650  4150 5650
Wire Notes Line
	2800 650  2800 5650
Text GLabel 4650 1300 2    50   Input ~ 0
3V3
Text GLabel 4650 1850 2    50   Input ~ 0
3V3
Text GLabel 4650 2400 2    50   Input ~ 0
3V3
Text GLabel 4650 2950 2    50   Input ~ 0
3V3
Text GLabel 4650 3500 2    50   Input ~ 0
3V3
Text GLabel 4650 4050 2    50   Input ~ 0
3V3
Text GLabel 4650 4150 2    50   Input ~ 0
GND
Text GLabel 4650 3600 2    50   Input ~ 0
GND
Text GLabel 4650 3050 2    50   Input ~ 0
GND
Text GLabel 4650 1400 2    50   Input ~ 0
GND
Text GLabel 4650 2500 2    50   Input ~ 0
GND
Text GLabel 4650 1950 2    50   Input ~ 0
GND
Text GLabel 3350 1250 2    50   Input ~ 0
GND
Text GLabel 3350 1700 2    50   Input ~ 0
GND
Text GLabel 3350 2200 2    50   Input ~ 0
GND
Text GLabel 3350 2650 2    50   Input ~ 0
GND
Text GLabel 3350 3100 2    50   Input ~ 0
GND
Text GLabel 2300 1250 2    50   Input ~ 0
GND
Text GLabel 2300 1700 2    50   Input ~ 0
GND
Text GLabel 2300 2150 2    50   Input ~ 0
GND
Text GLabel 2300 2600 2    50   Input ~ 0
GND
Text GLabel 3350 3550 2    50   Input ~ 0
GND
Text GLabel 3350 4000 2    50   Input ~ 0
GND
Text GLabel 3350 4450 2    50   Input ~ 0
GND
Text GLabel 3350 4900 2    50   Input ~ 0
GND
Text GLabel 3350 5350 2    50   Input ~ 0
GND
Text GLabel 4650 1200 2    50   Input ~ 0
PIN_14
Text GLabel 4650 1750 2    50   Input ~ 0
PIN_15
Text GLabel 4650 2300 2    50   Input ~ 0
PIN_16
Text GLabel 4650 2850 2    50   Input ~ 0
PIN_17
Text GLabel 4650 3400 2    50   Input ~ 0
PIN_18
Text GLabel 4650 3950 2    50   Input ~ 0
PIN_19
Text GLabel 2300 1150 2    50   Input ~ 0
PIN_20
Text GLabel 2300 1600 2    50   Input ~ 0
PIN_21
Text GLabel 2300 2050 2    50   Input ~ 0
PIN_22
Text GLabel 2300 2500 2    50   Input ~ 0
PIN_23
Text GLabel 3350 1150 2    50   Input ~ 0
PIN_2
Text GLabel 3350 1600 2    50   Input ~ 0
PIN_3
Text GLabel 3350 2100 2    50   Input ~ 0
PIN_4
$Comp
L Device:C C1
U 1 1 5E4E439C
P 10200 1000
F 0 "C1" V 9948 1000 50  0000 C CNN
F 1 "C" V 10039 1000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10238 850 50  0001 C CNN
F 3 "~" H 10200 1000 50  0001 C CNN
	1    10200 1000
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E4E59AE
P 10200 1400
F 0 "C2" V 9948 1400 50  0000 C CNN
F 1 "C" V 10039 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10238 1250 50  0001 C CNN
F 3 "~" H 10200 1400 50  0001 C CNN
	1    10200 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 1000 10350 1200
Wire Wire Line
	10050 1000 10050 1200
Text GLabel 9950 1200 0    50   Input ~ 0
VIN
Text GLabel 10450 1200 2    50   Input ~ 0
GND
Wire Wire Line
	10450 1200 10350 1200
Connection ~ 10350 1200
Wire Wire Line
	10350 1200 10350 1400
Wire Wire Line
	9950 1200 10050 1200
Connection ~ 10050 1200
Wire Wire Line
	10050 1200 10050 1400
Text Notes 7450 7500 0    50   ~ 0
Galvanize: Teesnsy based USB xinput joystick board
Text GLabel 3350 2550 2    50   Input ~ 0
PIN_5
Text GLabel 3350 3000 2    50   Input ~ 0
PIN_6
Text GLabel 3350 3450 2    50   Input ~ 0
PIN_7
Text GLabel 3350 3900 2    50   Input ~ 0
PIN_8
Text GLabel 3350 4350 2    50   Input ~ 0
PIN_9
Text GLabel 3350 4800 2    50   Input ~ 0
PIN_10
Text GLabel 3350 5250 2    50   Input ~ 0
PIN_11
NoConn ~ 7050 2600
NoConn ~ 7050 2700
NoConn ~ 7050 2800
NoConn ~ 7050 2900
NoConn ~ 7050 3000
NoConn ~ 9400 1200
NoConn ~ 9400 1300
NoConn ~ 9400 1500
NoConn ~ 9400 1600
NoConn ~ 9400 1700
NoConn ~ 9400 1800
$Comp
L Device:C C3
U 1 1 5E51FE8C
P 10200 1900
F 0 "C3" V 9948 1900 50  0000 C CNN
F 1 "C" V 10039 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10238 1750 50  0001 C CNN
F 3 "~" H 10200 1900 50  0001 C CNN
	1    10200 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 1400 10350 1900
Connection ~ 10350 1400
Text GLabel 10050 1900 0    50   Input ~ 0
3V3
NoConn ~ 7050 2500
NoConn ~ 7050 3100
NoConn ~ 7050 1400
NoConn ~ 7050 1300
$Comp
L power:GND #PWR0101
U 1 1 5E5227E1
P 10350 2200
F 0 "#PWR0101" H 10350 1950 50  0001 C CNN
F 1 "GND" H 10355 2027 50  0000 C CNN
F 2 "" H 10350 2200 50  0001 C CNN
F 3 "" H 10350 2200 50  0001 C CNN
	1    10350 2200
	1    0    0    -1  
$EndComp
Connection ~ 10350 1900
Wire Wire Line
	10350 1900 10350 2200
$EndSCHEMATC
