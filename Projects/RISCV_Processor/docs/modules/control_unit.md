# Control Unit

## 1. Purpose

The Control Unit decodes the instruction opcode and generates all control signals required for processor execution.

It determines how data flows through the datapath.

---

## 2. Location

Source File

src/control/control_unit.v

Testbench

tb/control_unit_tb.v

---

## 3. Inputs

| Signal | Width | Description        |
| ------ | ----: | ------------------ |
| opcode |     7 | Instruction opcode |

---

## 4. Outputs

| Signal   | Width | Description               |
| -------- | ----: | ------------------------- |
| RegWrite |     1 | Enable register write     |
| ALUSrc   |     1 | Select ALU operand source |
| MemRead  |     1 | Enable memory read        |
| MemWrite |     1 | Enable memory write       |
| MemToReg |     1 | Select write-back source  |
| Branch   |     1 | Branch instruction        |
| Jump     |     1 | Jump instruction          |
| ALUOp    |     2 | High-level ALU operation  |

---

## 5. Internal Operation

The opcode is decoded using combinational logic.

Each supported instruction generates a predefined set of control signals.

---

## 6. Timing

Combinational Logic

No clock required.

---

## 7. Connected Modules

Previous

Instruction Decode Stage

Next

ALU Control

Pipeline Registers

Register File

---

## 8. Verification Strategy

Verify every supported opcode.

Verify unsupported instructions generate safe defaults.

---

## 9. Design Notes

Only the opcode is decoded here.

The ALU operation is finalized later by the ALU Control Unit using funct3 and funct7.
