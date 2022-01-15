module EightBitX16Reg(Din,CLK,CHK,RST,Dout1,Dout2,Dout3,Dout4,Dout5,Dout6,Dout7,Dout11,Dout12,Dout13,Dout14,Dout15,Dout16,Dout8,Dout9,Dout10);

input [7:0] Din;
input CLK;
input CHK;
input RST;

output [7:0] Dout1;
output [7:0] Dout2;
output [7:0] Dout3;
output [7:0] Dout4;
output [7:0] Dout5;
output [7:0] Dout6;
output [7:0] Dout7;
output [7:0] Dout11;
output [7:0] Dout12;
output [7:0] Dout13;
output [7:0] Dout14;
output [7:0] Dout15;
output [7:0] Dout16;
output [7:0] Dout8;
output [7:0] Dout9;
output [7:0] Dout10;

wire [7:0] b1;
wire  w10;
wire  w11;
wire  w18;
wire [7:0] b19;
wire [7:0] b20;
wire [7:0] b21;
wire [7:0] b22;
wire [7:0] b23;
wire [7:0] b24;
wire [7:0] b25;
wire [7:0] b26;
wire [7:0] b27;
wire [7:0] b28;
wire [7:0] b29;
wire [7:0] b30;
wire [7:0] b31;
wire [7:0] b32;
wire [7:0] b33;
wire [7:0] b34;

assign b1 = Din;
assign w11 = CLK;
assign w18 = CHK;
assign w10 = RST;
assign Dout1 = b19;
assign Dout2 = b20;
assign Dout3 = b21;
assign Dout4 = b22;
assign Dout5 = b23;
assign Dout6 = b24;
assign Dout7 = b34;
assign Dout11 = b30;
assign Dout12 = b29;
assign Dout13 = b28;
assign Dout14 = b27;
assign Dout15 = b26;
assign Dout16 = b25;
assign Dout8 = b33;
assign Dout9 = b32;
assign Dout10 = b31;

LEA_8bitRegister
     s0 (
      .Din(b1),
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Dout(b25));

LEA_8bitRegister
     s1 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Din(b25),
      .Dout(b26));

LEA_8bitRegister
     s2 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Din(b26),
      .Dout(b27));

LEA_8bitRegister
     s3 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Din(b27),
      .Dout(b28));

LEA_8bitRegister
     s4 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Din(b28),
      .Dout(b29));

LEA_8bitRegister
     s5 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Din(b29),
      .Dout(b30));

LEA_8bitRegister
     s6 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Din(b30),
      .Dout(b31));

LEA_8bitRegister
     s7 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Din(b31),
      .Dout(b32));

LEA_8bitRegister
     s8 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Din(b32),
      .Dout(b33));

LEA_8bitRegister
     s9 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Din(b33),
      .Dout(b34));

LEA_8bitRegister
     s10 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Dout(b24),
      .Din(b34));

LEA_8bitRegister
     s11 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Dout(b23),
      .Din(b24));

LEA_8bitRegister
     s12 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Dout(b22),
      .Din(b23));

LEA_8bitRegister
     s13 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Dout(b21),
      .Din(b22));

LEA_8bitRegister
     s14 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Dout(b20),
      .Din(b21));

LEA_8bitRegister
     s15 (
      .Reset(w10),
      .Clk(w11),
      .Ce(w18),
      .Dout(b19),
      .Din(b20));
            

endmodule

