EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MAR"
Date "2020-10-03"
Rev "1.1"
Comp "Wilhelm-Maybach-Schule Heilbronn"
Comment1 "Kevin da Silva Fernandes"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS173 U?
U 1 1 5FE54259
P 3400 2500
F 0 "U?" H 3400 3581 50  0000 C CNN
F 1 "74LS173" H 3400 3490 50  0000 C CNN
F 2 "" H 3400 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 3400 2500 50  0001 C CNN
	1    3400 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS173 U?
U 1 1 5FE56C9B
P 3600 4300
F 0 "U?" H 3600 5381 50  0000 C CNN
F 1 "74LS173" H 3600 5290 50  0000 C CNN
F 2 "" H 3600 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 3600 4300 50  0001 C CNN
	1    3600 4300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS173 U?
U 1 1 5FE58DF5
P 3800 6100
F 0 "U?" H 3800 7181 50  0000 C CNN
F 1 "74LS173" H 3800 7090 50  0000 C CNN
F 2 "" H 3800 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 3800 6100 50  0001 C CNN
	1    3800 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FE58F0A
P 3400 1550
F 0 "#PWR?" H 3400 1400 50  0001 C CNN
F 1 "+5V" H 3415 1723 50  0000 C CNN
F 2 "" H 3400 1550 50  0001 C CNN
F 3 "" H 3400 1550 50  0001 C CNN
	1    3400 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FE5B032
P 3600 3350
F 0 "#PWR?" H 3600 3200 50  0001 C CNN
F 1 "+5V" H 3615 3523 50  0000 C CNN
F 2 "" H 3600 3350 50  0001 C CNN
F 3 "" H 3600 3350 50  0001 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FE5B524
P 3800 5150
F 0 "#PWR?" H 3800 5000 50  0001 C CNN
F 1 "+5V" H 3815 5323 50  0000 C CNN
F 2 "" H 3800 5150 50  0001 C CNN
F 3 "" H 3800 5150 50  0001 C CNN
	1    3800 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE5B6A1
P 3400 3450
F 0 "#PWR?" H 3400 3200 50  0001 C CNN
F 1 "GND" H 3405 3277 50  0000 C CNN
F 2 "" H 3400 3450 50  0001 C CNN
F 3 "" H 3400 3450 50  0001 C CNN
	1    3400 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE5C558
P 3600 5250
F 0 "#PWR?" H 3600 5000 50  0001 C CNN
F 1 "GND" H 3605 5077 50  0000 C CNN
F 2 "" H 3600 5250 50  0001 C CNN
F 3 "" H 3600 5250 50  0001 C CNN
	1    3600 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE5CB78
P 3800 7050
F 0 "#PWR?" H 3800 6800 50  0001 C CNN
F 1 "GND" H 3805 6877 50  0000 C CNN
F 2 "" H 3800 7050 50  0001 C CNN
F 3 "" H 3800 7050 50  0001 C CNN
	1    3800 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2400 2850 2400
Wire Wire Line
	2850 2400 2850 2500
Wire Wire Line
	2850 2500 2900 2500
Wire Wire Line
	2900 2700 2850 2700
Wire Wire Line
	2850 2700 2850 2750
Wire Wire Line
	2850 2800 2900 2800
Wire Wire Line
	3100 4200 3050 4200
Wire Wire Line
	3050 4200 3050 4300
Wire Wire Line
	3050 4300 3100 4300
Wire Wire Line
	3100 4500 3050 4500
Wire Wire Line
	3050 4500 3050 4550
Wire Wire Line
	3050 4600 3100 4600
Wire Wire Line
	3300 6000 3250 6000
Wire Wire Line
	3250 6000 3250 6100
Wire Wire Line
	3250 6100 3300 6100
Wire Wire Line
	3300 6300 3250 6300
Wire Wire Line
	3250 6300 3250 6350
Wire Wire Line
	3250 6400 3300 6400
$Comp
L power:GND #PWR?
U 1 1 5FE5DFF3
P 3150 6000
F 0 "#PWR?" H 3150 5750 50  0001 C CNN
F 1 "GND" H 3155 5827 50  0000 C CNN
F 2 "" H 3150 6000 50  0001 C CNN
F 3 "" H 3150 6000 50  0001 C CNN
	1    3150 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6000 3250 6000
Connection ~ 3250 6000
$Comp
L power:GND #PWR?
U 1 1 5FE5F3FC
P 2950 4200
F 0 "#PWR?" H 2950 3950 50  0001 C CNN
F 1 "GND" H 2955 4027 50  0000 C CNN
F 2 "" H 2950 4200 50  0001 C CNN
F 3 "" H 2950 4200 50  0001 C CNN
	1    2950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4200 3050 4200
Connection ~ 3050 4200
$Comp
L power:GND #PWR?
U 1 1 5FE6018E
P 2750 2400
F 0 "#PWR?" H 2750 2150 50  0001 C CNN
F 1 "GND" H 2755 2227 50  0000 C CNN
F 2 "" H 2750 2400 50  0001 C CNN
F 3 "" H 2750 2400 50  0001 C CNN
	1    2750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2400 2850 2400
