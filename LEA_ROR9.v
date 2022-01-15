module LEA_ROR9(Din,Dout);

input [31:0] Din;
output [31:0] Dout;

assign Dout[31:0] = {Din[8:0], Din[31:9]};

endmodule