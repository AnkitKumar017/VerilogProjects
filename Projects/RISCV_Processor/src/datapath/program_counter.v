`timescale 1ns/1ps

module program_counter(
    input clk,
    input reset,
    input [31:0] pc_next,
    output reg [31:0] pc
);


    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 32'h0000000;
        end else begin
            pc <= pc_next;
        end
    end
endmodule
