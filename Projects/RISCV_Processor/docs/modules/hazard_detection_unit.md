# Hazard Detection Unit

## 1. Purpose

Detects hazards that cannot be resolved through forwarding, primarily the Load-Use hazard.

---

## 2. Location

Source File

src/hazards/hazard_detection.v

Testbench

tb/hazard_detection_tb.v

---

## 3. Inputs

| Signal     | Width | Description                      |
| ---------- | ----: | -------------------------------- |
| ID_rs1     |     5 | Source Register 1                |
| ID_rs2     |     5 | Source Register 2                |
| EX_rd      |     5 | Destination Register in EX stage |
| EX_MemRead |     1 | Load instruction indicator       |

---

## 4. Outputs

| Signal       | Width | Description                   |
| ------------ | ----: | ----------------------------- |
| PCWrite      |     1 | Enable Program Counter update |
| IF_ID_Write  |     1 | Enable IF/ID register update  |
| ControlFlush |     1 | Insert pipeline bubble        |

---

## 5. Internal Operation

If a load instruction in the Execute stage will write to a register needed by the following instruction:

* Stall the Program Counter
* Stall the IF/ID register
* Insert a bubble into the Execute stage

---

## 6. Timing

Combinational Logic

---

## 7. Connected Modules

Previous

IF/ID Register

ID/EX Register

Next

Program Counter

Control Unit

Pipeline Registers

---

## 8. Verification Strategy

Verify Load-Use hazard detection.

Verify stall generation.

Verify bubble insertion.

Verify no false stalls.

---

## 9. Design Notes

Forwarding cannot resolve Load-Use hazards because memory data is not available early enough.
