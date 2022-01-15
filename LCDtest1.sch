ModuleName LCDtest1
LanguageType Veirlog
GridInterval 8
MillimetersIn100RealScaledUnit 25
ZoomOutScale 37
NumberOfHorzPapaers 8
NumberOfVertPapaers 4
Parameters
End
Wires
Wire Name: b2
LV: 11
RV: 0
Width: 12
Edges
Edge X1: 96 ,Y1: 96 ,X2: 152 ,Y2: 96
End
Branches
End
Wire Name: b23
LV: 7
RV: 0
Width: 8
Edges
Edge X1: 744 ,Y1: 96 ,X2: 808 ,Y2: 96
End
Branches
End
Wire Name: w9
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 360 ,Y1: 96 ,X2: 496 ,Y2: 96
End
Branches
End
Wire Name: w11
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 744 ,Y1: 128 ,X2: 800 ,Y2: 128
End
Branches
End
Wire Name: w12
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 744 ,Y1: 144 ,X2: 800 ,Y2: 144
End
Branches
End
Wire Name: w10
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 744 ,Y1: 112 ,X2: 800 ,Y2: 112
End
Branches
End
Wire Name: w13
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 360 ,Y1: 144 ,X2: 368 ,Y2: 144
End
Branches
End
Wire Name: b9
LV: 7
RV: 0
Width: 8
Edges
Edge X1: 360 ,Y1: 112 ,X2: 496 ,Y2: 112
End
Branches
End
Wire Name: w14
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 344 ,Y1: 264 ,X2: 448 ,Y2: 264
Edge X1: 448 ,Y1: 128 ,X2: 448 ,Y2: 264
Edge X1: 448 ,Y1: 128 ,X2: 496 ,Y2: 128
End
Branches
End
Wire Name: w15
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 472 ,Y1: 144 ,X2: 472 ,Y2: 296
Edge X1: 472 ,Y1: 144 ,X2: 496 ,Y2: 144
Edge X1: 344 ,Y1: 296 ,X2: 472 ,Y2: 296
End
Branches
End
End
Ports
Port Left: 96 Top: 96 ,Orientation: 0
Portname: Keypad ,PortType: multibit ,LanguageType: Veriilog ,PortDirection: 0 ,LV:
11
,Width:
12
,RV:
0
Port Left: 344 Top: 296 ,Orientation: 0
Portname: RST ,PortType: singlebit ,LanguageType: Veriilog ,PortDirection: 0 ,LV:
0
,Width:
1
,RV:
0
Port Left: 344 Top: 264 ,Orientation: 0
Portname: CLK ,PortType: singlebit ,LanguageType: Veriilog ,PortDirection: 0 ,LV:
0
,Width:
1
,RV:
0
Port Left: 808 Top: 96 ,Orientation: 0
Portname: LCD_DATA ,PortType: multibit ,LanguageType: Veriilog ,PortDirection: 2 ,LV:
7
,Width:
8
,RV:
0
Port Left: 800 Top: 112 ,Orientation: 0
Portname: LCD_E ,PortType: singlebit ,LanguageType: Veriilog ,PortDirection: 2 ,LV:
0
,Width:
1
,RV:
0
Port Left: 800 Top: 128 ,Orientation: 0
Portname: LCD_RS ,PortType: singlebit ,LanguageType: Veriilog ,PortDirection: 2 ,LV:
0
,Width:
1
,RV:
0
Port Left: 800 Top: 144 ,Orientation: 0
Portname: LCD_RW ,PortType: singlebit ,LanguageType: Veriilog ,PortDirection: 2 ,LV:
0
,Width:
1
,RV:
0
End
Symbols
Symbol Left: 176 Top: 88
Name: s0
LibraryName: (NoLibraryName)
IpName: keypad
SymbolParameters
End
Symbol Left: 520 Top: 88
Name: s1
LibraryName: (NoLibraryName)
IpName: testLCD
SymbolParameters
Parameter Name: CLEAR_DISP ,Type: integer ,Value:
3'b111
Parameter Name: DELAY ,Type: integer ,Value:
3'b000
Parameter Name: DELAY_T ,Type: integer ,Value:
3'b110
Parameter Name: DISP_ONOFF ,Type: integer ,Value:
3'b011
Parameter Name: ENTRY_MODE ,Type: integer ,Value:
3'b010
Parameter Name: FUNCTION_SET ,Type: integer ,Value:
3'b001
Parameter Name: LINE1 ,Type: integer ,Value:
3'b100
Parameter Name: LINE2 ,Type: integer ,Value:
3'b101
End
End
Texts
End
Links
End
