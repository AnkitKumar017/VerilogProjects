// This is not the final cpu_top , rather this is the instruction fetch stage where we'll instantiate the following:
// pc,adder,mux2 and instruction memory.

`timescale 1ns/1ps

module if_stage(input clk,rst,
                output [31:0]pc,
                output [31:0]instruction);

                wire [31:0]pc_next;
                wire [31:0]pc_plus4;

                // Program Counter

                program_counter PC(.clk(clk),.reset(rst),.pc_next(pc_next),.pc(pc));

                // PC+4 Adder

                adder PC_adder(.a(pc),.b(32'd4),.sum(pc_plus4));

                //PC mux
                //Later this will select between PC+4 and branch select

                mux2 #(32) PC_mux(.in0(pc_plus4),.in1(32'd0),.sel(1'b0),.out(pc_next));

                // Instruction memory

                instruction_memory IMEM(.address(pc),.instruction(instruction));

endmodule

