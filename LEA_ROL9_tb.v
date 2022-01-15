module LEA_ROL9_tb;

reg [31:0] Din;
wire [31:0] Dout;

LEA_ROL9
 U0 (
  .Din(Din),
  .Dout(Dout));

  initial
  begin
    Din = 32'b00000000000000000000000000000000;
    #400 Din = 32'b01001001000000111010000000000000;
    #100 Din = 32'b00000000000000000000000000000000;
  end

endmodule