Connection ~ 2850 2400
Text Label 2650 1900 0    50   ~ 0
ADDR0
Text Label 2650 2000 0    50   ~ 0
ADDR1
Text Label 2650 2100 0    50   ~ 0
ADDR2
Text Label 2650 2200 0    50   ~ 0
ADDR3
Wire Wire Line
	2900 1900 2600 1900
Wire Wire Line
	2900 2000 2600 2000
Wire Wire Line
	2600 2100 2900 2100
Wire Wire Line
	2900 2200 2600 2200
Text Label 2850 3700 0    50   ~ 0
ADDR4
Text Label 2850 3800 0    50   ~ 0
ADDR5
Text Label 2850 3900 0    50   ~ 0
ADDR6
Text Label 2850 4000 0    50   ~ 0
ADDR7
Wire Wire Line
	3100 3700 2800 3700
Wire Wire Line
	3100 3800 2800 3800
Wire Wire Line
	2800 3900 3100 3900
Wire Wire Line
	3100 4000 2800 4000
Text Label 3050 5500 0    50   ~ 0
ADDR8
Text Label 3050 5600 0    50   ~ 0
ADDR9
Text Label 3050 5700 0    50   ~ 0
ADDR10
Text Label 3050 5800 0    50   ~ 0
ADDR11
Wire Wire Line
	3300 5500 3000 5500
Wire Wire Line
	3300 5600 3000 5600
Wire Wire Line
	3000 5700 3300 5700
Wire Wire Line
	3300 5800 3000 5800
Entry Wire Line
	2900 5400 3000 5500
Entry Wire Line
	2900 5500 3000 5600
Entry Wire Line
	2900 5600 3000 5700
Entry Wire Line
	2900 5700 3000 5800
Entry Wire Line
	2700 3700 2800 3800
Entry Wire Line
	2700 3600 2800 3700
Entry Wire Line
	2700 3800 2800 3900
Entry Wire Line
	2700 3900 2800 4000
Entry Wire Line
	2500 2100 2600 2200
Entry Wire Line
	2500 2000 2600 2100
Entry Wire Line
	2500 1900 2600 2000
Entry Wire Line
	2500 1800 2600 1900
Text GLabel 2500 1750 1    50   Input ~ 0
ADDR[0..11]
Wire Wire Line
	3000 4550 3050 4550
Connection ~ 3050 4550
Wire Wire Line
	3050 4550 3050 4600
Text GLabel 3000 4550 0    50   Input ~ 0
~MC
Text GLabel 2800 2750 0    50   Input ~ 0
~MC
Text GLabel 3200 6350 0    50   Input ~ 0
~MC
Wire Wire Line
	3200 6350 3250 6350
Connection ~ 3250 6350
Wire Wire Line
	3250 6350 3250 6400
Wire Wire Line
	2800 2750 2850 2750
Connection ~ 2850 2750
Wire Wire Line
	2850 2750 2850 2800
Text GLabel 2850 2900 0    50   Input ~ 0
CLK
Wire Wire Line
	2850 2900 2900 2900
Text GLabel 3050 4700 0    50   Input ~ 0
CLK
Wire Wire Line
	3050 4700 3100 4700
Text GLabel 3250 6500 0    50   Input ~ 0
CLK
Wire Wire Line
	3250 6500 3300 6500
$Comp
L power:GND #PWR?
U 1 1 5FE6E933
P 3250 6700
F 0 "#PWR?" H 3250 6450 50  0001 C CNN
F 1 "GND" H 3255 6527 50  0000 C CNN
F 2 "" H 3250 6700 50  0001 C CNN
F 3 "" H 3250 6700 50  0001 C CNN
	1    3250 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6F517
P 3050 4900
F 0 "#PWR?" H 3050 4650 50  0001 C CNN
F 1 "GND" H 3055 4727 50  0000 C CNN
F 2 "" H 3050 4900 50  0001 C CNN
F 3 "" H 3050 4900 50  0001 C CNN
	1    3050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6700 3300 6700
Wire Wire Line
	3050 4900 3100 4900
$Comp
L power:GND #PWR?
U 1 1 5FE72DEC
P 2850 3100
F 0 "#PWR?" H 2850 2850 50  0001 C CNN
F 1 "GND" H 2855 2927 50  0000 C CNN
F 2 "" H 2850 3100 50  0001 C CNN
F 3 "" H 2850 3100 50  0001 C CNN
	1    2850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3100 2900 3100
$Comp
L Device:C C?
U 1 1 5FE74995
P 2100 2400
F 0 "C?" H 2215 2446 50  0000 L CNN
F 1 "C" H 2215 2355 50  0000 L CNN
F 2 "" H 2138 2250 50  0001 C CNN
F 3 "~" H 2100 2400 50  0001 C CNN
	1    2100 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE74E3E
