# Data Memory

## 1. Purpose

Stores program data and supports load/store operations.

Implements the RV32I memory instructions.

---

## 2. Location

Source File

src/memory/data_memory.v

Testbench

tb/data_memory_tb.v

---

## 3. Inputs

| Signal     | Width | Description    |
| ---------- | ----: | -------------- |
| clk        |     1 | System Clock   |
| address    |    32 | Memory address |
| write_data |    32 | Data to write  |
| MemRead    |     1 | Read enable    |
| MemWrite   |     1 | Write enable   |

---

## 4. Outputs

| Signal    | Width | Description   |
| --------- | ----: | ------------- |
| read_data |    32 | Memory output |

---

## 5. Internal Operation

LW

Read one 32-bit word.

SW

Write one 32-bit word.

---

## 6. Timing

Read

Combinational

Write

Sequential

posedge clk

---

## 7. Connected Modules

Previous

EX/MEM Register

Next

MEM/WB Register

---

## 8. Verification Strategy

Verify read operations.

Verify write operations.

Verify boundary addresses.

---

## 9. Design Notes

Memory Size

1024 × 32-bit words

Supports only word accesses in Version 1.
