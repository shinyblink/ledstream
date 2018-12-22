EESchema Schematic File Version 4
LIBS:bx-pihat-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "15 nov 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR01
U 1 1 580C1B61
P 3100 950
F 0 "#PWR01" H 3100 800 50  0001 C CNN
F 1 "+5V" H 3100 1090 50  0000 C CNN
F 2 "" H 3100 950 50  0000 C CNN
F 3 "" H 3100 950 50  0000 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 950  3100 1100
Wire Wire Line
	3100 1100 2900 1100
Wire Wire Line
	3100 1200 2900 1200
Connection ~ 3100 1100
$Comp
L power:GND #PWR02
U 1 1 580C1D11
P 3000 3150
F 0 "#PWR02" H 3000 2900 50  0001 C CNN
F 1 "GND" H 3000 3000 50  0000 C CNN
F 2 "" H 3000 3150 50  0000 C CNN
F 3 "" H 3000 3150 50  0000 C CNN
	1    3000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1300 3000 1700
Wire Wire Line
	3000 2700 2900 2700
Wire Wire Line
	3000 2500 2900 2500
Connection ~ 3000 2700
Wire Wire Line
	3000 2000 2900 2000
Connection ~ 3000 2500
Wire Wire Line
	3000 1700 2900 1700
Connection ~ 3000 2000
$Comp
L power:GND #PWR03
U 1 1 580C1E01
P 2300 3150
F 0 "#PWR03" H 2300 2900 50  0001 C CNN
F 1 "GND" H 2300 3000 50  0000 C CNN
F 2 "" H 2300 3150 50  0000 C CNN
F 3 "" H 2300 3150 50  0000 C CNN
	1    2300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3000 2400 3000
Wire Wire Line
	2300 1500 2300 2300
Wire Wire Line
	2300 2300 2400 2300
Connection ~ 2300 3000
Wire Wire Line
	2300 1500 2400 1500
Connection ~ 2300 2300
Wire Wire Line
	2400 1200 1250 1200
Wire Wire Line
	1250 1300 2400 1300
Wire Wire Line
	1250 1400 2400 1400
Wire Wire Line
	2400 1600 1250 1600
Wire Wire Line
	1250 1700 2400 1700
Wire Wire Line
	1250 1800 2400 1800
Wire Wire Line
	2400 2000 1250 2000
Wire Wire Line
	1250 2100 2400 2100
Wire Wire Line
	1250 2200 2400 2200
Wire Wire Line
	2400 2400 1250 2400
Wire Wire Line
	1250 2500 2400 2500
Wire Wire Line
	1250 2600 2400 2600
Wire Wire Line
	2400 2700 1250 2700
Wire Wire Line
	1250 2800 2400 2800
Wire Wire Line
	1250 2900 2400 2900
Wire Wire Line
	2900 2800 3950 2800
Wire Wire Line
	2900 2900 3950 2900
Wire Wire Line
	2900 2300 3950 2300
Wire Wire Line
	2900 2400 3950 2400
Wire Wire Line
	2900 2100 3950 2100
Wire Wire Line
	2900 2200 3950 2200
Wire Wire Line
	2900 1800 3950 1800
Wire Wire Line
	2900 1900 3950 1900
Wire Wire Line
	2900 1500 3950 1500
Wire Wire Line
	2900 1600 3950 1600
Wire Wire Line
	2900 1400 3950 1400
Wire Wire Line
	2900 2600 3950 2600
