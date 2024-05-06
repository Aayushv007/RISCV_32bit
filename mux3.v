`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 22:53:49
// Design Name: 
// Module Name: mux3
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


module mux3(
input [31:0] d0, d1, d2,
input [1:0] s,
output [31:0] y
);

assign y = s[1] ? d2 : (s[0] ? d1 : d0);
endmodule
