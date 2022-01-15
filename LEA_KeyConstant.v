module LEA_KeyConstant(input clk, output reg [31:0] E0,
output reg [31:0] E1,
output reg [31:0] E2,
output reg [31:0] E3
);



always @ (posedge clk) begin

E0 <= 32'hc3efe9db;
E1 <= 32'h44626b02;
E2 <= 32'h79e27c8a;
E3 <= 32'h78df30ec;



end
endmodule

