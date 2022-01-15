module LEA_BlockSubtractor(A,B,Result);

input [31:0] A;
input [31:0] B;
output [31:0] Result;

wire [31:0] b60;
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
wire  w164;
wire  b60_0_w2;
wire  b60_1_w5;
wire  b59_0_w4;
wire  b59_1_w6;
wire  b59_2_w7;
wire  b60_2_w8;
wire  b59_3_w9;
wire  b60_3_w10;
wire  b59_4_w11;
wire  b60_4_w12;
wire  b59_5_w13;
wire  b60_5_w14;
wire  b59_6_w15;
wire  b60_6_w16;
wire  b60_7_w17;
wire  b59_7_w18;
wire  b59_8_w19;
wire  b60_8_w20;
wire  b59_9_w21;
wire  b60_9_w22;
wire  b59_10_w23;
wire  b60_10_w24;
wire  b59_11_w25;
wire  b60_11_w26;
wire  b59_12_w27;
wire  b60_12_w28;
wire  b59_13_w29;
wire  b60_13_w30;
wire  b59_14_w31;
wire  b60_14_w32;
wire  b59_15_w33;
wire  b60_15_w34;
wire  b59_16_w35;
wire  b60_16_w36;
wire  b59_17_w37;
wire  b60_17_w38;
wire  b59_18_w39;
wire  b60_18_w40;
wire  b59_19_w41;
wire  b60_19_w42;
wire  b59_20_w43;
wire  b60_20_w44;
wire  b59_21_w45;
wire  b60_21_w46;
wire  b59_22_w47;
wire  b60_22_w48;
wire  b59_23_w49;
wire  b60_23_w50;
wire  b59_24_w51;
wire  b59_25_w52;
wire  b60_24_w53;
wire  b60_25_w54;
wire  b59_26_w55;
wire  b60_26_w56;
wire  b59_27_w57;
wire  b60_27_w58;
wire  b59_28_w59;
wire  b60_28_w60;
wire  b59_31_w61;
wire  b60_31_w62;
wire  b60_30_w63;
wire  b59_30_w64;
wire  b60_29_w65;
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
wire  b97_31;

assign b59 = A;
assign b60 = B;
assign Result = b97;

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

assign b60_0_w2 = {b60[0]};
assign b60_1_w5 = {b60[1]};
assign b59_0_w4 = {b59[0]};
assign b59_1_w6 = {b59[1]};
assign b59_2_w7 = {b59[2]};
assign b60_2_w8 = {b60[2]};
assign b59_3_w9 = {b59[3]};
assign b60_3_w10 = {b60[3]};
assign b59_4_w11 = {b59[4]};
assign b60_4_w12 = {b60[4]};
assign b59_5_w13 = {b59[5]};
assign b60_5_w14 = {b60[5]};
assign b59_6_w15 = {b59[6]};
assign b60_6_w16 = {b60[6]};
assign b60_7_w17 = {b60[7]};
assign b59_7_w18 = {b59[7]};
assign b59_8_w19 = {b59[8]};
assign b60_8_w20 = {b60[8]};
assign b59_9_w21 = {b59[9]};
assign b60_9_w22 = {b60[9]};
assign b59_10_w23 = {b59[10]};
assign b60_10_w24 = {b60[10]};
assign b59_11_w25 = {b59[11]};
assign b60_11_w26 = {b60[11]};
assign b59_12_w27 = {b59[12]};
assign b60_12_w28 = {b60[12]};
assign b59_13_w29 = {b59[13]};
assign b60_13_w30 = {b60[13]};
assign b59_14_w31 = {b59[14]};
assign b60_14_w32 = {b60[14]};
assign b59_15_w33 = {b59[15]};
assign b60_15_w34 = {b60[15]};
assign b59_16_w35 = {b59[16]};
assign b60_16_w36 = {b60[16]};
assign b59_17_w37 = {b59[17]};
assign b60_17_w38 = {b60[17]};
assign b59_18_w39 = {b59[18]};
assign b60_18_w40 = {b60[18]};
assign b59_19_w41 = {b59[19]};
assign b60_19_w42 = {b60[19]};
assign b59_20_w43 = {b59[20]};
assign b60_20_w44 = {b60[20]};
assign b59_21_w45 = {b59[21]};
assign b60_21_w46 = {b60[21]};
assign b59_22_w47 = {b59[22]};
assign b60_22_w48 = {b60[22]};
assign b59_23_w49 = {b59[23]};
assign b60_23_w50 = {b60[23]};
assign b59_24_w51 = {b59[24]};
assign b59_25_w52 = {b59[25]};
assign b60_24_w53 = {b60[24]};
assign b60_25_w54 = {b60[25]};
assign b59_26_w55 = {b59[26]};
assign b60_26_w56 = {b60[26]};
assign b59_27_w57 = {b59[27]};
assign b60_27_w58 = {b60[27]};
assign b59_28_w59 = {b59[28]};
assign b60_28_w60 = {b60[28]};
assign b59_31_w61 = {b59[31]};
assign b60_31_w62 = {b60[31]};
assign b60_30_w63 = {b60[30]};
assign b59_30_w64 = {b59[30]};
assign b60_29_w65 = {b60[29]};
assign b59_29_w66 = {b59[29]};

PNU_ZERO
     s33 (
      .o1(w164));

LEA_FullSub
     s32 (
      .B(b60_0_w2),
      .A(b59_0_w4),
      .Bout(w101),
      .D(b97_0),
      .Bin(w164));

