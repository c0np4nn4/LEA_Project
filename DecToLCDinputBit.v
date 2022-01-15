module DecToLCDinputBit(numKeypad,LCD_DATA,CHK);

input [9:0] numKeypad;
output [7:0] LCD_DATA;
output CHK;

wire [9:0] b0;
wire [7:0] b2;
wire  w4;
wire  w8;
wire [3:0] b2_3to0;
wire  b2_6;
wire  b2_4;

assign b0 = numKeypad;
assign LCD_DATA = b2;
assign CHK = w8;

assign b2[7] = b2_6;
assign b2[6] = b2_6;
assign b2[5] = b2_4;
assign b2[4] = b2_4;
assign b2[3:0] = b2_3to0[3:0];

DecToBinConverter
     s0 (
      .D(b0),
      .B(b2_3to0),
      .CHK(w8));

PNU_ZERO
     s1 (
      .o1(b2_6));

PNU_ONE
     s2 (
      .o1(w4));

PNU_AND2
     s3 (
      .i1(w4),
      .i2(w8),
      .o1(b2_4));

endmodule