Text Label 1250 1200 0    50   ~ 0
GPIO2(SDA1)
Text Label 1250 1300 0    50   ~ 0
GPIO3(SCL1)
Text Label 1250 1400 0    50   ~ 0
GPIO4(GCLK)
Text Label 1250 1600 0    50   ~ 0
GPIO17(GEN0)
Text Label 1250 1700 0    50   ~ 0
GPIO27(GEN2)
Text Label 1250 1800 0    50   ~ 0
GPIO22(GEN3)
Text Label 1250 2000 0    50   ~ 0
GPIO10(SPI0_MOSI)
Text Label 1250 2100 0    50   ~ 0
GPIO9(SPI0_MISO)
Text Label 1250 2200 0    50   ~ 0
GPIO11(SPI0_SCK)
Text Label 1250 2400 0    50   ~ 0
ID_SD
Text Label 1250 2500 0    50   ~ 0
GPIO5
Text Label 1250 2600 0    50   ~ 0
GPIO6
Text Label 1250 2700 0    50   ~ 0
GPIO13(PWM1)
Text Label 1250 2800 0    50   ~ 0
GPIO19(SPI1_MISO)
Text Label 1250 2900 0    50   ~ 0
GPIO26
Text Label 3950 2900 2    50   ~ 0
GPIO20(SPI1_MOSI)
Text Label 3950 2800 2    50   ~ 0
GPIO16
Text Label 3950 2600 2    50   ~ 0
GPIO12(PWM0)
Text Label 3950 2400 2    50   ~ 0
ID_SC
Text Label 3950 2300 2    50   ~ 0
GPIO7(SPI1_CE_N)
Text Label 3950 2200 2    50   ~ 0
GPIO8(SPI0_CE_N)
Text Label 3950 2100 2    50   ~ 0
GPIO25(GEN6)
Text Label 3950 1900 2    50   ~ 0
GPIO24(GEN5)
Text Label 3950 1800 2    50   ~ 0
GPIO23(GEN4)
Text Label 3950 1600 2    50   ~ 0
GPIO18(GEN1)(PWM0)
Text Label 3950 1500 2    50   ~ 0
GPIO15(RXD0)
Text Label 3950 1400 2    50   ~ 0
GPIO14(TXD0)
Wire Wire Line
	3000 1300 2900 1300
Connection ~ 3000 1700
Text Notes 650  7600 0    50   ~ 0
ID_SD and ID_SC PINS:\nThese pins are reserved for HAT ID EEPROM.\n\nAt boot time this I2C interface will be\ninterrogated to look for an EEPROM\nthat identifes the attached board and\nallows automagic setup of the GPIOs\n(and optionally, Linux drivers).\n\nDO NOT USE these pins for anything other\nthan attaching an I2C ID EEPROM. Leave\nunconnected if ID EEPROM not required.
$Comp
L Mechanical:MountingHole MK1
U 1 1 5834FB2E
P 3000 7200
F 0 "MK1" H 3100 7246 50  0000 L CNN
F 1 "M2.5" H 3100 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3000 7200 60  0001 C CNN
F 3 "" H 3000 7200 60  0001 C CNN
	1    3000 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MK3
U 1 1 5834FBEF
P 3450 7200
F 0 "MK3" H 3550 7246 50  0000 L CNN
F 1 "M2.5" H 3550 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3450 7200 60  0001 C CNN
F 3 "" H 3450 7200 60  0001 C CNN
	1    3450 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MK2
U 1 1 5834FC19
P 3000 7400
F 0 "MK2" H 3100 7446 50  0000 L CNN
F 1 "M2.5" H 3100 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3000 7400 60  0001 C CNN
F 3 "" H 3000 7400 60  0001 C CNN
	1    3000 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MK4
U 1 1 5834FC4F
P 3450 7400
F 0 "MK4" H 3550 7446 50  0000 L CNN
F 1 "M2.5" H 3550 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3450 7400 60  0001 C CNN
F 3 "" H 3450 7400 60  0001 C CNN
	1    3450 7400
	1    0    0    -1  
$EndComp
Text Notes 3000 7050 0    50   ~ 0
Mounting Holes
$Comp
L Connector_Generic:Conn_02x20_Odd_Even P1
U 1 1 59AD464A
P 2600 2000
F 0 "P1" H 2650 3117 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2650 3026 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H -2250 1050 50  0001 C CNN
F 3 "" H -2250 1050 50  0001 C CNN
	1    2600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3000 3950 3000
Text Label 3950 3000 2    50   ~ 0
GPIO21(SPI1_SCK)
Wire Wire Line
	3100 1100 3100 1200
Wire Wire Line
	3000 2700 3000 3150
Wire Wire Line
	3000 2500 3000 2700
Wire Wire Line
	3000 2000 3000 2500
Wire Wire Line
	2300 3000 2300 3150
Wire Wire Line
	2300 2300 2300 3000
Wire Wire Line
	3000 1700 3000 2000
$Comp
L TinyFPGA:Bx FPGA1
U 1 1 5C0CA2E0
P 2700 4400
F 0 "FPGA1" H 2700 5415 50  0000 C CNN
F 1 "Bx" H 2700 5324 50  0000 C CNN
F 2 "TinyFPGA:TinyFPGA_BX" H 2850 5100 50  0001 C CNN
F 3 "" H 2850 5100 50  0001 C CNN
	1    2700 4400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C12F6D0
P 1900 5000
F 0 "#PWR0105" H 1900 4750 50  0001 C CNN
F 1 "GND" H 1905 4827 50  0000 C CNN
F 2 "" H 1900 5000 50  0001 C CNN
F 3 "" H 1900 5000 50  0001 C CNN
	1    1900 5000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5C1360B9
