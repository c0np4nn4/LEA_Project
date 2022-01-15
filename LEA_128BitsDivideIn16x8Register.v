module LEA_128BitsDivideIn16x8Register(Din,Dout0,Dout1,Dout2,Dout3,Dout4,Dout5,Dout6,Dout7,Dout8,Dout9,Dout10,Dout11,Dout12,Dout13,Dout14,Dout15);

input [127:0] Din;
output [7:0] Dout0;
output [7:0] Dout1;
output [7:0] Dout2;
output [7:0] Dout3;
output [7:0] Dout4;
output [7:0] Dout5;
output [7:0] Dout6;
output [7:0] Dout7;
output [7:0] Dout8;
output [7:0] Dout9;
output [7:0] Dout10;
output [7:0] Dout11;
output [7:0] Dout12;
output [7:0] Dout13;
output [7:0] Dout14;
output [7:0] Dout15;

wire [127:0] b0;

assign b0 = Din;
assign Dout0[7:0] = b0[7:0];
assign Dout1[7:0] = b0[15:8];
assign Dout2[7:0] = b0[23:16];
assign Dout3[7:0] = b0[31:24];
assign Dout4[7:0] = b0[39:32];
assign Dout5[7:0] = b0[47:40];
assign Dout6[7:0] = b0[55:48];
assign Dout7[7:0] = b0[63:56];
assign Dout8[7:0] = b0[71:64];
assign Dout9[7:0] = b0[79:72];
assign Dout10[7:0] = b0[87:80];
assign Dout11[7:0] = b0[95:88];
assign Dout12[7:0] = b0[103:96];
assign Dout13[7:0] = b0[111:104];
assign Dout14[7:0] = b0[119:112];
assign Dout15[7:0] = b0[127:120];

endmodule

