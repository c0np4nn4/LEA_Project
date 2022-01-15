module LEA_TwoAdder_tb;

reg A;
reg B;
wire Cout;
wire S;

LEA_TwoAdder
 U0 (
  .A(A),
  .B(B),
  .Cout(Cout),
  .S(S));

  initial
  begin
    A = 1'b0;
    #600 A = 1'b1;
    #100 A = 1'b0;
    #800 A = 1'b1;
    #100 A = 1'b0;
  end

  initial
  begin
    B = 1'b0;
    #1500 B = 1'b1;
    #100 B = 1'b0;
    #1500 B = 1'b1;
    #100 B = 1'b0;
  end

endmodule
