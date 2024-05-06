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


module alu(
input [31:0] a,b,
input [2:0] s,
output reg [31:0] out,
output zero  
);
always @(a, b, s) begin
case (s)
3'b000: out <= a + b;         // ADD
3'b001: out <= a + ~b + 1;    //SUB
3'b101: if (a[31] != b[31]) out <= a[31] ? 0 : 1; //SLT
else out <= a < b ? 1 : 0;
3'b011: out <= a | b;    // OR
3'b010: out<= a & b;// AND
default: out = 0;
endcase
end

assign zero = (out == 0);
endmodule