P 2050 5000
F 0 "#PWR0106" H 2050 4850 50  0001 C CNN
F 1 "+5V" H 2065 5173 50  0000 C CNN
F 2 "" H 2050 5000 50  0001 C CNN
F 3 "" H 2050 5000 50  0001 C CNN
	1    2050 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 5000 2200 5000
Wire Wire Line
	1900 5000 2000 5000
Wire Wire Line
	2000 5000 2000 4900
Wire Wire Line
	2000 4900 2200 4900
Text Label 3200 3800 0    50   ~ 0
GPIO14(TXD0)
Text Label 3200 3900 0    50   ~ 0
GPIO15(RXD0)
Text Label 3200 4100 0    50   ~ 0
GPIO10(SPI0_MOSI)
Text Label 3200 4200 0    50   ~ 0
GPIO9(SPI0_MISO)
Text Label 3200 4400 0    50   ~ 0
GPIO11(SPI0_SCK)
Text Label 3200 4500 0    50   ~ 0
GPIO8(SPI0_CE_N)
Text Label 3200 4600 0    50   ~ 0
GPIO7(SPI1_CE_N)
Text Label 3200 4700 0    50   ~ 0
GPIO6
Text Label 3200 4800 0    50   ~ 0
GPIO12(PWM0)
Text Label 3200 4900 0    50   ~ 0
GPIO13(PWM1)
$Comp
L Connector:Barrel_Jack_MountingPin J5
U 1 1 5C2C5CAA
P 5150 1650
F 0 "J5" H 5205 1967 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 5205 1876 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Wuerth_6941xx301002" H 5200 1610 50  0001 C CNN
F 3 "~" H 5200 1610 50  0001 C CNN
	1    5150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5C2C6F56
P 5800 1550
F 0 "#PWR0115" H 5800 1400 50  0001 C CNN
F 1 "+5V" H 5815 1723 50  0000 C CNN
F 2 "" H 5800 1550 50  0001 C CNN
F 3 "" H 5800 1550 50  0001 C CNN
	1    5800 1550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U5
U 1 1 5C2C7053
P 6350 1550
F 0 "U5" H 6350 1792 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 6350 1701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6350 1750 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 6450 1300 50  0001 C CNN
	1    6350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1550 5800 1550
Connection ~ 5800 1550
Wire Wire Line
	5800 1550 5450 1550
Wire Wire Line
	5450 1750 5450 1850
Wire Wire Line
	5450 1850 5800 1850
$Comp
L Device:C C1
U 1 1 5C2DA84D
P 5800 1700
F 0 "C1" H 5915 1746 50  0000 L CNN
F 1 "330uf" H 5915 1655 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 5838 1550 50  0001 C CNN
F 3 "~" H 5800 1700 50  0001 C CNN
	1    5800 1700
	1    0    0    -1  
$EndComp
Connection ~ 5800 1850
Wire Wire Line
	5800 1850 6350 1850
$Comp
L power:+3.3V #PWR0116
U 1 1 5C2DA8CD
P 6950 1550
F 0 "#PWR0116" H 6950 1400 50  0001 C CNN
F 1 "+3.3V" H 6965 1723 50  0000 C CNN
F 2 "" H 6950 1550 50  0001 C CNN
F 3 "" H 6950 1550 50  0001 C CNN
	1    6950 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C2DA94F
P 6950 1700
F 0 "C2" H 7065 1746 50  0000 L CNN
F 1 "100uf" H 7065 1655 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 6988 1550 50  0001 C CNN
F 3 "~" H 6950 1700 50  0001 C CNN
	1    6950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1550 6650 1550
Connection ~ 6950 1550
Wire Wire Line
	6950 1850 6350 1850
Connection ~ 6350 1850
$Comp
L power:GND #PWR0117
U 1 1 5C2EF66F
P 6350 1950
F 0 "#PWR0117" H 6350 1700 50  0001 C CNN
F 1 "GND" H 6355 1777 50  0000 C CNN
F 2 "" H 6350 1950 50  0001 C CNN
F 3 "" H 6350 1950 50  0001 C CNN
	1    6350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1950 6350 1850
$Comp
L Graphic:Logo_Open_Hardware_Large #LOGO1
U 1 1 5C2FB99A
P 4900 7100
F 0 "#LOGO1" H 4900 7600 50  0001 C CNN
F 1 "Logo_Open_Hardware_Large" H 4900 6700 50  0001 C CNN
F 2 "Symbol:OSHW-Logo2_9.8x8mm_SilkScreen" H 4900 7100 50  0001 C CNN
F 3 "~" H 4900 7100 50  0001 C CNN
	1    4900 7100
	1    0    0    -1  
