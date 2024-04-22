`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2024 11:05:27 AM
// Design Name: 
// Module Name: BinaryCounter_tb
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


module BinaryCounter_tb();
reg clk, reset, en;
wire [3:0] count; 

BinaryCounter #(4,12) c1(.clk(clk), .reset(reset), .en(en), .count(count)); 


initial begin
    clk = 0;
    forever #10 clk=~clk;
end

initial begin
    en = 1;
    reset=1;
    #100
    reset=0;
    #100
    en=0;
    #100
    en = 1; 
end

endmodule
