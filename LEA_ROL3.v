module LEA_ROL3(Din,Dout);

input [31:0] Din;
output [31:0] Dout;

assign Dout[31:0] = {Din[28:0], Din[31:29]};

endmodule