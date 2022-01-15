module keypad(Keypad,LCD_DATA,CHK,star,sharp);

input [11:0] Keypad;
output [7:0] LCD_DATA;
output CHK;
output star;
output sharp;

wire [7:0] b11;
wire  w4;
wire [11:0] b10;
wire  w13;
wire [3:0] b11_3to0;
wire  b11_4;
wire [9:0] b10_9to0_b7;
wire  b11_6;

assign b10 = Keypad;
assign LCD_DATA = b11;
assign CHK = w13;
assign star = b10[10];
assign sharp = b10[11];

assign b11[7] = b11_6;
assign b11[6] = b11_6;
assign b11[5] = b11_4;
assign b11[4] = b11_4;
assign b11[3:0] = b11_3to0[3:0];

assign b10_9to0_b7[9:0] = {b10[9:0]};

DecToBinConverter
     s0 (
      .B(b11_3to0),
      .D(b10_9to0_b7),
      .CHK(w13));

PNU_ZERO
     s1 (
      .o1(b11_6));

PNU_ONE
     s2 (
      .o1(w4));

PNU_AND2
     s3 (
      .i1(w4),
      .o1(b11_4),
      .i2(w13));

endmodule

