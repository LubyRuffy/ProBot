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
LIBS:BeagleboneProbotRevC7-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ProBot"
Date "2016-05-18"
Rev "RevC7"
Comp "M-iti"
Comment1 "ERAChair project"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BeagleboneBlack U1
U 1 1 573B54DF
P 5825 3100
F 0 "U1" H 5825 650 60  0000 C CNN
F 1 "BeagleboneBlack" H 5825 5650 60  0000 C CNN
F 2 "BeagleCapePro:BeaglecapePro_foot" H 6825 1850 60  0001 C CNN
F 3 "" H 6825 1850 60  0000 C CNN
	1    5825 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 573B54E0
P 4575 850
F 0 "#PWR01" H 4575 600 50  0001 C CNN
F 1 "GND" H 4575 700 50  0000 C CNN
F 2 "" H 4575 850 50  0000 C CNN
F 3 "" H 4575 850 50  0000 C CNN
	1    4575 850 
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 573B54E1
P 7050 850
F 0 "#PWR02" H 7050 600 50  0001 C CNN
F 1 "GND" H 7050 700 50  0000 C CNN
F 2 "" H 7050 850 50  0000 C CNN
F 3 "" H 7050 850 50  0000 C CNN
	1    7050 850 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 573B54E2
P 4525 5150
F 0 "#PWR03" H 4525 4900 50  0001 C CNN
F 1 "GND" H 4525 5000 50  0000 C CNN
F 2 "" H 4525 5150 50  0000 C CNN
F 3 "" H 4525 5150 50  0000 C CNN
	1    4525 5150
	0    1    1    0   
$EndComp
$Comp
L LED_RABG D1
U 1 1 573B54E3
P 2075 4225
F 0 "D1" H 2150 4575 50  0000 C CNN
F 1 "LED_RABG" H 2100 3875 50  0000 C CNN
F 2 "BeagleCapePro:LED_RGB_common_cathode5mm" H 2025 4175 50  0001 C CNN
F 3 "" H 2025 4175 50  0000 C CNN
	1    2075 4225
	-1   0    0    -1  
$EndComp
$Comp
L Level_converter U2
U 1 1 573B54E5
P 8875 3075
F 0 "U2" H 8875 2725 60  0000 C CNN
F 1 "Level_converter" H 8875 3425 60  0000 C CNN
F 2 "BeagleCapePro:Level_Converter" H 8875 3175 60  0001 C CNN
F 3 "" H 8875 3175 60  0000 C CNN
	1    8875 3075
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P4
U 1 1 573B54E6
P 10100 4675
F 0 "P4" H 10100 4975 50  0000 C CNN
F 1 "Enc1" V 10200 4675 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 10100 4675 50  0001 C CNN
F 3 "" H 10100 4675 50  0000 C CNN
	1    10100 4675
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P5
U 1 1 573B54E7
P 10100 5250
F 0 "P5" H 10100 5550 50  0000 C CNN
F 1 "Enc2" V 10200 5250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 10100 5250 50  0001 C CNN
F 3 "" H 10100 5250 50  0000 C CNN
	1    10100 5250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 573B54E8
P 2475 1450
F 0 "R1" V 2575 1450 50  0000 C CNN
F 1 "100k" V 2475 1450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2405 1450 50  0001 C CNN
F 3 "" H 2475 1450 50  0000 C CNN
	1    2475 1450
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 573B54E9
P 2475 1825
F 0 "R2" V 2555 1825 50  0000 C CNN
F 1 "6.8k" V 2475 1825 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2405 1825 50  0001 C CNN
F 3 "" H 2475 1825 50  0000 C CNN
	1    2475 1825
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 573B54EA
P 2475 2200
F 0 "R3" V 2555 2200 50  0000 C CNN
F 1 "820" V 2475 2200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2405 2200 50  0001 C CNN
F 3 "" H 2475 2200 50  0000 C CNN
	1    2475 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P3
