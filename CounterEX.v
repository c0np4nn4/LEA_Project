module CounterEX(clk,rst,Cnt4);

input clk;
input rst;
output [1:0] Cnt4;

wire  w2;
wire  w1;
wire  w3;
wire  w4;
wire [1:0] b4;
wire  b4_1;
wire  b4_1_w7;
wire  b4_0;
wire  b4_0_w6;

assign w1 = clk;
assign w2 = rst;
assign Cnt4 = b4;

assign b4[1] = b4_1;
assign b4[0] = b4_0;

assign b4_1_w7 = {b4[1]};
assign b4_0_w6 = {b4[0]};

PNU_DFF
     s0 (
      .reset(w2),
      .clock(w1),
      .Q(w3),
      .D(b4_0_w6));

PNU_DFF
     s1 (
      .reset(w2),
      .clock(w1),
      .Q(w4),
      .D(b4_1_w7));

PNU_NOT
     s2 (
      .i1(w3),
      .o1(b4_0));

PNU_XOR2
     s3 (
      .i2(w3),
      .i1(w4),
      .o1(b4_1));

endmodule

