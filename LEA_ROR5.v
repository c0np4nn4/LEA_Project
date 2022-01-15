module LEA_ROR5(Din,Dout);

input [31:0] Din;
output [31:0] Dout;

assign Dout[31:0] = {Din[4:0], Din[31:5]};

endmodule