module LEA_BlockSubtractor(A,Result,B);

input [31:0] A;
output [31:0] Result;
input [31:0] B;

wire [31:0] b59;
wire [31:0] b97;
wire  w101;
wire  w102;
wire  w103;
wire  w104;
wire  w105;
wire  w112;
wire  w115;
wire  w117;
wire  w119;
wire  w121;
wire  w123;
wire  w124;
wire  w126;
wire  w128;
wire  w131;
wire  w133;
wire  w135;
wire  w137;
wire  w139;
wire  w141;
wire  w143;
wire  w145;
wire  w147;
wire  w149;
wire  w151;
wire  w153;
wire  w155;
wire  w157;
wire  w159;
wire  w161;
wire  w162;
wire [31:0] b134;
wire  w164;
wire  w166;
wire  w168;
wire  w170;
wire  w172;
wire  w174;
wire  w176;
wire  w178;
wire  w180;
wire  w181;
wire  w184;
wire  w186;
wire  w188;
wire  w190;
wire  w192;
wire  w194;
wire  w196;
wire  w198;
wire  w200;
wire  w202;
wire  w204;
wire  w208;
wire  w209;
wire  w210;
wire  w213;
wire  w214;
wire  w215;
wire  w218;
wire  w220;
wire  w222;
wire  w224;
wire  w226;
wire  w228;
wire  b59_0_w4;
wire  b59_1_w6;
wire  b59_2_w7;
wire  b59_3_w9;
wire  b59_4_w11;
wire  b59_5_w13;
wire  b59_6_w15;
wire  b59_7_w18;
wire  b59_8_w19;
wire  b59_9_w21;
wire  b59_10_w23;
wire  b59_11_w25;
wire  b59_12_w27;
wire  b59_13_w29;
wire  b59_14_w31;
wire  b59_15_w33;
wire  b59_16_w35;
wire  b59_17_w37;
wire  b59_18_w39;
wire  b59_19_w41;
wire  b59_20_w43;
wire  b59_21_w45;
wire  b59_22_w47;
wire  b59_23_w49;
wire  b59_24_w51;
wire  b59_25_w52;
wire  b59_26_w55;
wire  b59_27_w57;
wire  b59_28_w59;
wire  b59_31_w61;
wire  b59_30_w64;
wire  b59_29_w66;
wire  b97_1;
wire  b97_2;
wire  b97_3;
wire  b97_4;
wire  b97_5;
wire  b97_0;
wire  b97_30;
wire  b97_29;
wire  b97_28;
wire  b97_27;
wire  b97_26;
wire  b97_25;
wire  b97_24;
wire  b97_23;
wire  b97_22;
wire  b97_21;
wire  b97_20;
wire  b97_19;
wire  b97_18;
wire  b97_17;
wire  b97_16;
wire  b97_15;
wire  b97_14;
wire  b97_13;
wire  b97_12;
wire  b97_6;
wire  b97_7;
wire  b97_8;
wire  b97_9;
wire  b97_11;
wire  b97_10;
wire  b134_0_w165;
wire  b134_1_w167;
wire  b134_2_w169;
wire  b134_3_w171;
wire  b134_4_w173;
wire  b134_5_w175;
wire  b134_6_w177;
wire  b134_7_w179;
wire  b134_8_w182;
wire  b134_9_w183;
wire  b134_10_w185;
wire  b134_11_w187;
wire  b134_12_w189;
wire  b134_13_w191;
wire  b134_14_w193;
wire  b134_15_w195;
wire  b134_16_w197;
wire  b134_17_w199;
wire  b134_18_w201;
wire  b134_19_w203;
wire  b134_20_w205;
wire  b134_21_w206;
wire  b134_22_w207;
wire  b134_23_w211;
wire  b134_24_w212;
wire  b134_25_w216;
wire  b134_26_w217;
wire  b134_27_w219;
wire  b134_28_w221;
wire  b134_29_w223;
wire  b134_30_w225;
wire  b97_31;
wire  b134_31_w227;

assign b59 = A;
assign Result = b97;
assign b134 = B;

