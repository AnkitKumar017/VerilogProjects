`timescale 1ns/1ps

module register_file_tb;
    reg clk, rst, reg_write;
    reg [4:0] rs1;
    reg [4:0] rs2;
    reg [4:0] rd;
    reg [31:0] write_data;

    wire [31:0] read_data1;
    wire [31:0] read_data2;

    register_file uut(.clk(clk),.rst(rst),.reg_write(reg_write),
                        .rs1(rs1),.rs2(rs2),.rd(rd),
                        .write_data(write_data),.read_data1(read_data1),.read_data2(read_data2));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("waveforms/register_file.vcd");
        $dumpvars(0,register_file_tb);

        clk=0;
        rst=1;
        reg_write=0;

        rs1=0;
        rs2=0;
        rd=0;
        write_data=0;

        #10;
        rst=0;

        //write 25 into x1

        reg_write=1;
        rd = 5'd1;
        write_data=32'd25;
        #10;

        //read x1

        reg_write=0;
        rs1=5'd1;
        #10;

        //write 100 into x2;

        reg_write=1;
        rd=5'd2;
        write_data=32'd100;
        #10;

        //read x1 and x2

        reg_write=0;
        rs1=5'd1;
        rs2=5'd2;
        #10;

        //try writing to x0;

        reg_write=1;
        rd=5'd0;
        write_data=32'd999;
        #10;

        reg_write=0;
        rs1=5'd0;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t rs1=%d rs2=%d wd=%d rd1=%d rd2=%d",$time,rs1,rs2,rd,write_data,read_data1,read_data2);
    end


    endmodule


