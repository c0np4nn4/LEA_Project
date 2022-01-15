module LEA_CU_tb;

parameter DecryptSuccess = 6;
parameter EncryptionSuccess = 3;
parameter InputKey = 2;
parameter InputKey_decrypt = 5;
parameter InputPlainText = 1;
parameter ShowEncryptedText = 4;
parameter Start = 0;

wire [2:0] LCD_addr;
wire chk_key;
wire chk_text;
reg clk;
reg rst;
reg sharp;
wire sharp_out;
reg star;
wire star_out;

LEA_CU
 #(
  .DecryptSuccess(6),
  .EncryptionSuccess(3),
  .InputKey(2),
  .InputKey_decrypt(5),
  .InputPlainText(1),
  .ShowEncryptedText(4),
  .Start(0))
 U0 (
  .LCD_addr(LCD_addr),
  .chk_key(chk_key),
  .chk_text(chk_text),
  .clk(clk),
  .rst(rst),
  .sharp(sharp),
  .sharp_out(sharp_out),
  .star(star),
  .star_out(star_out));

  initial
  begin
    clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
    #50 clk = 1'b0;
    #50 clk = 1'b1;
  end

  initial
  begin
    rst = 1'b1;
    #200 rst = 1'b0;
  end

  initial
  begin
    sharp = 1'b0;
    #1500 sharp = 1'b1;
    #100 sharp = 1'b0;
    #200 sharp = 1'b1;
    #100 sharp = 1'b0;
    #200 sharp = 1'b1;
    #100 sharp = 1'b0;
    #200 sharp = 1'b1;
    #100 sharp = 1'b0;
  end

  initial
  begin
    star = 1'b0;
    #300 star = 1'b1;
    #100 star = 1'b0;
    #200 star = 1'b1;
    #100 star = 1'b0;
    #200 star = 1'b1;
    #100 star = 1'b0;
    #200 star = 1'b1;
    #100 star = 1'b0;
  end

endmodule
