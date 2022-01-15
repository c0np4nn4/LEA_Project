module LEA_project(Keypad,CLK,RST,LCD_RW,LCD_RS,LCD_E,LCD_DATA);

input [11:0] Keypad;
input CLK;
input RST;
output LCD_RW;
output LCD_RS;
output LCD_E;
output [7:0] LCD_DATA;

wire  w52;
wire [7:0] b92;
wire [7:0] b93;
wire [7:0] b94;
wire [7:0] b95;
wire [7:0] b96;
wire [7:0] b97;
wire [7:0] b98;
wire [7:0] b99;
wire [7:0] b100;
wire [7:0] b101;
wire [7:0] b102;
wire [7:0] b103;
wire [7:0] b104;
wire [7:0] b105;
wire [7:0] b106;
wire [7:0] b107;
wire [7:0] b127;
wire [7:0] b129;
wire [7:0] b131;
wire [7:0] b133;
wire [7:0] b135;
wire [7:0] b137;
wire [7:0] b138;
wire [7:0] b139;
wire [7:0] b140;
wire [7:0] b141;
wire [7:0] b142;
wire [7:0] b143;
wire [7:0] b144;
wire [7:0] b145;
wire [7:0] b146;
wire [7:0] b147;
wire [7:0] b148;
wire [7:0] b149;
wire [7:0] b150;
wire [7:0] b151;
wire [7:0] b152;
wire [7:0] b153;
wire [7:0] b154;
wire [7:0] b155;
wire [7:0] b156;
wire [7:0] b157;
wire [7:0] b158;
wire [7:0] b159;
wire [7:0] b160;
wire [7:0] b161;
wire [7:0] b162;
wire [7:0] b163;
wire [7:0] b165;
wire [7:0] b166;
wire [7:0] b168;
wire [7:0] b170;
wire  w118;
wire  w117;
wire  w119;
wire  w120;
wire  w121;
wire  w122;
wire  w125;
wire  w124;
wire  w123;
wire  w126;
wire  w128;
wire  w127;
wire  w131;
wire  w130;
wire  w129;
wire  w132;
wire  w133;
wire  w134;
wire  w136;
wire  w137;
wire  w135;
wire [7:0] b171;
wire [7:0] b226;
wire [7:0] b169;
wire [7:0] b206;
wire [7:0] b205;
wire [7:0] b207;
wire [7:0] b208;
wire [7:0] b209;
wire [7:0] b210;
wire [7:0] b211;
wire [7:0] b212;
wire [7:0] b213;
wire [7:0] b215;
wire [7:0] b214;
wire [7:0] b217;
wire [7:0] b218;
wire [7:0] b216;
wire [7:0] b220;
wire [7:0] b219;
wire [2:0] b225;
wire  w200;
wire [127:0] b222;
wire [11:0] b189;
wire  w208;
wire  w207;
wire  w210;
wire  w199;
wire  w211;
wire  w212;
wire  w213;
wire  w197;
wire  w206;
wire  w209;
wire  w205;
wire  w204;
wire [7:0] b230;
wire [7:0] b203;
wire [7:0] b204;
wire [7:0] b202;
wire [7:0] b201;
wire [7:0] b200;
wire [7:0] b198;
wire [7:0] b197;
wire [7:0] b196;
wire [7:0] b193;
wire [7:0] b231;
wire [7:0] b227;
wire [7:0] b228;
wire [7:0] b194;
wire [7:0] b195;
wire [7:0] b199;
wire [7:0] b192;
wire [127:0] b223;
wire [127:0] b224;
wire  w198;
wire [127:0] b190;
wire [127:0] b221;
wire [127:0] b191;
wire  b171_7;
wire  b171_6;
wire  b171_5;
wire  b171_4;
wire  b171_3;
wire  b171_2;
wire  b171_1;
wire  b171_0;
wire  b165_7_w146;
wire  b165_6_w147;
wire  b165_5_w148;
wire  b165_4_w149;
wire  b165_3_w150;
wire  b165_2_w151;
wire  b165_1_w152;
wire  b165_0_w153;
wire  b166_7_w154;
wire  b166_6_w155;
wire  b166_5_w156;
wire  b166_4_w157;
wire  b166_3_w158;
wire  b166_2_w159;
wire  b166_1_w160;
wire  b166_0_w161;
wire  b226_7_w162;
wire  b226_6_w163;
wire  b226_5_w164;
wire  b226_4_w165;
wire  b226_3_w166;
wire  b226_2_w167;
wire  b226_0_w169;
wire  b168_7_w170;
wire  b168_6_w171;
wire  b168_5_w172;
wire  b168_3_w175;
wire  b168_4_w173;
wire  b169_7_w178;
wire  b169_6_w179;
wire  b169_5_w180;
wire  b169_4_w181;
wire  b169_3_w182;
wire  b226_1_w168;
wire  b168_2_w187;
wire  b168_1_w186;
wire  b168_0_w188;
wire  b169_2_w183;
wire  b169_1_w184;
wire  b169_0_w185;
wire  b170_7_w189;
wire  b170_5_w191;
wire  b170_6_w190;
wire  b170_4_w192;
wire  b170_3_w193;
wire  b170_2_w194;
wire  b170_1_w195;
wire  b170_0_w196;
wire  b225_2_w201;
wire  b225_0_w203;
wire  b225_1_w202;

