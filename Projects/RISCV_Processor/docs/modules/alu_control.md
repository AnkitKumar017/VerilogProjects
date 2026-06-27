# ALU Control Unit

## 1. Purpose

The ALU Control Unit converts the high-level ALUOp signal into the exact ALU operation using the instruction's funct3 and funct7 fields.

---

## 2. Location

Source File

src/control/alu_control.v

Testbench

tb/alu_control_tb.v

---

## 3. Inputs

| Signal | Width | Description              |
| ------ | ----: | ------------------------ |
| ALUOp  |     2 | High-level ALU operation |
| funct3 |     3 | Instruction funct3 field |
| funct7 |     7 | Instruction funct7 field |

---

## 4. Outputs

| Signal     | Width | Description          |
| ---------- | ----: | -------------------- |
| ALUControl |     4 | ALU operation select |

---

## 5. Internal Operation

Combines ALUOp, funct3, and funct7 to generate the final ALU control code.

---

## 6. Timing

Combinational Logic

---

## 7. Connected Modules

Previous

Control Unit

Next

ALU

---

## 8. Verification Strategy

Verify every supported RV32I ALU instruction.

Verify ADD and SUB decode correctly.

---

## 9. Design Notes

Separating ALU Control from the main Control Unit simplifies processor design and improves modularity.