P 2100 2600
F 0 "#PWR?" H 2100 2350 50  0001 C CNN
F 1 "GND" H 2105 2427 50  0000 C CNN
F 2 "" H 2100 2600 50  0001 C CNN
F 3 "" H 2100 2600 50  0001 C CNN
	1    2100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7050 3800 7000
Wire Wire Line
	3800 5150 3800 5200
Wire Wire Line
	3600 5250 3600 5200
Wire Wire Line
	3600 3350 3600 3400
Wire Wire Line
	3400 3450 3400 3400
Wire Wire Line
	3400 1550 3400 1600
$Comp
L power:+5V #PWR?
U 1 1 5FE8015F
P 2100 2200
F 0 "#PWR?" H 2100 2050 50  0001 C CNN
F 1 "+5V" H 2115 2373 50  0000 C CNN
F 2 "" H 2100 2200 50  0001 C CNN
F 3 "" H 2100 2200 50  0001 C CNN
	1    2100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2200 2100 2250
Wire Wire Line
	2100 2600 2100 2550
$Comp
L Device:C C?
U 1 1 5FE8464B
P 2300 4300
F 0 "C?" H 2415 4346 50  0000 L CNN
F 1 "C" H 2415 4255 50  0000 L CNN
F 2 "" H 2338 4150 50  0001 C CNN
F 3 "~" H 2300 4300 50  0001 C CNN
	1    2300 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE84651
P 2300 4500
F 0 "#PWR?" H 2300 4250 50  0001 C CNN
F 1 "GND" H 2305 4327 50  0000 C CNN
F 2 "" H 2300 4500 50  0001 C CNN
F 3 "" H 2300 4500 50  0001 C CNN
	1    2300 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FE84657
P 2300 4100
F 0 "#PWR?" H 2300 3950 50  0001 C CNN
F 1 "+5V" H 2315 4273 50  0000 C CNN
F 2 "" H 2300 4100 50  0001 C CNN
F 3 "" H 2300 4100 50  0001 C CNN
	1    2300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4100 2300 4150
Wire Wire Line
	2300 4500 2300 4450
$Comp
L Device:C C?
U 1 1 5FE8631C
P 2500 6000
F 0 "C?" H 2615 6046 50  0000 L CNN
F 1 "C" H 2615 5955 50  0000 L CNN
F 2 "" H 2538 5850 50  0001 C CNN
F 3 "~" H 2500 6000 50  0001 C CNN
	1    2500 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE86322
P 2500 6200
F 0 "#PWR?" H 2500 5950 50  0001 C CNN
F 1 "GND" H 2505 6027 50  0000 C CNN
F 2 "" H 2500 6200 50  0001 C CNN
F 3 "" H 2500 6200 50  0001 C CNN
	1    2500 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FE86328
P 2500 5800
F 0 "#PWR?" H 2500 5650 50  0001 C CNN
F 1 "+5V" H 2515 5973 50  0000 C CNN
F 2 "" H 2500 5800 50  0001 C CNN
F 3 "" H 2500 5800 50  0001 C CNN
	1    2500 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5800 2500 5850
Wire Wire Line
	2500 6200 2500 6150
Wire Wire Line
	4100 3700 4350 3700
Wire Wire Line
	4100 3800 4450 3800
Wire Wire Line
	4100 3900 4550 3900
Wire Wire Line
	4100 4000 4650 4000
Wire Wire Line
	4300 5500 4750 5500
Wire Wire Line
	4850 5600 4300 5600
Wire Wire Line
	4300 5700 4950 5700
Wire Wire Line
	5050 5800 4300 5800
Wire Wire Line
	3900 2200 4250 2200
Wire Wire Line
	3900 2100 4150 2100
Wire Wire Line
	3900 2000 4050 2000
Wire Wire Line
	3900 1900 3950 1900
Text Label 3950 1850 1    50   ~ 0
MEMADDR0
Text Label 4050 1850 1    50   ~ 0
MEMADDR1
Text Label 4150 1850 1    50   ~ 0
MEMADDR2
Text Label 4250 1850 1    50   ~ 0
MEMADDR3
Text Label 4350 1850 1    50   ~ 0
MEMADDR4
Text Label 4450 1850 1    50   ~ 0
MEMADDR5
Text Label 4550 1850 1    50   ~ 0
MEMADDR6
Text Label 4650 1850 1    50   ~ 0
MEMADDR7
Text Label 4750 1850 1    50   ~ 0
MEMADDR8
Text Label 4850 1850 1    50   ~ 0
MEMADDR9
Text Label 4950 1850 1    50   ~ 0
MEMADDR10
Text Label 5050 1850 1    50   ~ 0
MEMADDR11
Wire Wire Line
	5050 1400 5050 3000
Wire Wire Line
	4950 1400 4950 2900
Wire Wire Line
	4850 1400 4850 2800
Wire Wire Line
	4750 1400 4750 2700
