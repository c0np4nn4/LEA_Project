module Subtest_tb;

reg [3:0] A;
reg [3:0] B;
wire [3:0] Dout;

Subtest
 U0 (
  .A(A),
  .B(B),
  .Dout(Dout));

  initial
  begin
    A = 4'b0000;
    #200 A = 4'b1000;
    #100 A = 4'b0000;
    #500 A = 4'b0010;
    #100 A = 4'b0000;
    #400 A = 4'b0110;
    #100 A = 4'b0000;
    #300 A = 4'b1000;
    #100 A = 4'b0000;
  end

  initial
  begin
    B = 4'b0000;
    #200 B = 4'b0100;
    #100 B = 4'b0000;
    #500 B = 4'b1000;
    #100 B = 4'b0000;
    #400 B = 4'b0110;
    #100 B = 4'b0000;
    #300 B = 4'b1110;
    #100 B = 4'b0000;
  end

endmodule
