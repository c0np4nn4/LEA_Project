//*****************************************************************
//	8bit Shifter
//	Made by  Jae-Dong
//	E-Mail: pjd@kw.ac.kr
//  Blog: rabe.egloos.com
//*****************************************************************

module shifter_8bit(reset,c_in,c_out,sel,clk);
	input clk;
	input reset; // reset�� 1�϶� c_in�� ���� c_out�� ������
	input [7:0]c_in;
	output reg [7:0] c_out;
	input [2:0]sel;	//��ɾ� ������ ����

	always@(posedge clk)begin
		if(reset == 1'b1)	//����ó��
			c_out = 8'b10101111;
		else begin
			case(sel)	//sel�������� ��ɾ� ó��
				3'd1: c_out = {c_out[6:0],1'b0};	//sll
				3'd2:c_out = {1'b0,c_out[7:1]};		//srl
				3'd3:c_out = {c_out[6:0],1'b0};		//sla
				3'd4:c_out = {c_out[7],c_out[7:1]};	//sra
				3'd5:c_out = {c_out[6:0],c_out[7]};	//rol
				3'd6:c_out = {c_out[0],c_out[7:1]};	//ror
				default: c_out = c_out;
			endcase
		end
	end
endmodule