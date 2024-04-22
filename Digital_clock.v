`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 05:54:14 PM
// Design Name: 
// Module Name: Digital_clock
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

//250000
module Digital_clock(input clk, reset,[1:0]en ,output [6:0] segments, [3:0] anode);
wire clk_out;
wire [1:0] x;
wire [3:0] Mux;
wire [3:0] seconds_units;
wire [2:0] seconds_tens;
wire [3:0] minutes_units; 
wire[2:0] minutes_tens;
SevenSegDecWithEn BCD(.en(x),.num(Mux),.segments(segments), .anode_active(anode));
//ClockDivider #(250000) Clock(.clk(clk),.rst(reset),.clk_out(clk_out));
SecMinCounter secmincounter (.clk(clk), .reset(reset),.en(1'b1),.seconds_units(seconds_units), .seconds_tens(seconds_tens), .minutes_units(minutes_units), .minutes_tens(minutes_tens)); 
Modulo4Counter m1(.clk(clk),.reset(reset), .en(1'b1),.count(x), .clk_out(clk_out));
//MUX4x1 mux1( .in({seconds_units, seconds_tens, minutes_units, minutes_tens}), .s(x), .out(Mux));
MUX4x1 mux1( .in({seconds_units[0], seconds_tens[0], minutes_units[0], minutes_tens[0]}), .s(x), .out({Mux[0]}));
MUX4x1 mux2( .in({seconds_units[1], seconds_tens[1], minutes_units[1], minutes_tens[1]}), .s(x), .out({Mux[1]}));
MUX4x1 mux3( .in({seconds_units[2], seconds_tens[2], minutes_units[2], minutes_tens[2]}), .s(x), .out({Mux[2]}));
MUX4x1 mux4( .in({seconds_units[3], 1'b0, minutes_units[3], 1'b0}), .s(x), .out({Mux[3]}));


endmodule

