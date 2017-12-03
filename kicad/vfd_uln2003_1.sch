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
Sheet 5 11
Title "VFD Driver"
Date "2017-09-18"
Rev ""
Comp "pimium"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +36V #PWR28
U 1 1 5A133ADF
P 5400 1900
F 0 "#PWR28" H 5400 1750 50  0001 C CNN
F 1 "+36V" H 5415 2073 50  0000 C CNN
F 2 "" H 5400 1900 50  0001 C CNN
F 3 "" H 5400 1900 50  0001 C CNN
	1    5400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3050 3050 3050
Wire Wire Line
	5400 2950 5350 2950
Wire Wire Line
	5400 1900 5400 2950
Wire Wire Line
	4950 2700 4950 2750
Wire Wire Line
	4450 2700 4950 2700
Wire Wire Line
	2950 4050 2950 3650
Wire Wire Line
	2950 3650 3050 3650
Wire Wire Line
	3050 3250 2650 3250
Wire Wire Line
	4450 2700 4450 2800
Wire Wire Line
	4550 3750 4450 3750
Wire Wire Line
	4450 3650 4550 3650
Wire Wire Line
	4550 3550 4450 3550
Wire Wire Line
	4450 3450 4550 3450
Wire Wire Line
	4550 3350 4450 3350
Wire Wire Line
	4450 3250 4550 3250
Wire Wire Line
	4550 3150 4450 3150
Wire Bus Line
	7150 3150 7150 4100
Wire Bus Line
	7150 2700 7150 3200
Wire Wire Line
	5350 3150 7050 3150
Wire Wire Line
	5350 3250 7050 3250
Wire Wire Line
	5350 3350 7050 3350
Wire Wire Line
	5350 3450 7050 3450
Wire Wire Line
	5350 3550 7050 3550
Wire Wire Line
	5350 3650 7050 3650
Wire Wire Line
	5350 3750 7050 3750
Entry Wire Line
	7050 3750 7150 3850
Entry Wire Line
	7050 3650 7150 3750
Entry Wire Line
	7050 3550 7150 3650
Entry Wire Line
	7050 3450 7150 3550
Entry Wire Line
	7050 3350 7150 3450
Entry Wire Line
	7050 3250 7150 3350
Entry Wire Line
	7050 3150 7150 3250
$Comp
L GND #PWR27
U 1 1 5A133ADD
P 4450 2800
F 0 "#PWR27" H 4450 2550 50  0001 C CNN
F 1 "GND" H 4455 2627 50  0000 C CNN
F 2 "" H 4450 2800 50  0001 C CNN
F 3 "" H 4450 2800 50  0001 C CNN
	1    4450 2800
	1    0    0    -1  
$EndComp
NoConn ~ 4450 3050
$Comp
L GND #PWR26
U 1 1 5A133AD9
P 2950 4050
F 0 "#PWR26" H 2950 3800 50  0001 C CNN
F 1 "GND" H 2955 3877 50  0000 C CNN
F 2 "" H 2950 4050 50  0001 C CNN
F 3 "" H 2950 4050 50  0001 C CNN
	1    2950 4050
	1    0    0    -1  
$EndComp
$Comp
L ULN2003 U11
U 1 1 5A133AD2
P 4950 3450
F 0 "U11" H 4950 4017 50  0000 C CNN
F 1 "ULN2003" H 4950 3926 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 5000 2800 50  0001 L CNN
F 3 "" H 5050 3350 50  0001 C CNN
	1    4950 3450
	1    0    0    1   
$EndComp
$Comp
L 74HC595 U10
U 1 1 5A133ACE
P 3750 3500
F 0 "U10" H 3750 4266 50  0000 C CNN
F 1 "74HC595" H 3750 4175 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 3750 3500 50  0001 C CNN
F 3 "" H 3750 3500 50  0001 C CNN
	1    3750 3500
	1    0    0    -1  
$EndComp
$Comp
L +36V #PWR29
U 1 1 5A133AF2
P 5900 1900
F 0 "#PWR29" H 5900 1750 50  0001 C CNN
F 1 "+36V" H 5915 2073 50  0000 C CNN
F 2 "" H 5900 1900 50  0001 C CNN
F 3 "" H 5900 1900 50  0001 C CNN
	1    5900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1900 5900 2350
Wire Wire Line
	5900 2550 5900 3150
Connection ~ 5900 3150
Wire Wire Line
	6000 2550 6000 3250
