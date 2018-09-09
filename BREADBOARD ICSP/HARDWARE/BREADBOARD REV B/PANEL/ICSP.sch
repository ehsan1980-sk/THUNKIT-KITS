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
Title "ICSP Breadboard Breakout"
Date "2018-08-30"
Rev "B"
Comp "THUNKIT ELECTRONICS"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X03 P2
U 1 1 598B2952
P 5450 3800
F 0 "P2" H 5450 4000 50  0000 C CNN
F 1 "CONN_02X03" H 5450 3600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 5450 2600 50  0001 C CNN
F 3 "" H 5450 2600 50  0000 C CNN
	1    5450 3800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P3
U 1 1 598B2996
P 6000 3800
F 0 "P3" H 6000 4000 50  0000 C CNN
F 1 "CONN_01X03" V 6100 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6000 3800 50  0001 C CNN
F 3 "" H 6000 3800 50  0000 C CNN
	1    6000 3800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 598B29ED
P 4900 3800
F 0 "P1" H 4900 4000 50  0000 C CNN
F 1 "CONN_01X03" V 5000 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4900 3800 50  0001 C CNN
F 3 "" H 4900 3800 50  0000 C CNN
	1    4900 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 3700 5800 3700
Wire Wire Line
	5800 3800 5700 3800
Wire Wire Line
	5700 3900 5800 3900
Wire Wire Line
	5200 3900 5100 3900
Wire Wire Line
	5100 3800 5200 3800
Wire Wire Line
	5200 3700 5100 3700
$EndSCHEMATC
