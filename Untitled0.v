module Untitled0(clk,rst,Cnt);

input clk;
input rst;
output [3:0] Cnt;

wire  w0;
wire  w1;
wire [3:0] b2;

assign w1 = clk;
assign w0 = rst;
assign Cnt = b2;

LEA_16Counter
     s0 (
      .rst(w0),
      .clk(w1),
      .count(b2));

endmodule

