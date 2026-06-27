# CPU Top

## 1. Purpose

The CPU Top module integrates all processor components into a complete five-stage pipelined RV32I processor.

---

## 2. Location

Source File

src/cpu/cpu_top.v

Testbench

tb/cpu_tb.v

---

## 3. Inputs

| Signal | Width | Description       |
| ------ | ----: | ----------------- |
| clk    |     1 | System clock      |
| rst    |     1 | Active-high reset |

---

## 4. Outputs

No external outputs are required for the standalone processor.

Optional debug signals may be added during simulation.

---

## 5. Internal Operation

Instantiates and connects:

* Program Counter
* Instruction Memory
* Register File
* Immediate Generator
* Control Unit
* ALU Control
* ALU
* Branch Unit
* Data Memory
* Pipeline Registers
* Forwarding Unit
* Hazard Detection Unit
* Multiplexers

---

## 6. Timing

Entire processor synchronized by a single clock.

---

## 7. Connected Modules

All processor modules.

---

## 8. Verification Strategy

Execute complete RV32I programs.

Verify pipeline operation.

Verify hazards.

Verify forwarding.

Verify branching.

---

## 9. Design Notes

This module contains only structural connections.

No processor logic should be implemented directly inside CPU Top.