Wire Wire Line
	4650 1400 4650 2600
Wire Wire Line
	4550 1400 4550 2500
Wire Wire Line
	4450 1400 4450 2400
Wire Wire Line
	4350 1400 4350 2300
Wire Wire Line
	4250 1400 4250 2200
Wire Wire Line
	4150 1400 4150 2100
Wire Wire Line
	4050 1400 4050 2000
Wire Wire Line
	3950 1400 3950 1900
Entry Wire Line
	5150 1300 5050 1400
Entry Wire Line
	5050 1300 4950 1400
Entry Wire Line
	4950 1300 4850 1400
Entry Wire Line
	4850 1300 4750 1400
Entry Wire Line
	4750 1300 4650 1400
Entry Wire Line
	4650 1300 4550 1400
Entry Wire Line
	4550 1300 4450 1400
Entry Wire Line
	4450 1300 4350 1400
Entry Wire Line
	4350 1300 4250 1400
Entry Wire Line
	4250 1300 4150 1400
Entry Wire Line
	4150 1300 4050 1400
Entry Wire Line
	4050 1300 3950 1400
Text GLabel 5200 1300 2    50   Output ~ 0
MEMADDR[0..11]
Wire Wire Line
	3950 1900 5150 1900
Connection ~ 3950 1900
Wire Wire Line
	5150 2000 4050 2000
Connection ~ 4050 2000
Wire Wire Line
	4150 2100 5150 2100
Connection ~ 4150 2100
Wire Wire Line
	4250 2200 5150 2200
Connection ~ 4250 2200
Wire Wire Line
	4350 2300 5150 2300
Connection ~ 4350 2300
Wire Wire Line
	4350 2300 4350 3700
Wire Wire Line
	5150 2400 4450 2400
Connection ~ 4450 2400
Wire Wire Line
	4450 2400 4450 3800
Wire Wire Line
	5150 2500 4550 2500
Connection ~ 4550 2500
Wire Wire Line
	4550 2500 4550 3900
Wire Wire Line
	5150 2600 4650 2600
Connection ~ 4650 2600
Wire Wire Line
	4650 2600 4650 4000
Wire Wire Line
	5150 2700 4750 2700
Connection ~ 4750 2700
Wire Wire Line
	4750 2700 4750 5500
Wire Wire Line
	5150 2800 4850 2800
Connection ~ 4850 2800
Wire Wire Line
	4850 2800 4850 5600
Wire Wire Line
	5150 2900 4950 2900
Connection ~ 4950 2900
Wire Wire Line
	4950 2900 4950 5700
Wire Wire Line
	5150 3000 5050 3000
Connection ~ 5050 3000
Wire Wire Line
	5050 3000 5050 5800
$Comp
L Device:R R?
U 1 1 5FF45F83
P 5300 1900
F 0 "R?" V 5093 1900 50  0000 C CNN
F 1 "R" V 5184 1900 50  0000 C CNN
F 2 "" V 5230 1900 50  0001 C CNN
F 3 "~" H 5300 1900 50  0001 C CNN
	1    5300 1900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF46CA2
P 5650 1900
F 0 "D?" H 5643 1645 50  0000 C CNN
F 1 "LED" H 5643 1736 50  0000 C CNN
F 2 "" H 5650 1900 50  0001 C CNN
F 3 "~" H 5650 1900 50  0001 C CNN
	1    5650 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 1900 5450 1900
$Comp
L Device:R R?
U 1 1 5FF4AFE3
P 5300 2000
F 0 "R?" V 5093 2000 50  0000 C CNN
F 1 "R" V 5184 2000 50  0000 C CNN
F 2 "" V 5230 2000 50  0001 C CNN
F 3 "~" H 5300 2000 50  0001 C CNN
	1    5300 2000
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF4AFE9
P 5650 2000
F 0 "D?" H 5643 1745 50  0000 C CNN
F 1 "LED" H 5643 1836 50  0000 C CNN
F 2 "" H 5650 2000 50  0001 C CNN
F 3 "~" H 5650 2000 50  0001 C CNN
	1    5650 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2000 5450 2000
$Comp
L Device:R R?
U 1 1 5FF4DA6B
P 5300 2100
F 0 "R?" V 5093 2100 50  0000 C CNN
F 1 "R" V 5184 2100 50  0000 C CNN
F 2 "" V 5230 2100 50  0001 C CNN
F 3 "~" H 5300 2100 50  0001 C CNN
	1    5300 2100
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF4DA71
P 5650 2100
F 0 "D?" H 5643 1845 50  0000 C CNN
F 1 "LED" H 5643 1936 50  0000 C CNN
F 2 "" H 5650 2100 50  0001 C CNN
F 3 "~" H 5650 2100 50  0001 C CNN
	1    5650 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2100 5450 2100
