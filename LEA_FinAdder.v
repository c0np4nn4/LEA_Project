module LEA_FinAdder(A,B,Cin,S);

input A;
input B;
input Cin;
output S;

wire  w2;
wire  w1;
wire  w5;
wire  w6;
wire  w8;
wire  w7;
wire  w9;

assign w2 = A;
assign w1 = B;
assign w9 = Cin;
assign S = w8;

PNU_XOR2
     s0 (
      .i1(w2),
      .i2(w1),
      .o1(w7));

PNU_AND2
     s1 (
      .i1(w2),
      .i2(w1),
      .o1(w5));

PNU_AND2
     s3 (
      .o1(w6),
      .i2(w7),
      .i1(w9));

PNU_OR2
     s4 (
      .i1(w5),
      .i2(w6),
      .o1(w8));

endmodule

