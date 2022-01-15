module LEA_test(Rk,Din,Dout,p3);

input [191:0] Rk;
input [127:0] Din;
output [127:0] Dout;
output [127:0] p3;

wire [127:0] b3;
wire [191:0] b5;
wire [127:0] b6;
wire [127:0] b4;

assign b5 = Rk;
assign b6 = Din;
assign Dout = b3;
assign p3 = b4;

LEA_Encrypt
     s0 (
      .RoundKey(b5),
      .Din(b6),
      .Dout(b4));

LEA_Decrypt
     s1 (
      .Dout(b3),
      .RoundKey(b5),
      .Din(b4));

endmodule

