module LEA_Encrypt(Din,RoundKey,Dout);

input [127:0] Din;
input [191:0] RoundKey;
output [127:0] Dout;

wire [191:0] b1;
wire [31:0] b6;
wire [31:0] b7;
wire [127:0] b9;
wire [127:0] b22;
wire [31:0] b16;
wire [31:0] b17;
wire [31:0] b20;
wire [31:0] b21;
wire [31:0] b23;
wire [31:0] b26;
wire [31:0] b29;
wire [31:0] b1_31to0_b2;
wire [31:0] b1_63to32_b4;
wire [31:0] b22_63to32_b11;
wire [31:0] b1_95to64_b12;
wire [31:0] b1_127to96_b13;
wire [31:0] b1_159to128_b15;
wire [31:0] b22_95to64_b14;
wire [31:0] b22_127to96_b18;
wire [31:0] b1_191to160_b19;
wire [31:0] b22_31to0_b27;
wire [31:0] b9_31to0;
wire [31:0] b9_63to32;
wire [31:0] b9_95to64;
wire [31:0] b9_127to96;
wire [31:0] b22_31to0_b31;

assign b22 = Din;
assign b1 = RoundKey;
assign Dout = b9;

assign b9[127:96] = b9_127to96[31:0];
assign b9[95:64] = b9_95to64[31:0];
assign b9[63:32] = b9_63to32[31:0];
assign b9[31:0] = b9_31to0[31:0];

assign b1_31to0_b2[31:0] = {b1[31:0]};
assign b1_63to32_b4[31:0] = {b1[63:32]};
assign b22_63to32_b11[31:0] = {b22[63:32]};
assign b1_95to64_b12[31:0] = {b1[95:64]};
assign b1_127to96_b13[31:0] = {b1[127:96]};
assign b1_159to128_b15[31:0] = {b1[159:128]};
assign b22_95to64_b14[31:0] = {b22[95:64]};
assign b22_127to96_b18[31:0] = {b22[127:96]};
assign b1_191to160_b19[31:0] = {b1[191:160]};
assign b22_31to0_b27[31:0] = {b22[31:0]};
assign b22_31to0_b31[31:0] = {b22[31:0]};

LEA_BlockXOR
     s0 (
      .RoundKey(b1_31to0_b2),
      .Result(b6),
      .Block(b22_31to0_b27));

LEA_BlockXOR
     s1 (
      .RoundKey(b1_63to32_b4),
      .Result(b7),
      .Block(b22_63to32_b11));

LEA_BlockAddition
     s2 (
      .A(b6),
      .B(b7),
      .Result(b23));

LEA_BlockXOR
     s4 (
      .Block(b22_63to32_b11),
      .RoundKey(b1_95to64_b12),
      .Result(b16));

LEA_BlockXOR
     s5 (
      .RoundKey(b1_127to96_b13),
      .Block(b22_95to64_b14),
      .Result(b17));

LEA_BlockXOR
     s6 (
      .RoundKey(b1_159to128_b15),
      .Block(b22_95to64_b14),
      .Result(b20));

LEA_BlockAddition
     s7 (
      .A(b16),
      .B(b17),
      .Result(b26));

LEA_BlockXOR
     s8 (
      .Block(b22_127to96_b18),
      .RoundKey(b1_191to160_b19),
      .Result(b21));

LEA_BlockAddition
     s9 (
      .A(b20),
      .B(b21),
      .Result(b29));

LEA_ROL9
     s10 (
      .Din(b23),
      .Dout(b9_31to0));

LEA_ROR5
     s11 (
      .Din(b26),
      .Dout(b9_63to32));

LEA_ROR3
     s12 (
      .Din(b29),
      .Dout(b9_95to64));

LEA_PASS
     s13 (
      .Dout(b9_127to96),
      .Din(b22_31to0_b31));

endmodule

