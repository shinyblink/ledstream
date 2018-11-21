EESchema Schematic File Version 4
LIBS:bx-hub75-cache
EELAYER 26 0
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
L TinyFPGA:Bx FPGA1
U 1 1 5BEC8AD8
P 2850 2850
F 0 "FPGA1" H 2850 1985 50  0000 C CNN
F 1 "Bx" H 2850 2076 50  0000 C CNN
F 2 "TinyFPGA:TinyFPGA_BX" H 3000 3550 50  0001 C CNN
F 3 "" H 3000 3550 50  0001 C CNN
	1    2850 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5BEC8DA7
P 3450 3500
F 0 "#PWR0101" H 3450 3250 50  0001 C CNN
F 1 "GND" H 3455 3327 50  0000 C CNN
F 2 "" H 3450 3500 50  0001 C CNN
F 3 "" H 3450 3500 50  0001 C CNN
	1    3450 3500
	1    0    0    -1  
$EndComp
$Comp
L Random:HUB75_HEADER CHAIN1
U 1 1 5BECA4C1
P 6350 3000
F 0 "CHAIN1" H 6350 3575 50  0000 C CNN
F 1 "HUB75_HEADER" H 6350 3484 50  0000 C CNN
F 2 "Random:HUB75_HEADER" H 6350 2550 50  0001 C CNN
F 3 "" H 6350 2550 50  0001 C CNN
	1    6350 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BECBFC3
P 6850 3500
F 0 "#PWR0102" H 6850 3250 50  0001 C CNN
F 1 "GND" H 6855 3327 50  0000 C CNN
F 2 "" H 6850 3500 50  0001 C CNN
F 3 "" H 6850 3500 50  0001 C CNN
	1    6850 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5BECC23F
P 7600 1900
F 0 "#PWR0103" H 7600 1650 50  0001 C CNN
F 1 "GND" H 7605 1727 50  0000 C CNN
F 2 "" H 7600 1900 50  0001 C CNN
F 3 "" H 7600 1900 50  0001 C CNN
	1    7600 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	7600 1950 7600 1900
$Comp
L power:GND #PWR0104
U 1 1 5BECD616
P 5100 4000
F 0 "#PWR0104" H 5100 3750 50  0001 C CNN
F 1 "GND" H 5105 3827 50  0000 C CNN
F 2 "" H 5100 4000 50  0001 C CNN
F 3 "" H 5100 4000 50  0001 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4000 5100 4000
Wire Wire Line
	4600 3650 4600 4000
Wire Wire Line
	5100 3950 5100 4000
Connection ~ 5100 4000
Wire Wire Line
	3450 3500 3450 3450
Wire Wire Line
	3450 3450 3350 3450
$Comp
L power:+5V #PWR0105
U 1 1 5BED3C1C
P 2100 3550
F 0 "#PWR0105" H 2100 3400 50  0001 C CNN
F 1 "+5V" H 2115 3723 50  0000 C CNN
F 2 "" H 2100 3550 50  0001 C CNN
F 3 "" H 2100 3550 50  0001 C CNN
	1    2100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3550 2350 3550
Wire Wire Line
	2350 3550 2350 3450
Wire Wire Line
	6850 3350 6750 3350
Wire Wire Line
	5600 2650 5950 2650
Wire Wire Line
	5950 2750 5600 2750
Wire Wire Line
	5600 2850 5950 2850
Wire Wire Line
	5950 2950 5600 2950
Wire Wire Line
	5600 3050 5950 3050
Wire Wire Line
	5950 3150 5600 3150
Wire Wire Line
	5600 3250 5950 3250
Wire Wire Line
	5950 3350 5600 3350
$Comp
L power:+5V #PWR0106
U 1 1 5BEDB440
P 4750 2350
F 0 "#PWR0106" H 4750 2200 50  0001 C CNN
F 1 "+5V" H 4765 2523 50  0000 C CNN
F 2 "" H 4750 2350 50  0001 C CNN
F 3 "" H 4750 2350 50  0001 C CNN
	1    4750 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5BEDB676