$Comp
L Device:R R?
U 1 1 5FF5059A
P 5300 2200
F 0 "R?" V 5093 2200 50  0000 C CNN
F 1 "R" V 5184 2200 50  0000 C CNN
F 2 "" V 5230 2200 50  0001 C CNN
F 3 "~" H 5300 2200 50  0001 C CNN
	1    5300 2200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF505A0
P 5650 2200
F 0 "D?" H 5643 1945 50  0000 C CNN
F 1 "LED" H 5643 2036 50  0000 C CNN
F 2 "" H 5650 2200 50  0001 C CNN
F 3 "~" H 5650 2200 50  0001 C CNN
	1    5650 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2200 5450 2200
$Comp
L Device:R R?
U 1 1 5FF53368
P 5300 2300
F 0 "R?" V 5093 2300 50  0000 C CNN
F 1 "R" V 5184 2300 50  0000 C CNN
F 2 "" V 5230 2300 50  0001 C CNN
F 3 "~" H 5300 2300 50  0001 C CNN
	1    5300 2300
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF5336E
P 5650 2300
F 0 "D?" H 5643 2045 50  0000 C CNN
F 1 "LED" H 5643 2136 50  0000 C CNN
F 2 "" H 5650 2300 50  0001 C CNN
F 3 "~" H 5650 2300 50  0001 C CNN
	1    5650 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2300 5450 2300
$Comp
L Device:R R?
U 1 1 5FF55F87
P 5300 2400
F 0 "R?" V 5093 2400 50  0000 C CNN
F 1 "R" V 5184 2400 50  0000 C CNN
F 2 "" V 5230 2400 50  0001 C CNN
F 3 "~" H 5300 2400 50  0001 C CNN
	1    5300 2400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF55F8D
P 5650 2400
F 0 "D?" H 5643 2145 50  0000 C CNN
F 1 "LED" H 5643 2236 50  0000 C CNN
F 2 "" H 5650 2400 50  0001 C CNN
F 3 "~" H 5650 2400 50  0001 C CNN
	1    5650 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2400 5450 2400
$Comp
L Device:R R?
U 1 1 5FF58F45
P 5300 2500
F 0 "R?" V 5093 2500 50  0000 C CNN
F 1 "R" V 5184 2500 50  0000 C CNN
F 2 "" V 5230 2500 50  0001 C CNN
F 3 "~" H 5300 2500 50  0001 C CNN
	1    5300 2500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF58F4B
P 5650 2500
F 0 "D?" H 5643 2245 50  0000 C CNN
F 1 "LED" H 5643 2336 50  0000 C CNN
F 2 "" H 5650 2500 50  0001 C CNN
F 3 "~" H 5650 2500 50  0001 C CNN
	1    5650 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2500 5450 2500
$Comp
L Device:R R?
U 1 1 5FF5BBE6
P 5300 2600
F 0 "R?" V 5093 2600 50  0000 C CNN
F 1 "R" V 5184 2600 50  0000 C CNN
F 2 "" V 5230 2600 50  0001 C CNN
F 3 "~" H 5300 2600 50  0001 C CNN
	1    5300 2600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF5BBEC
P 5650 2600
F 0 "D?" H 5643 2345 50  0000 C CNN
F 1 "LED" H 5643 2436 50  0000 C CNN
F 2 "" H 5650 2600 50  0001 C CNN
F 3 "~" H 5650 2600 50  0001 C CNN
	1    5650 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2600 5450 2600
$Comp
L Device:R R?
U 1 1 5FF5EC37
P 5300 2700
F 0 "R?" V 5093 2700 50  0000 C CNN
F 1 "R" V 5184 2700 50  0000 C CNN
F 2 "" V 5230 2700 50  0001 C CNN
F 3 "~" H 5300 2700 50  0001 C CNN
	1    5300 2700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF5EC3D
P 5650 2700
F 0 "D?" H 5643 2445 50  0000 C CNN
F 1 "LED" H 5643 2536 50  0000 C CNN
F 2 "" H 5650 2700 50  0001 C CNN
F 3 "~" H 5650 2700 50  0001 C CNN
	1    5650 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2700 5450 2700
$Comp
L Device:R R?
U 1 1 5FF61BF4
P 5300 2800
F 0 "R?" V 5093 2800 50  0000 C CNN
F 1 "R" V 5184 2800 50  0000 C CNN
F 2 "" V 5230 2800 50  0001 C CNN
F 3 "~" H 5300 2800 50  0001 C CNN
	1    5300 2800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF61BFA
P 5650 2800
F 0 "D?" H 5643 2545 50  0000 C CNN
F 1 "LED" H 5643 2636 50  0000 C CNN
F 2 "" H 5650 2800 50  0001 C CNN
F 3 "~" H 5650 2800 50  0001 C CNN
	1    5650 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2800 5450 2800
$Comp
L Device:R R?
U 1 1 5FF64C9E
P 5300 2900
F 0 "R?" V 5093 2900 50  0000 C CNN
F 1 "R" V 5184 2900 50  0000 C CNN
F 2 "" V 5230 2900 50  0001 C CNN
F 3 "~" H 5300 2900 50  0001 C CNN
	1    5300 2900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF64CA4
