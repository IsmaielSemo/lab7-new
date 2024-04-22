`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 01:05:20 PM
// Design Name: 
// Module Name: Modulo6Counter
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


module Modulo6Counter(input clk, reset, en,
    output [2:0] count
);
wire clk_out;
     BinaryCounter #(3, 6) DUT (clk_out, reset, en, count);
     
 ClockDivider clockkdiv (clk, reset,  clk_out);


endmodule
