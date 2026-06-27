# IF/ID Pipeline Register

## 1. Purpose

Stores outputs of the Instruction Fetch stage for use by the Instruction Decode stage.

---

## 2. Stored Signals

* PC
* PC + 4
* Instruction

---

## 3. Inputs

* clk
* rst
* stall
* flush
* pc
* pc_plus4
* instruction

---

## 4. Outputs

* pc_out
* pc_plus4_out
* instruction_out

---

## 5. Internal Operation

On each rising clock edge, capture all IF stage outputs.

If stall is asserted, retain previous values.

If flush is asserted, clear stored values.

---

## 6. Timing

Sequential

posedge clk

---

## 7. Connected Modules

Instruction Memory

Instruction Decode Stage

---

## 8. Verification Strategy

Verify normal pipeline operation.

Verify stall behavior.

Verify flush behavior.

---

## 9. Design Notes

Required for pipelined execution.

Supports hazard handling.