U 1 1 573B54EB
P 10100 2925
F 0 "P3" H 10100 3125 50  0000 C CNN
F 1 "ST" V 10200 2925 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 10100 2925 50  0001 C CNN
F 3 "" H 10100 2925 50  0000 C CNN
	1    10100 2925
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 573B54EC
P 2525 1025
F 0 "P1" H 2525 1175 50  0000 C CNN
F 1 "Bat22.2" V 2625 1025 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 2525 1025 50  0001 C CNN
F 3 "" H 2525 1025 50  0000 C CNN
	1    2525 1025
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 573B54ED
P 4375 1400
F 0 "#FLG04" H 4375 1495 50  0001 C CNN
F 1 "PWR_FLAG" H 4375 1580 50  0000 C CNN
F 2 "" H 4375 1400 50  0000 C CNN
F 3 "" H 4375 1400 50  0000 C CNN
	1    4375 1400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 573B54EE
P 2650 1250
F 0 "#PWR05" H 2650 1000 50  0001 C CNN
F 1 "GND" H 2650 1100 50  0000 C CNN
F 2 "" H 2650 1250 50  0000 C CNN
F 3 "" H 2650 1250 50  0000 C CNN
	1    2650 1250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 573B54EF
P 2475 2425
F 0 "#PWR06" H 2475 2175 50  0001 C CNN
F 1 "GND" H 2475 2275 50  0000 C CNN
F 2 "" H 2475 2425 50  0000 C CNN
F 3 "" H 2475 2425 50  0000 C CNN
	1    2475 2425
	1    0    0    -1  
$EndComp
Text Label 2725 1650 0    60   ~ 0
BATV
Text Label 4200 4700 0    60   ~ 0
BATV
$Comp
L GND #PWR07
U 1 1 573B54F0
P 9425 3125
F 0 "#PWR07" H 9425 2875 50  0001 C CNN
F 1 "GND" H 9425 2975 50  0000 C CNN
F 2 "" H 9425 3125 50  0000 C CNN
F 3 "" H 9425 3125 50  0000 C CNN
	1    9425 3125
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 573B54F1
P 9825 2700
F 0 "#PWR08" H 9825 2450 50  0001 C CNN
F 1 "GND" H 9825 2550 50  0000 C CNN
F 2 "" H 9825 2700 50  0000 C CNN
F 3 "" H 9825 2700 50  0000 C CNN
	1    9825 2700
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR09
U 1 1 573B54F2
P 9425 3025
F 0 "#PWR09" H 9425 2875 50  0001 C CNN
F 1 "VCC" H 9425 3175 50  0000 C CNN
F 2 "" H 9425 3025 50  0000 C CNN
F 3 "" H 9425 3025 50  0000 C CNN
	1    9425 3025
	0    1    1    0   
$EndComp
Text Label 8100 3025 0    60   ~ 0
3V3
Text Label 4400 1100 0    60   ~ 0
3V3
Text Label 4350 2600 0    60   ~ 0
SCL
Text Label 4350 2700 0    60   ~ 0
SDA
Text Label 4300 3100 0    60   ~ 0
STTX
Text Label 4300 3300 0    60   ~ 0
STRX
Text Label 8075 2825 0    60   ~ 0
STTX
Text Label 8075 2925 0    60   ~ 0
STRX
NoConn ~ 8375 3225
NoConn ~ 8375 3325
NoConn ~ 9375 3225
NoConn ~ 9375 3325
$Comp
L GND #PWR010
U 1 1 573B54F4
P 9850 4475
F 0 "#PWR010" H 9850 4225 50  0001 C CNN
F 1 "GND" H 9850 4325 50  0000 C CNN
F 2 "" H 9850 4475 50  0000 C CNN
F 3 "" H 9850 4475 50  0000 C CNN
	1    9850 4475
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 573B54F5
P 9825 5050
F 0 "#PWR011" H 9825 4800 50  0001 C CNN
F 1 "GND" H 9825 4900 50  0000 C CNN
F 2 "" H 9825 5050 50  0000 C CNN
F 3 "" H 9825 5050 50  0000 C CNN
	1    9825 5050
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR012
U 1 1 573B54F6
P 9700 4775
F 0 "#PWR012" H 9700 4625 50  0001 C CNN
F 1 "VCC" H 9700 4925 50  0000 C CNN
F 2 "" H 9700 4775 50  0000 C CNN
F 3 "" H 9700 4775 50  0000 C CNN
	1    9700 4775
	0    -1   -1   0   
