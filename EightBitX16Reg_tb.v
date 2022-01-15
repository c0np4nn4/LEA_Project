module EightBitX16Reg_tb;

reg CHK;
reg CLK;
reg [7:0] Din;
wire [7:0] Dout1;
wire [7:0] Dout10;
wire [7:0] Dout11;
wire [7:0] Dout12;
wire [7:0] Dout13;
wire [7:0] Dout14;
wire [7:0] Dout15;
wire [7:0] Dout16;
wire [7:0] Dout2;
wire [7:0] Dout3;
wire [7:0] Dout4;
wire [7:0] Dout5;
wire [7:0] Dout6;
wire [7:0] Dout7;
wire [7:0] Dout8;
wire [7:0] Dout9;
reg RST;

EightBitX16Reg
 U0 (
  .CHK(CHK),
  .CLK(CLK),
  .Din(Din),
  .Dout1(Dout1),
  .Dout10(Dout10),
  .Dout11(Dout11),
  .Dout12(Dout12),
  .Dout13(Dout13),
  .Dout14(Dout14),
  .Dout15(Dout15),
  .Dout16(Dout16),
  .Dout2(Dout2),
  .Dout3(Dout3),
  .Dout4(Dout4),
  .Dout5(Dout5),
  .Dout6(Dout6),
  .Dout7(Dout7),
  .Dout8(Dout8),
  .Dout9(Dout9),
  .RST(RST));

  initial
  begin
    CHK = 1'b0;
    #500 CHK = 1'b1;
    #200 CHK = 1'b0;
    #600 CHK = 1'b1;
    #200 CHK = 1'b0;
    #600 CHK = 1'b1;
    #200 CHK = 1'b0;
    #900 CHK = 1'b1;
    #200 CHK = 1'b0;
    #300 CHK = 1'b1;
    #200 CHK = 1'b0;
    #700 CHK = 1'b1;
    #200 CHK = 1'b0;
    #500 CHK = 1'b1;
    #200 CHK = 1'b0;
    #700 CHK = 1'b1;
    #200 CHK = 1'b0;
    #300 CHK = 1'b1;
    #200 CHK = 1'b0;
    #700 CHK = 1'b1;
    #200 CHK = 1'b0;
  end

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
    Din = 8'b00000000;
    #300 Din = 8'b00000001;
    #600 Din = 8'b00000000;
    #300 Din = 8'b00001000;
    #500 Din = 8'b00000000;
    #300 Din = 8'b00010000;
    #600 Din = 8'b00000000;
    #400 Din = 8'b00000010;
    #500 Din = 8'b00000000;
    #100 Din = 8'b10000000;
    #500 Din = 8'b00000000;
    #300 Din = 8'b00001000;
    #500 Din = 8'b00000000;
    #300 Din = 8'b00100000;
    #500 Din = 8'b00000000;
    #400 Din = 8'b01000000;
    #400 Din = 8'b00000000;
    #200 Din = 8'b00000100;
    #500 Din = 8'b00000000;
    #300 Din = 8'b00010000;
    #500 Din = 8'b00000000;
  end

  initial
  begin
    RST = 1'b1;
    #100 RST = 1'b0;
  end

endmodule
