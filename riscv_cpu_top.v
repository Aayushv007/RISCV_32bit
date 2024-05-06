`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2024 00:26:09
// Design Name: 
// Module Name: riscv_cpu_top
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


module riscv_cpu_top(
    input clk, reset,
    output [31:0] WriteData, DataAdr,
    output MemWrite
);
wire [31:0] PC, Instr, ReadData;
//wire MemWrite_rv32;
//wire [31:0] DataAdr_rv32, WriteData_rv32;

riscv_cpu rvcpu (clk, reset, PC, Instr, MemWrite, DataAdr, WriteData, ReadData);
instr_mem instrmem (PC, Instr);
data_mem  datamem (clk, MemWrite, DataAdr, WriteData, ReadData);

//assign MemWrite  = (Ext_MemWrite && reset) ? 1 : MemWrite_rv32;
//assign WriteData = (Ext_MemWrite && reset) ? Ext_WriteData : WriteData_rv32;
//assign DataAdr   = reset ? Ext_DataAdr : DataAdr_rv32;
    
endmodule
