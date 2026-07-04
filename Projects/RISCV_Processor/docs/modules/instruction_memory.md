# Instruction Memory

## 1. Purpose

Stores the executable program instructions.

Instruction Memory is read-only during execution.

---

## 2. Location

Source File

src/memory/instruction_memory.v

Testbench

tb/instruction_memory_tb.v

---

## 3. Inputs

| Signal  | Width | Description         |
| ------- | ----: | ------------------- |
| address |    32 | Instruction address |

---

## 4. Outputs

| Signal      | Width | Description         |
| ----------- | ----: | ------------------- |
| instruction |    32 | Fetched instruction |

---

## 5. Internal Operation

The address selects one 32-bit instruction from memory.

Instructions are loaded from a .mem initialization file.

---

## 6. Timing

Combinational Read

No Clock Required

---

## 7. Connected Modules

Previous

Program Counter

Next

IF/ID Pipeline Register

---

## 8. Verification Strategy

Verify correct instruction fetch.

Verify boundary addresses.

Verify memory initialization.

---

## 9. Design Notes

Memory depth:

1024 words

Each instruction is 32 bits.