P 5650 2900
F 0 "D?" H 5643 2645 50  0000 C CNN
F 1 "LED" H 5643 2736 50  0000 C CNN
F 2 "" H 5650 2900 50  0001 C CNN
F 3 "~" H 5650 2900 50  0001 C CNN
	1    5650 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2900 5450 2900
$Comp
L Device:R R?
U 1 1 5FF67EAA
P 5300 3000
F 0 "R?" V 5093 3000 50  0000 C CNN
F 1 "R" V 5184 3000 50  0000 C CNN
F 2 "" V 5230 3000 50  0001 C CNN
F 3 "~" H 5300 3000 50  0001 C CNN
	1    5300 3000
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FF67EB0
P 5650 3000
F 0 "D?" H 5643 2745 50  0000 C CNN
F 1 "LED" H 5643 2836 50  0000 C CNN
F 2 "" H 5650 3000 50  0001 C CNN
F 3 "~" H 5650 3000 50  0001 C CNN
	1    5650 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3000 5450 3000
Wire Wire Line
	5800 1900 5850 1900
Wire Wire Line
	5800 3000 5850 3000
Connection ~ 5850 3000
Wire Wire Line
	5850 3000 5850 3050
Wire Wire Line
	5850 2900 5800 2900
Connection ~ 5850 2900
Wire Wire Line
	5850 2900 5850 3000
Wire Wire Line
	5800 2800 5850 2800
Connection ~ 5850 2800
Wire Wire Line
	5850 2800 5850 2900
Wire Wire Line
	5850 2700 5800 2700
Connection ~ 5850 2700
Wire Wire Line
	5850 2700 5850 2800
Wire Wire Line
	5800 2600 5850 2600
Connection ~ 5850 2600
Wire Wire Line
	5850 2600 5850 2700
Wire Wire Line
	5850 2500 5800 2500
Connection ~ 5850 2500
Wire Wire Line
	5850 2500 5850 2600
Wire Wire Line
	5800 2400 5850 2400
Connection ~ 5850 2400
Wire Wire Line
	5850 2400 5850 2500
Wire Wire Line
	5850 2300 5800 2300
Connection ~ 5850 2300
Wire Wire Line
	5850 2300 5850 2400
Wire Wire Line
	5800 2200 5850 2200
Wire Wire Line
	5850 1900 5850 2000
Connection ~ 5850 2200
Wire Wire Line
	5850 2200 5850 2300
Wire Wire Line
	5850 2100 5800 2100
Connection ~ 5850 2100
Wire Wire Line
	5850 2100 5850 2200
Wire Wire Line
	5800 2000 5850 2000
Connection ~ 5850 2000
Wire Wire Line
	5850 2000 5850 2100
$Comp
L power:GND #PWR?
U 1 1 5FF9737E
P 5850 3050
F 0 "#PWR?" H 5850 2800 50  0001 C CNN
F 1 "GND" H 5855 2877 50  0000 C CNN
F 2 "" H 5850 3050 50  0001 C CNN
F 3 "" H 5850 3050 50  0001 C CNN
	1    5850 3050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 5F875572
P 8500 4000
F 0 "U?" H 8500 3019 50  0000 C CNN
F 1 "74LS245" H 8500 3110 50  0000 C CNN
F 2 "" H 8500 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 8500 4000 50  0001 C CNN
	1    8500 4000
	1    0    0    1   
$EndComp
Text GLabel 7950 3500 0    50   Input ~ 0
~CONST
Wire Wire Line
	7950 3500 8000 3500
$Comp
L Device:C C?
U 1 1 5F880322
P 9750 4000
F 0 "C?" H 9865 4046 50  0000 L CNN
F 1 "C" H 9865 3955 50  0000 L CNN
F 2 "" H 9788 3850 50  0001 C CNN
F 3 "~" H 9750 4000 50  0001 C CNN
	1    9750 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F880328
P 9750 4200
F 0 "#PWR?" H 9750 3950 50  0001 C CNN
F 1 "GND" H 9755 4027 50  0000 C CNN
F 2 "" H 9750 4200 50  0001 C CNN
F 3 "" H 9750 4200 50  0001 C CNN
	1    9750 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F88032E
P 9750 3800
F 0 "#PWR?" H 9750 3650 50  0001 C CNN
F 1 "+5V" H 9765 3973 50  0000 C CNN
F 2 "" H 9750 3800 50  0001 C CNN
F 3 "" H 9750 3800 50  0001 C CNN
	1    9750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3800 9750 3850
Wire Wire Line
	9750 4200 9750 4150
$Comp
L power:GND #PWR?
U 1 1 5F884768
P 8500 3150
F 0 "#PWR?" H 8500 2900 50  0001 C CNN
F 1 "GND" H 8505 2977 50  0000 C CNN
F 2 "" H 8500 3150 50  0001 C CNN
F 3 "" H 8500 3150 50  0001 C CNN
	1    8500 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 3150 8500 3200
