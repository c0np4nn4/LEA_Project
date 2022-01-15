module LEA_FinSub(A,B,Bin,D);

input A;
input B;
input Bin;
output D;

wire  w8;
wire  w13;
wire  w15;
wire  w12;
wire  w16;

assign w13 = A;
assign w15 = B;
assign w16 = Bin;
assign D = w8;

PNU_XOR2
     s0 (
      .i1(w13),
      .i2(w15),
      .o1(w12));

PNU_XOR2
     s3 (
      .o1(w8),
      .i2(w12),
      .i1(w16));

endmodule

