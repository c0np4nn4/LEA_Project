module LEA_TwoAdder(A,B,Cout,S);

input A;
input B;
output Cout;
output S;

wire  w2;
wire  w1;
wire  w5;
wire  w11;

assign w2 = A;
assign w1 = B;
assign Cout = w5;
assign S = w11;

PNU_XOR2
     s0 (
      .i1(w2),
      .i2(w1),
      .o1(w11));

PNU_AND2
     s1 (
      .i1(w2),
      .i2(w1),
      .o1(w5));

endmodule

