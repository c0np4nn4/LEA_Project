module LEA_KeyConstructor(clk,Din,Dout);

input clk;
input [127:0] Din;
output [191:0] Dout;

wire  w0;
wire [31:0] b4;
wire [127:0] b26;
wire [31:0] b27;
wire [31:0] b30;
wire [31:0] b20;
wire [191:0] b24;
wire [31:0] b26_31to0_b10;
wire [31:0] b27_31to0_b11;
wire [31:0] b26_63to32_b12;
wire [31:0] b30_31to0_b14;
wire [31:0] b26_95to64_b16;
wire [31:0] b4_31to0_b17;
wire [31:0] b26_127to96_b19;
wire [31:0] b24_31to0;
wire [31:0] b24_63to32;
wire [31:0] b24_159to128;
wire [31:0] b24_191to160;
wire [31:0] b24_95to64;
wire [31:0] b24_127to96;
wire [31:0] b26_63to32_b29;
wire [31:0] b26_95to64_b32;

assign w0 = clk;
assign b26 = Din;
assign Dout = b24;

assign b24[191:160] = b24_191to160[31:0];
assign b24[159:128] = b24_159to128[31:0];
assign b24[127:96] = b24_127to96[31:0];
assign b24[95:64] = b24_95to64[31:0];
assign b24[63:32] = b24_63to32[31:0];
assign b24[31:0] = b24_31to0[31:0];

assign b26_31to0_b10[31:0] = {b26[31:0]};
assign b27_31to0_b11[31:0] = {b27[31:0]};
assign b26_63to32_b12[31:0] = {b26[63:32]};
assign b30_31to0_b14[31:0] = {b30[31:0]};
assign b26_95to64_b16[31:0] = {b26[95:64]};
assign b4_31to0_b17[31:0] = {b4[31:0]};
assign b26_127to96_b19[31:0] = {b26[127:96]};
assign b26_63to32_b29[31:0] = {b26[63:32]};
assign b26_95to64_b32[31:0] = {b26[95:64]};

LEA_KeyConstant
     s0 (
      .clk(w0),
      .E1(b4),
      .E0(b20),
      .E3(b27),
      .E2(b30));

LEA_BlockXOR
     s1 (
      .RoundKey(b26_31to0_b10),
      .Block(b27),
      .Result(b24_31to0));

LEA_BlockXOR
     s2 (
      .RoundKey(b26_63to32_b12),
      .Block(b30),
      .Result(b24_63to32));

LEA_BlockXOR
     s3 (
      .RoundKey(b26_95to64_b16),
      .Block(b4),
      .Result(b24_95to64));

LEA_BlockXOR
     s4 (
      .RoundKey(b26_127to96_b19),
      .Block(b20),
      .Result(b24_127to96));

LEA_BlockXOR
     s5 (
      .Block(b27),
      .Result(b24_159to128),
      .RoundKey(b26_63to32_b29));

LEA_BlockXOR
     s6 (
      .Block(b30),
      .Result(b24_191to160),
      .RoundKey(b26_95to64_b32));

endmodule

