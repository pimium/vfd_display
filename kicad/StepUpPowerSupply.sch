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
Sheet 2 11
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
L LT1073 U7
U 1 1 59FA9B97
P 5150 3650
F 0 "U7" H 5150 3700 50  0000 L CNN
F 1 "LT1073" H 5050 3550 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5150 3650 50  0001 C CNN
F 3 "DOCUMENTATION" H 5150 3650 50  0001 C CNN
	1    5150 3650
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 59FA9FF5
P 4900 2950
F 0 "R5" H 4959 2996 50  0000 L CNN
F 1 "100" H 4959 2905 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 4900 2950 50  0001 C CNN
F 3 "" H 4900 2950 50  0001 C CNN
	1    4900 2950
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 59FAA01D
P 6500 3500
F 0 "R6" H 6559 3546 50  0000 L CNN
F 1 "1M" H 6559 3455 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 6500 3500 50  0001 C CNN
F 3 "" H 6500 3500 50  0001 C CNN
	1    6500 3500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 59FAA08F
P 6500 4050
F 0 "R7" H 6559 4096 50  0000 L CNN
F 1 "4k7" H 6559 4005 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 6500 4050 50  0001 C CNN
F 3 "" H 6500 4050 50  0001 C CNN
	1    6500 4050
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C6
U 1 1 59FAA154
P 7150 3550
F 0 "C6" H 7238 3596 50  0000 L CNN
F 1 "100µF" H 7238 3505 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x5.4" H 7150 3550 50  0001 C CNN
F 3 "" H 7150 3550 50  0001 C CNN
	1    7150 3550
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 59FAA1B0
P 5700 2700
F 0 "L1" V 5890 2700 50  0000 C CNN
F 1 "150uH" V 5799 2700 50  0000 C CNN
F 2 "Choke_SMD:Choke_CD75" H 5700 2700 50  0001 C CNN
F 3 "" H 5700 2700 50  0001 C CNN
	1    5700 2700
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky_Small D2
U 1 1 59FAA2D8
P 6250 2700
F 0 "D2" H 6250 2495 50  0000 C CNN
F 1 "1N5818" H 6250 2586 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" V 6250 2700 50  0001 C CNN
F 3 "" V 6250 2700 50  0001 C CNN
	1    6250 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 2700 4900 2850
Connection ~ 4900 2700
Wire Wire Line
	4900 3050 4900 3200
NoConn ~ 4600 3550
NoConn ~ 4600 3750
Wire Wire Line
	5400 3200 5400 2700
Connection ~ 5400 2700
Wire Wire Line
	3900 2700 5550 2700
Wire Wire Line
	5850 2700 6150 2700
Wire Wire Line
	5700 3500 6000 3500
Connection ~ 6000 2700
Wire Wire Line
	6500 2700 6500 3400
Wire Wire Line
	6500 3600 6500 3950
Wire Wire Line
	4900 4300 7150 4300
Wire Wire Line
	4900 4100 4900 4500
$Comp
L GND #PWR20
U 1 1 59FAA51A
P 4900 4500
F 0 "#PWR20" H 4900 4250 50  0001 C CNN
F 1 "GND" H 4905 4327 50  0000 C CNN
F 2 "" H 4900 4500 50  0001 C CNN
F 3 "" H 4900 4500 50  0001 C CNN
	1    4900 4500
	1    0    0    -1  
$EndComp
Connection ~ 4900 4300
Wire Wire Line
	5400 4300 5400 4100
Connection ~ 5400 4300
Wire Wire Line
	7150 4300 7150 3650
Connection ~ 6500 4300
Wire Wire Line
	7150 2350 7150 3450
Connection ~ 6500 2700
$Comp
L +36V #PWR21
U 1 1 59FAA644
P 7650 2400
F 0 "#PWR21" H 7650 2250 50  0001 C CNN
F 1 "+36V" H 7665 2573 50  0000 C CNN
F 2 "" H 7650 2400 50  0001 C CNN
F 3 "" H 7650 2400 50  0001 C CNN
	1    7650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2700 7650 2400
Connection ~ 7150 2700
Wire Wire Line
	5700 3800 6500 3800
Connection ~ 6500 3800
Wire Wire Line
	6500 4150 6500 4300
Wire Wire Line
	6000 3500 6000 2700
Wire Wire Line
	6350 2700 7650 2700
$Comp
L PWR_FLAG #FLG3
U 1 1 5A001864
P 7150 2350
F 0 "#FLG3" H 7150 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 7150 2524 50  0000 C CNN
F 2 "" H 7150 2350 50  0001 C CNN
F 3 "" H 7150 2350 50  0001 C CNN
	1    7150 2350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J7
U 1 1 5A13E8A2
P 3700 2800
F 0 "J7" H 3700 2900 50  0000 C CNN
F 1 "Step" H 3700 2600 50  0000 C CNN
F 2 "Connectors:PINHEAD1-2" H 3700 2800 50  0001 C CNN
F 3 "" H 3700 2800 50  0001 C CNN
	1    3700 2800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR19
U 1 1 5A13E91B
P 4150 4500
F 0 "#PWR19" H 4150 4250 50  0001 C CNN
F 1 "GND" H 4155 4327 50  0000 C CNN
F 2 "" H 4150 4500 50  0001 C CNN
F 3 "" H 4150 4500 50  0001 C CNN
	1    4150 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4500 4150 2800
Wire Wire Line
	4150 2800 3900 2800
$EndSCHEMATC
