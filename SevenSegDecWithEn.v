`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 05:51:03 PM
// Design Name: 
// Module Name: BCD
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module SevenSegDecWithEn(
input [1:0] en,
input [3:0] num,
output reg [6:0] segments,
output reg [3:0] anode_active);

always @ (en, num) begin
 if(en == 2'b00)
    anode_active = 4'b1110;
 else if(en == 2'b01)
    anode_active = 4'b1101;
 else if (en == 2'b10)
    anode_active = 4'b1011;
 else if(en == 2'b11)
    anode_active = 4'b0111;
 case(num)
 0: segments = 7'b0000001;//
 1: segments = 7'b1001111;//
 2: segments = 7'b0010010;//
 3: segments = 7'b0000110  ;//
 4: segments = 7'b1001100;//
 5: segments = 7'b0100100;//
 6: segments = 7'b0100000;//
 7: segments = 7'b0001111;//
 8: segments = 7'b0000000;//
 9: segments = 7'b0000100;//
// 10: segments = 7'b0001000;
// 11: segments = 7'b1100000;
// 12: segments = 7'b0110001;//
// 13: segments = 7'b1000010;
// 14: segments = 7'b0110000;//
// 15: segments = 7'b0111000;//
 default segments = 7'b1111111;
 endcase 
end
endmodule
