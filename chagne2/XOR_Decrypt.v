module XOR_Decrypt(Din,RoundKey,Dout);

input [127:0] Din;
input [191:0] RoundKey;
output [127:0] Dout;

wire [191:0] b0;
wire [127:0] b1;
wire [127:0] b2;
wire [31:0] b15;
wire [31:0] b17;
wire [31:0] b0_31to0_b3;
wire [31:0] b2_31to0_b4;
wire [31:0] b1_31to0;
wire [31:0] b0_63to32_b6;
wire [31:0] b2_63to32_b7;
wire [31:0] b1_63to32;
wire [31:0] b0_95to64_b9;
wire [31:0] b2_95to64_b10;
wire [31:0] b1_95to64;
wire [31:0] b0_127to96_b12;
wire [31:0] b0_159to128_b13;
wire [31:0] b0_191to160_b14;
wire [31:0] b2_127to96_b16;
wire [31:0] b1_127to96;

assign b2 = Din;
assign b0 = RoundKey;
assign Dout = b1;

assign b1[127:96] = b1_127to96[31:0];
assign b1[95:64] = b1_95to64[31:0];
assign b1[63:32] = b1_63to32[31:0];
assign b1[31:0] = b1_31to0[31:0];

assign b0_31to0_b3[31:0] = {b0[31:0]};
assign b2_31to0_b4[31:0] = {b2[31:0]};
assign b0_63to32_b6[31:0] = {b0[63:32]};
assign b2_63to32_b7[31:0] = {b2[63:32]};
assign b0_95to64_b9[31:0] = {b0[95:64]};
assign b2_95to64_b10[31:0] = {b2[95:64]};
assign b0_127to96_b12[31:0] = {b0[127:96]};
assign b0_159to128_b13[31:0] = {b0[159:128]};
assign b0_191to160_b14[31:0] = {b0[191:160]};
assign b2_127to96_b16[31:0] = {b2[127:96]};

LEA_BlockXOR
     s0 (
      .RoundKey(b0_31to0_b3),
      .Block(b2_31to0_b4),
      .Result(b1_31to0));

LEA_BlockXOR
     s1 (
      .RoundKey(b0_63to32_b6),
      .Block(b2_63to32_b7),
      .Result(b1_63to32));

LEA_BlockXOR
     s2 (
      .RoundKey(b0_95to64_b9),
      .Block(b2_95to64_b10),
      .Result(b1_95to64));

LEA_BlockXOR
     s3 (
      .RoundKey(b0_127to96_b12),
      .Block(b0_159to128_b13),
      .Result(b15));

LEA_BlockXOR
     s4 (
      .Block(b0_191to160_b14),
      .RoundKey(b15),
      .Result(b17));

LEA_BlockXOR
     s5 (
      .Block(b2_127to96_b16),
      .RoundKey(b17),
      .Result(b1_127to96));

endmodule

