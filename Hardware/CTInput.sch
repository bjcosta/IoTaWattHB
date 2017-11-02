EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:IoTaWattHB-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 15 15
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5450 3550 2    60   Output ~ 0
ADC_OUT
$Comp
L Audio-Jack-3_2Switches J3
U 1 1 5A0CEDA0
P 5000 3650
AR Path="/5A0CFF3E/5A0CEDA0" Ref="J3"  Part="1" 
AR Path="/5A0DB588/5A0CEDA0" Ref="J4"  Part="1" 
AR Path="/5A0DBBCC/5A0CEDA0" Ref="J5"  Part="1" 
AR Path="/5A0DBCB2/5A0CEDA0" Ref="J6"  Part="1" 
AR Path="/5A0DBEBC/5A0CEDA0" Ref="J7"  Part="1" 
AR Path="/5A0DBF8A/5A0CEDA0" Ref="J8"  Part="1" 
AR Path="/5A0DC070/5A0CEDA0" Ref="J9"  Part="1" 
AR Path="/5A0DC55E/5A0CEDA0" Ref="J10"  Part="1" 
AR Path="/5A0DC963/5A0CEDA0" Ref="J11"  Part="1" 
AR Path="/5A0DCB33/5A0CEDA0" Ref="J12"  Part="1" 
AR Path="/5A0DCC55/5A0CEDA0" Ref="J13"  Part="1" 
AR Path="/5A0DCD83/5A0CEDA0" Ref="J14"  Part="1" 
AR Path="/5A0DCEA5/5A0CEDA0" Ref="J15"  Part="1" 
AR Path="/5A0DD345/5A0CEDA0" Ref="J16"  Part="1" 
F 0 "J16" H 5000 3940 50  0000 C CNN
F 1 "Audio-Jack-3_2Switches" H 4800 3250 50  0000 L CNN
F 2 "IoTaWattHB:Cliff_3.5mm_Stereo_TRS_2x_Switch_JY039-5P" H 5250 3750 50  0001 C CNN
F 3 "" H 5250 3750 50  0001 C CNN
	1    5000 3650
	1    0    0    -1  
$EndComp
NoConn ~ 5200 3650
NoConn ~ 5200 3750
$Comp
L R R15
U 1 1 5A0CEDAB
P 5350 3750
AR Path="/5A0CFF3E/5A0CEDAB" Ref="R15"  Part="1" 
AR Path="/5A0DB588/5A0CEDAB" Ref="R16"  Part="1" 
AR Path="/5A0DBBCC/5A0CEDAB" Ref="R17"  Part="1" 
AR Path="/5A0DBCB2/5A0CEDAB" Ref="R18"  Part="1" 
AR Path="/5A0DBEBC/5A0CEDAB" Ref="R19"  Part="1" 
AR Path="/5A0DBF8A/5A0CEDAB" Ref="R20"  Part="1" 
AR Path="/5A0DC070/5A0CEDAB" Ref="R21"  Part="1" 
AR Path="/5A0DC55E/5A0CEDAB" Ref="R22"  Part="1" 
AR Path="/5A0DC963/5A0CEDAB" Ref="R23"  Part="1" 
AR Path="/5A0DCB33/5A0CEDAB" Ref="R24"  Part="1" 
AR Path="/5A0DCC55/5A0CEDAB" Ref="R25"  Part="1" 
AR Path="/5A0DCD83/5A0CEDAB" Ref="R26"  Part="1" 
AR Path="/5A0DCEA5/5A0CEDAB" Ref="R27"  Part="1" 
AR Path="/5A0DD345/5A0CEDAB" Ref="R28"  Part="1" 
F 0 "R28" V 5430 3750 50  0000 C CNN
F 1 "24R" V 5350 3750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 5280 3750 50  0001 C CNN
F 3 "" H 5350 3750 50  0001 C CNN
	1    5350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3950 5450 3950
Wire Wire Line
	4800 3950 4800 3850
Wire Wire Line
	5350 3900 5350 3950
Connection ~ 5350 3950
Wire Wire Line
	5200 3550 5450 3550
Wire Wire Line
	5350 3600 5350 3550
Connection ~ 5350 3550
Text HLabel 5450 3950 2    60   Input ~ 0
BIAS_CT
Wire Wire Line
	5200 3450 5350 3450
Wire Wire Line
	5350 3450 5350 3250
Wire Wire Line
	5350 3250 4700 3250
Wire Wire Line
	4700 3250 4700 3950
Connection ~ 4800 3950
$EndSCHEMATC