$EndComp
Text Label 8500 5200 0    60   ~ 0
ENC1A
Text Label 8500 5100 0    60   ~ 0
ENC1B
Text Label 8500 4800 0    60   ~ 0
ENC2A
Text Label 8500 4700 0    60   ~ 0
ENC2B
Text Label 6975 4000 0    60   ~ 0
ENC1A
Text Label 6975 4200 0    60   ~ 0
ENC1B
Text Label 6975 4800 0    60   ~ 0
ENC2A
Text Label 6975 4900 0    60   ~ 0
ENC2B
NoConn ~ 4625 1400
NoConn ~ 4625 1500
NoConn ~ 4625 1600
NoConn ~ 4625 1700
NoConn ~ 4625 1800
NoConn ~ 4625 1900
NoConn ~ 4625 2000
NoConn ~ 4625 2200
NoConn ~ 4625 2300
NoConn ~ 4625 2400
NoConn ~ 4625 2500
NoConn ~ 4625 2800
NoConn ~ 4625 3000
NoConn ~ 4625 3200
NoConn ~ 4625 3400
NoConn ~ 4625 3500
NoConn ~ 4625 3600
NoConn ~ 4625 3700
NoConn ~ 4625 3800
NoConn ~ 4625 3900
NoConn ~ 4625 4000
NoConn ~ 4625 4100
NoConn ~ 4625 4200
NoConn ~ 4625 4300
NoConn ~ 4625 4400
NoConn ~ 4625 4500
NoConn ~ 4625 4600
NoConn ~ 4625 4800
NoConn ~ 6975 5300
NoConn ~ 6975 5200
NoConn ~ 6975 5100
NoConn ~ 6975 5000
NoConn ~ 6975 4700
NoConn ~ 6975 4600
NoConn ~ 6975 4500
NoConn ~ 6975 4400
NoConn ~ 6975 4300
NoConn ~ 6975 4100
NoConn ~ 6975 3900
NoConn ~ 6975 3800
NoConn ~ 6975 3700
NoConn ~ 6975 3600
NoConn ~ 6975 3500
NoConn ~ 6975 3400
NoConn ~ 6975 3300
NoConn ~ 6975 3100
NoConn ~ 6975 2900
NoConn ~ 6975 2700
NoConn ~ 6975 2600
NoConn ~ 6975 2500
NoConn ~ 6975 2400
NoConn ~ 6975 2300
NoConn ~ 6975 2200
NoConn ~ 6975 2100
NoConn ~ 6975 1900
NoConn ~ 6975 1700
NoConn ~ 6975 1500
NoConn ~ 6975 1300
NoConn ~ 6975 1200
NoConn ~ 6975 1100
NoConn ~ 6975 1000
Text Label 2725 4025 0    60   ~ 0
GREEN1
Text Label 2725 4425 0    60   ~ 0
BLUE1
Text Label 2725 4225 0    60   ~ 0
RED1
Text Label 6975 1400 0    60   ~ 0
GREEN1
Text Label 6975 1600 0    60   ~ 0
BLUE1
Text Label 6975 1800 0    60   ~ 0
RED1
Text Label 6975 2800 0    60   ~ 0
GREEN2
Text Label 6975 3000 0    60   ~ 0
BLUE2
Text Label 6975 3200 0    60   ~ 0
RED2
$Comp
L GND #PWR013
U 1 1 573B54F7
P 8325 3125
F 0 "#PWR013" H 8325 2875 50  0001 C CNN
F 1 "GND" H 8325 2975 50  0000 C CNN
F 2 "" H 8325 3125 50  0000 C CNN
F 3 "" H 8325 3125 50  0000 C CNN
	1    8325 3125
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 573B54F8
P 2575 4025
F 0 "R4" V 2655 4025 50  0000 C CNN
F 1 "150" V 2575 4025 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2505 4025 50  0001 C CNN
F 3 "" H 2575 4025 50  0000 C CNN
	1    2575 4025
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 573B54F9
P 2575 4225
F 0 "R5" V 2655 4225 50  0000 C CNN
F 1 "150" V 2575 4225 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2505 4225 50  0001 C CNN
F 3 "" H 2575 4225 50  0000 C CNN
	1    2575 4225
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 573B54FA
P 2575 4425
F 0 "R6" V 2655 4425 50  0000 C CNN
F 1 "150" V 2575 4425 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 2505 4425 50  0001 C CNN
F 3 "" H 2575 4425 50  0000 C CNN
	1    2575 4425
	0    1    1    0   
