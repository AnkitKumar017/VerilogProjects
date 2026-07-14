`timescale 1ns/1ps

module alu(input [31:0]a,
            input [31:0]b,
            input [3:0]alu_control,
            output reg [31:0]result,
            output zero,
            output reg overflow);


            always @(*) begin
                
                overflow=1'b0;

                case(alu_control)

                    //ADD
                    4'b0000:begin
                        result=a+b;
                        overflow=(~(a[31]^b[31]))&(result[31]^a[31]);
                    end

                    //SUB
                    4'b0001:begin
                        result=a-b;
                        overflow=(~(a[31]^b[31]))&(result[31]^a[31]);
                    end

                    //AND
                    4'b0010:result=a&b;

                    //OR
                    4'b0011:result=a|b;

                    //XOR
                    4'b0100:result=a^b;

                    //SLL
                    4'b0101:result=a<<b[4:0];

                    //SRA
                    4'b0111:result=$signed(a)>>b[4:0];

                    //SLT
                    4'b1000:result=(($signed(a))<($signed(b)))?32'd1:32'd0;

                    //SLTU
                    4'b1001:result=(a<b)?32'd1:32'd0;

                    default:result=32'd0;

                endcase

            end

            assign zero=(result==32'd0);

endmodule

