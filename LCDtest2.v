module LCDtest2(Keypad,RST,CLK,LCD_DATA,LCD_E,LCD_RS,LCD_RW);

input [11:0] Keypad;
input RST;
input CLK;
output [7:0] LCD_DATA;
output LCD_E;
output LCD_RS;
output LCD_RW;

wire [11:0] b2;
wire [7:0] b23;
wire  w8;
wire  w9;
wire  w10;
wire  w11;
wire  w12;
wire [7:0] b9;
wire  w14;
wire  w13;

assign b2 = Keypad;
assign w13 = RST;
assign w14 = CLK;
assign LCD_DATA = b23;
assign LCD_E = w8;
assign LCD_RS = w9;
assign LCD_RW = w10;

keypad
     s0 (
      .Keypad(b2),
      .CHK(w12),
      .LCD_DATA(b9),
      .sharp(),
      .star());

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
      .LCD_E(w8),
      .LCD_RS(w9),
      .LCD_RW(w10),
      .CHK(w11),
      .LCD_DATA_in(b9),
      .CLK(w14),
      .RESETN(w13));

EightBitX16Reg
     s2 (
      .CHK(w12),
      .Din(b9),
      .CLK(w14),
      .RST(w13),
      .Dout1(),
      .Dout10(),
      .Dout11(),
      .Dout12(),
      .Dout13(),
      .Dout14(),
      .Dout15(),
      .Dout16(),
      .Dout2(),
      .Dout3(),
      .Dout4(),
      .Dout5(),
      .Dout6(),
      .Dout7(),
      .Dout8(),
      .Dout9());

LTP
     s3 (
      .Pulse(w11),
      .Level(w12),
      .clk(w14),
      .rst(w13));

endmodule