assign b97[31] = b97_31;
assign b97[30] = b97_30;
assign b97[29] = b97_29;
assign b97[28] = b97_28;
assign b97[27] = b97_27;
assign b97[26] = b97_26;
assign b97[25] = b97_25;
assign b97[24] = b97_24;
assign b97[23] = b97_23;
assign b97[22] = b97_22;
assign b97[21] = b97_21;
assign b97[20] = b97_20;
assign b97[19] = b97_19;
assign b97[18] = b97_18;
assign b97[17] = b97_17;
assign b97[16] = b97_16;
assign b97[15] = b97_15;
assign b97[14] = b97_14;
assign b97[13] = b97_13;
assign b97[12] = b97_12;
assign b97[11] = b97_11;
assign b97[10] = b97_10;
assign b97[9] = b97_9;
assign b97[8] = b97_8;
assign b97[7] = b97_7;
assign b97[6] = b97_6;
assign b97[5] = b97_5;
assign b97[4] = b97_4;
assign b97[3] = b97_3;
assign b97[2] = b97_2;
assign b97[1] = b97_1;
assign b97[0] = b97_0;

assign b59_0_w4 = {b59[0]};
assign b59_1_w6 = {b59[1]};
assign b59_2_w7 = {b59[2]};
assign b59_3_w9 = {b59[3]};
assign b59_4_w11 = {b59[4]};
assign b59_5_w13 = {b59[5]};
assign b59_6_w15 = {b59[6]};
assign b59_7_w18 = {b59[7]};
assign b59_8_w19 = {b59[8]};
assign b59_9_w21 = {b59[9]};
assign b59_10_w23 = {b59[10]};
assign b59_11_w25 = {b59[11]};
assign b59_12_w27 = {b59[12]};
assign b59_13_w29 = {b59[13]};
assign b59_14_w31 = {b59[14]};
assign b59_15_w33 = {b59[15]};
assign b59_16_w35 = {b59[16]};
assign b59_17_w37 = {b59[17]};
assign b59_18_w39 = {b59[18]};
assign b59_19_w41 = {b59[19]};
assign b59_20_w43 = {b59[20]};
assign b59_21_w45 = {b59[21]};
assign b59_22_w47 = {b59[22]};
assign b59_23_w49 = {b59[23]};
assign b59_24_w51 = {b59[24]};
assign b59_25_w52 = {b59[25]};
assign b59_26_w55 = {b59[26]};
assign b59_27_w57 = {b59[27]};
assign b59_28_w59 = {b59[28]};
assign b59_31_w61 = {b59[31]};
assign b59_30_w64 = {b59[30]};
assign b59_29_w66 = {b59[29]};
assign b134_0_w165 = {b134[0]};
assign b134_1_w167 = {b134[1]};
assign b134_2_w169 = {b134[2]};
assign b134_3_w171 = {b134[3]};
assign b134_4_w173 = {b134[4]};
assign b134_5_w175 = {b134[5]};
assign b134_6_w177 = {b134[6]};
assign b134_7_w179 = {b134[7]};
assign b134_8_w182 = {b134[8]};
assign b134_9_w183 = {b134[9]};
assign b134_10_w185 = {b134[10]};
assign b134_11_w187 = {b134[11]};
assign b134_12_w189 = {b134[12]};
assign b134_13_w191 = {b134[13]};
assign b134_14_w193 = {b134[14]};
assign b134_15_w195 = {b134[15]};
assign b134_16_w197 = {b134[16]};
assign b134_17_w199 = {b134[17]};
assign b134_18_w201 = {b134[18]};
assign b134_19_w203 = {b134[19]};
assign b134_20_w205 = {b134[20]};
assign b134_21_w206 = {b134[21]};
assign b134_22_w207 = {b134[22]};
assign b134_23_w211 = {b134[23]};
assign b134_24_w212 = {b134[24]};
assign b134_25_w216 = {b134[25]};
assign b134_26_w217 = {b134[26]};
assign b134_27_w219 = {b134[27]};
assign b134_28_w221 = {b134[28]};
assign b134_29_w223 = {b134[29]};
assign b134_30_w225 = {b134[30]};
assign b134_31_w227 = {b134[31]};

LEA_FullAdder
     s1 (
      .A(b59_1_w6),
      .Cin(w101),
      .Cout(w102),
      .S(b97_1),
      .B(w168));

