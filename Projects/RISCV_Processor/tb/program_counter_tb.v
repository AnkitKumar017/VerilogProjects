`timescale 1ns/1ps

module program_counter_tb;
    reg clk;
    reg reset;
    reg [31:0] pc_next;
    wire [31:0] pc;

    program_counter uut(.clk(clk),.reset(reset),.pc_next(pc_next),.pc(pc));

    always #5 clk = ~clk;

    initial begin
        clk=0;
        reset=1;
        pc_next=32'h00000000;

        #10;
        reset=0; //Hold reset for 10ns

        //Test case 1

        pc_next=32'h00000004;
        #10;

        pc_next=32'h00000008;
        #10;

        pc_next=32'h0000000c;
        #10;

        pc_next=32'h00000100;
        #10;

        //Test reset again

        reset=1;
        #10;

        reset=0;
        pc_next=32'h00000020;
        #10;

        $finish;
    end

    //Console output

    initial begin
        $monitor("Time=%0t, reset=%b, pc_next=%h,pc=%h",$time,reset,pc_next,pc);
    end

    initial begin
        $dumpfile("build/Program_counter.vcd");
        $dumpvars(0,program_counter_tb);
    end

endmodule