P 7950 3550
F 0 "#PWR0107" H 7950 3400 50  0001 C CNN
F 1 "+5V" H 7965 3723 50  0000 C CNN
F 2 "" H 7950 3550 50  0001 C CNN
F 3 "" H 7950 3550 50  0001 C CNN
	1    7950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3550 7600 3550
Wire Wire Line
	5100 2350 4750 2350
Wire Wire Line
	8100 2250 8100 1900
Wire Wire Line
	8100 1900 7600 1900
Connection ~ 7600 1900
Text Label 4450 2650 2    50   ~ 10
R1
Text Label 4450 2750 2    50   ~ 10
B1
Text Label 4450 2850 2    50   ~ 10
R2
Text Label 4450 2950 2    50   ~ 10
B2
Text Label 4450 3050 2    50   ~ 10
A
Text Label 4450 3150 2    50   ~ 10
C
Text Label 4450 3250 2    50   ~ 10
CLK
Text Label 4450 3350 2    50   ~ 10
OE
Wire Wire Line
	4600 2650 4450 2650
Wire Wire Line
	4600 2750 4450 2750
Wire Wire Line
	4450 2850 4600 2850
Wire Wire Line
	4600 2950 4450 2950
Wire Wire Line
	4450 3050 4600 3050
Wire Wire Line
	4600 3150 4450 3150
Wire Wire Line
	4450 3250 4600 3250
Wire Wire Line
	4600 3350 4450 3350
Wire Wire Line
	6850 3350 6850 2950
Wire Wire Line
	6850 2750 6750 2750
Wire Wire Line
	6750 2950 6850 2950
Connection ~ 6850 2950
Wire Wire Line
	6850 2950 6850 2750
Wire Wire Line
	7100 3250 6750 3250
Wire Wire Line
	7100 3150 6750 3150
Wire Wire Line
	7100 3050 6750 3050
Wire Wire Line
	7100 2950 6950 2950
Wire Wire Line
	6950 2950 6950 2900
Wire Wire Line
	6950 2900 6750 2900
Wire Wire Line
	6750 2900 6750 2850
Wire Wire Line
	7100 2850 6950 2850
Wire Wire Line
	6950 2650 6750 2650
Wire Wire Line
	6950 2650 6950 2850
Text Label 8300 3250 0    50   ~ 10
LAT
Text Label 8300 3150 0    50   ~ 10
D
Text Label 8300 3050 0    50   ~ 10
B
Text Label 8300 2950 0    50   ~ 10
G2
Text Label 8300 2850 0    50   ~ 10
G1
Wire Wire Line
	8300 3250 8100 3250
Wire Wire Line
	8300 3150 8100 3150
Wire Wire Line
	8300 3050 8100 3050
Wire Wire Line
	8300 2950 8100 2950
Wire Wire Line
	8300 2850 8100 2850
Wire Wire Line
	6850 3350 6850 3500
Connection ~ 6850 3350
Text Label 3350 3350 0    50   ~ 10
OE
Text Label 3350 3250 0    50   ~ 10
CLK
Text Label 3350 3150 0    50   ~ 10
C
Text Label 3350 3050 0    50   ~ 10
A
Text Label 3350 2950 0    50   ~ 10
B2
Text Label 3350 2850 0    50   ~ 10
R2
Text Label 3350 2750 0    50   ~ 10
B1
Text Label 3350 2650 0    50   ~ 10
R1
Text Label 3350 2550 0    50   ~ 10
LAT
Text Label 3350 2450 0    50   ~ 10
D
Text Label 3350 2350 0    50   ~ 10
B
Text Label 3350 2250 0    50   ~ 10
G2
Text Label 3350 2150 0    50   ~ 10
G1
$Comp
L Random:SN65HVD77D U5
U 1 1 5BECF5D6
P 7600 5150
F 0 "U5" H 7600 5525 50  0000 C CNN
F 1 "SN65HVD77D" H 7600 5434 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7600 4900 50  0001 C CNN
F 3 "" H 7600 4900 50  0001 C CNN
	1    7600 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5BECFBC2