LEA_FullAdder
     s2 (
      .A(b59_2_w7),
      .Cin(w102),
      .Cout(w103),
      .S(b97_2),
      .B(w170));

LEA_FullAdder
     s3 (
      .A(b59_3_w9),
      .Cin(w103),
      .Cout(w104),
      .S(b97_3),
      .B(w172));

LEA_FullAdder
     s4 (
      .A(b59_4_w11),
      .Cin(w104),
      .Cout(w105),
      .S(b97_4),
      .B(w174));

LEA_FullAdder
     s5 (
      .A(b59_5_w13),
      .Cin(w105),
      .S(b97_5),
      .Cout(w151),
      .B(w176));

LEA_FullAdder
     s6 (
      .A(b59_6_w15),
      .Cin(w151),
      .S(b97_6),
      .Cout(w153),
      .B(w178));

LEA_FullAdder
     s7 (
      .A(b59_7_w18),
      .Cin(w153),
      .S(b97_7),
      .Cout(w155),
      .B(w180));

LEA_FullAdder
     s8 (
      .A(b59_8_w19),
      .Cin(w155),
      .S(b97_8),
      .Cout(w157),
      .B(w181));

LEA_FullAdder
     s9 (
      .A(b59_9_w21),
      .Cin(w157),
      .S(b97_9),
      .Cout(w159),
      .B(w184));

LEA_FullAdder
     s10 (
      .A(b59_10_w23),
      .Cin(w159),
      .Cout(w162),
      .S(b97_10),
      .B(w186));

LEA_FullAdder
     s11 (
      .A(b59_11_w25),
      .Cout(w161),
      .S(b97_11),
      .Cin(w162),
      .B(w188));

LEA_FullAdder
     s12 (
      .A(b59_12_w27),
      .Cout(w149),
      .S(b97_12),
      .Cin(w161),
      .B(w190));

LEA_FullAdder
     s13 (
      .A(b59_13_w29),
      .Cout(w147),
      .S(b97_13),
      .Cin(w149),
      .B(w192));

LEA_FullAdder
     s14 (
      .A(b59_14_w31),
      .Cout(w145),
      .S(b97_14),
      .Cin(w147),
      .B(w194));

LEA_FullAdder
     s15 (
      .A(b59_15_w33),
      .Cout(w143),
      .S(b97_15),
      .Cin(w145),
      .B(w196));

LEA_FullAdder
     s16 (
      .A(b59_16_w35),
      .Cout(w141),
      .S(b97_16),
      .Cin(w143),
      .B(w198));

LEA_FullAdder
     s17 (
      .A(b59_17_w37),
      .Cout(w139),
      .S(b97_17),
      .Cin(w141),
      .B(w200));

LEA_FullAdder
     s18 (
      .A(b59_18_w39),
      .Cout(w137),
      .S(b97_18),
      .Cin(w139),
      .B(w202));

LEA_FullAdder
     s19 (
      .A(b59_19_w41),
      .Cout(w135),
      .S(b97_19),
      .Cin(w137),
      .B(w204));

LEA_FullAdder
     s20 (
      .A(b59_20_w43),
      .Cout(w133),
      .S(b97_20),
      .Cin(w135),
      .B(w210));

LEA_FullAdder
     s21 (
      .A(b59_21_w45),
      .Cout(w131),
      .S(b97_21),
      .Cin(w133),
      .B(w209));

LEA_FullAdder
     s22 (
      .A(b59_28_w59),
      .Cout(w117),
      .S(b97_28),
      .Cin(w119),
      .B(w222));

LEA_FullAdder
     s23 (
      .A(b59_27_w57),
      .Cout(w119),
      .S(b97_27),
      .Cin(w121),
      .B(w220));

LEA_FullAdder
     s24 (
      .A(b59_26_w55),
      .Cout(w121),
      .S(b97_26),
      .Cin(w123),
      .B(w218));

LEA_FullAdder
     s25 (
      .A(b59_25_w52),
      .Cout(w123),
      .Cin(w124),
      .S(b97_25),
      .B(w215));

