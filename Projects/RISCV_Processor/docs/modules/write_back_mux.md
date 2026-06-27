# Write Back Multiplexer

## 1. Purpose

Selects the value written back into the Register File.

---

## 2. Location

Source File

src/utils/write_back_mux.v

Testbench

tb/write_back_mux_tb.v

---

## 3. Inputs

| Signal      | Width | Description        |
| ----------- | ----: | ------------------ |
| alu_result  |    32 | ALU output         |
| memory_data |    32 | Data Memory output |
| MemToReg    |     1 | Selection signal   |

---

## 4. Outputs

| Signal          | Width | Description                     |
| --------------- | ----: | ------------------------------- |
| write_back_data |    32 | Data written into Register File |

---

## 5. Internal Operation

If MemToReg = 0

Write ALU Result

If MemToReg = 1

Write Memory Data

---

## 6. Timing

Combinational Logic

---

## 7. Connected Modules

Previous

MEM/WB Register

Next

Register File

---

## 8. Verification Strategy

Verify both input selections.

Verify switching behavior.

---

## 9. Design Notes

Required for supporting both arithmetic and load instructions.
