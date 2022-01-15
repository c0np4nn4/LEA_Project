module LEA_FullAdder_tb;

reg A;
reg B;
reg Cin;
wire Cout;
wire S;

LEA_FullAdder
 U0 (
  .A(A),
  .B(B),
  .Cin(Cin),
  .Cout(Cout),
  .S(S));

  initial
  begin
    A = 1'b0;
    #700 A = 1'b1;
    #100 A = 1'b0;
    #200 A = 1'b1;
    #100 A = 1'b0;
    #500 A = 1'b1;
    #100 A = 1'b0;
  end

  initial
  begin
    B = 1'b0;
    #800 B = 1'b1;
    #100 B = 1'b0;
    #100 B = 1'b1;
    #100 B = 1'b0;
    #1000 B = 1'b1;
    #100 B = 1'b0;
  end

  initial
  begin
    Cin = 1'b0;
    #1000 Cin = 1'b1;
    #100 Cin = 1'b0;
    #500 Cin = 1'b1;
    #100 Cin = 1'b0;
    #400 Cin = 1'b1;
    #100 Cin = 1'b0;
    #400 Cin = 1'b1;
    #100 Cin = 1'b0;
  end

endmodule
