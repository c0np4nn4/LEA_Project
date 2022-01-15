module LEA_KeyConstant_tb;

wire [31:0] E0;
wire [31:0] E1;
wire [31:0] E2;
wire [31:0] E3;
wire [31:0] E4;
wire [31:0] E5;
wire [31:0] E6;
wire [31:0] E7;
reg clk;

LEA_KeyConstant
 U0 (
  .E0(E0),
  .E1(E1),
  .E2(E2),
  .E3(E3),
  .E4(E4),
  .E5(E5),
  .E6(E6),
  .E7(E7),
  .clk(clk));

  initial
  begin
    clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
    #100 clk = 1'b0;
    #100 clk = 1'b1;
  end

endmodule
