module LEA_16Counter(input clk, output reg[3:0] count, input rst);


initial count = 0;
always @ (posedge clk) begin
    if (rst == 1) begin
        count <= 0;
    end
    
    else begin
        count <= count + 1'b1;
    end
    
if (count > 15) begin
    count <= 0;
end

end

endmodule