`timescale 1ns/1ps

module immediate_generator_tb;

    reg [31:0] instruction;
    wire [31:0] immediate;

    immediate_generator uut(.instruction(instruction),.immediate(immediate));

    initial begin
        $dumpfile("waveforms/immediate_generator.vcd");
        $dumpvars(0,immediate_generator_tb);

        // I-type
        instruction=32'h00500113;
        #10;

        // S-type
        instruction=32'h0062A023;
        #10;

        // B-type
        instruction=32'h12345037;
        #10;

        // U-type
        instruction=32'h12345037;
        #10;

        // J-type
        instruction=32'h008000EF;
        #10;

        $finish;
    end

    initial begin
        $monitor("instruction=%h immediate=%h",instruction,immediate);
    end

endmodule