`timescale 1ns/1ps

module alu_tb;

reg [31:0]a;
reg [31:0]b;
reg [3:0]alu_control;

wire [31:0]result;
wire zero;
wire overflow;

alu uut(.a(a),.b(b),.alu_control(alu_control),.result(result),.zero(zero),.overflow(overflow));


initial begin

    $dumpfile("waveforms/alu.vcd");
    $dumpvars(0,alu_tb);

    //ADD
    a=10; b=20; alu_control=4'b0000; #10;

    //sub
    a=20; b=20; alu_control=4'b0001; #10;

    //AND
    a=12; b=5; alu_control=4'b0010; #10;

    //OR
    a=15; b=7; alu_control=4'b0011; #10;

    //XOR
    a=11; b=13; alu_control=4'b0100; #10;

    //SLL
    a=-8; b=20; alu_control=4'b0101; #10;

    //SRL
    a=32; b=17; alu_control=4'b0110; #10;

    //SRA
    a=5; b=9; alu_control=4'b0111; #10;

    //STL
    a=50; b=100; alu_control=4'b1000; #10;

    //SLTU
    a=100; b=200; alu_control=4'b1001; #10;

    //Overflow test
    a=32'h7fffffff;
    b=1;
    alu_control=4'b0000;
    #10;

    $finish;

end

initial begin
    $monitor("Time=%0t a=%d b=%d alu_control=%b reult=%b overflow=%b zero=%b",$time,a,b,alu_control,result,overflow,zero);
end

endmodule


