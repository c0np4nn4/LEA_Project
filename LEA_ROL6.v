module LEA_ROL6(Din,Dout);

input [31:0] Din;
output [31:0] Dout;

assign Dout[31:0] = {Din[25:0], Din[31:26]};

endmodule