assign b189 = Keypad;
assign w198 = CLK;
assign w199 = RST;
assign LCD_RW = w119;
assign LCD_RS = w120;
assign LCD_E = w121;
assign LCD_DATA = b171;

assign b171[7] = b171_7;
assign b171[6] = b171_6;
assign b171[5] = b171_5;
assign b171[4] = b171_4;
assign b171[3] = b171_3;
assign b171[2] = b171_2;
assign b171[1] = b171_1;
assign b171[0] = b171_0;

assign b165_7_w146 = {b165[7]};
assign b165_6_w147 = {b165[6]};
assign b165_5_w148 = {b165[5]};
assign b165_4_w149 = {b165[4]};
assign b165_3_w150 = {b165[3]};
assign b165_2_w151 = {b165[2]};
assign b165_1_w152 = {b165[1]};
assign b165_0_w153 = {b165[0]};
assign b166_7_w154 = {b166[7]};
assign b166_6_w155 = {b166[6]};
assign b166_5_w156 = {b166[5]};
assign b166_4_w157 = {b166[4]};
assign b166_3_w158 = {b166[3]};
assign b166_2_w159 = {b166[2]};
assign b166_1_w160 = {b166[1]};
assign b166_0_w161 = {b166[0]};
assign b226_7_w162 = {b226[7]};
assign b226_6_w163 = {b226[6]};
assign b226_5_w164 = {b226[5]};
assign b226_4_w165 = {b226[4]};
assign b226_3_w166 = {b226[3]};
assign b226_2_w167 = {b226[2]};
assign b226_0_w169 = {b226[0]};
assign b168_7_w170 = {b168[7]};
assign b168_6_w171 = {b168[6]};
assign b168_5_w172 = {b168[5]};
assign b168_3_w175 = {b168[3]};
assign b168_4_w173 = {b168[4]};
assign b169_7_w178 = {b169[7]};
assign b169_6_w179 = {b169[6]};
assign b169_5_w180 = {b169[5]};
assign b169_4_w181 = {b169[4]};
assign b169_3_w182 = {b169[3]};
assign b226_1_w168 = {b226[1]};
assign b168_2_w187 = {b168[2]};
assign b168_1_w186 = {b168[1]};
assign b168_0_w188 = {b168[0]};
assign b169_2_w183 = {b169[2]};
assign b169_1_w184 = {b169[1]};
assign b169_0_w185 = {b169[0]};
assign b170_7_w189 = {b170[7]};
assign b170_5_w191 = {b170[5]};
assign b170_6_w190 = {b170[6]};
assign b170_4_w192 = {b170[4]};
assign b170_3_w193 = {b170[3]};
assign b170_2_w194 = {b170[2]};
assign b170_1_w195 = {b170[1]};
assign b170_0_w196 = {b170[0]};
assign b225_2_w201 = {b225[2]};
assign b225_0_w203 = {b225[0]};
assign b225_1_w202 = {b225[1]};

