module TEST_transfer(Din,p1);

input [3:0] Din;
output [3:0] p1;

wire [3:0] b0;
wire [3:0] b2;

assign b2[2:0] = b0[3:1]
assign b2[3] = b0[0]

assign b0 = Din;
assign p1 = b2;

endmodule

