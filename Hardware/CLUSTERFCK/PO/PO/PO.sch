EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Parallel Out Module"
Date ""
Rev "1.0"
Comp "Wilhelm-Maybach-Schule Heilbronn"
Comment1 "Kevin da Silva Fernandes"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5FD3BEA3
P 6450 4500
F 0 "#PWR?" H 6450 4250 50  0001 C CNN
F 1 "GND" H 6455 4327 50  0000 C CNN
F 2 "" H 6450 4500 50  0001 C CNN
F 3 "" H 6450 4500 50  0001 C CNN
	1    6450 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FD3C43A
P 6450 3900
F 0 "#PWR?" H 6450 3750 50  0001 C CNN
F 1 "+5V" H 6465 4073 50  0000 C CNN
F 2 "" H 6450 3900 50  0001 C CNN
F 3 "" H 6450 3900 50  0001 C CNN
	1    6450 3900
	1    0    0    -1  
$EndComp
Text Label 6650 4650 1    50   ~ 0
DATA0
Text Label 6750 4650 1    50   ~ 0
DATA1
Text Label 6850 4650 1    50   ~ 0
DATA2
Text Label 6950 4650 1    50   ~ 0
DATA3
Text Label 7050 4650 1    50   ~ 0
DATA4
Text Label 7150 4650 1    50   ~ 0
DATA5
Text Label 7150 3750 3    50   ~ 0
DATA6
Text Label 7050 3750 3    50   ~ 0
DATA7
Wire Wire Line
	6650 4700 6650 4450
Wire Wire Line
	6750 4450 6750 4700
Wire Wire Line
	6850 4700 6850 4450
Wire Wire Line
	6950 4700 6950 4450
Wire Wire Line
	7050 4700 7050 4450
Wire Wire Line
	7150 4450 7150 4700
Wire Wire Line
	7150 3700 7150 3950
Wire Wire Line
	7050 3700 7050 3950
Text GLabel 6950 3900 1    50   Input ~ 0
EXT0
Text GLabel 6850 3900 1    50   Input ~ 0
EXT1
Text GLabel 6750 3900 1    50   Input ~ 0
EXT2
Text GLabel 6650 3900 1    50   Input ~ 0
EXT3
Wire Wire Line
	6450 4450 6450 4500
Wire Wire Line
	6450 3900 6450 3950
Wire Wire Line
	6650 3900 6650 3950
Wire Wire Line
	6750 3900 6750 3950
Wire Wire Line
	6850 3900 6850 3950
Wire Wire Line
	6950 3950 6950 3900
Entry Wire Line
	6650 4700 6750 4800
Entry Wire Line
	6750 4700 6850 4800
Entry Wire Line
	6850 4700 6950 4800
Entry Wire Line
	6950 4700 7050 4800
Entry Wire Line
	7050 4700 7150 4800
Entry Wire Line
	7150 4700 7250 4800
Entry Wire Line
	7250 3600 7150 3700
Entry Wire Line
	7150 3600 7050 3700
Wire Bus Line
	7300 4800 7300 3600
Text GLabel 7350 3600 2    50   BiDi ~ 0
DATA
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J?
U 1 1 5FD4826B
P 6750 4250
F 0 "J?" V 6846 3762 50  0000 R CNN
F 1 "Conn_02x08_Counter_Clockwise" V 6755 3762 50  0000 R CNN
F 2 "" H 6750 4250 50  0001 C CNN
F 3 "~" H 6750 4250 50  0001 C CNN
	1    6750 4250
	0    -1   -1   0   
$EndComp
Wire Bus Line
	7350 3600 7300 3600
Connection ~ 7300 3600
Text GLabel 6550 4500 3    50   Input ~ 0
CLK
Wire Wire Line
	6550 4500 6550 4450
Text GLabel 6550 3900 1    50   Input ~ 0
HLT
Wire Wire Line
	6550 3900 6550 3950
Wire Bus Line
	7150 3600 7300 3600
Wire Bus Line
	6750 4800 7300 4800
$EndSCHEMATC