Wire Wire Line
	6100 2550 6100 3350
Wire Wire Line
	6200 2550 6200 3450
Wire Wire Line
	6300 2550 6300 3550
Wire Wire Line
	6400 3650 6400 2550
Wire Wire Line
	6500 2550 6500 3750
Connection ~ 6500 3750
Connection ~ 6400 3650
Connection ~ 6300 3550
Connection ~ 6200 3450
Connection ~ 6100 3350
Connection ~ 6000 3250
Text HLabel 7150 2700 1    60   Input ~ 0
LX[1..7]
Text HLabel 2650 3050 0    60   Input ~ 0
SER
Text HLabel 2650 3250 0    60   Input ~ 0
SRCLK
Text HLabel 2650 3350 0    60   Input ~ 0
SRCLR
Text HLabel 2650 3550 0    60   Input ~ 0
RCLK
Text Label 6850 3150 0    60   ~ 0
LX1
Text Label 6850 3250 0    60   ~ 0
LX2
Text Label 6850 3350 0    60   ~ 0
LX3
Text Label 6850 3450 0    60   ~ 0
LX4
Text Label 6850 3550 0    60   ~ 0
LX5
Text Label 6850 3650 0    60   ~ 0
LX6
Text Label 6850 3750 0    60   ~ 0
LX7
$Comp
L R_Small R21
U 1 1 5A144BF1
P 5900 2450
F 0 "R21" H 5930 2470 50  0000 L CNN
F 1 "1k" H 5930 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5900 2450 50  0001 C CNN
F 3 "" H 5900 2450 50  0001 C CNN
	1    5900 2450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R22
U 1 1 5A144C19
P 6000 2450
F 0 "R22" H 6030 2470 50  0000 L CNN
F 1 "1k" H 6030 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6000 2450 50  0001 C CNN
F 3 "" H 6000 2450 50  0001 C CNN
	1    6000 2450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R23
U 1 1 5A144C34
P 6100 2450
F 0 "R23" H 6130 2470 50  0000 L CNN
F 1 "1k" H 6130 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6100 2450 50  0001 C CNN
F 3 "" H 6100 2450 50  0001 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R24
U 1 1 5A144C51
P 6200 2450
F 0 "R24" H 6230 2470 50  0000 L CNN
F 1 "1k" H 6230 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6200 2450 50  0001 C CNN
F 3 "" H 6200 2450 50  0001 C CNN
	1    6200 2450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R25
U 1 1 5A144C70
P 6300 2450
F 0 "R25" H 6330 2470 50  0000 L CNN
F 1 "1k" H 6330 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6300 2450 50  0001 C CNN
F 3 "" H 6300 2450 50  0001 C CNN
	1    6300 2450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R26
U 1 1 5A144C91
P 6400 2450
F 0 "R26" H 6430 2470 50  0000 L CNN
F 1 "1k" H 6430 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6400 2450 50  0001 C CNN
F 3 "" H 6400 2450 50  0001 C CNN
	1    6400 2450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R27
U 1 1 5A144CB4
P 6500 2450
F 0 "R27" H 6530 2470 50  0000 L CNN
F 1 "1k" H 6530 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6500 2450 50  0001 C CNN
F 3 "" H 6500 2450 50  0001 C CNN
	1    6500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2350 6500 2150
Wire Wire Line
	6500 2150 5900 2150
Connection ~ 5900 2150
Wire Wire Line
	6000 2350 6000 2150
Connection ~ 6000 2150
Wire Wire Line
	6100 2150 6100 2350
Connection ~ 6100 2150
Wire Wire Line
	6200 2350 6200 2150
Connection ~ 6200 2150
Wire Wire Line
	6300 2150 6300 2350
Connection ~ 6300 2150
Wire Wire Line
	6400 2350 6400 2150
Connection ~ 6400 2150
Wire Wire Line
	4450 3950 6050 3950
Text HLabel 6050 3950 2    60   Input ~ 0
SER_OUT
$Comp
L R_Small R74
U 1 1 5A1345C2
P 2850 3350
F 0 "R74" V 2900 3350 50  0000 C CNN
F 1 "0" V 2850 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" H 2850 3350 50  0001 C CNN
F 3 "" H 2850 3350 50  0001 C CNN
	1    2850 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3350 2950 3350
Wire Wire Line
	2750 3350 2650 3350
Wire Wire Line
	2650 3550 3050 3550
$EndSCHEMATC
