EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:linear
LIBS:regul
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:conn
LIBS:74xx
LIBS:custom
LIBS:vfd_driver-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 11
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
L CONN_01X69 J6
U 1 1 59FF3645
P 5150 4150
F 0 "J6" H 5228 4191 50  0000 L CNN
F 1 "Display" H 5228 4100 50  0000 L CNN
F 2 "modules:vfd_FUTABA_24-SD-01GK_24x1" H 5150 5850 50  0001 C CNN
F 3 "" H 5150 5850 50  0001 C CNN
	1    5150 4150
	1    0    0    -1  
$EndComp
NoConn ~ 4950 1050
NoConn ~ 4950 1150
Text HLabel 4250 7450 0    60   Input ~ 0
Fn
Text HLabel 4250 850  0    60   Input ~ 0
Fp
Entry Wire Line
	4000 1150 4100 1250
Entry Wire Line
	4000 1250 4100 1350
Entry Wire Line
	4000 1350 4100 1450
Entry Wire Line
	4000 1450 4100 1550
Entry Wire Line
	4000 1550 4100 1650
Entry Wire Line
	4000 1650 4100 1750
Entry Wire Line
	4000 1750 4100 1850
Text HLabel 4000 750  0    60   Input ~ 0
L1_[1..7]
Entry Wire Line
	3550 1850 3650 1950
Entry Wire Line
	3550 1950 3650 2050
Entry Wire Line
	3550 2050 3650 2150
Entry Wire Line
	3550 2250 3650 2350
Entry Wire Line
	3550 2350 3650 2450
Entry Wire Line
	3550 2450 3650 2550
Entry Wire Line
	3550 2150 3650 2250
Text HLabel 3550 850  0    60   Input ~ 0
L2_[1..7]
Text Label 3700 1950 0    60   ~ 0
L2_1
Text Label 3700 2050 0    60   ~ 0
L2_2
Text Label 3700 2150 0    60   ~ 0
L2_3
Text Label 3700 2250 0    60   ~ 0
L2_4
Text Label 3700 2350 0    60   ~ 0
L2_5
Text Label 3700 2450 0    60   ~ 0
L2_6
Text Label 3700 2550 0    60   ~ 0
L2_7
Entry Wire Line
	3150 2550 3250 2650
Entry Wire Line
	3150 2650 3250 2750
Entry Wire Line
	3150 2750 3250 2850
Entry Wire Line
	3150 2850 3250 2950
Entry Wire Line
	3150 2950 3250 3050
Entry Wire Line
	3150 3050 3250 3150
Entry Wire Line
	3150 3150 3250 3250
Text HLabel 3150 950  0    60   Input ~ 0
L3_[1..7]
Text Label 3300 2650 0    60   ~ 0
L3_1
Text Label 3300 2750 0    60   ~ 0
L3_2
Text Label 3300 2850 0    60   ~ 0
L3_3
Text Label 3300 2950 0    60   ~ 0
L3_4
Text Label 3300 3050 0    60   ~ 0
L3_5
Text Label 3300 3150 0    60   ~ 0
L3_6
Text Label 3300 3250 0    60   ~ 0
L3_7
Text HLabel 2750 1050 0    60   Input ~ 0
L4_[1..7]
Entry Wire Line
	2750 3650 2850 3750
Entry Wire Line
	2750 3550 2850 3650
Entry Wire Line
	2750 3350 2850 3450
Entry Wire Line
	2750 3250 2850 3350
Entry Wire Line
	2750 3450 2850 3550
Entry Wire Line
	2750 3750 2850 3850
Entry Wire Line
	2750 3850 2850 3950
Entry Wire Line
	2350 4550 2450 4650
Entry Wire Line
	2350 4050 2450 4150
Entry Wire Line
	2350 4350 2450 4450
Entry Wire Line
	2350 4450 2450 4550
Entry Wire Line
	2350 4250 2450 4350
Entry Wire Line
	2350 4150 2450 4250
Entry Wire Line
	2350 3950 2450 4050
Text HLabel 2350 1150 0    60   Input ~ 0
L5_[1..7]
Wire Wire Line
	4600 950  4950 950 
Wire Wire Line
	4250 850  4950 850 
Wire Wire Line
	4600 750  4950 750 
Wire Wire Line
	4600 750  4600 950 
Connection ~ 4600 850 
Wire Wire Line
	4600 7550 4950 7550
Wire Wire Line
	4250 7450 4950 7450
