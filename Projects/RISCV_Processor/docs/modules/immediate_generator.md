# Immediate Generator

## 1. Purpose

Extracts and sign-extends the immediate field from an instruction according to the RV32I specification.

---

## 2. Location

Source File

src/datapath/immediate_generator.v

Testbench

tb/immediate_generator_tb.v

---

## 3. Inputs

| Signal      | Width | Description         |
| ----------- | ----: | ------------------- |
| instruction |    32 | Current instruction |

---

## 4. Outputs

| Signal  | Width | Description             |
| ------- | ----: | ----------------------- |
| imm_ext |    32 | Sign-extended immediate |

---

## 5. Supported Formats

I-Type

S-Type

B-Type

U-Type

J-Type

---

## 6. Internal Operation

The module extracts immediate bits according to the instruction format and performs sign extension to produce a 32-bit immediate.

---

## 7. Timing

Combinational Logic

---

## 8. Connected Modules

Previous

Instruction Decode

Next

ALU

Branch Unit

---

## 9. Verification Strategy

Verify every RV32I immediate format.

Verify sign extension.

Verify negative immediates.

---

## 10. Design Notes

Bit positions differ between instruction formats.

This module is responsible for assembling the correct immediate before execution.
