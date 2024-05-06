`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 16:39:48
// Design Name: 
// Module Name: alu_decoder
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


module alu_decoder(
input opb5,
input [2:0] funct3,
input funct7b5,
input [1:0] ALUop,
output reg [2:0] ALUControl
);

always @(*) begin
case(ALUop)
2'b00: ALUControl=3'b000; //addition
2'b01: ALUControl=3'b001; //subtraction
default: case(funct3) //Rtype or I type ALU
    3'b000: if(funct7b5 & opb5) ALUControl=3'b001; //RtypeSub
            else ALUControl=3'b000; //add, addi
    3'b010: ALUControl = 3'b101; // slt, slti
    3'b110: ALUControl = 3'b011; // or, ori
    3'b111: ALUControl = 3'b010; // and, andi
    default: ALUControl = 3'bxxx; // ???
endcase
endcase
end
endmodule