Wire Wire Line
	4600 7350 4950 7350
Wire Wire Line
	4600 7350 4600 7550
Connection ~ 4600 7450
Wire Bus Line
	2350 1150 2350 4950
Text Label 2500 4050 0    60   ~ 0
L5_1
Text Label 2500 4150 0    60   ~ 0
L5_2
Text Label 2500 4250 0    60   ~ 0
L5_3
Text Label 2500 4350 0    60   ~ 0
L5_4
Text Label 2500 4450 0    60   ~ 0
L5_5
Text Label 2500 4550 0    60   ~ 0
L5_6
Text Label 2500 4650 0    60   ~ 0
L5_7
Wire Bus Line
	2150 4550 2150 7150
Text HLabel 2150 4550 0    60   Input ~ 0
G1_[1..8]
Entry Wire Line
	2150 4650 2250 4750
Entry Wire Line
	2150 4750 2250 4850
Entry Wire Line
	2150 4850 2250 4950
Entry Wire Line
	2150 4950 2250 5050
Entry Wire Line
	2150 5050 2250 5150
Entry Wire Line
	2150 5150 2250 5250
Entry Wire Line
	2150 5250 2250 5350
Entry Wire Line
	2150 5350 2250 5450
Wire Wire Line
	2250 4750 4950 4750
Wire Wire Line
	2250 4850 4950 4850
Wire Wire Line
	4950 4950 2250 4950
Wire Wire Line
	2250 5050 4950 5050
Wire Wire Line
	4950 5150 2250 5150
Wire Wire Line
	2250 5250 4950 5250
Wire Wire Line
	4950 5350 2250 5350
Wire Wire Line
	2250 5450 4950 5450
Wire Bus Line
	1950 5350 1950 7150
Entry Wire Line
	1950 5450 2050 5550
Entry Wire Line
	1950 5550 2050 5650
Entry Wire Line
	1950 5650 2050 5750
Entry Wire Line
	1950 5750 2050 5850
Entry Wire Line
	1950 5850 2050 5950
Entry Wire Line
	1950 5950 2050 6050
Entry Wire Line
	1950 6050 2050 6150
Entry Wire Line
	1950 6150 2050 6250
Wire Wire Line
	2050 5550 4950 5550
Wire Wire Line
	4950 5650 2050 5650
Wire Wire Line
	2050 5750 4950 5750
Wire Wire Line
	4950 5850 2050 5850
Wire Wire Line
	2050 5950 4950 5950
Wire Wire Line
	2050 6050 4950 6050
Wire Wire Line
	2050 6150 4950 6150
Wire Wire Line
	4950 6250 2050 6250
Wire Bus Line
	1700 6150 1700 7150
Entry Wire Line
	1700 6250 1800 6350
Entry Wire Line
	1700 6350 1800 6450
Entry Wire Line
	1700 6450 1800 6550
Entry Wire Line
	1700 6550 1800 6650
Entry Wire Line
	1700 6650 1800 6750
Entry Wire Line
	1700 6750 1800 6850
Entry Wire Line
	1700 6850 1800 6950
Entry Wire Line
	1700 6950 1800 7050
Wire Wire Line
	1800 6350 4950 6350
Wire Wire Line
	1800 6450 4950 6450
Wire Wire Line
	1800 6550 4950 6550
Wire Wire Line
	1800 6650 4950 6650
Wire Wire Line
	1800 6750 4950 6750
Wire Wire Line
	1800 6850 4950 6850
Wire Wire Line
	1800 6950 4950 6950
Wire Wire Line
	1800 7050 4950 7050
