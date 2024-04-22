`timescale 1ns / 1ps


module Modulo10Counter(input clk, reset, en, output clk_out ,output [3:0]count);
    ClockDivider c1(.clk(clk), .rst(reset), .clk_out (clk_out)); 
    BinaryCounter #(4,10) b1(.clk(clk_out), .reset(reset), .en(en), .count(count));
endmodule