P 7200 5300
F 0 "#PWR0108" H 7200 5050 50  0001 C CNN
F 1 "GND" H 7205 5127 50  0000 C CNN
F 2 "" H 7200 5300 50  0001 C CNN
F 3 "" H 7200 5300 50  0001 C CNN
	1    7200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5300 7300 5300
Wire Wire Line
	7200 5000 7300 5000
Text Label 7300 5100 2    50   ~ 0
RX
Text Label 7300 5200 2    50   ~ 0
TX
$Comp
L Connector:DB9_Male J1
U 1 1 5BED180D
P 9000 5100
F 0 "J1" H 9180 5146 50  0000 L CNN
F 1 "DB9_Male" H 9180 5055 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset4.94mm_Housed_MountingHolesOffset7.48mm" H 9000 5100 50  0001 C CNN
F 3 " ~" H 9000 5100 50  0001 C CNN
	1    9000 5100
	1    0    0    -1  
$EndComp
Text Label 7900 5000 0    50   ~ 0
RX+
Text Label 7900 5100 0    50   ~ 0
RX-
Text Label 7900 5200 0    50   ~ 0
TX+
Text Label 7900 5300 0    50   ~ 0
TX-
Text Label 8700 5500 2    50   ~ 0
RX-
Text Label 8700 5300 2    50   ~ 0
RX+
Text Label 8700 5100 2    50   ~ 0
TX+
Text Label 8700 4900 2    50   ~ 0
TX-
$Comp
L power:GND #PWR0109
U 1 1 5BEDE34B
P 8400 4700
F 0 "#PWR0109" H 8400 4450 50  0001 C CNN
F 1 "GND" H 8405 4527 50  0000 C CNN
F 2 "" H 8400 4700 50  0001 C CNN
F 3 "" H 8400 4700 50  0001 C CNN
	1    8400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4700 8700 4700
$Comp
L Device:R R1
U 1 1 5BEE0AE3
P 8200 5400
F 0 "R1" H 8270 5446 50  0000 L CNN
F 1 "120" H 8270 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 8130 5400 50  0001 C CNN
F 3 "~" H 8200 5400 50  0001 C CNN
	1    8200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5300 8450 5300
Wire Wire Line
	8450 5300 8450 5250
Wire Wire Line
	8450 5250 8200 5250
Wire Wire Line
	8200 5550 8450 5550
Wire Wire Line
	8450 5550 8450 5500
Wire Wire Line
	8450 5500 8700 5500
Text Label 2350 2150 2    50   ~ 0
TX
Text Label 2350 2250 2    50   ~ 0
RX
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U3
U 1 1 5BEF264A
P 2850 5000
F 0 "U3" H 2850 5242 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 2850 5151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2850 5200 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 2950 4750 50  0001 C CNN
	1    2850 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5BEF2B74
P 2300 5000
F 0 "#PWR0110" H 2300 4850 50  0001 C CNN
F 1 "+5V" H 2315 5173 50  0000 C CNN
F 2 "" H 2300 5000 50  0001 C CNN
F 3 "" H 2300 5000 50  0001 C CNN
	1    2300 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5BEF2BC3
P 2850 5400
F 0 "#PWR0111" H 2850 5150 50  0001 C CNN
F 1 "GND" H 2855 5227 50  0000 C CNN
F 2 "" H 2850 5400 50  0001 C CNN
F 3 "" H 2850 5400 50  0001 C CNN
	1    2850 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5300 2850 5400
Wire Wire Line
	2550 5000 2300 5000
$Comp
L power:+3V3 #PWR0112
U 1 1 5BEF8C03
P 3400 5000
F 0 "#PWR0112" H 3400 4850 50  0001 C CNN
F 1 "+3V3" H 3415 5173 50  0000 C CNN
F 2 "" H 3400 5000 50  0001 C CNN
F 3 "" H 3400 5000 50  0001 C CNN
	1    3400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5000 3150 5000