Text HLabel 1950 5350 0    60   Input ~ 0
G2_[1..8]
Text HLabel 1700 6150 0    60   Input ~ 0
G3_[1..8]
Text Label 4150 4750 0    60   ~ 0
G1_1
Text Label 4150 4850 0    60   ~ 0
G1_2
Text Label 4150 4950 0    60   ~ 0
G1_3
Text Label 4150 5050 0    60   ~ 0
G1_4
Text Label 4150 5150 0    60   ~ 0
G1_5
Text Label 4150 5250 0    60   ~ 0
G1_6
Text Label 4150 5350 0    60   ~ 0
G1_7
Text Label 4150 5450 0    60   ~ 0
G1_8
Text Label 4150 5550 0    60   ~ 0
G2_1
Text Label 4150 5650 0    60   ~ 0
G2_2
Text Label 4150 5750 0    60   ~ 0
G2_3
Text Label 4150 5850 0    60   ~ 0
G2_4
Text Label 4150 5950 0    60   ~ 0
G2_5
Text Label 4150 6050 0    60   ~ 0
G2_6
Text Label 4150 6150 0    60   ~ 0
G2_7
Text Label 4150 6250 0    60   ~ 0
G2_8
Text Label 4150 6350 0    60   ~ 0
G3_1
Text Label 4150 6450 0    60   ~ 0
G3_2
Text Label 4150 6550 0    60   ~ 0
G3_3
Text Label 4150 6650 0    60   ~ 0
G3_4
Text Label 4150 6750 0    60   ~ 0
G3_5
Text Label 4150 6850 0    60   ~ 0
G3_6
Text Label 4150 6950 0    60   ~ 0
G3_7
Text Label 4150 7050 0    60   ~ 0
G3_8
Wire Wire Line
	4100 1250 4950 1250
Wire Wire Line
	4100 1350 4950 1350
Wire Wire Line
	4100 1450 4950 1450
Wire Wire Line
	4100 1550 4950 1550
Wire Wire Line
	4100 1650 4950 1650
Wire Wire Line
	4100 1750 4950 1750
Wire Wire Line
	4100 1850 4950 1850
Text Label 4150 1250 0    60   ~ 0
L1_1
Text Label 4150 1350 0    60   ~ 0
L1_2
Text Label 4150 1450 0    60   ~ 0
L1_3
Text Label 4150 1550 0    60   ~ 0
L1_4
Text Label 4150 1650 0    60   ~ 0
L1_5
Text Label 4150 1750 0    60   ~ 0
L1_6
Text Label 4150 1850 0    60   ~ 0
L1_7
Wire Bus Line
	4000 750  4000 1850
Wire Wire Line
	3650 1950 4950 1950
Wire Wire Line
	3650 2050 4950 2050
Wire Wire Line
	3650 2150 4950 2150
Wire Wire Line
	3650 2250 4950 2250
Wire Wire Line
	3650 2350 4950 2350
Wire Wire Line
	3650 2450 4950 2450
Wire Wire Line
	3650 2550 4950 2550
Wire Bus Line
	3550 850  3550 2600
Wire Wire Line
	3250 2650 4950 2650
Wire Wire Line
	3250 2750 4950 2750
Wire Wire Line
	3250 2850 4950 2850
Wire Wire Line
	3250 2950 4950 2950
Wire Wire Line
	3250 3050 4950 3050
Wire Wire Line
	3250 3150 4950 3150
Wire Wire Line
	3250 3250 4950 3250
Wire Bus Line
	3150 950  3150 3250
Wire Wire Line
	2850 3350 4950 3350
Wire Wire Line
	2850 3450 4950 3450
Wire Wire Line
	2850 3550 4950 3550
Wire Wire Line
	2850 3650 4950 3650
Wire Wire Line
	2850 3750 4950 3750
Wire Wire Line
	2850 3850 4950 3850
Wire Wire Line
	2850 3950 4950 3950
Wire Bus Line
	2750 3950 2750 1050
Wire Wire Line
	2450 4050 4950 4050
Wire Wire Line
	2450 4150 4950 4150
Wire Wire Line
	2450 4250 4950 4250
Wire Wire Line
	2450 4350 4950 4350
Wire Wire Line
	2450 4450 4950 4450
Wire Wire Line
	2450 4550 4950 4550
Wire Wire Line
	2450 4650 4950 4650
Text Label 2950 3350 0    60   ~ 0
L4_1
Text Label 2950 3450 0    60   ~ 0
L4_2
Text Label 2950 3550 0    60   ~ 0
L4_3
Text Label 2950 3650 0    60   ~ 0
L4_4
Text Label 2950 3750 0    60   ~ 0
L4_5
Text Label 2950 3850 0    60   ~ 0
L4_6
Text Label 2950 3950 0    60   ~ 0
L4_7
Wire Wire Line
	4950 7150 4950 7250
Wire Wire Line
	4950 7250 4250 7250
$Comp
L +36V #PWR?
U 1 1 5A18F7C8
P 4250 7250
F 0 "#PWR?" H 4250 7100 50  0001 C CNN
F 1 "+36V" H 4250 7390 50  0000 C CNN
F 2 "" H 4250 7250 50  0001 C CNN
F 3 "" H 4250 7250 50  0001 C CNN
	1    4250 7250
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
