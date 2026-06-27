# Arithmetic Logic Unit (ALU)

## 1. Purpose

Performs all arithmetic, logical, comparison, and shift operations required by the RV32I ISA.

---

## 2. Location

Source File

src/datapath/alu.v

Testbench

tb/alu_tb.v

---

## 3. Inputs

| Signal     | Width | Description        |
| ---------- | ----: | ------------------ |
| operand_a  |    32 | First ALU operand  |
| operand_b  |    32 | Second ALU operand |
| ALUControl |     4 | Operation select   |

---

## 4. Outputs

| Signal | Width | Description        |
| ------ | ----: | ------------------ |
| result |    32 | ALU output         |
| zero   |     1 | Result equals zero |

---

## 5. Supported Operations

* ADD
* SUB
* AND
* OR
* XOR
* SLT
* SLL
* SRL
* SRA

---

## 6. Timing

Combinational Logic

---

## 7. Connected Modules

Previous

ID/EX Register

ALU Control

Next

EX/MEM Register

Branch Unit

---

## 8. Verification Strategy

Verify every operation.

Verify overflow behavior.

Verify shift operations.

Verify Zero flag.

---

## 9. Design Notes

Shift amount uses operand_b[4:0].

SLT performs signed comparison according to the RV32I specification.
