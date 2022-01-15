module LEA_project_tb;

wire CHK;
wire CHK_Key;
wire CHK_Text;
reg CLK;
wire [7:0] Din;
reg [11:0] Keypad;
wire [2:0] LCD_Address;
wire [7:0] LCD_DATA;
wire LCD_E;
wire LCD_RS;
wire LCD_RW;
wire [127:0] Out_Decrypted;
wire [127:0] Out_Encrypted;
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
wire sharp;
wire star;

LEA_project
 U0 (
  .CHK(CHK),
  .CHK_Key(CHK_Key),
  .CHK_Text(CHK_Text),
  .CLK(CLK),
  .Din(Din),
  .Keypad(Keypad),
  .LCD_Address(LCD_Address),
  .LCD_DATA(LCD_DATA),
  .LCD_E(LCD_E),
  .LCD_RS(LCD_RS),
  .LCD_RW(LCD_RW),
  .Out_Decrypted(Out_Decrypted),
  .Out_Encrypted(Out_Encrypted),
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
  .RST(RST),
  .sharp(sharp),
  .star(star));

  initial
  begin
    CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
  end

  initial
  begin
    Keypad = 12'b000000000000;
    #300 Keypad = 12'b010000000000;
    #400 Keypad = 12'b000000000000;
    #300 Keypad = 12'b000001000000;
    #400 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000000001000;
    #400 Keypad = 12'b000000000000;
    #100 Keypad = 12'b001000000000;
    #400 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000010000000;
    #400 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000000001000;
    #1000 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000000000100;
    #500 Keypad = 12'b000000000000;
    #300 Keypad = 12'b001000000000;
    #400 Keypad = 12'b000000000000;
    #200 Keypad = 12'b000100000000;
    #500 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000001000000;
    #400 Keypad = 12'b000000000000;
    #100 Keypad = 12'b000000010000;
    #900 Keypad = 12'b000000000000;
  end

  initial
  begin
    RST = 1'b1;
    #200 RST = 1'b0;
  end

endmodule
