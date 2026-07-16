`timescale 1ns/1ps

module id_stage_tb;

reg clk,rst,reg_write_wb;
reg [4:0]rd_wb;
reg [31:0]instruction;
reg [31:0]write_data_wb;

wire reg_write,mem_read,mem_write,mem_to_reg,alu_src,branch,jump;
wire [31:0]read_data1;
wire [31:0]read_data2;
wire [31:0]immediate;
wire [4:0]rd;
wire [2:0]funct3;
wire [6:0]funct7;
wire [3:0]alu_control;

id_stage uut(.clk(clk),.rst(rst),.reg_write_wb(reg_write_wb),
             .instruction(instruction),.write_data_wb(write_data_wb),.rd_wb(rd_wb),
             .reg_write(reg_write),.mem_write(mem_write),.mem_read(mem_read),
             .mem_to_reg(mem_to_reg),.alu_src(alu_src),.jump(jump),.branch(branch),
             .read_data1(read_data1),.read_data2(read_data2),.immediate(immediate),.rd(rd),
             .funct3(funct3),.funct7(funct7),.alu_control(alu_control));

always #5 clk=~clk;

initial begin
    $dumpfile("waveforms/id_stage.vcd");
    $dumpvars(0,id_stage_tb);

    clk=0;
    rst=1;
    
    reg_write_wb=0;
    rd_wb=0;
    write_data_wb=0;

    instruction=32'd0;
    #10;

    rst=0;

    //---------------------------------//
    // simulate previous instruction: writing x1=25
    //--------------------------------//

    reg_write_wb=1;
    rd_wb=5'd1;
    write_data_wb=32'd25;
    #10;

    //---------------------------------//
    // simulate previous instruction: writing x2=100
    //--------------------------------//

    rd_wb=5'd2;
    write_data_wb=32'd100;
    #10;

    reg_write_wb=0;

    //---------------------------------//
    // current instruction : add x5,x1,x2
    //--------------------------------//

    instruction=32'h002082B3;
    #20;

    //---------------------------------//
    // current instruction : add x6,x1,10
    //--------------------------------//

    instruction=32'h00A08313;
    #20;

    //---------------------------------//
    // current instruction : lw x7,0(x1)
    //--------------------------------//

    instruction=32'h0000A383;
    #20;

    $finish;

end

initial begin
    $monitor("Time=%0t instruction=%h rd=%d read_data1=%d read_data2=%d immediate=%d alu_control=%b",$time,instruction,rd,read_data1,read_data2,immediate,alu_control);
end

endmodule