$EndComp
Text Notes 3200 1050 0    50   ~ 0
TODO: Add ideal ZVD
Text Label 3200 3700 0    50   ~ 0
GPIO3(SCL1)
Text Label 3200 4300 0    50   ~ 0
GPIO25(GEN6)
Text Label 3200 4000 0    50   ~ 0
GPIO24(GEN5)
$Comp
L power:GND #PWR0101
U 1 1 5C1EB27B
P 3400 5000
F 0 "#PWR0101" H 3400 4750 50  0001 C CNN
F 1 "GND" H 3405 4827 50  0000 C CNN
F 2 "" H 3400 5000 50  0001 C CNN
F 3 "" H 3400 5000 50  0001 C CNN
	1    3400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5000 3200 5000
$Comp
L Random:IO8_HEADER IO1
U 1 1 5C1EF573
P 6000 3850
F 0 "IO1" H 6428 3846 50  0000 L CNN
F 1 "IO8_HEADER" H 6428 3755 50  0000 L CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Vertical" V 5250 4050 50  0001 C CNN
F 3 "" V 5250 4050 50  0001 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C1EF627
P 6000 4450
F 0 "#PWR0102" H 6000 4200 50  0001 C CNN
F 1 "GND" H 6005 4277 50  0000 C CNN
F 2 "" H 6000 4450 50  0001 C CNN
F 3 "" H 6000 4450 50  0001 C CNN
	1    6000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4350 5750 4250
Wire Wire Line
	6250 4350 6250 4250
Wire Wire Line
	6150 4250 6150 4350
Connection ~ 6150 4350
Wire Wire Line
	6150 4350 6250 4350
Wire Wire Line
	6050 4250 6050 4350
Connection ~ 6050 4350
Wire Wire Line
	6050 4350 6150 4350
Wire Wire Line
	5950 4350 5950 4250
Connection ~ 5950 4350
Wire Wire Line
	5950 4350 5850 4350
Wire Wire Line
	5850 4250 5850 4350
Connection ~ 5850 4350
Wire Wire Line
	5850 4350 5750 4350
Wire Wire Line
	5950 4350 6000 4350
Wire Wire Line
	6000 4350 6000 4450
Connection ~ 6000 4350
Wire Wire Line
	6000 4350 6050 4350
$Comp
L power:+5V #PWR0103
U 1 1 5C1FD301
P 6500 4550
F 0 "#PWR0103" H 6500 4400 50  0001 C CNN
F 1 "+5V" H 6515 4723 50  0000 C CNN
F 2 "" H 6500 4550 50  0001 C CNN
F 3 "" H 6500 4550 50  0001 C CNN
	1    6500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4550 6350 4550
Wire Wire Line
	6350 4550 6350 4250
$Comp
L power:+3.3V #PWR0104
U 1 1 5C1FEC8E
P 5500 4550
F 0 "#PWR0104" H 5500 4400 50  0001 C CNN
F 1 "+3.3V" H 5515 4723 50  0000 C CNN
F 2 "" H 5500 4550 50  0001 C CNN
F 3 "" H 5500 4550 50  0001 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4550 5650 4550
Wire Wire Line
	5650 4550 5650 4250
Text Label 5650 3550 1    50   ~ 0
IO_1
Text Label 5750 3550 1    50   ~ 0
IO_2
Text Label 5850 3550 1    50   ~ 0
IO_3
Text Label 5950 3550 1    50   ~ 0
IO_4
Text Label 6050 3550 1    50   ~ 0
IO_5
Text Label 6150 3550 1    50   ~ 0
IO_6
Text Label 6250 3550 1    50   ~ 0
IO_7
Text Label 6350 3550 1    50   ~ 0
IO_8
Text Label 2200 3700 2    50   ~ 0
IO_1
Text Label 2200 3800 2    50   ~ 0
IO_2
Text Label 2200 3900 2    50   ~ 0
IO_3
Text Label 2200 4000 2    50   ~ 0
IO_4
Text Label 2200 4100 2    50   ~ 0
IO_5
Text Label 2200 4200 2    50   ~ 0
IO_6
Text Label 2200 4300 2    50   ~ 0
IO_7
Text Label 2200 4400 2    50   ~ 0
IO_8
$EndSCHEMATC
