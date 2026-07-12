`timescale 1ns/1ps

module control_unit_tb;

    reg [6:0]opcode;

    wire reg_write;
    wire mem_read;
    wire mem_write;
    wire mem_to_reg;
    wire alu_src;
    wire branch;
    wire jump;
    wire [1:0]alu_op;

    control_unit uut(.opcode(opcode),
                    .reg_write(reg_write),
                    .mem_read(mem_read),
                    .mem_write(mem_write),
                    .mem_to_reg(mem_to_reg),
                    .alu_src(alu_src),
                    .branch(branch),
                    .jump(jump),
                    .alu_op(alu_op));

    initial begin
        $dumpfile("waveforms/control_unit.vcd");
        $dumpvars(0,control_unit_tb);

        //R-type
        opcode=7'b0110011;
        #10;


        //I-type
        opcode=7'b0010011;
        #10;


        //Load
        opcode=7'b0000011;
        #10;


        //Store
        opcode=7'b0100011;
        #10;


        //Branch
        opcode=7'b1100011;
        #10;


        //JAL
        opcode=7'b1101111;
        #10;


        //JALR
        opcode=7'b1100111;
        #10;


        //LUI
        opcode=7'b0110111;
        #10;


        //AUIPC
        opcode=7'b0010111;
        #10;

        $finish;
    end

    initial begin
        $monitor("opcode=%b reg_write=%b mem_read=%b mem_to_reg=%b alu_src=%b branch=%b jump=%b alu_op=%b",opcode,reg_write,mem_read,mem_to_reg,alu_src,branch,jump,alu_op);
    end

endmodule



