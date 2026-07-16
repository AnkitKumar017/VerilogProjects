`timescale 1ns/1ps

module id_stage(
    input clk,rst,reg_write_wb,
    input [4:0]rd_wb,
    input [31:0]instruction,
    input [31:0]write_data_wb,

    output reg_write,
    output mem_read,
    output mem_write,
    output mem_to_reg,
    output alu_src,
    output jump,
    output branch,
    output [3:0]alu_control,
    output [31:0]read_data1,
    output [31:0]read_data2,
    output [31:0]immediate,
    output [4:0]rd,
    output [2:0]funct3,
    output [6:0]funct7
);

wire [1:0]alu_op;
wire [6:0]opcode;
assign opcode=instruction[6:0];
assign rd=instruction[11:7];

wire [4:0]rs1;
assign rs1=instruction[19:15];
wire [4:0]rs2;
assign rs2=instruction[24:20];

assign funct3=instruction[14:12];
assign funct7=instruction[31:25];

// Instantiate register_file

register_file rf(.clk(clk),.rst(rst),.reg_write(reg_write_wb),
                 .rs1(rs1),.rs2(rs2),.rd(rd_wb),.write_data(write_data_wb),
                 .read_data1(read_data1),.read_data2(read_data2));

// Instantiate immediate generator

immediate_generator imm(.instruction(instruction),.immediate(immediate));

// Instantiate main control unit

control_unit cu(.opcode(opcode),.reg_write(reg_write),.mem_read(mem_read),
                .mem_write(mem_write),.mem_to_reg(mem_to_reg),.alu_src(alu_src),
                .branch(branch),.jump(jump),.alu_op(alu_op));

// Instantiate ALU_control

alu_control_unit acu(.alu_op(alu_op),.funct3(funct3),.funct7(funct7),.alu_control(alu_control));

endmodule