LEA_FullAdder
     s26 (
      .A(b59_24_w51),
      .Cout(w124),
      .Cin(w126),
      .S(b97_24),
      .B(w214));

LEA_FullAdder
     s27 (
      .A(b59_23_w49),
      .Cout(w126),
      .Cin(w128),
      .S(b97_23),
      .B(w213));

LEA_FullAdder
     s28 (
      .A(b59_22_w47),
      .Cout(w128),
      .S(b97_22),
      .Cin(w131),
      .B(w208));

LEA_FullAdder
     s29 (
      .A(b59_29_w66),
      .Cout(w115),
      .S(b97_29),
      .Cin(w117),
      .B(w224));

LEA_FullAdder
     s30 (
      .A(b59_30_w64),
      .Cout(w112),
      .S(b97_30),
      .Cin(w115),
      .B(w226));

LEA_FinAdder
     s31 (
      .A(b59_31_w61),
      .Cin(w112),
      .S(b97_31),
      .B(w228));

LEA_FullAdder
     s32 (
      .A(b59_0_w4),
      .Cout(w101),
      .S(b97_0),
      .Cin(w164),
      .B(w166));

PNU_ONE
     s33 (
      .o1(w164));

PNU_NOT
     s34 (
      .i1(b134_0_w165),
      .o1(w166));

PNU_NOT
     s35 (
      .i1(b134_1_w167),
      .o1(w168));

PNU_NOT
     s36 (
      .i1(b134_2_w169),
      .o1(w170));

PNU_NOT
     s37 (
      .i1(b134_3_w171),
      .o1(w172));

PNU_NOT
     s38 (
      .i1(b134_4_w173),
      .o1(w174));

PNU_NOT
     s39 (
      .i1(b134_5_w175),
      .o1(w176));

PNU_NOT
     s40 (
      .i1(b134_6_w177),
      .o1(w178));

PNU_NOT
     s41 (
      .i1(b134_7_w179),
      .o1(w180));

PNU_NOT
     s42 (
      .o1(w181),
      .i1(b134_8_w182));

PNU_NOT
     s43 (
      .i1(b134_9_w183),
      .o1(w184));

PNU_NOT
     s44 (
      .i1(b134_10_w185),
      .o1(w186));

PNU_NOT
     s45 (
      .i1(b134_11_w187),
      .o1(w188));

PNU_NOT
     s46 (
      .i1(b134_12_w189),
      .o1(w190));

PNU_NOT
     s47 (
      .i1(b134_13_w191),
      .o1(w192));

PNU_NOT
     s48 (
      .i1(b134_14_w193),
      .o1(w194));

PNU_NOT
     s49 (
      .i1(b134_15_w195),
      .o1(w196));

PNU_NOT
     s50 (
      .i1(b134_16_w197),
      .o1(w198));

PNU_NOT
     s51 (
      .i1(b134_17_w199),
      .o1(w200));

PNU_NOT
     s52 (
      .i1(b134_18_w201),
      .o1(w202));

PNU_NOT
     s53 (
      .i1(b134_19_w203),
      .o1(w204));

PNU_NOT
     s54 (
      .i1(b134_20_w205),
      .o1(w210));

PNU_NOT
     s55 (
      .i1(b134_21_w206),
      .o1(w209));

PNU_NOT
     s56 (
      .i1(b134_22_w207),
      .o1(w208));

PNU_NOT
     s57 (
      .o1(w215),
      .i1(b134_25_w216));

PNU_NOT
     s58 (
      .i1(b134_23_w211),
      .o1(w213));

PNU_NOT
     s59 (
      .i1(b134_24_w212),
      .o1(w214));

PNU_NOT
     s60 (
      .i1(b134_26_w217),
      .o1(w218));

PNU_NOT
     s61 (
      .i1(b134_27_w219),
      .o1(w220));

PNU_NOT
     s62 (
      .i1(b134_28_w221),
      .o1(w222));

PNU_NOT
     s63 (
      .i1(b134_29_w223),
      .o1(w224));

PNU_NOT
     s64 (
      .i1(b134_30_w225),
      .o1(w226));

PNU_NOT
     s65 (
      .i1(b134_31_w227),
      .o1(w228));

endmodule

