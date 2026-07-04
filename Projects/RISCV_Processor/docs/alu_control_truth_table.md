## This table tells the ALU control unit, how to translate the ALUOp,funct3 and funct7 into the 4 bit signal used by the ALU.

| ALUOp | funct3 | funct7  | Instruction              | ALU Control |
|-------|--------|---------|--------------------------|-------------|
| 10    | 000    | 0000000 | ADD                      | 0000        |
| 10    | 000    | 0100000 | SUB                      | 0001        |
| 10    | 111    | 0000000 | AND                      | 0010        |
| 10    | 110    | 0000000 | OR                       | 0011        |
| 10    | 100    | 0000000 | XOR                      | 0100        |
| 10    | 010    | 0000000 | SLT                      | 0101        |
| 10    | 001    | 0000000 | SLL                      | 0110        |
| 10    | 101    | 0000000 | SRL                      | 0111        |
| 10    | 101    | 0100000 | SRA                      | 1000        |
| 00    | xxx    | xxxxxxx | LW/SW (Address = ADD)    | 0000        |
| 01    | 000    | xxxxxxx | BEQ (Compare = SUB)      | 0001        |
| 01    | 001    | xxxxxxx | BNE (Compare = SUB)      | 0001        |