$Comp
L power:+5V #PWR?
U 1 1 5F889751
P 8500 4850
F 0 "#PWR?" H 8500 4700 50  0001 C CNN
F 1 "+5V" H 8515 5023 50  0000 C CNN
F 2 "" H 8500 4850 50  0001 C CNN
F 3 "" H 8500 4850 50  0001 C CNN
	1    8500 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 4800 8500 4850
$Comp
L power:+5V #PWR?
U 1 1 5F88E744
P 7950 3600
F 0 "#PWR?" H 7950 3450 50  0001 C CNN
F 1 "+5V" H 7965 3773 50  0000 C CNN
F 2 "" H 7950 3600 50  0001 C CNN
F 3 "" H 7950 3600 50  0001 C CNN
	1    7950 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 3600 8000 3600
$Comp
L 74xx:74LS245 U?
U 1 1 5F898431
P 8500 1900
F 0 "U?" H 8500 919 50  0000 C CNN
F 1 "74LS245" H 8500 1010 50  0000 C CNN
F 2 "" H 8500 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 8500 1900 50  0001 C CNN
	1    8500 1900
	1    0    0    1   
$EndComp
Text GLabel 7950 1400 0    50   Input ~ 0
~CONST
Wire Wire Line
	7950 1400 8000 1400
$Comp
L Device:C C?
U 1 1 5F898439
P 9750 1900
F 0 "C?" H 9865 1946 50  0000 L CNN
F 1 "C" H 9865 1855 50  0000 L CNN
F 2 "" H 9788 1750 50  0001 C CNN
F 3 "~" H 9750 1900 50  0001 C CNN
	1    9750 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F89843F
P 9750 2100
F 0 "#PWR?" H 9750 1850 50  0001 C CNN
F 1 "GND" H 9755 1927 50  0000 C CNN
F 2 "" H 9750 2100 50  0001 C CNN
F 3 "" H 9750 2100 50  0001 C CNN
	1    9750 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F898445
P 9750 1700
F 0 "#PWR?" H 9750 1550 50  0001 C CNN
F 1 "+5V" H 9765 1873 50  0000 C CNN
F 2 "" H 9750 1700 50  0001 C CNN
F 3 "" H 9750 1700 50  0001 C CNN
	1    9750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1700 9750 1750
Wire Wire Line
	9750 2100 9750 2050
$Comp
L power:GND #PWR?
U 1 1 5F89844D
P 8500 1050
F 0 "#PWR?" H 8500 800 50  0001 C CNN
F 1 "GND" H 8505 877 50  0000 C CNN
F 2 "" H 8500 1050 50  0001 C CNN
F 3 "" H 8500 1050 50  0001 C CNN
	1    8500 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 1050 8500 1100
$Comp
L power:+5V #PWR?
U 1 1 5F898454
P 8500 2750
F 0 "#PWR?" H 8500 2600 50  0001 C CNN
F 1 "+5V" H 8515 2923 50  0000 C CNN
F 2 "" H 8500 2750 50  0001 C CNN
F 3 "" H 8500 2750 50  0001 C CNN
	1    8500 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 2700 8500 2750
$Comp
L power:+5V #PWR?
U 1 1 5F89845B
P 7950 1500
F 0 "#PWR?" H 7950 1350 50  0001 C CNN
F 1 "+5V" H 7965 1673 50  0000 C CNN
F 2 "" H 7950 1500 50  0001 C CNN
F 3 "" H 7950 1500 50  0001 C CNN
	1    7950 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 1500 8000 1500
$Comp
L power:GND #PWR?
U 1 1 5F89D0B1
P 7950 1700
F 0 "#PWR?" H 7950 1450 50  0001 C CNN
F 1 "GND" H 7955 1527 50  0000 C CNN
F 2 "" H 7950 1700 50  0001 C CNN
F 3 "" H 7950 1700 50  0001 C CNN
	1    7950 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F89DCFE
P 7950 1800
F 0 "#PWR?" H 7950 1550 50  0001 C CNN
F 1 "GND" H 7955 1627 50  0000 C CNN
F 2 "" H 7950 1800 50  0001 C CNN
F 3 "" H 7950 1800 50  0001 C CNN
	1    7950 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F89DEC6
P 7950 1900
F 0 "#PWR?" H 7950 1650 50  0001 C CNN
F 1 "GND" H 7955 1727 50  0000 C CNN
F 2 "" H 7950 1900 50  0001 C CNN
F 3 "" H 7950 1900 50  0001 C CNN
	1    7950 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F89E087
P 7950 2000
F 0 "#PWR?" H 7950 1750 50  0001 C CNN
F 1 "GND" H 7955 1827 50  0000 C CNN
F 2 "" H 7950 2000 50  0001 C CNN
F 3 "" H 7950 2000 50  0001 C CNN
	1    7950 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 1700 8000 1700