EightBitX16Reg
     s7 (
      .RST(w199),
      .CHK(w197),
      .Din(b230),
      .Dout15(b203),
      .Dout16(b204),
      .Dout14(b202),
      .Dout13(b201),
      .Dout12(b200),
      .Dout10(b198),
      .Dout9(b197),
      .Dout8(b196),
      .Dout5(b193),
      .Dout3(b231),
      .Dout1(b227),
      .Dout2(b228),
      .Dout6(b194),
      .Dout7(b195),
      .Dout11(b199),
      .Dout4(b192),
      .CLK(w198));

EightBitX16Reg
     s8 (
      .CHK(w52),
      .Dout1(b206),
      .Dout2(b205),
      .Dout3(b207),
      .Dout4(b208),
      .Dout5(b209),
      .Dout6(b210),
      .Dout7(b211),
      .Dout8(b212),
      .Dout9(b213),
      .Dout10(b215),
      .Dout11(b214),
      .Dout12(b217),
      .Dout13(b218),
      .Dout14(b216),
      .Dout15(b220),
      .Dout16(b219),
      .RST(w199),
      .Din(b230),
      .CLK(w198));

PNU_AND2
     s9 (
      .i2(w213),
      .o1(w197),
      .i1(w205));

PNU_AND2
     s10 (
      .o1(w52),
      .i1(w213),
      .i2(w204));

LEA_128BitsDivideIn16x8Register
     s2 (
      .Dout0(b148),
      .Dout1(b149),
      .Dout2(b150),
      .Dout3(b151),
      .Dout4(b152),
      .Dout5(b153),
      .Dout6(b154),
      .Dout7(b155),
      .Dout8(b156),
      .Dout9(b157),
      .Dout10(b158),
      .Dout11(b159),
      .Dout12(b160),
      .Dout13(b161),
      .Dout14(b162),
      .Dout15(b163),
      .Din(b223));

LEA_128bitMessageRegister
     s4 (
      .rst(w199),
      .Ce(w211),
      .Dout(b223),
      .clk(w198),
      .Din(b191));

LEA_128bitMessageRegister
     s15 (
      .rst(w199),
      .Ce(w212),
      .Dout(b224),
      .clk(w198),
      .Din(b221));

LEA_128BitsDivideIn16x8Register
     s16 (
      .Dout0(b92),
      .Dout1(b93),
      .Dout2(b94),
      .Dout3(b95),
      .Dout4(b96),
      .Dout5(b97),
      .Dout6(b98),
      .Dout7(b99),
      .Dout8(b100),
      .Dout9(b101),
      .Dout10(b102),
      .Dout11(b103),
      .Dout12(b104),
      .Dout13(b105),
      .Dout14(b106),
      .Dout15(b107),
      .Din(b224));

