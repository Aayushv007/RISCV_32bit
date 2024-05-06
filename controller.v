`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 01:40:14
// Design Name: 
// Module Name: controller
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


module controller(
input [6:0] op,
input [2:0] funct3,
input funct7b5,
input Zero,
output [1:0] ResultSrc,
output MemWrite,
output PCSrc, ALUSrc,
output RegWrite,
output [1:0] ImmSrc, 
output [2:0] ALUControl
);

wire [1:0] ALUOp;
wire Branch, Jump;

main_decoder md (op, ResultSrc, MemWrite, Branch, ALUSrc, RegWrite, Jump, ImmSrc, ALUOp);

alu_decoder ad (op[5], funct3, funct7b5, ALUOp, ALUControl);

// for jump and branch
assign PCSrc = (Branch & Zero) | Jump;
//assign Op5 = op[5];

endmodule
