# EX/MEM Pipeline Register

## 1. Purpose

Stores all outputs of the Execute (EX) stage and transfers them to the Memory (MEM) stage.

---

## 2. Location

Source File

src/pipeline/ex_mem.v

Testbench

tb/ex_mem_tb.v

---

## 3. Inputs

| Signal          |   Width | Description                  |
| --------------- | ------: | ---------------------------- |
| clk             |       1 | System Clock                 |
| rst             |       1 | Active-high Reset            |
| alu_result      |      32 | ALU output                   |
| write_data      |      32 | Data to be written to memory |
| rd              |       5 | Destination register         |
| Control Signals | Various | MEM/WB control signals       |

---

## 4. Outputs

Same as inputs, delayed by one clock cycle.

---

## 5. Internal Operation

Captures all Execute stage outputs on the rising edge of the clock.

---

## 6. Timing

Sequential Logic

Triggered on:

posedge clk

---

## 7. Connected Modules

Previous

Execute Stage

Next

Data Memory

---

## 8. Verification Strategy

Verify propagation of all data and control signals.

Verify reset behavior.

---

## 9. Design Notes

Acts as the interface between Execute and Memory stages.
