`timescale 1ns/1ps

module if_stage_tb;

reg clk,rst;
wire [31:0]pc;
wire [31:0]instruction;

if_stage uut(.clk(clk),.rst(rst),.pc(pc),.instruction(instruction));

always #5 clk=~clk;

initial begin
    $dumpfile("waveforms/IF_stage.vcd");
    $dumpvars(0,if_stage_tb);

    clk=0;
    rst=1;
    #10;

    rst=0;
    #80;

    $finish;
end

initial begin
    $monitor("Time=%0t pc=%b instruction=%b",$time,pc,instruction);
end

endmodule