$Comp
L Memory_EEPROM:25LCxxx U4
U 1 1 5BF300CE
P 5100 5100
F 0 "U4" H 5100 5578 50  0000 C CNN
F 1 "25LCxxx" H 5100 5487 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5100 5100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21832H.pdf" H 5100 5100 50  0001 C CNN
	1    5100 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5BF30EFA
P 5100 5500
F 0 "#PWR0113" H 5100 5250 50  0001 C CNN
F 1 "GND" H 5105 5327 50  0000 C CNN
F 2 "" H 5100 5500 50  0001 C CNN
F 3 "" H 5100 5500 50  0001 C CNN
	1    5100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5400 5100 5500
$Comp
L power:+3V3 #PWR0114
U 1 1 5BF3331A
P 7200 5000
F 0 "#PWR0114" H 7200 4850 50  0001 C CNN
F 1 "+3V3" H 7215 5173 50  0000 C CNN
F 2 "" H 7200 5000 50  0001 C CNN
F 3 "" H 7200 5000 50  0001 C CNN
	1    7200 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 5BF33357
P 5500 4800
F 0 "#PWR0115" H 5500 4650 50  0001 C CNN
F 1 "+3V3" H 5515 4973 50  0000 C CNN
F 2 "" H 5500 4800 50  0001 C CNN
F 3 "" H 5500 4800 50  0001 C CNN
	1    5500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4800 5100 4800
Text Label 4600 5200 2    50   ~ 0
CS_EEPROM
Wire Wire Line
	4700 5200 4600 5200
Text Label 5600 5000 0    50   ~ 0
SCK
Text Label 5600 5100 0    50   ~ 0
MOSI
Text Label 5600 5200 0    50   ~ 0
MISO
Wire Wire Line
	5600 5200 5500 5200
Wire Wire Line
	5500 5100 5600 5100
Wire Wire Line
	5600 5000 5500 5000
Wire Wire Line
	4700 5000 4700 4800
Wire Wire Line
	4700 4800 5100 4800
Connection ~ 5100 4800
Wire Wire Line
	4700 5100 4700 5000
Connection ~ 4700 5000
Text Label 2350 2350 2    50   ~ 0
MOSI
Text Label 2350 2450 2    50   ~ 0
SCK
Text Label 2350 2550 2    50   ~ 0
MISO
Text Label 2350 2650 2    50   ~ 0
CS_EEPROM
$Comp
L Device:C C1
U 1 1 5BF3FDFE
P 2300 5150
F 0 "C1" H 2415 5196 50  0000 L CNN
F 1 "330uF" H 2415 5105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 2338 5000 50  0001 C CNN
F 3 "~" H 2300 5150 50  0001 C CNN
	1    2300 5150
	1    0    0    -1  
$EndComp
Connection ~ 2300 5000
Wire Wire Line
	2300 5300 2850 5300
Connection ~ 2850 5300
$Comp
L Device:C C2
U 1 1 5BF41834
P 3400 5150
F 0 "C2" H 3515 5196 50  0000 L CNN
F 1 "100uF" H 3515 5105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 3438 5000 50  0001 C CNN
F 3 "~" H 3400 5150 50  0001 C CNN
	1    3400 5150
	1    0    0    -1  
$EndComp
Connection ~ 3400 5000
Wire Wire Line
	3400 5300 2850 5300
$Comp
L 74xx:74HCT541 U1
U 1 1 5BF5EC63
P 5100 3150
F 0 "U1" H 5100 4128 50  0000 C CNN
F 1 "74HCT541" H 5100 4037 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 5100 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT541" H 5100 3150 50  0001 C CNN
	1    5100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3550 4600 3650
Connection ~ 4600 3650
$Comp
L 74xx:74HCT541 U2
U 1 1 5BF6300B
P 7600 2750
F 0 "U2" H 7600 1772 50  0000 C CNN
F 1 "74HCT541" H 7600 1863 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 7600 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT541" H 7600 2750 50  0001 C CNN
	1    7600 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 2350 8100 2250
Connection ~ 8100 2250
$EndSCHEMATC
