`timescale  1ns/1ps

module instruction_memory #(parameter mem_depth = 1024)(
    input [31:0] address,
    output [31:0] instruction
);

    reg [31:0] memory [0:mem_depth-1]; //1024 words of 32 bit memory

    initial begin
        $readmemh("programs/test_program_01.hex", memory);  //Load program from file
    end

    assign instruction = memory[address[31:2]]; // word_aligned access.(RISC_V) address are 4-bytes long.
                                                // using address[31:0] are like dividing the byte address by 4.

endmodule



