module LCDTEST_tb;

wire CHK;
reg CLK;
reg [11:0] Keypad;
wire [7:0] LCD_DATA;
wire LCD_E;
wire LCD_RS;
wire LCD_RW;
wire [7:0] Out_PlainText1;
wire [7:0] Out_PlainText10;
wire [7:0] Out_PlainText11;
wire [7:0] Out_PlainText12;
wire [7:0] Out_PlainText13;
wire [7:0] Out_PlainText14;
wire [7:0] Out_PlainText15;
wire [7:0] Out_PlainText16;
wire [7:0] Out_PlainText2;
wire [7:0] Out_PlainText3;
wire [7:0] Out_PlainText4;
wire [7:0] Out_PlainText5;
wire [7:0] Out_PlainText6;
wire [7:0] Out_PlainText7;
wire [7:0] Out_PlainText8;
wire [7:0] Out_PlainText9;
reg RST;

LCDTEST
 U0 (
  .CHK(CHK),
  .CLK(CLK),
  .Keypad(Keypad),
  .LCD_DATA(LCD_DATA),
  .LCD_E(LCD_E),
  .LCD_RS(LCD_RS),
  .LCD_RW(LCD_RW),
  .Out_PlainText1(Out_PlainText1),
  .Out_PlainText10(Out_PlainText10),
  .Out_PlainText11(Out_PlainText11),
  .Out_PlainText12(Out_PlainText12),
  .Out_PlainText13(Out_PlainText13),
  .Out_PlainText14(Out_PlainText14),
  .Out_PlainText15(Out_PlainText15),
  .Out_PlainText16(Out_PlainText16),
  .Out_PlainText2(Out_PlainText2),
  .Out_PlainText3(Out_PlainText3),
  .Out_PlainText4(Out_PlainText4),
  .Out_PlainText5(Out_PlainText5),
  .Out_PlainText6(Out_PlainText6),
  .Out_PlainText7(Out_PlainText7),
  .Out_PlainText8(Out_PlainText8),
  .Out_PlainText9(Out_PlainText9),
  .RST(RST));

  initial
  begin
    CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
    #50 CLK = 1'b0;
    #50 CLK = 1'b1;
  end

  initial
  begin
    Keypad = 12'b000000000000;
    #400 Keypad = 12'b000000000001;
    #400 Keypad = 12'b000000000000;
    #200 Keypad = 12'b000000010000;
    #400 Keypad = 12'b000000000000;
    #400 Keypad = 12'b000100000000;
    #600 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000000100000;
    #500 Keypad = 12'b000000000000;
    #200 Keypad = 12'b010000000000;
    #400 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000001000000;
    #500 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000000000010;
    #400 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000000001000;
    #400 Keypad = 12'b000000000000;
    #400 Keypad = 12'b001000000000;
    #400 Keypad = 12'b000000000000;
    #400 Keypad = 12'b000001000000;
    #500 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000000000001;
    #500 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000000000010;
    #400 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000000010000;
    #600 Keypad = 12'b000000000000;
    #200 Keypad = 12'b000001000000;
    #600 Keypad = 12'b000000000000;
  end

  initial
  begin
    RST = 1'b1;
    #200 RST = 1'b0;
  end

endmodule
