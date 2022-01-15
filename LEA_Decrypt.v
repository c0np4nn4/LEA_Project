module LEA_Decrypt(Din,RoundKey,Dout);

input [127:0] Din;
input [191:0] RoundKey;
output [127:0] Dout;

wire [127:0] b9;
wire [191:0] b1;
wire [127:0] b12;
wire [31:0] b8;
wire [31:0] b10;
wire [31:0] b14;
wire [31:0] b22;
wire [31:0] b30;
wire [31:0] b34;
wire [31:0] b35;
wire [31:0] b27;
wire [31:0] b28;
wire [31:0] b12_31to0_b13;
wire [31:0] b1_31to0_b15;
wire [31:0] b1_63to32_b16;
wire [31:0] b9_63to32;
wire [31:0] b9_63to32_b17;
wire [31:0] b1_95to64_b18;
wire [31:0] b12_63to32_b19;
wire [31:0] b1_127to96_b23;
wire [31:0] b9_95to64;
wire [31:0] b9_95to64_b24;
wire [31:0] b1_159to128_b26;
wire [31:0] b12_95to64_b29;
wire [31:0] b1_191to160_b31;
wire [31:0] b9_127to96;
wire [31:0] b9_31to0;
wire [31:0] b12_127to96_b32;

assign b12 = Din;
assign b1 = RoundKey;
assign Dout = b9;

assign b9[127:96] = b9_127to96[31:0];
assign b9[95:64] = b9_95to64[31:0];
assign b9[63:32] = b9_63to32[31:0];
assign b9[31:0] = b9_31to0[31:0];

assign b12_31to0_b13[31:0] = {b12[31:0]};
assign b1_31to0_b15[31:0] = {b1[31:0]};
assign b1_63to32_b16[31:0] = {b1[63:32]};
assign b9_63to32_b17[31:0] = {b9[63:32]};
assign b1_95to64_b18[31:0] = {b1[95:64]};
assign b12_63to32_b19[31:0] = {b12[63:32]};
assign b1_127to96_b23[31:0] = {b1[127:96]};
assign b9_95to64_b24[31:0] = {b9[95:64]};
assign b1_159to128_b26[31:0] = {b1[159:128]};
assign b12_95to64_b29[31:0] = {b12[95:64]};
assign b1_191to160_b31[31:0] = {b1[191:160]};
assign b12_127to96_b32[31:0] = {b12[127:96]};

LEA_ROR9
     s14 (
      .Din(b12_31to0_b13),
      .Dout(b8));

LEA_BlockSubtractor
     s1 (
      .A(b8),
      .B(b10),
      .Result(b14));

LEA_BlockXOR
     s2 (
      .Result(b10),
      .RoundKey(b1_31to0_b15),
      .Block(b12_127to96_b32));

LEA_BlockXOR
     s3 (
      .RoundKey(b14),
      .Block(b1_63to32_b16),
      .Result(b9_63to32));

LEA_BlockXOR
     s4 (
      .RoundKey(b9_63to32_b17),
      .Block(b1_95to64_b18),
      .Result(b35));

LEA_ROL5
     s5 (
      .Din(b12_63to32_b19),
      .Dout(b34));

LEA_BlockSubtractor
     s6 (
      .Result(b22),
      .A(b34),
      .B(b35));

LEA_BlockXOR
     s7 (
      .RoundKey(b22),
      .Block(b1_127to96_b23),
      .Result(b9_95to64));

LEA_BlockXOR
     s8 (
      .RoundKey(b9_95to64_b24),
      .Block(b1_159to128_b26),
      .Result(b28));

LEA_ROL3
     s9 (
      .Din(b12_95to64_b29),
      .Dout(b27));

LEA_BlockSubtractor
     s10 (
      .Result(b30),
      .A(b27),
      .B(b28));

LEA_BlockXOR
     s11 (
      .RoundKey(b30),
      .Block(b1_191to160_b31),
      .Result(b9_127to96));

LEA_PASS
     s12 (
      .Dout(b9_31to0),
      .Din(b12_127to96_b32));

endmodule

