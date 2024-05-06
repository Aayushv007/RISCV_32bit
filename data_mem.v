`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2024 00:32:00
// Design Name: 
// Module Name: data_mem
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


module data_mem(
input clk, wr_en,
input [31:0] wr_addr, wr_data,
output [31:0] rd_data_mem
);

reg [31:0] data_ram[0:63];
//read logic
assign rd_data_mem=data_ram[wr_addr[31:2]%64];

//write logic
always @(posedge clk) begin
if(wr_en) data_ram[wr_addr[31:2]%64]<=wr_data;
end

endmodule
