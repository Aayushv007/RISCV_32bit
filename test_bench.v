`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 22:41:43
// Design Name: 
// Module Name: test_bench
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


module test_bench();
reg clk;
reg reset;
wire MemWrite;
wire [31:0] WriteData, DataAdr;

riscv_cpu_top uut(clk, reset, WriteData, DataAdr, MemWrite);

initial begin
clk=1'b0;
reset=1; 
#22 reset<=0;
end

always
begin
#5 clk=~clk;
end

always @(posedge clk)
begin
if(MemWrite)begin
    if(DataAdr==100 & WriteData==25) begin
    $display("Simulation Succeded");
    $stop;
    end
    else if(DataAdr!=96)begin
    $display("Simulation Failed");
    $stop();
    end
end
end
endmodule

