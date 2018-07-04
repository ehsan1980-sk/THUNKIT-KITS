EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
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
EELAYER 25 0
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
L CONN_02X03 P2
U 1 1 598B2952
P 5250 2750
F 0 "P2" H 5250 2950 50  0000 C CNN
F 1 "CONN_02X03" H 5250 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 5250 1550 50  0001 C CNN
F 3 "" H 5250 1550 50  0000 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P3
U 1 1 598B2996
P 5800 2750
F 0 "P3" H 5800 2950 50  0000 C CNN
F 1 "CONN_01X03" V 5900 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5800 2750 50  0001 C CNN
F 3 "" H 5800 2750 50  0000 C CNN
	1    5800 2750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 598B29ED
P 4700 2750
F 0 "P1" H 4700 2950 50  0000 C CNN
F 1 "CONN_01X03" V 4800 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4700 2750 50  0001 C CNN
F 3 "" H 4700 2750 50  0000 C CNN
	1    4700 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2650 5600 2650
Wire Wire Line
	5600 2750 5500 2750
Wire Wire Line
	5500 2850 5600 2850
Wire Wire Line
	5000 2850 4900 2850
Wire Wire Line
	4900 2750 5000 2750
Wire Wire Line
	5000 2650 4900 2650
$EndSCHEMATC
