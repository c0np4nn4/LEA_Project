module LEA_ROR5_tb;

reg [31:0] Din;
wire [31:0] Dout;

LEA_ROR5
 U0 (
  .Din(Din),
  .Dout(Dout));

  initial
  begin
    Din = 32'b00000000000000000000000000000000;
    #500 Din = 32'b10010010000000000010000000001000;
    #100 Din = 32'b00000000000000000000000000000000;
  end

endmodule
