`timescale 1ns/1ps

    module adder_tb;
        reg [31:0] a;
        reg [31:0] b;
        wire [31:0] sum;

        adder uut(.a(a),.b(b),.sum(sum));

        initial begin

            $dumpfile("build/adder.vcd");
            $dumpvars(0,adder_tb);

            a = 32'd0;
            b = 32'd4;
            #10;

            a = 32'd10;
            b = 32'd20;
            #10;

            a = 32'd100;
            b = 32'd200;
            #10;

            a = 32'hffffffff;
            b = 32'd1;
            #10;

            $finish;
        end

        initial begin
            $monitor("Time=%0t, a=%d, b=%d ,suumm=%d",$time,a,b,sum);
        end
    endmodule
