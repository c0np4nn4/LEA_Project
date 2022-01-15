// LCD_ShowDecrypted.v

    module LCD_ShowDecrypted (
        RESETN, CLK,
        
        LCD_inputDATA_2_1,
        LCD_inputDATA_2_2,
        LCD_inputDATA_2_3,
        LCD_inputDATA_2_4,
        LCD_inputDATA_2_5,
        LCD_inputDATA_2_6,
        LCD_inputDATA_2_7,
        LCD_inputDATA_2_8,
        LCD_inputDATA_2_9,
        LCD_inputDATA_2_10,
        LCD_inputDATA_2_11,
        LCD_inputDATA_2_12,
        LCD_inputDATA_2_13,
        LCD_inputDATA_2_14,
        LCD_inputDATA_2_15,
        LCD_inputDATA_2_16,
        
        LCD_E, LCD_RS, LCD_RW, LCD_DATA );
        
    input RESETN, CLK;

    input [7:0] LCD_inputDATA_2_1;
    input [7:0] LCD_inputDATA_2_2;
    input [7:0] LCD_inputDATA_2_3;
    input [7:0] LCD_inputDATA_2_4;
    input [7:0] LCD_inputDATA_2_5;
    input [7:0] LCD_inputDATA_2_6;
    input [7:0] LCD_inputDATA_2_7;
    input [7:0] LCD_inputDATA_2_8;
    input [7:0] LCD_inputDATA_2_9;
    input [7:0] LCD_inputDATA_2_10;
    input [7:0] LCD_inputDATA_2_11;
    input [7:0] LCD_inputDATA_2_12;
    input [7:0] LCD_inputDATA_2_13;
    input [7:0] LCD_inputDATA_2_14;
    input [7:0] LCD_inputDATA_2_15;
    input [7:0] LCD_inputDATA_2_16;
    
    
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
                    CLEAR_DISP :    if (CNT == 50) STATE = LINE1;
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
                                    else CNT = CNT + 1;
                    LINE2 :         if (CNT >= 20) CNT = 0;
                                    else CNT = CNT + 1;
                    DELAY_T :       if (CNT >= 1000) CNT = 0;
                                    else CNT = CNT + 1;
                    CLEAR_DISP :    if (CNT >= 50) CNT = 0;
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
                                LCD_RS = 1'b0; LCD_DATA = 8'b11000000;
                                end
                            1 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b00100000; //
                                end
                            2 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b00100000; //
                                end
                            3 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01000100; // D
                                end
                            4 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01000101; // E
                                end
                            5 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01000011; // C
                                end
                            6 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b00101110; // .
                                end
                            7 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b00100000; //
                                end
                            8 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01001101; // M
                                end
                            9 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01000101; // E
                                end
                            10 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01010011; // S
                                end
                            11 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01010011; // S
                                end
                            12 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01000001; // A
                                end
                            13 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01000111; // G
                                end
                            14 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b01000101; // E
                                end
                            15 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b00100000; //
                                end
                            16 : begin
                                LCD_RS = 1'b1; LCD_DATA = 8'b00100000; //
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
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_1; // T
                                end
                            2 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_2; // E
                                end
                            3 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_3; // X
                                end
                            4 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_4; // T
                                end
                            5 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_5; //
                                end
                            6 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_6; // L
                                end
                            7 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_7; // C
                                end
                            8 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_8; // D
                                end
                            9 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_9; //
                                end
                            10 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_10; // E
                                end
                            11 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_11; // X
                                end
                            12 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_12; // A
                                end
                            13 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_13; // M
                                end
                            14 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_14; // P
                                end
                            15 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_15; // L
                                end
                            16 : begin
                                LCD_RS = 1'b1; LCD_DATA = LCD_inputDATA_2_16; // E
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