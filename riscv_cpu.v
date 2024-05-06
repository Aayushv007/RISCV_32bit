`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2024 00:31:41
// Design Name: 
// Module Name: riscv_cpu
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


module riscv_cpu(
input clk, reset,
output [31:0] PC,
input [31:0] Instr,
output MemWrite,
output [31:0] Mem_WrAddr, Mem_WrData,
input [31:0] ReadData
);

wire ALUSrc, RegWrite, Zero;
wire [1:0] ResultSrc, ImmSrc;
wire [2:0] ALUControl;

controller c(Instr[6:0], Instr[14:12], Instr[30], Zero, ResultSrc, MemWrite, PCSrc, ALUSrc, RegWrite, ImmSrc, ALUControl);

datapath dp(clk, reset, ResultSrc, PCSrc, ALUSrc, RegWrite, ImmSrc, ALUControl, Zero, PC, Instr, Mem_WrAddr, Mem_WrData, ReadData);
endmodule