Wire Wire Line
	8000 1800 7950 1800
Wire Wire Line
	8000 1900 7950 1900
Wire Wire Line
	7950 2000 8000 2000
Wire Wire Line
	7650 2400 7650 3800
Wire Wire Line
	7650 3800 8000 3800
Wire Wire Line
	7650 2400 8000 2400
Wire Wire Line
	8000 3900 7650 3900
Wire Wire Line
	7650 3900 7650 3800
Connection ~ 7650 3800
Wire Wire Line
	7650 3900 7650 4000
Wire Wire Line
	7650 4500 8000 4500
Connection ~ 7650 3900
Wire Wire Line
	7650 4400 8000 4400
Connection ~ 7650 4400
Wire Wire Line
	7650 4400 7650 4500
Wire Wire Line
	7650 4300 8000 4300
Connection ~ 7650 4300
Wire Wire Line
	7650 4300 7650 4400
Wire Wire Line
	8000 4200 7650 4200
Connection ~ 7650 4200
Wire Wire Line
	7650 4200 7650 4300
Wire Wire Line
	7650 4100 8000 4100
Connection ~ 7650 4100
Wire Wire Line
	7650 4100 7650 4200
Wire Wire Line
	8000 4000 7650 4000
Connection ~ 7650 4000
Wire Wire Line
	7650 4000 7650 4100
Wire Wire Line
	8000 2300 7650 2300
Wire Wire Line
	7650 2300 7650 2400
Connection ~ 7650 2400
Wire Wire Line
	7650 2300 7650 2200
Wire Wire Line
	7650 2200 8000 2200
Connection ~ 7650 2300
Wire Wire Line
	7650 2100 8000 2100
$Comp
L power:+5V #PWR?
U 1 1 5F8B3403
P 7650 2100
F 0 "#PWR?" H 7650 1950 50  0001 C CNN
F 1 "+5V" H 7665 2273 50  0000 C CNN
F 2 "" H 7650 2100 50  0001 C CNN
F 3 "" H 7650 2100 50  0001 C CNN
	1    7650 2100
	1    0    0    -1  
$EndComp
NoConn ~ 9000 1700
NoConn ~ 9000 1800
NoConn ~ 9000 1900
NoConn ~ 9000 2000
Text Label 9050 4500 0    50   ~ 0
ADDR0
Text Label 9050 4400 0    50   ~ 0
ADDR1
Text Label 9050 4300 0    50   ~ 0
ADDR2
Text Label 9050 4200 0    50   ~ 0
ADDR3
Text Label 9050 4100 0    50   ~ 0
ADDR4
Text Label 9050 4000 0    50   ~ 0
ADDR5
Text Label 9050 3900 0    50   ~ 0
ADDR6
Text Label 9050 3800 0    50   ~ 0
ADDR7
Text Label 9050 2400 0    50   ~ 0
ADDR8
Text Label 9050 2300 0    50   ~ 0
ADDR9
Text Label 9050 2200 0    50   ~ 0
ADDR10
Text Label 9050 2100 0    50   ~ 0
ADDR11
Wire Wire Line
	9000 2100 9350 2100
Wire Wire Line
	9000 2200 9350 2200
Wire Wire Line
	9000 2300 9350 2300
Wire Wire Line
	9000 2400 9350 2400
Wire Wire Line
	9000 3800 9350 3800
Wire Wire Line
	9000 3900 9350 3900
Wire Wire Line
	9000 4000 9350 4000
Wire Wire Line
	9000 4100 9350 4100
Wire Wire Line
	9000 4200 9350 4200
Wire Wire Line
	9000 4300 9350 4300
Wire Wire Line
	9000 4400 9350 4400
Wire Wire Line
	9000 4500 9350 4500
Entry Wire Line
	9350 4500 9450 4400
Entry Wire Line
	9350 4400 9450 4300
Entry Wire Line
	9350 4300 9450 4200
Entry Wire Line
	9350 4200 9450 4100
Entry Wire Line
	9350 4100 9450 4000
Entry Wire Line
	9350 4000 9450 3900
Entry Wire Line
	9350 3900 9450 3800
Entry Wire Line
	9350 3800 9450 3700
Entry Wire Line
	9350 2400 9450 2300
Entry Wire Line
	9350 2300 9450 2200
Entry Wire Line
	9350 2200 9450 2100
Entry Wire Line
	9350 2100 9450 2000
Wire Bus Line
	2500 1750 2500 2100
Wire Bus Line
	2700 3550 2700 3900
Wire Bus Line
	2900 5350 2900 5700
Wire Bus Line
	4050 1300 5200 1300
Wire Bus Line
	9450 1950 9450 4400
Text GLabel 9450 1950 1    50   Output ~ 0
ADDR[0..11]
Text GLabel 2700 3550 1    50   Input ~ 0
ADDR[0..11]
Text GLabel 2900 5350 1    50   Input ~ 0
ADDR[0..11]
$EndSCHEMATC
