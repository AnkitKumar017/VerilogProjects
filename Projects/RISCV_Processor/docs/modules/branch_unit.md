# Branch Unit

## 1. Purpose

Determines whether a branch or jump should be taken and computes the next Program Counter value.

---

## 2. Location

Source File

src/datapath/branch_unit.v

Testbench

tb/branch_unit_tb.v

---

## 3. Inputs

| Signal  | Width | Description             |
| ------- | ----: | ----------------------- |
| pc      |    32 | Current Program Counter |
| imm_ext |    32 | Branch immediate        |
| zero    |     1 | Zero flag from ALU      |
| Branch  |     1 | Branch enable           |
| Jump    |     1 | Jump enable             |

---

## 4. Outputs

| Signal       | Width | Description          |
| ------------ | ----: | -------------------- |
| pc_next      |    32 | Next Program Counter |
| branch_taken |     1 | Branch decision      |

---

## 5. Internal Operation

Calculates branch target addresses and determines whether control flow changes based on branch conditions.

---

## 6. Timing

Combinational Logic

---

## 7. Connected Modules

Previous

ALU

Next

Program Counter

---

## 8. Verification Strategy

Verify sequential execution.

Verify BEQ.

Verify BNE.

Verify JAL.

---

## 9. Design Notes

Future versions may include branch prediction to reduce pipeline stalls.
