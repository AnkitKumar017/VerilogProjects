`timescale 1ns/1ps

module mux2_tb;

    reg [31:0] in0;
    reg [31:0] in1;
    reg sel;
    wire [31:0] out;

    mux2 #(32) uut(.in0(in0),.in1(in1),.sel(sel),.out(out));

    initial begin
        $dumpfile("waveforms/mux2.vcd");
        $dumpvars(0,mux2_tb);

        in0 = 32'd4;
        in1 = 32'd100;
        sel = 0;
        #10;

        sel = 1;
        #10;

        in0 = 32'd20;
        in1 = 32'd50;
        sel = 0;
        #10;

        sel = 1;
        #10;

        $finish;
    end

    initial begin
        $monitor("$Time=%0t,in0=%d,in1=%d,sel=%b,out=%d",$time,in0,in1,sel,out);
    end

endmodule


