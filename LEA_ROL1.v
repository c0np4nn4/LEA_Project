module LEA_ROL1(Din,Dout);

input [31:0] Din;
output [31:0] Dout;

assign Dout[31:0] = {Din[30:0], Din[31]};

endmodule