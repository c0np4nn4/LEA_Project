module LCDTEST(CLK,RST,LCD_DATA,LCD_E,LCD_RS,LCD_RW,Keypad,Out_PlainText1,Out_PlainText2,Out_PlainText3,Out_PlainText4,Out_PlainText5,Out_PlainText6,Out_PlainText7,Out_PlainText8,Out_PlainText9,Out_PlainText10,Out_PlainText11,Out_PlainText12,Out_PlainText13,Out_PlainText14,Out_PlainText15,Out_PlainText16,CHK);

input CLK;
input RST;
output [7:0] LCD_DATA;
output LCD_E;
output LCD_RS;
output LCD_RW;
input [11:0] Keypad;
output [7:0] Out_PlainText1;
output [7:0] Out_PlainText2;
output [7:0] Out_PlainText3;
output [7:0] Out_PlainText4;
output [7:0] Out_PlainText5;
output [7:0] Out_PlainText6;
output [7:0] Out_PlainText7;
output [7:0] Out_PlainText8;
output [7:0] Out_PlainText9;
output [7:0] Out_PlainText10;
output [7:0] Out_PlainText11;
output [7:0] Out_PlainText12;
output [7:0] Out_PlainText13;
output [7:0] Out_PlainText14;
output [7:0] Out_PlainText15;
output [7:0] Out_PlainText16;
output CHK;

wire  w24;
wire [11:0] b25;
wire  w22;
wire  w23;
wire  w25;
wire  w26;
wire [7:0] b40;
wire [7:0] b39;
wire [7:0] b38;
wire [7:0] b37;
wire [7:0] b36;
wire [7:0] b35;
wire [7:0] b34;
wire [7:0] b33;
wire [7:0] b32;
wire [7:0] b31;
wire [7:0] b30;
wire [7:0] b29;
wire [7:0] b41;
wire [7:0] b42;
wire [7:0] b26;
wire [7:0] b27;
wire  w27;
wire [7:0] b28;
wire [7:0] b43;
wire  w28;

assign w25 = CLK;
assign w26 = RST;
assign LCD_DATA = b28;
assign LCD_E = w24;
assign LCD_RS = w23;
assign LCD_RW = w22;
assign b25 = Keypad;
assign Out_PlainText1 = b40;
assign Out_PlainText2 = b39;
assign Out_PlainText3 = b38;
assign Out_PlainText4 = b37;
assign Out_PlainText5 = b36;
assign Out_PlainText6 = b35;
assign Out_PlainText7 = b34;
assign Out_PlainText8 = b33;
assign Out_PlainText9 = b32;
assign Out_PlainText10 = b31;
assign Out_PlainText11 = b30;
assign Out_PlainText12 = b29;
assign Out_PlainText13 = b41;
assign Out_PlainText14 = b42;
assign Out_PlainText15 = b26;
assign Out_PlainText16 = b27;
assign CHK = w28;

LCD_InputPlainText
     #(
      .CLEAR_DISP(3'b111),
      .DELAY(3'b000),
      .DELAY_T(3'b110),
      .DISP_ONOFF(3'b011),
      .ENTRY_MODE(3'b010),
      .FUNCTION_SET(3'b001),
      .LINE1(3'b100),
      .LINE2(3'b101))
     s0 (
      .LCD_E(w24),
      .LCD_RW(w22),
      .LCD_RS(w23),
      .CLK(w25),
      .RESETN(w26),
      .LCD_inputDATA_2_1(b40),
      .LCD_inputDATA_2_2(b39),
      .LCD_inputDATA_2_3(b38),
      .LCD_inputDATA_2_4(b37),
      .LCD_inputDATA_2_5(b36),
      .LCD_inputDATA_2_6(b35),
      .LCD_inputDATA_2_7(b34),
      .LCD_inputDATA_2_8(b33),
      .LCD_inputDATA_2_9(b32),
      .LCD_inputDATA_2_10(b31),
      .LCD_inputDATA_2_11(b30),
      .LCD_inputDATA_2_12(b29),
      .LCD_inputDATA_2_13(b41),
      .LCD_inputDATA_2_14(b42),
      .LCD_inputDATA_2_15(b26),
      .LCD_inputDATA_2_16(b27),
      .LCD_DATA(b28));

keypad
     s1 (
      .Keypad(b25),
      .CHK(w27),
      .LCD_DATA(b43),
      .sharp(),
      .star());

LTP
     s2 (
      .clk(w25),
      .rst(w26),
      .Level(w27),
      .Pulse(w28));

EightBitX16Reg
     s3 (
      .CLK(w25),
      .RST(w26),
      .Dout1(b40),
      .Dout2(b39),
      .Dout3(b38),
      .Dout4(b37),
      .Dout5(b36),
      .Dout6(b35),
      .Dout7(b34),
      .Dout8(b33),
      .Dout9(b32),
      .Dout10(b31),
      .Dout11(b30),
      .Dout12(b29),
      .Dout13(b41),
      .Dout14(b42),
      .Dout15(b26),
      .Dout16(b27),
      .Din(b43),
      .CHK(w28));

endmodule

