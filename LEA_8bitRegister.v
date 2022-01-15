module LEA_8bitRegister(Ce,Din,Clk,Reset,Dout);

input Ce;
input [7:0] Din;
input Clk;
input Reset;
output [7:0] Dout;

wire  w0;
wire [7:0] b6;
wire  w10;
wire  w11;
wire [7:0] b12;
wire  b6_0_w2;
wire  b6_1_w3;
wire  b6_3_w5;
wire  b6_4_w6;
wire  b6_7_w7;
wire  b6_6_w8;
wire  b6_5_w9;
wire  b12_0;
wire  b12_1;
wire  b12_2;
wire  b12_3;
wire  b12_4;
wire  b12_5;
wire  b12_6;
wire  b12_7;
wire  b6_2_w21;

assign w0 = Ce;
assign b6 = Din;
assign w10 = Clk;
assign w11 = Reset;
assign Dout = b12;

assign b12[7] = b12_7;
assign b12[6] = b12_6;
assign b12[5] = b12_5;
assign b12[4] = b12_4;
assign b12[3] = b12_3;
assign b12[2] = b12_2;
assign b12[1] = b12_1;
assign b12[0] = b12_0;

assign b6_0_w2 = {b6[0]};
assign b6_1_w3 = {b6[1]};
assign b6_3_w5 = {b6[3]};
assign b6_4_w6 = {b6[4]};
assign b6_7_w7 = {b6[7]};
assign b6_6_w8 = {b6[6]};
assign b6_5_w9 = {b6[5]};
assign b6_2_w21 = {b6[2]};

PNU_DFF_Ce
     s0 (
      .Ce(w0),
      .D(b6_0_w2),
      .clock(w10),
      .reset(w11),
      .Q(b12_0));

PNU_DFF_Ce
     s1 (
      .Ce(w0),
      .D(b6_1_w3),
      .clock(w10),
      .reset(w11),
      .Q(b12_1));

PNU_DFF_Ce
     s2 (
      .Ce(w0),
      .clock(w10),
      .reset(w11),
      .Q(b12_2),
      .D(b6_2_w21));

PNU_DFF_Ce
     s3 (
      .Ce(w0),
      .D(b6_3_w5),
      .clock(w10),
      .reset(w11),
      .Q(b12_3));

PNU_DFF_Ce
     s4 (
      .Ce(w0),
      .D(b6_4_w6),
      .clock(w10),
      .reset(w11),
      .Q(b12_4));

PNU_DFF_Ce
     s5 (
      .Ce(w0),
      .D(b6_5_w9),
      .clock(w10),
      .reset(w11),
      .Q(b12_5));

PNU_DFF_Ce
     s6 (
      .Ce(w0),
      .D(b6_6_w8),
      .clock(w10),
      .reset(w11),
      .Q(b12_6));

PNU_DFF_Ce
     s7 (
      .Ce(w0),
      .D(b6_7_w7),
      .clock(w10),
      .reset(w11),
      .Q(b12_7));

endmodule

