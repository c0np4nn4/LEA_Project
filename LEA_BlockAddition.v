module LEA_BlockAddition(A,B,Result);

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
wire  b97_31;
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

LEA_FullAdder
     s1 (
      .B(b60_1_w5),
      .A(b59_1_w6),
      .Cin(w101),
      .Cout(w102),
      .S(b97_1));

LEA_FullAdder
     s2 (
      .A(b59_2_w7),
      .B(b60_2_w8),
      .Cin(w102),
      .Cout(w103),
      .S(b97_2));

LEA_FullAdder
     s3 (
      .A(b59_3_w9),
      .B(b60_3_w10),
      .Cin(w103),
      .Cout(w104),
      .S(b97_3));

LEA_FullAdder
     s4 (
      .A(b59_4_w11),
      .B(b60_4_w12),
      .Cin(w104),
      .Cout(w105),
      .S(b97_4));

LEA_FullAdder
     s5 (
      .A(b59_5_w13),
      .B(b60_5_w14),
      .Cin(w105),
      .S(b97_5),
      .Cout(w151));

LEA_FullAdder
     s6 (
      .A(b59_6_w15),
      .B(b60_6_w16),
      .Cin(w151),
      .S(b97_6),
      .Cout(w153));

LEA_FullAdder
     s7 (
      .B(b60_7_w17),
      .A(b59_7_w18),
      .Cin(w153),
      .S(b97_7),
      .Cout(w155));

LEA_FullAdder
     s8 (
      .A(b59_8_w19),
      .B(b60_8_w20),
      .Cin(w155),
      .S(b97_8),
      .Cout(w157));

LEA_FullAdder
     s9 (
      .A(b59_9_w21),
      .B(b60_9_w22),
      .Cin(w157),
      .S(b97_9),
      .Cout(w159));

LEA_FullAdder
     s10 (
      .A(b59_10_w23),
      .B(b60_10_w24),
      .Cin(w159),
      .Cout(w162),
      .S(b97_10));

LEA_FullAdder
     s11 (
      .A(b59_11_w25),
      .B(b60_11_w26),
      .Cout(w161),
      .S(b97_11),
      .Cin(w162));

LEA_FullAdder
     s12 (
      .A(b59_12_w27),
      .B(b60_12_w28),
      .Cout(w149),
      .S(b97_12),
      .Cin(w161));

LEA_FullAdder
     s13 (
      .A(b59_13_w29),
      .B(b60_13_w30),
      .Cout(w147),
      .S(b97_13),
      .Cin(w149));

LEA_FullAdder
     s14 (
      .A(b59_14_w31),
      .B(b60_14_w32),
      .Cout(w145),
      .S(b97_14),
      .Cin(w147));

LEA_FullAdder
     s15 (
      .A(b59_15_w33),
      .B(b60_15_w34),
      .Cout(w143),
      .S(b97_15),
      .Cin(w145));

LEA_FullAdder
     s16 (
      .A(b59_16_w35),
      .B(b60_16_w36),
      .Cout(w141),
      .S(b97_16),
      .Cin(w143));

LEA_FullAdder
     s17 (
      .A(b59_17_w37),
      .B(b60_17_w38),
      .Cout(w139),
      .S(b97_17),
      .Cin(w141));

LEA_FullAdder
     s18 (
      .A(b59_18_w39),
      .B(b60_18_w40),
      .Cout(w137),
      .S(b97_18),
      .Cin(w139));

LEA_FullAdder
     s19 (
      .A(b59_19_w41),
      .B(b60_19_w42),
      .Cout(w135),
      .S(b97_19),
      .Cin(w137));

LEA_FullAdder
     s20 (
      .A(b59_20_w43),
      .B(b60_20_w44),
      .Cout(w133),
      .S(b97_20),
      .Cin(w135));

LEA_FullAdder
     s21 (
      .A(b59_21_w45),
      .B(b60_21_w46),
      .Cout(w131),
      .S(b97_21),
      .Cin(w133));

LEA_FullAdder
     s22 (
      .A(b59_28_w59),
      .B(b60_28_w60),
      .Cout(w117),
      .S(b97_28),
      .Cin(w119));

LEA_FullAdder
     s23 (
      .A(b59_27_w57),
      .B(b60_27_w58),
      .Cout(w119),
      .S(b97_27),
      .Cin(w121));

LEA_FullAdder
     s24 (
      .A(b59_26_w55),
      .B(b60_26_w56),
      .Cout(w121),
      .S(b97_26),
      .Cin(w123));

LEA_FullAdder
     s25 (
      .A(b59_25_w52),
      .B(b60_25_w54),
      .Cout(w123),
      .Cin(w124),
      .S(b97_25));

LEA_FullAdder
     s26 (
      .A(b59_24_w51),
      .B(b60_24_w53),
      .Cout(w124),
      .Cin(w126),
      .S(b97_24));

LEA_FullAdder
     s27 (
      .A(b59_23_w49),
      .B(b60_23_w50),
      .Cout(w126),
      .Cin(w128),
      .S(b97_23));

LEA_FullAdder
     s28 (
      .A(b59_22_w47),
      .B(b60_22_w48),
      .Cout(w128),
      .S(b97_22),
      .Cin(w131));

LEA_FullAdder
     s29 (
      .B(b60_29_w65),
      .A(b59_29_w66),
      .Cout(w115),
      .S(b97_29),
      .Cin(w117));

LEA_FullAdder
     s30 (
      .B(b60_30_w63),
      .A(b59_30_w64),
      .Cout(w112),
      .S(b97_30),
      .Cin(w115));

LEA_FinAdder
     s31 (
      .A(b59_31_w61),
      .B(b60_31_w62),
      .Cin(w112),
      .S(b97_31));

LEA_FullAdder
     s32 (
      .B(b60_0_w2),
      .A(b59_0_w4),
      .Cout(w101),
      .S(b97_0),
      .Cin(w164));

PNU_ZERO
     s33 (
      .o1(w164));

endmodule