$EndComp
NoConn ~ 4625 1000
$Comp
L GND #PWR014
U 1 1 573B54FB
P 1675 4225
F 0 "#PWR014" H 1675 3975 50  0001 C CNN
F 1 "GND" H 1675 4075 50  0000 C CNN
F 2 "" H 1675 4225 50  0000 C CNN
F 3 "" H 1675 4225 50  0000 C CNN
	1    1675 4225
	1    0    0    -1  
$EndComp
NoConn ~ 9900 5150
$Comp
L VCC #PWR015
U 1 1 573B54FC
P 9675 5350
F 0 "#PWR015" H 9675 5200 50  0001 C CNN
F 1 "VCC" H 9675 5500 50  0000 C CNN
F 2 "" H 9675 5350 50  0000 C CNN
F 3 "" H 9675 5350 50  0000 C CNN
	1    9675 5350
	0    -1   -1   0   
$EndComp
NoConn ~ 9900 4575
$Comp
L Level_converter U3
U 1 1 573B54FD
P 9000 4950
F 0 "U3" H 9000 4600 60  0000 C CNN
F 1 "Level_converter" H 9000 5300 60  0000 C CNN
F 2 "BeagleCapePro:Level_Converter" H 9000 5050 60  0001 C CNN
F 3 "" H 9000 5050 60  0000 C CNN
	1    9000 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 573B54FE
P 8500 5000
F 0 "#PWR016" H 8500 4750 50  0001 C CNN
F 1 "GND" H 8500 4850 50  0000 C CNN
F 2 "" H 8500 5000 50  0000 C CNN
F 3 "" H 8500 5000 50  0000 C CNN
	1    8500 5000
	0    1    1    0   
$EndComp
Text Label 8200 4900 0    60   ~ 0
3V3
NoConn ~ 6975 2800
NoConn ~ 6975 3000
NoConn ~ 6975 3200
Wire Wire Line
	4625 800  4575 800 
Wire Wire Line
	4575 700  4575 900 
Wire Wire Line
	4575 900  4625 900 
Connection ~ 4575 850 
Wire Wire Line
	7050 800  7050 900 
Wire Wire Line
	7050 800  6975 800 
Wire Wire Line
	7050 900  6975 900 
Connection ~ 7050 850 
Wire Wire Line
	4625 5000 4575 5000
Wire Wire Line
	4575 5000 4575 5300
Wire Wire Line
	4575 5150 4525 5150
Wire Wire Line
	4625 5100 4575 5100
Connection ~ 4575 5100
Wire Wire Line
	4575 5300 4625 5300
Connection ~ 4575 5150
Wire Wire Line
	4625 5200 4575 5200
Connection ~ 4575 5200
Wire Wire Line
	2650 1250 2575 1250
Wire Wire Line
	2575 1250 2575 1225
Wire Wire Line
	2475 1600 2475 1675
Wire Wire Line
	2475 2425 2475 2350
Wire Wire Line
	2475 1650 2725 1650
Connection ~ 2475 1650
Wire Wire Line
	4625 4700 4200 4700
Wire Wire Line
	1675 4225 1775 4225
Wire Wire Line
	9425 3125 9375 3125
Wire Wire Line
	9375 3025 9425 3025
Wire Wire Line
	8375 3025 8100 3025
Wire Wire Line
	4625 2600 4350 2600
Wire Wire Line
	4625 2700 4350 2700
Wire Wire Line
	4625 3100 4300 3100
Wire Wire Line
	4625 3300 4300 3300
Wire Wire Line
	8375 2825 8075 2825
Wire Wire Line
	8375 2925 8075 2925
Wire Wire Line
	9850 4475 9900 4475
Wire Wire Line
	9825 5050 9900 5050
Wire Wire Line
	9500 5450 9900 5450
Wire Wire Line
	8325 3125 8375 3125
Wire Wire Line
	2375 4025 2425 4025
