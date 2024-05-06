`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2024 00:31:09
// Design Name: 
// Module Name: instr_mem
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


module instr_mem(
input [31:0] instr_addr,
output [31:0] instr
);

reg [31:0] instr_ram[0:511];
initial begin
$readmemh("risctext.txt", instr_ram);
end

assign instr=instr_ram[instr_addr[31:2]]; 
endmodule
