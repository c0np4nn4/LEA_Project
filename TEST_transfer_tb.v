module TEST_transfer_tb;

reg [3:0] Din;
wire [3:0] Dout;

TEST_transfer
 U0 (
  .Din(Din),
  .Dout(Dout));

  initial
  begin
    Din = 4'b0000;
    #400 Din = 4'b1000;
    #100 Din = 4'b0000;
    #200 Din = 4'b1010;
    #100 Din = 4'b0000;
    #400 Din = 4'b0011;
    #100 Din = 4'b0000;
    #300 Din = 4'b0100;
    #100 Din = 4'b0000;
  end

endmodule
