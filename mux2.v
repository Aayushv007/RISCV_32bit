`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 22:52:13
// Design Name: 
// Module Name: mux2
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


module mux2(
input [31:0] d0, d1,
input s,
output [31:0] y
);

assign y=s?d1:d0;
endmodule
