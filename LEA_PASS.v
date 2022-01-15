module LEA_PASS(Din,Dout);

input [31:0] Din;
output [31:0] Dout;

//assign Dout[31:0] = {Din[31:16], Din[15:0]};
  assign Dout[31:0] = Din[31:0];
endmodule