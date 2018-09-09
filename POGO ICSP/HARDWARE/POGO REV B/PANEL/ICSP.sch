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
LIBS:ICSP-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "POGO ICSP"
Date "2018-08-30"
Rev "B"
Comp "THUNKIT ELECTRONICS"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X03 P1
U 1 1 598B223B
P 5350 3700
F 0 "P1" H 5350 3900 50  0000 C CNN
F 1 "CONN_02X03" H 5350 3500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 5350 2500 50  0001 C CNN
F 3 "" H 5350 2500 50  0000 C CNN
	1    5350 3700
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 598B2288
P 6250 3700
F 0 "P2" H 6250 3900 50  0000 C CNN
F 1 "CONN_02X03" H 6250 3500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 6250 2500 50  0001 C CNN
F 3 "" H 6250 2500 50  0000 C CNN
	1    6250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3600 5100 3400
Wire Wire Line
	5100 3400 6000 3400
Wire Wire Line
	6000 3400 6000 3600
Wire Wire Line
	5100 3700 5050 3700
Wire Wire Line
	5050 3700 5050 3350
Wire Wire Line
	5050 3350 5950 3350
Wire Wire Line
	5950 3350 5950 3700
Wire Wire Line
	5950 3700 6000 3700
Wire Wire Line
	5100 3800 5000 3800
Wire Wire Line
	5000 3800 5000 3300
Wire Wire Line
	5000 3300 5900 3300
Wire Wire Line
	5900 3300 5900 3800
Wire Wire Line
	5900 3800 6000 3800
Wire Wire Line
	5600 3600 5850 3600
Wire Wire Line
	5850 3600 5850 3950
Wire Wire Line
	5850 3950 6550 3950
Wire Wire Line
	6550 3950 6550 3600
Wire Wire Line
	6550 3600 6500 3600
Wire Wire Line
	5600 3700 5800 3700
Wire Wire Line
	5800 3700 5800 4000
Wire Wire Line
	5800 4000 6600 4000
Wire Wire Line
	6600 4000 6600 3700
Wire Wire Line
	6600 3700 6500 3700
Wire Wire Line
	5600 3800 5750 3800
Wire Wire Line
	5750 3800 5750 4050
Wire Wire Line
	5750 4050 6650 4050
Wire Wire Line
	6650 4050 6650 3800
Wire Wire Line
	6650 3800 6500 3800
$EndSCHEMATC