Wire Wire Line
	2375 4225 2425 4225
Wire Wire Line
	2375 4425 2425 4425
Wire Wire Line
	4625 1100 4400 1100
Wire Wire Line
	2475 1975 2475 2050
Wire Wire Line
	2475 1300 2475 1225
Wire Wire Line
	9500 5250 9900 5250
Wire Wire Line
	9900 5350 9675 5350
Wire Wire Line
	9700 4775 9900 4775
Wire Wire Line
	9900 4675 9675 4675
Wire Wire Line
	9675 4675 9675 4700
Wire Wire Line
	9500 5000 9875 5000
Wire Wire Line
	9875 5000 9875 5050
Connection ~ 9875 5050
Wire Wire Line
	9725 4900 9725 4775
Connection ~ 9725 4775
Wire Wire Line
	8500 4900 8200 4900
Wire Wire Line
	9500 5250 9500 5200
Wire Wire Line
	9500 5450 9500 5300
Wire Wire Line
	9500 5300 9575 5300
Wire Wire Line
	9575 5300 9575 5100
Wire Wire Line
	9575 5100 9500 5100
Wire Wire Line
	9500 4900 9725 4900
Wire Wire Line
	9675 4700 9575 4700
Wire Wire Line
	9575 4700 9575 4800
Wire Wire Line
	9575 4800 9500 4800
Wire Wire Line
	9900 4875 9800 4875
Wire Wire Line
	9800 4875 9800 4700
Wire Wire Line
	9800 4700 9500 4700
Wire Wire Line
	4625 4900 4050 4900
Text Label 4050 4900 0    60   ~ 0
PWM1A
Text Label 6975 2000 0    60   ~ 0
PWM1B
$Comp
L CONN_01X03 P2
U 1 1 573B54FF
P 9300 2050
F 0 "P2" H 9300 2250 50  0000 C CNN
F 1 "CONN_01X03" V 9400 2050 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x03" H 9300 2050 50  0001 C CNN
F 3 "" H 9300 2050 50  0000 C CNN
	1    9300 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 573B5500
P 9025 2200
F 0 "#PWR017" H 9025 1950 50  0001 C CNN
F 1 "GND" H 9025 2050 50  0000 C CNN
F 2 "" H 9025 2200 50  0000 C CNN
F 3 "" H 9025 2200 50  0000 C CNN
	1    9025 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9025 2200 9025 2150
Wire Wire Line
	9025 2150 9100 2150
Wire Wire Line
	9100 1950 8625 1950
Text Label 8625 1950 0    60   ~ 0
PWM1A
Wire Wire Line
	9100 2050 8625 2050
Text Label 8625 2050 0    60   ~ 0
PWM1B
Wire Wire Line
	4625 2100 4250 2100
Text Label 4250 2100 0    60   ~ 0
PWM2A
Wire Wire Line
	4625 2900 4275 2900
Text Label 4275 2900 0    60   ~ 0
PWM2B
$Comp
L CONN_01X03 P6
U 1 1 573B5501
P 10500 2100
F 0 "P6" H 10500 2300 50  0000 C CNN
F 1 "CONN_01X03" V 10600 2100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x03" H 10500 2100 50  0001 C CNN
F 3 "" H 10500 2100 50  0000 C CNN
	1    10500 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 573B5502
P 10225 2250
F 0 "#PWR018" H 10225 2000 50  0001 C CNN
F 1 "GND" H 10225 2100 50  0000 C CNN
F 2 "" H 10225 2250 50  0000 C CNN
F 3 "" H 10225 2250 50  0000 C CNN
	1    10225 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10225 2250 10225 2200
Wire Wire Line
	10225 2200 10300 2200
Wire Wire Line
	10300 2000 9925 2000
Text Label 9925 2000 0    60   ~ 0
PWM2A
Wire Wire Line
	10300 2100 9925 2100
Text Label 9925 2100 0    60   ~ 0
PWM2B
$Comp
L VCC #PWR019
U 1 1 573B5503
P 4425 1300
F 0 "#PWR019" H 4425 1150 50  0001 C CNN
F 1 "VCC" H 4425 1450 50  0000 C CNN
F 2 "" H 4425 1300 50  0000 C CNN
F 3 "" H 4425 1300 50  0000 C CNN
	1    4425 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4425 1300 4625 1300
