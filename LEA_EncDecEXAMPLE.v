module LEA_EncDecEXAMPLE(KeyIn,TextIn,Encrypted,Decrypted);

input [191:0] KeyIn;
input [127:0] TextIn;
output [127:0] Encrypted;
output [127:0] Decrypted;

wire [127:0] b1;
wire [191:0] b3;
wire [127:0] b2;
wire [127:0] b4;

assign b3 = KeyIn;
assign b1 = TextIn;
assign Encrypted = b2;
assign Decrypted = b4;

LEA_Encrypt
     s0 (
      .Din(b1),
      .RoundKey(b3),
      .Dout(b2));

LEA_Decrypt
     s1 (
      .RoundKey(b3),
      .Din(b2),
      .Dout(b4));

endmodule

