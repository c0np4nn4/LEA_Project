module LEA_FullAdder(A,B,Cin,Cout,S);

input A;
input B;
input Cin;
output Cout;
output S;

wire  w2;
wire  w1;
wire  w3;
wire  w4;
wire  w5;
wire  w6;
wire  w8;
wire  w7;

assign w2 = A;
assign w1 = B;
assign w3 = Cin;
assign Cout = w8;
assign S = w7;

PNU_XOR2
     s0 (
      .i1(w2),
      .i2(w1),
      .o1(w4));

PNU_AND2
     s1 (
      .i1(w2),
      .i2(w1),
      .o1(w5));

PNU_XOR2
     s2 (
      .i2(w3),
      .i1(w4),
      .o1(w7));

PNU_AND2
     s3 (
      .i1(w3),
      .i2(w4),
      .o1(w6));

PNU_OR2
     s4 (
      .i1(w5),
      .i2(w6),
      .o1(w8));

endmodule