LCD_InputPlainText
     #(
      .CLEAR_DISP(3'b111),
      .DELAY(3'b000),
      .DELAY_T(3'b110),
      .DISP_ONOFF(3'b011),
      .ENTRY_MODE(3'b010),
      .FUNCTION_SET(3'b001),
      .LINE1(3'b100),
      .LINE2(3'b101))
     s17 (
      .LCD_DATA(b166),
      .LCD_RW(w125),
      .LCD_RS(w124),
      .LCD_E(w123),
      .RESETN(w199),
      .LCD_inputDATA_2_15(b203),
      .LCD_inputDATA_2_16(b204),
      .LCD_inputDATA_2_14(b202),
      .LCD_inputDATA_2_13(b201),
      .LCD_inputDATA_2_12(b200),
      .LCD_inputDATA_2_10(b198),
      .LCD_inputDATA_2_9(b197),
      .LCD_inputDATA_2_8(b196),
      .LCD_inputDATA_2_5(b193),
      .LCD_inputDATA_2_3(b231),
      .LCD_inputDATA_2_1(b227),
      .LCD_inputDATA_2_2(b228),
      .LCD_inputDATA_2_6(b194),
      .LCD_inputDATA_2_7(b195),
      .LCD_inputDATA_2_11(b199),
      .LCD_inputDATA_2_4(b192),
      .CLK(w198));

LCD_HOME
     #(
      .CLEAR_DISP(3'b111),
      .DELAY(3'b000),
      .DELAY_T(3'b110),
      .DISP_ONOFF(3'b011),
      .ENTRY_MODE(3'b010),
      .FUNCTION_SET(3'b001),
      .LINE1(3'b100),
      .LINE2(3'b101))
     s19 (
      .LCD_DATA(b165),
      .LCD_E(w118),
      .LCD_RW(w117),
      .LCD_RS(w122),
      .RESETN(w199),
      .CLK(w198));

PNU_MUX8
     s20 (
      .o1(b171_0),
      .i1(b165_0_w153),
      .i2(b166_0_w161),
      .i3(b226_0_w169),
      .i4(b168_0_w188),
      .i5(b169_0_w185),
      .i6(b170_0_w196),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i7(w200),
      .i8(w200));

LEA_128BitsDivideIn16x8Register
     s21 (
      .Dout15(b127),
      .Dout14(b129),
      .Dout13(b131),
      .Dout12(b133),
      .Dout11(b135),
      .Dout10(b137),
      .Dout9(b138),
      .Dout8(b139),
      .Dout7(b140),
      .Dout6(b141),
      .Dout5(b142),
      .Dout4(b143),
      .Dout3(b144),
      .Dout2(b145),
      .Dout1(b146),
      .Dout0(b147),
      .Din(b223));

LCD_ShowDecrypted
     #(
      .CLEAR_DISP(3'b111),
      .DELAY(3'b000),
      .DELAY_T(3'b110),
      .DISP_ONOFF(3'b011),
      .ENTRY_MODE(3'b010),
      .FUNCTION_SET(3'b001),
      .LINE1(3'b100),
      .LINE2(3'b101))
     s22 (
      .LCD_inputDATA_2_16(b92),
      .LCD_inputDATA_2_15(b93),
      .LCD_inputDATA_2_14(b94),
      .LCD_inputDATA_2_13(b95),
      .LCD_inputDATA_2_12(b96),
      .LCD_inputDATA_2_11(b97),
      .LCD_inputDATA_2_10(b98),
      .LCD_inputDATA_2_9(b99),
      .LCD_inputDATA_2_8(b100),
      .LCD_inputDATA_2_7(b101),
      .LCD_inputDATA_2_6(b102),
      .LCD_inputDATA_2_5(b103),
      .LCD_inputDATA_2_4(b104),
      .LCD_inputDATA_2_3(b105),
      .LCD_inputDATA_2_2(b106),
      .LCD_inputDATA_2_1(b107),
      .LCD_DATA(b170),
      .LCD_RW(w131),
      .LCD_RS(w130),
      .LCD_E(w129),
      .RESETN(w199),
      .CLK(w198));

LCD_ShowEncrypted
     #(
      .CLEAR_DISP(3'b111),
      .DELAY(3'b000),
      .DELAY_T(3'b110),
      .DISP_ONOFF(3'b011),
      .ENTRY_MODE(3'b010),
      .FUNCTION_SET(3'b001),
      .LINE1(3'b100),
      .LINE2(3'b101))
     s23 (
      .LCD_inputDATA_2_1(b127),
      .LCD_inputDATA_2_2(b129),
      .LCD_inputDATA_2_3(b131),
      .LCD_inputDATA_2_4(b133),
      .LCD_inputDATA_2_5(b135),
      .LCD_inputDATA_2_6(b137),
      .LCD_inputDATA_2_7(b138),
      .LCD_inputDATA_2_8(b139),
      .LCD_inputDATA_2_9(b140),
      .LCD_inputDATA_2_10(b141),
      .LCD_inputDATA_2_11(b142),
      .LCD_inputDATA_2_12(b143),
      .LCD_inputDATA_2_13(b144),
      .LCD_inputDATA_2_14(b145),
      .LCD_inputDATA_2_15(b146),
      .LCD_inputDATA_2_16(b147),
      .LCD_DATA(b168),
      .LCD_RS(w136),
      .LCD_RW(w137),
      .LCD_E(w135),
      .RESETN(w199),
      .CLK(w198));

LCD_ShowSelected
     #(
      .CLEAR_DISP(3'b111),
      .DELAY(3'b000),
      .DELAY_T(3'b110),
      .DISP_ONOFF(3'b011),
      .ENTRY_MODE(3'b010),
      .FUNCTION_SET(3'b001),
      .LINE1(3'b100),
      .LINE2(3'b101))
     s24 (
      .LCD_inputDATA_2_16(b148),
      .LCD_inputDATA_2_15(b149),
      .LCD_inputDATA_2_14(b150),
      .LCD_inputDATA_2_13(b151),
      .LCD_inputDATA_2_12(b152),
      .LCD_inputDATA_2_11(b153),
      .LCD_inputDATA_2_10(b154),
      .LCD_inputDATA_2_9(b155),
      .LCD_inputDATA_2_8(b156),
      .LCD_inputDATA_2_7(b157),
      .LCD_inputDATA_2_6(b158),
      .LCD_inputDATA_2_5(b159),
      .LCD_inputDATA_2_4(b160),
      .LCD_inputDATA_2_3(b161),
      .LCD_inputDATA_2_2(b162),
      .LCD_inputDATA_2_1(b163),
      .LCD_E(w132),
      .LCD_RS(w133),
      .LCD_RW(w134),
      .LCD_DATA(b169),
      .RESETN(w199),
      .CLK(w198));

PNU_MUX8
     s25 (
      .o1(b171_1),
      .i1(b165_1_w152),
      .i2(b166_1_w160),
      .i3(b226_1_w168),
      .i4(b168_1_w186),
      .i5(b169_1_w184),
      .i6(b170_1_w195),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i8(w200),
      .i7(w200));

PNU_MUX8
     s26 (
      .o1(b171_2),
      .i1(b165_2_w151),
      .i2(b166_2_w159),
      .i3(b226_2_w167),
      .i4(b168_2_w187),
      .i5(b169_2_w183),
      .i6(b170_2_w194),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i8(w200),
      .i7(w200));

PNU_MUX8
     s27 (
      .o1(b171_3),
      .i1(b165_3_w150),
      .i2(b166_3_w158),
      .i3(b226_3_w166),
      .i4(b168_3_w175),
      .i5(b169_3_w182),
      .i6(b170_3_w193),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i8(w200),
      .i7(w200));

PNU_MUX8
     s28 (
      .o1(b171_4),
      .i1(b165_4_w149),
      .i2(b166_4_w157),
      .i3(b226_4_w165),
      .i4(b168_4_w173),
      .i5(b169_4_w181),
      .i6(b170_4_w192),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i8(w200),
      .i7(w200));

PNU_MUX8
     s29 (
      .o1(b171_5),
      .i1(b165_5_w148),
      .i2(b166_5_w156),
      .i3(b226_5_w164),
      .i4(b168_5_w172),
      .i5(b169_5_w180),
      .i6(b170_5_w191),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i8(w200),
      .i7(w200));

PNU_MUX8
     s30 (
      .o1(b171_6),
      .i1(b165_6_w147),
      .i2(b166_6_w155),
      .i3(b226_6_w163),
      .i4(b168_6_w171),
      .i5(b169_6_w179),
      .i6(b170_6_w190),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i8(w200),
      .i7(w200));

PNU_MUX8
     s31 (
      .o1(b171_7),
      .i1(b165_7_w146),
      .i2(b166_7_w154),
      .i3(b226_7_w162),
      .i4(b168_7_w170),
      .i5(b169_7_w178),
      .i6(b170_7_w189),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i8(w200),
      .i7(w200));

PNU_MUX8
     s32 (
      .i1(w118),
      .o1(w121),
      .i2(w123),
      .i3(w126),
      .i6(w129),
      .i5(w132),
      .i4(w135),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i7(w200),
      .i8(w200));

PNU_MUX8
     s33 (
      .o1(w120),
      .i1(w122),
      .i2(w124),
      .i3(w127),
      .i6(w130),
      .i5(w133),
      .i4(w136),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i7(w200),
      .i8(w200));

PNU_MUX8
     s34 (
      .i1(w117),
      .o1(w119),
      .i2(w125),
      .i3(w128),
      .i6(w131),
      .i5(w134),
      .i4(w137),
      .e1(b225_2_w201),
      .e3(b225_0_w203),
      .e2(b225_1_w202),
      .i7(w200),
      .i8(w200));

LCD_InputKey
     #(
      .CLEAR_DISP(3'b111),
      .DELAY(3'b000),
      .DELAY_T(3'b110),
      .DISP_ONOFF(3'b011),
      .ENTRY_MODE(3'b010),
      .FUNCTION_SET(3'b001),
      .LINE1(3'b100),
      .LINE2(3'b101))
     s18 (
      .LCD_E(w126),
      .LCD_RW(w128),
      .LCD_RS(w127),
      .LCD_inputDATA_2_1(b206),
      .LCD_inputDATA_2_2(b205),
      .LCD_inputDATA_2_3(b207),
      .LCD_inputDATA_2_4(b208),
      .LCD_inputDATA_2_5(b209),
      .LCD_inputDATA_2_6(b210),
      .LCD_inputDATA_2_7(b211),
      .LCD_inputDATA_2_8(b212),
      .LCD_inputDATA_2_9(b213),
      .LCD_inputDATA_2_10(b215),
      .LCD_inputDATA_2_11(b214),
      .LCD_inputDATA_2_12(b217),
      .LCD_inputDATA_2_13(b218),
      .LCD_inputDATA_2_14(b216),
      .LCD_inputDATA_2_15(b220),
      .LCD_inputDATA_2_16(b219),
      .LCD_DATA(b226),
      .RESETN(w199),
      .CLK(w198));

LEA_MergeTo128
     s37 (
      .Dout(b222),
      .Din1(b203),
      .Din0(b204),
      .Din2(b202),
      .Din3(b201),
      .Din4(b200),
      .Din6(b198),
      .Din7(b197),
      .Din8(b196),
      .Din11(b193),
      .Din13(b231),
      .Din15(b227),
      .Din14(b228),
      .Din10(b194),
      .Din9(b195),
      .Din5(b199),
      .Din12(b192));

PNU_ZERO
     s39 (
      .o1(w200));

keypad
     s36 (
      .Keypad(b189),
      .CHK(w208),
      .star(w207),
      .sharp(w210),
      .LCD_DATA(b230));

LTP
     s40 (
      .Level(w208),
      .rst(w199),
      .Pulse(w213),
      .clk(w198));

LTP
     s41 (
      .Level(w207),
      .rst(w199),
      .Pulse(w209),
      .clk(w198));

LTP
     s42 (
      .Level(w210),
      .rst(w199),
      .Pulse(w206),
      .clk(w198));

LEA_CU
     #(
      .DecryptSuccess(6),
      .EncryptionSuccess(3),
      .InputKey(2),
      .InputKey_decrypt(5),
      .InputPlainText(1),
      .ShowEncryptedText(4),
      .Start(0))
     s43 (
      .rst(w199),
      .star_out(w211),
      .sharp_out(w212),
      .sharp(w206),
      .star(w209),
      .chk_text(w205),
      .LCD_addr(b225),
      .chk_key(w204),
      .clk(w198));

XOR_Decrypt
     s35 (
      .Din(b222),
      .RoundKey(b190),
      .Dout(b191));

XOR_Decrypt
     s38 (
      .Din(b223),
      .RoundKey(b190),
      .Dout(b221));

LEA_MergeTo128
     s44 (
      .Din15(b206),
      .Din14(b205),
      .Din13(b207),
      .Din12(b208),
      .Din11(b209),
      .Din10(b210),
      .Din9(b211),
      .Din8(b212),
      .Din7(b213),
      .Din6(b215),
      .Din5(b214),
      .Din4(b217),
      .Din3(b218),
      .Din2(b216),
      .Din1(b220),
      .Din0(b219),
      .Dout(b190));

endmodule

