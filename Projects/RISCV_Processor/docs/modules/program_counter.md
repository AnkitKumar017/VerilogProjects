# Program Counter

## Purpose

Stores the address of the instruction currently being executed.

---

## Inputs

| Signal  | Width | Description          |
| ------- | ----: | -------------------- |
| clk     |     1 | Clock                |
| rst     |     1 | Reset                |
| pc_next |    32 | Next Program Counter |

---

## Outputs

| Signal | Width |
| ------ | ----: |
| pc     |    32 |

---

## Operation

On every rising clock edge:

pc ← pc_next

On reset:

pc ← 0x00000000

---

## Module Type

Sequential Logic

---

## Connected Modules

* Instruction Memory
* PC Adder
* Branch MUX
