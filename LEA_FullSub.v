module LEA_FullSub(A,B,Bin,D,Bout);

input A;
input B;
input Bin;
output D;
output Bout;

wire  w1;
wire  w2;
wire  w3;
wire  w4;
wire  w5;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  w10;

assign w3 = A;
assign w1 = B;
assign w5 = Bin;
assign D = w9;
assign Bout = w10;

PNU_XOR2
     s0 (
      .i2(w1),
      .i1(w3),
      .o1(w4));

PNU_AND2
     s1 (
      .i2(w1),
      .i1(w2),
      .o1(w8));

PNU_NOT
     s2 (
      .o1(w2),
      .i1(w3));

PNU_XOR2
     s3 (
      .i2(w4),
      .i1(w5),
      .o1(w9));

PNU_AND2
     s4 (
      .i1(w5),
      .i2(w6),
      .o1(w7));

PNU_NOT
     s5 (
      .i1(w4),
      .o1(w6));

PNU_OR2
     s6 (
      .i1(w7),
      .i2(w8),
      .o1(w10));

endmodule

