module Subtest(B,Dout,A);

input [3:0] B;
output [3:0] Dout;
input [3:0] A;

wire [3:0] b0;
wire [3:0] b1;
wire [3:0] b2;
wire  w15;
wire  w19;
wire  w20;
wire  w22;
wire  b2_2_w3;
wire  b0_2_w4;
wire  b2_1_w5;
wire  b0_1_w6;
wire  b2_3_w7;
wire  b0_3_w8;
wire  b1_3;
wire  b1_2;
wire  b1_1;
wire  b1_0;
wire  b0_0_w18;
wire  b2_0_w21;

assign b0 = B;
assign Dout = b1;
assign b2 = A;

assign b1[3] = b1_3;
assign b1[2] = b1_2;
assign b1[1] = b1_1;
assign b1[0] = b1_0;

assign b2_2_w3 = {b2[2]};
assign b0_2_w4 = {b0[2]};
assign b2_1_w5 = {b2[1]};
assign b0_1_w6 = {b0[1]};
assign b2_3_w7 = {b2[3]};
assign b0_3_w8 = {b0[3]};
assign b0_0_w18 = {b0[0]};
assign b2_0_w21 = {b2[0]};

LEA_FinSub
     s4 (
      .D(b1_0),
      .B(b0_0_w18),
      .Bin(w15),
      .A(b2_0_w21));

LEA_FullSub
     s2 (
      .A(b2_1_w5),
      .B(b0_1_w6),
      .D(b1_1),
      .Bout(w15),
      .Bin(w20));

LEA_FullSub
     s5 (
      .A(b2_2_w3),
      .B(b0_2_w4),
      .D(b1_2),
      .Bin(w19),
      .Bout(w20));

LEA_FullSub
     s6 (
      .A(b2_3_w7),
      .B(b0_3_w8),
      .D(b1_3),
      .Bout(w19),
      .Bin(w22));

PNU_ZERO
     s7 (
      .o1(w22));

endmodule