Wire Wire Line
	4375 1400 4375 1375
Wire Wire Line
	4475 1375 4375 1375
Wire Wire Line
	4475 1200 4475 1375
Connection ~ 4475 1300
$Comp
L MPU6050_TH U4
U 1 1 573B60FB
P 10450 1075
F 0 "U4" H 10450 625 60  0000 C CNN
F 1 "MPU6050_TH" H 10450 1575 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 10450 1175 60  0001 C CNN
F 3 "" H 10450 1175 60  0000 C CNN
	1    10450 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 725  9900 725 
Text Label 9700 725  0    60   ~ 0
3V3
$Comp
L GND #PWR020
U 1 1 573B6712
P 9800 825
F 0 "#PWR020" H 9800 575 50  0001 C CNN
F 1 "GND" H 9800 675 50  0000 C CNN
F 2 "" H 9800 825 50  0000 C CNN
F 3 "" H 9800 825 50  0000 C CNN
	1    9800 825 
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 825  9900 825 
Wire Wire Line
	9900 925  9250 925 
Text Label 9250 925  0    60   ~ 0
SCL
Wire Wire Line
	9900 1025 9250 1025
Text Label 9250 1025 0    60   ~ 0
SDA
NoConn ~ 9900 1125
NoConn ~ 9900 1225
NoConn ~ 9900 1325
NoConn ~ 9900 1425
$Comp
L PWR_FLAG #FLG021
U 1 1 573B8CF8
P 8125 3325
F 0 "#FLG021" H 8125 3420 50  0001 C CNN
F 1 "PWR_FLAG" H 8125 3505 50  0000 C CNN
F 2 "" H 8125 3325 50  0000 C CNN
F 3 "" H 8125 3325 50  0000 C CNN
	1    8125 3325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8125 3325 8300 3325
Wire Wire Line
	8300 3325 8300 3150
Wire Wire Line
	8300 3150 8350 3150
Wire Wire Line
	8350 3150 8350 3125
Connection ~ 8350 3125
Wire Wire Line
	9825 2700 9825 2825
Wire Wire Line
	9825 2825 9900 2825
Wire Wire Line
	9375 2825 9750 2825
Wire Wire Line
	9750 2825 9750 2925
Wire Wire Line
	9750 2925 9900 2925
Wire Wire Line
	9375 2925 9700 2925
Wire Wire Line
	9700 2925 9700 3025
Wire Wire Line
	9700 3025 9900 3025
$Comp
L C 0.1uF1
U 1 1 573BA593
P 4250 1050
F 0 "0.1uF1" H 4275 1150 50  0000 L CNN
F 1 "C" H 4275 950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 4288 900 50  0001 C CNN
F 3 "" H 4250 1050 50  0000 C CNN
	1    4250 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 900  4250 700 
Wire Wire Line
	4250 700  4575 700 
Connection ~ 4575 800 
Wire Wire Line
	4250 1200 4625 1200
$Comp
L CONN_01X02 P7
U 1 1 573BB46C
P 3625 725
F 0 "P7" H 3625 875 50  0000 C CNN
F 1 "CONN_01X02" V 3725 725 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 3625 725 50  0001 C CNN
F 3 "" H 3625 725 50  0000 C CNN
	1    3625 725 
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR022
U 1 1 573BB511
P 3575 975
F 0 "#PWR022" H 3575 825 50  0001 C CNN
F 1 "VCC" H 3575 1125 50  0000 C CNN
F 2 "" H 3575 975 50  0000 C CNN
F 3 "" H 3575 975 50  0000 C CNN
	1    3575 975 
	-1   0    0    1   
$EndComp
Wire Wire Line
	3575 975  3575 925 
$Comp
L GND #PWR023
U 1 1 573BB686
P 3675 975
F 0 "#PWR023" H 3675 725 50  0001 C CNN
F 1 "GND" H 3675 825 50  0000 C CNN
F 2 "" H 3675 975 50  0000 C CNN
F 3 "" H 3675 975 50  0000 C CNN
	1    3675 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3675 975  3675 925 
Connection ~ 4475 1200
$EndSCHEMATC
