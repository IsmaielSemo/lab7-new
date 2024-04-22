`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 03:55:09 PM
// Design Name: 
// Module Name: Modulo4Counter
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

module Modulo4Counter(input clk, reset, en,
    output [2:0] count, clk_out
);
ClockDivider #(250000) clockkdiv (clk, reset,  clk_out);
BinaryCounter #(2, 4) DUT (clk_out, reset, en, count);     



endmodule
