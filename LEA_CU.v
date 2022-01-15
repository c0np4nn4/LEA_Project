module LEA_CU(rst, clk, LCD_addr, star, sharp, chk_text, chk_key, star_out, sharp_out);
  input rst;
  input clk;
  output [2:0] LCD_addr;
  input star;
  input sharp;
  output chk_text;
  output chk_key;
  output star_out;
  output sharp_out;

  reg [2:0] LCD_addr;
  reg chk_text;
  reg chk_key;
  reg star_out;
  reg sharp_out;

  parameter [2:0] Start = 0, InputPlainText = 1, InputKey = 2, EncryptionSuccess = 3, ShowEncryptedText = 4, InputKey_decrypt = 5, DecryptSuccess = 6;
  reg [2:0] current_state, next_state;

  always @(posedge clk or posedge rst)
  begin: SYNCH
    if (rst == 1'b1)
       current_state <= Start;
    else
       current_state <= next_state;
  end

  always @(current_state or star or sharp)
  begin: COMBIN
     case (current_state)
        Start:
        begin
          if (star == 1'b1)
             begin
             next_state <= InputPlainText;
             end
          else if (sharp == 1'b1)
             begin
             next_state <= ShowEncryptedText;
             end
          else
             begin
             next_state <= Start;
             end
          LCD_addr <= 3'b000;
          star_out <= 1'b0;
          sharp_out <= 1'b0;
          chk_text <= 1'b0;
          chk_key <= 1'b0;

        end

        InputPlainText:
        begin
          if (star == 1'b0)
             begin
             next_state <= InputPlainText;
             end
          else if (star == 1'b1)
             begin
             next_state <= InputKey;
             end
          LCD_addr <= 3'b001;
          star_out <= 1'b1;
          sharp_out <= 1'b0;
          chk_text <= 1'b1;
          chk_key <= 1'b0;

        end

        InputKey:
        begin
          if (star == 1'b0)
             begin
             next_state <= InputKey;
             end
          else if (star == 1'b1)
             begin
             next_state <= EncryptionSuccess;
             end
          LCD_addr <= 3'b010;
          star_out <= 1'b0;
          sharp_out <= 1'b0;
          chk_text <= 1'b0;
          chk_key <= 1'b1;

        end

        EncryptionSuccess:
        begin
          if (star == 1'b0)
             begin
             next_state <= EncryptionSuccess;
             end
          else if (star == 1'b1)
             begin
             next_state <= Start;
             end
          LCD_addr <= 3'b011;
          star_out <= 1'b0;
          sharp_out <= 1'b0;
          chk_text <= 1'b0;
          chk_key <= 1'b0;

        end

        ShowEncryptedText:
        begin
          if (sharp == 1'b1)
             begin
             next_state <= InputKey_decrypt;
             end
          else if (sharp == 1'b0)
             begin
             next_state <= ShowEncryptedText;
             end
          LCD_addr <= 3'b100;
          star_out <= 1'b0;
          sharp_out <= 1'b1;
          chk_text <= 1'b0;
          chk_key <= 1'b0;

        end

        InputKey_decrypt:
        begin
          if (sharp == 1'b0)
             begin
             next_state <= InputKey_decrypt;
             end
          else if (sharp == 1'b1)
             begin
             next_state <= DecryptSuccess;
             end
          LCD_addr <= 3'b010;
          star_out <= 1'b0;
          sharp_out <= 1'b0;
          chk_text <= 1'b0;
          chk_key <= 1'b1;

        end

        DecryptSuccess:
        begin
          if (sharp == 1'b1)
             begin
             next_state <= Start;
             end
          else if (sharp == 1'b0)
             begin
             next_state <= DecryptSuccess;
             end
          LCD_addr <= 3'b101;
          star_out <= 1'b0;
          sharp_out <= 1'b0;
          chk_text <= 1'b0;
          chk_key <= 1'b0;

        end


        default:
          next_state <= Start;
     endcase
  end

endmodule
