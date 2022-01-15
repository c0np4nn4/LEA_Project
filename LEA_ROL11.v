module LEA_ROL11(Din,Dout);

input [31:0] Din;
output [31:0] Dout;

assign Dout[31:0] = {Din[20:0], Din[31:21]};

endmodule