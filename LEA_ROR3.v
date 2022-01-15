module LEA_ROR3(Din,Dout);

input [31:0] Din;
output [31:0] Dout;

assign Dout[31:0] = {Din[2:0], Din[31:3]};

endmodule