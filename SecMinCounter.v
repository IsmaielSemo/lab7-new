`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2024 12:52:01 PM
// Design Name: 
// Module Name: SecMinCounter
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


module SecMinCounter( input clk,
    input reset,
    input en,
    input en1,
    output [3:0] seconds_units, 
    output [2:0] seconds_tens,
    output [3:0] minutes_units,
    output [2:0] minutes_tens
);

wire one_hz_clk;
reg [3:0] enable;


Modulo10Counter DUT ( .clk( clk) , .reset(reset), .en(enable[0]),
  .count( seconds_units )); 
  
Modulo6Counter DUT1 ( .clk( clk) , .reset(reset), .en(enable[1]),
  .count( seconds_tens ));   
  
Modulo10Counter DUT2 ( .clk(clk) , .reset(reset), .en(enable[2]),
  .count( minutes_units ));  

Modulo6Counter DUT3 ( .clk(clk) , .reset(reset), .en(enable[3]),
  .count( minutes_tens ));     

  // Update seconds and minutes
always @(*) begin
    enable[0] = en;
        if (seconds_units == 9 ) begin
            enable[1] = 1;
        end     
        else begin
            enable[1]=0;
        end 
        
        if (seconds_tens == 5 && seconds_units == 9 ) begin
            enable[2] = 1;
        end    
        else begin
            enable[2] = 0;
        end
        
        if (minutes_units == 9 && seconds_tens == 5 && seconds_units == 9 ) begin
            enable[3] = 1;
        end    
        else begin
            enable[3] = 0;
        end
                
    end

endmodule
