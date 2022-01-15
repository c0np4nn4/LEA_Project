module LEA_32bitBlock(rst,clk,Ce,Din,Dout);

input rst;
input clk;
input Ce;
input [31:0] Din;
output [31:0] Dout;

wire  w0;
wire  w1;
wire  w2;
wire [31:0] b3;
wire [31:0] b8;
wire [7:0] b3_7to0_b4;
wire [7:0] b3_15to8_b5;
wire [7:0] b3_23to16_b6;
wire [7:0] b3_31to24_b7;
wire [7:0] b8_31to24;
wire [7:0] b8_23to16;
wire [7:0] b8_15to8;
wire [7:0] b8_7to0;

assign w0 = rst;
assign w1 = clk;
assign w2 = Ce;
assign b3 = Din;
assign Dout = b8;

assign b8[31:24] = b8_31to24[7:0];
assign b8[23:16] = b8_23to16[7:0];
assign b8[15:8] = b8_15to8[7:0];
assign b8[7:0] = b8_7to0[7:0];

assign b3_7to0_b4[7:0] = {b3[7:0]};
assign b3_15to8_b5[7:0] = {b3[15:8]};
assign b3_23to16_b6[7:0] = {b3[23:16]};
assign b3_31to24_b7[7:0] = {b3[31:24]};

LEA_8bitRegister
     s0 (
      .Reset(w0),
      .Clk(w1),
      .Ce(w2),
      .Din(b3_31to24_b7),
      .Dout(b8_31to24));

LEA_8bitRegister
     s1 (
      .Reset(w0),
      .Clk(w1),
      .Ce(w2),
      .Din(b3_15to8_b5),
      .Dout(b8_15to8));

LEA_8bitRegister
     s2 (
      .Reset(w0),
      .Clk(w1),
      .Ce(w2),
      .Din(b3_23to16_b6),
      .Dout(b8_23to16));

LEA_8bitRegister
     s3 (
      .Reset(w0),
      .Clk(w1),
      .Ce(w2),
      .Din(b3_7to0_b4),
      .Dout(b8_7to0));

endmodule

