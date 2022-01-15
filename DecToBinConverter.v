module DecToBinConverter(D,B,CHK);

input [9:0] D;
output [3:0] B;
output CHK;

wire  w14;
wire [9:0] b17;
wire [3:0] b15;
wire  w29;
wire  w30;
wire  b17_1_w19;
wire  b17_2_w20;
wire  b17_3_w18;
wire  b17_4_w21;
wire  b17_7_w16;
wire  b17_8_w23;
wire  b17_9_w15;
wire  b17_0_w28;
wire  b15_0;
wire  b15_0_w24;
wire  b15_1;
wire  b15_1_w25;
wire  b15_2;
wire  b15_2_w26;
wire  b15_3;
wire  b15_3_w27;
wire  b17_5_w31;
wire  b17_6_w22;

assign b17 = D;
assign B = b15;
assign CHK = w30;

assign b15[3] = b15_3;
assign b15[2] = b15_2;
assign b15[1] = b15_1;
assign b15[0] = b15_0;

assign b17_1_w19 = {b17[1]};
assign b17_2_w20 = {b17[2]};
assign b17_3_w18 = {b17[3]};
assign b17_4_w21 = {b17[4]};
assign b17_7_w16 = {b17[7]};
assign b17_8_w23 = {b17[8]};
assign b17_9_w15 = {b17[9]};
assign b17_0_w28 = {b17[0]};
assign b15_0_w24 = {b15[0]};
assign b15_1_w25 = {b15[1]};
assign b15_2_w26 = {b15[2]};
assign b15_3_w27 = {b15[3]};
assign b17_5_w31 = {b17[5]};
assign b17_6_w22 = {b17[6]};

PNU_OR2
     s0 (
      .i1(b17_8_w23),
      .i2(b17_9_w15),
      .o1(b15_3));

PNU_OR4
     s2 (
      .i1(b17_2_w20),
      .i2(b17_3_w18),
      .i4(b17_7_w16),
      .o1(b15_1),
      .i3(b17_6_w22));

PNU_OR4
     s3 (
      .o1(w14),
      .i1(b17_1_w19),
      .i2(b17_3_w18),
      .i4(b17_7_w16),
      .i3(b17_5_w31));

PNU_OR2
     s4 (
      .i1(w14),
      .i2(b17_9_w15),
      .o1(b15_0));

PNU_OR4
     s5 (
      .i1(b17_4_w21),
      .i4(b17_7_w16),
      .o1(b15_2),
      .i2(b17_5_w31),
      .i3(b17_6_w22));

PNU_OR2
     s6 (
      .i1(b17_0_w28),
      .i2(w29),
      .o1(w30));

PNU_OR4
     s7 (
      .i1(b15_0_w24),
      .i2(b15_1_w25),
      .i3(b15_2_w26),
      .i4(b15_3_w27),
      .o1(w29));

endmodule

