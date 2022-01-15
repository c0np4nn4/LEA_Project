module LEA_BlockAddition_tb;

reg [31:0] Block;
wire [31:0] Result;
reg [31:0] RoundKey;

LEA_BlockAddition
 U0 (
  .Block(Block),
  .Result(Result),
  .RoundKey(RoundKey));

  initial
  begin
    Block = 32'b00000000000000000000000000000000;
    #500 Block = 32'b00100011100000100000100000001001;
    #100 Block = 32'b00000000000000000000000000000000;
  end

  initial
  begin
    RoundKey = 32'b00000000000000000000000000000000;
    #500 RoundKey = 32'b11101100010010001001111001001001;
    #100 RoundKey = 32'b00000000000000000000000000000000;
  end

endmodule
