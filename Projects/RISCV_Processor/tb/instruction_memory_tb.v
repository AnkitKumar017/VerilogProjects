`timescale 1ns/1ps

module instruction_memory_tb;

reg [31:0] address;
wire [31:0] instruction;

instruction_memory uut(.address(address),.instruction(instruction));

initial begin
    $dumpfile("waveforms/instruction_memory.vcd");
    $dumpvars(0,instruction_memory_tb);

    address = 32'h00000000;
    #10;

    address = 32'h00000004;
    #10;

    address = 32'h00000008;
    #10;

    address = 32'h0000000c;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t address=%h, instruction=%h",$time,address,instruction);
end

endmodule
