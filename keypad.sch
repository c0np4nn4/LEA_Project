ModuleName keypad
LanguageType Veirlog
GridInterval 8
MillimetersIn100RealScaledUnit 25
ZoomOutScale 48
NumberOfHorzPapaers 8
NumberOfVertPapaers 4
Parameters
End
Wires
Wire Name: b5
LV: 3
RV: 0
Width: 4
Edges
Edge X1: 432 ,Y1: 88 ,X2: 512 ,Y2: 88
Edge X1: 512 ,Y1: 88 ,X2: 512 ,Y2: 368
Edge X1: 512 ,Y1: 368 ,X2: 608 ,Y2: 368
End
Branches
End
Wire Name: w4
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 328 ,Y1: 280 ,X2: 360 ,Y2: 280
End
Branches
End
Wire Name: w6
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 464 ,Y1: 320 ,X2: 608 ,Y2: 320
Edge X1: 464 ,Y1: 288 ,X2: 464 ,Y2: 320
Edge X1: 464 ,Y1: 288 ,X2: 608 ,Y2: 288
Edge X1: 424 ,Y1: 288 ,X2: 464 ,Y2: 288
End
Branches
End
Wire Name: b7
LV: 9
RV: 0
Width: 10
Edges
Edge X1: 144 ,Y1: 88 ,X2: 232 ,Y2: 88
End
Branches
End
Wire Name: w7
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 464 ,Y1: 256 ,X2: 608 ,Y2: 256
Edge X1: 464 ,Y1: 224 ,X2: 464 ,Y2: 256
Edge X1: 328 ,Y1: 224 ,X2: 464 ,Y2: 224
Edge X1: 464 ,Y1: 224 ,X2: 608 ,Y2: 224
End
Branches
End
Wire Name: b11
LV: 7
RV: 0
Width: 8
Edges
Edge X1: 608 ,Y1: 192 ,X2: 664 ,Y2: 192
Edge X1: 608 ,Y1: 192 ,X2: 608 ,Y2: 408
End
Branches
Branch Left: 608 ,Top: 368
BranchStrList
[3:0]
End
Branch Left: 608 ,Top: 320
BranchStrList
4
End
Branch Left: 608 ,Top: 288
BranchStrList
5
End
Branch Left: 608 ,Top: 256
BranchStrList
6
End
Branch Left: 608 ,Top: 224
BranchStrList
7
End
End
Wire Name: b10
LV: 11
RV: 0
Width: 12
Edges
Edge X1: 120 ,Y1: 72 ,X2: 144 ,Y2: 72
Edge X1: 144 ,Y1: 72 ,X2: 144 ,Y2: 120
Edge X1: 64 ,Y1: 120 ,X2: 144 ,Y2: 120
Edge X1: 64 ,Y1: 120 ,X2: 64 ,Y2: 320
End
Branches
Branch Left: 144 ,Top: 88
BranchStrList
[9:0]
End
Branch Left: 64 ,Top: 152
BranchStrList
10
End
Branch Left: 64 ,Top: 240
BranchStrList
11
End
End
Wire Name: w13
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 480 ,Y1: 104 ,X2: 824 ,Y2: 104
Edge X1: 432 ,Y1: 104 ,X2: 480 ,Y2: 104
Edge X1: 480 ,Y1: 104 ,X2: 480 ,Y2: 192
Edge X1: 280 ,Y1: 192 ,X2: 480 ,Y2: 192
Edge X1: 280 ,Y1: 192 ,X2: 280 ,Y2: 296
Edge X1: 280 ,Y1: 296 ,X2: 360 ,Y2: 296
End
Branches
End
Wire Name: w12
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 64 ,Y1: 152 ,X2: 256 ,Y2: 152
End
Branches
End
Wire Name: w10
LV: 0
RV: 0
Width: 1
Edges
Edge X1: 64 ,Y1: 240 ,X2: 256 ,Y2: 240
End
Branches
End
End
Ports
Port Left: 120 Top: 72 ,Orientation: 0
Portname: Keypad ,PortType: multibit ,LanguageType: Veriilog ,PortDirection: 0 ,LV:
11
,Width:
12
,RV:
0
Port Left: 664 Top: 192 ,Orientation: 0
Portname: LCD_DATA ,PortType: multibit ,LanguageType: Veriilog ,PortDirection: 2 ,LV:
7
,Width:
8
,RV:
0
Port Left: 824 Top: 104 ,Orientation: 0
Portname: CHK ,PortType: singlebit ,LanguageType: Veriilog ,PortDirection: 2 ,LV:
0
,Width:
1
,RV:
0
Port Left: 256 Top: 152 ,Orientation: 0
Portname: star ,PortType: singlebit ,LanguageType: Veriilog ,PortDirection: 2 ,LV:
0
,Width:
1
,RV:
0
Port Left: 256 Top: 240 ,Orientation: 0
Portname: sharp ,PortType: singlebit ,LanguageType: Veriilog ,PortDirection: 2 ,LV:
0
,Width:
1
,RV:
0
End
Symbols
Symbol Left: 256 Top: 80
Name: s0
LibraryName: (NoLibraryName)
IpName: DecToBinConverter
SymbolParameters
End
Symbol Left: 320 Top: 224
Name: s1
LibraryName: PNULib
IpName: PNU_ZERO
SymbolParameters
End
Symbol Left: 320 Top: 264
Name: s2
LibraryName: PNULib
IpName: PNU_ONE
SymbolParameters
End
Symbol Left: 360 Top: 272
Name: s3
LibraryName: PNULib
IpName: PNU_AND2
SymbolParameters
End
End
Texts
End
Links
End
