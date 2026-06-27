# Register File

## 1. Purpose

Stores the 32 general-purpose integer registers defined by the RV32I ISA.

Supports two simultaneous reads and one write.

---

## 2. Location

Source File

src/datapath/register_file.v

Testbench

tb/register_file_tb.v

---

## 3. Inputs

| Signal     | Width | Description          |
| ---------- | ----: | -------------------- |
| clk        |     1 | Clock                |
| rst        |     1 | Reset                |
| rs1        |     5 | Read Register 1      |
| rs2        |     5 | Read Register 2      |
| rd         |     5 | Destination Register |
| write_data |    32 | Data to write        |
| RegWrite   |     1 | Write Enable         |

---

## 4. Outputs

| Signal     | Width | Description       |
| ---------- | ----: | ----------------- |
| read_data1 |    32 | Register rs1 data |
| read_data2 |    32 | Register rs2 data |

---

## 5. Internal Operation

Read ports are asynchronous.

Write occurs on the rising edge of the clock when RegWrite is asserted.

Register x0 always returns zero and ignores writes.

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

Instruction Decode

Next

ALU

---

## 8. Verification Strategy

Verify all 32 registers.

Verify simultaneous reads.

Verify writes.

Verify x0 always remains zero.

---

## 9. Design Notes

The register file contains 32 registers, each 32 bits wide.

Total storage = 1024 bits.
