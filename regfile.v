`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 22:52:35
// Design Name: 
// Module Name: regfile
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


module regfile(
input clk,
input wr_en,
input [4:0] rd_addr1, rd_addr2, wr_addr,
input [31:0] wr_data,
output [31:0] rd_data1, rd_data2
);
reg [31:0] reg_file_arr [0:31];
integer i;
initial begin
    for (i = 0; i < 32; i = i + 1) begin
        reg_file_arr[i] = 0;
    end
end

// register file write logic (synchronous)
always @(posedge clk) begin
    if (wr_en) reg_file_arr[wr_addr] <= wr_data;
end

// register file read logic (combinational)
assign rd_data1 = ( rd_addr1 != 0 ) ? reg_file_arr[rd_addr1] : 0;
assign rd_data2 = ( rd_addr2 != 0 ) ? reg_file_arr[rd_addr2] : 0;
endmodule
