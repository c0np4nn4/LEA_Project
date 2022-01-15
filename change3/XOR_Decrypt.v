module XOR_Decrypt(Din,RoundKey,Dout);

input [127:0] Din;
input [127:0] RoundKey;
output [127:0] Dout;

wire [127:0] b1;
wire [127:0] b2;
wire [127:0] b12;
wire [31:0] b2_31to0_b4;
wire [31:0] b1_31to0;
wire [31:0] b2_63to32_b7;
wire [31:0] b1_63to32;
wire [31:0] b2_95to64_b10;
wire [31:0] b1_95to64;
wire [31:0] b12_31to0_b13;
wire [31:0] b12_63to32_b14;
wire [31:0] b12_95to64_b15;
wire [31:0] b2_127to96_b16;
wire [31:0] b12_127to96_b17;
wire [31:0] b1_127to96;

assign b2 = Din;
assign b12 = RoundKey;
assign Dout = b1;

assign b1[127:96] = b1_127to96[31:0];
assign b1[95:64] = b1_95to64[31:0];
assign b1[63:32] = b1_63to32[31:0];
assign b1[31:0] = b1_31to0[31:0];

assign b2_31to0_b4[31:0] = {b2[31:0]};
assign b2_63to32_b7[31:0] = {b2[63:32]};
assign b2_95to64_b10[31:0] = {b2[95:64]};
assign b12_31to0_b13[31:0] = {b12[31:0]};
assign b12_63to32_b14[31:0] = {b12[63:32]};
assign b12_95to64_b15[31:0] = {b12[95:64]};
assign b2_127to96_b16[31:0] = {b2[127:96]};
assign b12_127to96_b17[31:0] = {b12[127:96]};

LEA_BlockXOR
     s0 (
      .Block(b2_31to0_b4),
      .Result(b1_31to0),
      .RoundKey(b12_31to0_b13));

LEA_BlockXOR
     s1 (
      .Block(b2_63to32_b7),
      .Result(b1_63to32),
      .RoundKey(b12_63to32_b14));

LEA_BlockXOR
     s2 (
      .Block(b2_95to64_b10),
      .Result(b1_95to64),
      .RoundKey(b12_95to64_b15));

LEA_BlockXOR
     s3 (
      .Block(b2_127to96_b16),
      .RoundKey(b12_127to96_b17),
      .Result(b1_127to96));

endmodule

