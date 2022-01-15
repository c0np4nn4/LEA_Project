module LCDtest1(Keypad,RST,CLK,LCD_DATA,LCD_E,LCD_RS,LCD_RW);

input [11:0] Keypad;
input RST;
input CLK;
output [7:0] LCD_DATA;
output LCD_E;
output LCD_RS;
output LCD_RW;

wire [11:0] b2;
wire [7:0] b23;
wire  w9;
wire  w11;
wire  w12;
wire  w10;
wire  w13;
wire [7:0] b9;
wire  w14;
wire  w15;

assign b2 = Keypad;
assign w15 = RST;
assign w14 = CLK;
assign LCD_DATA = b23;
assign LCD_E = w10;
assign LCD_RS = w11;
assign LCD_RW = w12;

keypad
     s0 (
      .Keypad(b2),
      .CHK(w9),
      .star(w13),
      .LCD_DATA(b9),
      .sharp());

testLCD
     #(
      .CLEAR_DISP(3'b111),
      .DELAY(3'b000),
      .DELAY_T(3'b110),
      .DISP_ONOFF(3'b011),
      .ENTRY_MODE(3'b010),
      .FUNCTION_SET(3'b001),
      .LINE1(3'b100),
      .LINE2(3'b101))
     s1 (
      .LCD_DATA(b23),
      .CHK(w9),
      .LCD_RS(w11),
      .LCD_RW(w12),
      .LCD_E(w10),
      .LCD_DATA_in(b9),
      .CLK(w14),
      .RESETN(w15));

endmodule

