module LEA_128bitMessageRegister(Din,Ce,clk,rst,Dout);

input [127:0] Din;
input Ce;
input clk;
input rst;
output [127:0] Dout;

wire [127:0] b0;
wire  w5;
wire  w6;
wire  w7;
wire [127:0] b8;
wire [31:0] b0_31to0_b1;
wire [31:0] b0_63to32_b2;
wire [31:0] b0_95to64_b3;
wire [31:0] b0_127to96_b4;
wire [31:0] b8_31to0;
wire [31:0] b8_63to32;
wire [31:0] b8_95to64;
wire [31:0] b8_127to96;

assign b0 = Din;
assign w5 = Ce;
assign w6 = clk;
assign w7 = rst;
assign Dout = b8;

assign b8[127:96] = b8_127to96[31:0];
assign b8[95:64] = b8_95to64[31:0];
assign b8[63:32] = b8_63to32[31:0];
assign b8[31:0] = b8_31to0[31:0];

assign b0_31to0_b1[31:0] = {b0[31:0]};
assign b0_63to32_b2[31:0] = {b0[63:32]};
assign b0_95to64_b3[31:0] = {b0[95:64]};
assign b0_127to96_b4[31:0] = {b0[127:96]};

LEA_32bitBlock
     s0 (
      .Din(b0_31to0_b1),
      .Ce(w5),
      .clk(w6),
      .rst(w7),
      .Dout(b8_31to0));

LEA_32bitBlock
     s1 (
      .Din(b0_63to32_b2),
      .Ce(w5),
      .clk(w6),
      .rst(w7),
      .Dout(b8_63to32));

LEA_32bitBlock
     s2 (
      .Din(b0_95to64_b3),
      .Ce(w5),
      .clk(w6),
      .rst(w7),
      .Dout(b8_95to64));

LEA_32bitBlock
     s3 (
      .Din(b0_127to96_b4),
      .Ce(w5),
      .clk(w6),
      .rst(w7),
      .Dout(b8_127to96));

endmodule

