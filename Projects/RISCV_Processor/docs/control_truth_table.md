## Control Signals : Define what each control signal means.

| Signal   | Width | Purpose                              |
|----------|-------|--------------------------------------|
| RegWrite | 1     | Enable register write                |
| ALUSrc   | 1     | Select ALU operand (Register/Immediate) |
| MemRead  | 1     | Read Data Memory                     |
| MemWrite | 1     | Write Data Memory                    |
| MemToReg | 1     | Select Memory or ALU for Write Back  |
| Branch   | 1     | Enable branch decision               |
| Jump     | 1     | Enable jump                          |
| ALUOp    | 2     | High-level ALU operation             |



## Official RV32I Control Truth Table

| Instruction | Opcode  | RegWrite | ALUSrc | MemRead | MemWrite | MemToReg | Branch | Jump | ALUOp |
|-------------|---------|----------|--------|---------|----------|----------|--------|------|-------|
| ADD         | 0110011 | 1        | 0      | 0       | 0        | 0        | 0      | 0    | 10    |
| SUB         | 0110011 | 1        | 0      | 0       | 0        | 0        | 0      | 0    | 10    |
| AND         | 0110011 | 1        | 0      | 0       | 0        | 0        | 0      | 0    | 10    |
| OR          | 0110011 | 1        | 0      | 0       | 0        | 0        | 0      | 0    | 10    |
| XOR         | 0110011 | 1        | 0      | 0       | 0        | 0        | 0      | 0    | 10    |
| SLT         | 0110011 | 1        | 0      | 0       | 0        | 0        | 0      | 0    | 10    |
| SLL         | 0110011 | 1        | 0      | 0       | 0        | 0        | 0      | 0    | 10    |
| SRL         | 0110011 | 1        | 0      | 0       | 0        | 0        | 0      | 0    | 10    |
| SRA         | 0110011 | 1        | 0      | 0       | 0        | 0        | 0      | 0    | 10    |
| ADDI        | 0010011 | 1        | 1      | 0       | 0        | 0        | 0      | 0    | 10    |
| ANDI        | 0010011 | 1        | 1      | 0       | 0        | 0        | 0      | 0    | 10    |
| ORI         | 0010011 | 1        | 1      | 0       | 0        | 0        | 0      | 0    | 10    |
| XORI        | 0010011 | 1        | 1      | 0       | 0        | 0        | 0      | 0    | 10    |
| SLTI        | 0010011 | 1        | 1      | 0       | 0        | 0        | 0      | 0    | 10    |
| LW          | 0000011 | 1        | 1      | 1       | 0        | 1        | 0      | 0    | 00    |
| SW          | 0100011 | 0        | 1      | 0       | 1        | 0        | 0      | 0    | 00    |
| BEQ         | 1100011 | 0        | 0      | 0       | 0        | 0        | 1      | 0    | 01    |
| BNE         | 1100011 | 0        | 0      | 0       | 0        | 0        | 1      | 0    | 01    |
| LUI         | 0110111 | 1        | 1      | 0       | 0        | 0        | 0      | 0    | 11    |
| JAL         | 1101111 | 1        | 0      | 0       | 0        | 0        | 0      | 1    | 11    |