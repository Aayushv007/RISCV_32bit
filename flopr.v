`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 22:50:53
// Design Name: 
// Module Name: flopr
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


module flopr(
input clk, reset,
input [31:0]d,
output reg [31:0]q
);

always @(posedge clk, posedge reset) begin
if(reset)q<=0;
else q<=d;
end
endmodule
