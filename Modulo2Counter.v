`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 11:51:23 AM
// Design Name: 
// Module Name: Modulo2Counter
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


module Modulo2Counter(input clk, reset, en, output clk_out ,output [1:0]count);
    BinaryCounter #(2,2) b1(.clk(clk_out), .reset(reset), .en(en), .count(count));
    ClockDivider #(250000) c1(.clk(clk), .rst(reset), .clk_out (clk_out)); 
endmodule
