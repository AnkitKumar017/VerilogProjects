`timescale 1ns/1ps

module alu_control_unit_tb;

    reg [1:0]alu_op;
    reg [2:0]funct3;
    reg [6:0]funct7;

    wire [3:0]alu_control;

    alu_control_unit uut(.alu_op(alu_op),.funct3(funct3),.funct7(funct7),.alu_control(alu_control));
    
    initial begin

        $dumpfile("waveforms/alu_control_unit.vcd");
        $dumpvars(0,alu_control_unit_tb);

        //ADD
        alu_op=2'b10;
        funct3=3'b000;
        funct7=7'b0000000;
        #10;

        //SUB
        funct7=7'b0100000;
        #10;

        //AND
        funct3=3'b111;
        #10;

        //OR
        funct3=3'b110;
        #10;

        //XOR
        funct3=3'b100;
        #10;

        //SLL
        funct3=3'b001;

        //SRL
        funct3=3'b101;
        funct7=7'b0000000;
        #10;

        //SRA
        funct7=7'b0100000;
        #10;

        //SLT
        funct3=3'b010;
        #10;

        //SLTN
        funct3=3'b011;
        #10;

        $finish;

    end

    initial begin
        $monitor("Time=%0t alu_op=%b funct3=%b funct7=%b alu_control=%b",$time,alu_op,funct3,funct7,alu_control);
    end

endmodule
