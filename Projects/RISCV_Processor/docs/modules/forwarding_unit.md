# Forwarding Unit

## 1. Purpose

The Forwarding Unit resolves data hazards by forwarding results from later pipeline stages directly to the Execute (EX) stage, eliminating unnecessary pipeline stalls.

---

## 2. Location

Source File

src/hazards/forwarding_unit.v

Testbench

tb/forwarding_unit_tb.v

---

## 3. Inputs

| Signal       | Width | Description                       |
| ------------ | ----: | --------------------------------- |
| EX_rs1       |     5 | Source Register 1 in EX stage     |
| EX_rs2       |     5 | Source Register 2 in EX stage     |
| MEM_rd       |     5 | Destination Register in MEM stage |
| WB_rd        |     5 | Destination Register in WB stage  |
| MEM_RegWrite |     1 | MEM write enable                  |
| WB_RegWrite  |     1 | WB write enable                   |

---

## 4. Outputs

| Signal   | Width | Description             |
| -------- | ----: | ----------------------- |
| ForwardA |     2 | ALU operand A selection |
| ForwardB |     2 | ALU operand B selection |

---

## 5. Internal Operation

Compares source registers in the Execute stage with destination registers in later pipeline stages.

If a match exists and the destination register will be written, forwarding is enabled.

Priority:

1. MEM stage
2. WB stage

---

## 6. Timing

Combinational Logic

---

## 7. Connected Modules

Previous

ID/EX Register

EX/MEM Register

MEM/WB Register

Next

ALU Input Multiplexers

---

## 8. Verification Strategy

Verify forwarding from MEM stage.

Verify forwarding from WB stage.

Verify no forwarding when registers do not match.

Verify x0 never forwards.

---

## 9. Design Notes

Prevents most RAW (Read After Write) hazards without stalling the pipeline.
