module LEA_ROL9(Din,Dout);

input [31:0] Din;
output [31:0] Dout;

assign Dout[31:0] = {Din[22:0], Din[31:23]};

endmodule