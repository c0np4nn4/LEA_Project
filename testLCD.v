// testLCD.v

    module testLCD (
        RESETN, CLK, CHK, LCD_DATA_in,
        LCD_E, LCD_RS, LCD_RW, LCD_DATA );
        
    input RESETN, CLK, CHK;
    input [7:0] LCD_DATA_in;
    output LCD_E, LCD_RS, LCD_RW;
    output [7:0] LCD_DATA;
    
    wire LCD_E;
    reg LCD_RS, LCD_RW;
    reg [7:0] LCD_DATA;
    reg [2:0] STATE;
    parameter DELAY = 3'b000,   FUNCTION_SET = 3'b001,
        ENTRY_MODE = 3'b010,    DISP_ONOFF = 3'b011,
        LINE1 = 3'b100,         LINE2 = 3'b101,
        DELAY_T = 3'b110,       CLEAR_DISP = 3'b111;
        
    integer CNT;
    
    always @(posedge RESETN or posedge CLK)
    begin
        if (RESETN) STATE = DELAY;
        else
            begin
                case (STATE)
                    DELAY :         if (CNT == 70) STATE = FUNCTION_SET;
                    FUNCTION_SET :  if (CNT == 30) STATE = DISP_ONOFF;
                    DISP_ONOFF :    if (CNT == 30) STATE = ENTRY_MODE;
                    ENTRY_MODE :    if (CNT == 30) STATE = LINE1;
                    LINE1 :         if (CNT == 20) STATE = LINE2;
                    LINE2 :         if (CNT == 20) STATE = DELAY_T;
                    DELAY_T :       if (CNT == 1000) STATE = CLEAR_DISP;
                    CLEAR_DISP :    if (CNT == 200) STATE = LINE1;
                    default :       STATE = DELAY;
                endcase
        end
    end
        
    always @(posedge RESETN or posedge CLK)
    begin
        if (RESETN) CNT = 0;
        else
            begin
                case (STATE)
                    DELAY : if (CNT >= 70) CNT = 0;
                            else CNT = CNT + 1;
                    FUNCTION_SET :  if (CNT >= 30) CNT = 0;
                                    else CNT = CNT + 1;
                    DISP_ONOFF :    if (CNT >= 30) CNT = 0;
                                    else CNT = CNT + 1;
                    ENTRY_MODE :    if (CNT >= 30) CNT = 0;
                                    else CNT = CNT + 1;
                                    
                    LINE1 :         if (CNT >= 20) CNT = 0;
                                    else begin
                                        if (CHK) CNT = CNT + 1;
                                        end
                                    
                    LINE2 :         if (CNT >= 20) CNT = 0;
                                    else CNT = CNT + 1;
                    DELAY_T :       if (CNT >= 1000) CNT = 0;
                                    else CNT = CNT + 1;
                    CLEAR_DISP :    if (CNT >= 200) CNT = 0;
                                    else CNT = CNT + 1;
                    default :       CNT = 0;
                endcase
        end
    end


    always @(posedge RESETN or posedge CLK)
    begin
        if (RESETN) begin
            LCD_RS = 1'b1;
            LCD_RW = 1'b1;
            LCD_DATA = 8'b00000000;
            end
        else begin
                case (STATE)
                    FUNCTION_SET : begin
                        LCD_RS = 1'b0; LCD_RW = 1'b0;
                        LCD_DATA = 8'b00111100;
                        end
                    DISP_ONOFF : begin
                        LCD_RS = 1'b0; LCD_RW = 1'b0;
                        LCD_DATA = 8'b00001100;
                        end
                    ENTRY_MODE : begin
                        LCD_RS = 1'b0; LCD_RW = 1'b0;
                        LCD_DATA = 8'b00000110;
                        end
                    LINE1 : begin
                        LCD_RW = 1'b0;
                        
                        case (CNT)
                            0 : begin
                                LCD_RS = 1'b0; LCD_DATA = 8'b10000000;
                                end
                            1 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; // T
                                end
                            2 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; // H
                                end
                            3 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; // I
                                end
                            4 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; // S
                                end
                            5 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; //
                                end
                            6 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; // I
                                end
                            7 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; // S
                                end
                            8 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; //
                                end
                            9 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; //
                                end
                            11 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; //
                                end
                            10 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; //
                                end
                            12 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; //
                                end
                            13 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; //
                                end
                            14 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; //
                                end
                            15 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; //
                                end
                            16 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_DATA_in; //
                                end
                            default : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b00100000;
                                end
                            endcase
                        end
                    LINE2 : begin
                    
                        LCD_RW = 1'b0;
                        
                        case (CNT)
                            0 : begin
                                LCD_RS = 1'b0; LCD_DATA = 8'b11000000;
                                end
                            1 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01010100; // T
                                end
                            2 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01100101; // E
                                end
                            3 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01111000; // X
                                end
                            4 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01110100; // T
                                end
                            5 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b00100000; //
                                end
                            6 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01001100; // L
                                end
                            7 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01000011; // C
                                end
                            8 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01000100; // D
                                end
                            9 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b00100000; //
                                end
                            10 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01000101; // E
                                end
                            11 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01111000; // X
                                end
                            12 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01100001; // A
                                end
                            13 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01101101; // M
                                end
                            14 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01110000; // P
                                end
                            15 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01101100; // L
                                end
                            16 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01100101; // E
                                end
                            default : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b00100000;
                                end
                            endcase
                        end
                    DELAY_T : begin
                        LCD_RS = 1'b0; LCD_RW = 1'b0;
                        LCD_DATA = 8'b00000010;
                        end
                    CLEAR_DISP : begin
                        LCD_RS = 1'b0; LCD_RW = 1'b0;
                        LCD_DATA = 8'b00000001;
                        end
                    default : begin
                        LCD_RS = 1'b1; LCD_RW = 1'b1;
                        LCD_DATA = 8'b00000000;
                        end
                    endcase
            end
        end

            assign LCD_E = CLK;
            
    endmodule