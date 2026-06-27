# MEM/WB Pipeline Register

## 1. Purpose

Stores Memory stage outputs before they enter the Write Back stage.

---

## 2. Location

Source File

src/pipeline/mem_wb.v

Testbench

tb/mem_wb_tb.v

---

## 3. Inputs

| Signal          |   Width | Description          |
| --------------- | ------: | -------------------- |
| clk             |       1 | Clock                |
| rst             |       1 | Reset                |
| memory_data     |      32 | Data Memory output   |
| alu_result      |      32 | ALU result           |
| rd              |       5 | Destination register |
| Control Signals | Various | WB control signals   |

---

## 4. Outputs

Same as inputs after one clock cycle.

---

## 5. Internal Operation

Stores Memory stage outputs on every rising edge.

---

## 6. Timing

Sequential

posedge clk

---

## 7. Connected Modules

Previous

Data Memory

Next

Write Back Stage

---

## 8. Verification Strategy

Verify all stored values.

Verify reset.

---

## 9. Design Notes

Completes the Memory stage of the processor.
