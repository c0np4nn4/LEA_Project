module LEA_ROL5(Din,Dout);

input [31:0] Din;
output [31:0] Dout;

assign Dout[31:0] = {Din[26:0], Din[31:27]};

endmodule