LEA_FullSub
     s34 (
      .B(b60_1_w5),
      .A(b59_1_w6),
      .Bin(w101),
      .Bout(w102),
      .D(b97_1));

LEA_FullSub
     s35 (
      .A(b59_2_w7),
      .B(b60_2_w8),
      .Bin(w102),
      .Bout(w103),
      .D(b97_2));

LEA_FullSub
     s36 (
      .A(b59_3_w9),
      .B(b60_3_w10),
      .Bin(w103),
      .Bout(w104),
      .D(b97_3));

LEA_FullSub
     s37 (
      .A(b59_4_w11),
      .B(b60_4_w12),
      .Bin(w104),
      .Bout(w105),
      .D(b97_4));

LEA_FullSub
     s38 (
      .A(b59_5_w13),
      .B(b60_5_w14),
      .Bin(w105),
      .D(b97_5),
      .Bout(w151));

LEA_FullSub
     s39 (
      .A(b59_6_w15),
      .B(b60_6_w16),
      .Bin(w151),
      .D(b97_6),
      .Bout(w153));

LEA_FullSub
     s40 (
      .B(b60_7_w17),
      .A(b59_7_w18),
      .Bin(w153),
      .D(b97_7),
      .Bout(w155));

LEA_FullSub
     s41 (
      .A(b59_8_w19),
      .B(b60_8_w20),
      .Bin(w155),
      .D(b97_8),
      .Bout(w157));

LEA_FullSub
     s42 (
      .A(b59_9_w21),
      .B(b60_9_w22),
      .Bin(w157),
      .D(b97_9),
      .Bout(w159));

LEA_FullSub
     s43 (
      .A(b59_10_w23),
      .B(b60_10_w24),
      .Bin(w159),
      .Bout(w162),
      .D(b97_10));

LEA_FullSub
     s44 (
      .A(b59_11_w25),
      .B(b60_11_w26),
      .Bout(w161),
      .D(b97_11),
      .Bin(w162));

LEA_FullSub
     s45 (
      .A(b59_12_w27),
      .B(b60_12_w28),
      .Bout(w149),
      .D(b97_12),
      .Bin(w161));

LEA_FullSub
     s46 (
      .A(b59_13_w29),
      .B(b60_13_w30),
      .Bout(w147),
      .D(b97_13),
      .Bin(w149));

LEA_FullSub
     s47 (
      .A(b59_14_w31),
      .B(b60_14_w32),
      .Bout(w145),
      .D(b97_14),
      .Bin(w147));

LEA_FullSub
     s48 (
      .A(b59_15_w33),
      .B(b60_15_w34),
      .Bout(w143),
      .D(b97_15),
      .Bin(w145));

LEA_FullSub
     s26 (
      .A(b59_16_w35),
      .B(b60_16_w36),
      .Bout(w141),
      .D(b97_16),
      .Bin(w143));

LEA_FullSub
     s27 (
      .A(b59_17_w37),
      .B(b60_17_w38),
      .Bout(w139),
      .D(b97_17),
      .Bin(w141));

LEA_FullSub
     s28 (
      .A(b59_18_w39),
      .B(b60_18_w40),
      .Bout(w137),
      .D(b97_18),
      .Bin(w139));

LEA_FullSub
     s49 (
      .A(b59_19_w41),
      .B(b60_19_w42),
      .Bout(w135),
      .D(b97_19),
      .Bin(w137));

LEA_FullSub
     s50 (
      .A(b59_20_w43),
      .B(b60_20_w44),
      .Bout(w133),
      .D(b97_20),
      .Bin(w135));

LEA_FullSub
     s51 (
      .A(b59_21_w45),
      .B(b60_21_w46),
      .Bout(w131),
      .D(b97_21),
      .Bin(w133));

LEA_FullSub
     s52 (
      .A(b59_22_w47),
      .B(b60_22_w48),
      .Bout(w128),
      .D(b97_22),
      .Bin(w131));

LEA_FullSub
     s53 (
      .A(b59_23_w49),
      .B(b60_23_w50),
      .Bout(w126),
      .Bin(w128),
      .D(b97_23));

LEA_FullSub
     s29 (
      .A(b59_24_w51),
      .B(b60_24_w53),
      .Bout(w124),
      .Bin(w126),
      .D(b97_24));

LEA_FullSub
     s30 (
      .A(b59_25_w52),
      .B(b60_25_w54),
      .Bout(w123),
      .Bin(w124),
      .D(b97_25));

LEA_FullSub
     s54 (
      .A(b59_26_w55),
      .B(b60_26_w56),
      .Bout(w121),
      .D(b97_26),
      .Bin(w123));

LEA_FullSub
     s55 (
      .A(b59_27_w57),
      .B(b60_27_w58),
      .Bout(w119),
      .D(b97_27),
      .Bin(w121));

LEA_FullSub
     s56 (
      .A(b59_28_w59),
      .B(b60_28_w60),
      .Bout(w117),
      .D(b97_28),
      .Bin(w119));

LEA_FullSub
     s57 (
      .B(b60_29_w65),
      .A(b59_29_w66),
      .Bout(w115),
      .D(b97_29),
      .Bin(w117));

LEA_FullSub
     s31 (
      .B(b60_30_w63),
      .A(b59_30_w64),
      .Bout(w112),
      .D(b97_30),
      .Bin(w115));

LEA_FinSub
     s58 (
      .A(b59_31_w61),
      .B(b60_31_w62),
      .Bin(w112),
      .D(b97_31));

endmodule

