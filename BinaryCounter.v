module BinaryCounter #(parameter n = 5, parameter x = 5) (input clk, reset, en, output [n-1:0]count);

reg [n-1:0] count;
always @(posedge clk, posedge reset) begin
 if (reset == 1)
    count <= 1'd0; 
 else if(en == 1)
 begin
    count <= count + 1; 
    if(count == x-1)
        count <= 0;
 end
 else
    count <= count;
end
endmodule
