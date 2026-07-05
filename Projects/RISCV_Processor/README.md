# RISC-V RV32I Processor in Verilog

## Overview

This repository contains the design and implementation of a **32-bit RISC-V (RV32I) pipelined processor** written entirely in **Verilog HDL**. The processor is being developed from scratch with a strong emphasis on modular design, verification, and adherence to the official RISC-V ISA specification.

The objective of this project is to gain an in-depth understanding of modern processor architecture by implementing every stage of a classic five-stage pipeline, including instruction fetch, decode, execute, memory access, and write-back. Each hardware module is designed, simulated, and verified independently before being integrated into the complete processor.

---

## Project Objectives

* Design a complete **32-bit RISC-V RV32I processor**
* Implement the processor using **Verilog HDL**
* Follow a modular and scalable hardware design methodology
* Develop comprehensive testbenches for every RTL module
* Verify functionality through simulation and waveform analysis
* Understand pipelining, hazards, forwarding, and branch handling
* Build a portfolio-quality hardware project demonstrating digital design and computer architecture concepts

---

## Features

* 32-bit RISC-V (RV32I) ISA
* Five-stage pipelined architecture
* Modular RTL implementation
* Independent verification of every module
* Hazard Detection Unit
* Data Forwarding Unit
* Branch and Jump support
* Immediate Generator
* Register File
* ALU Control Unit
* Instruction Memory
* Data Memory
* Pipeline Registers
* Comprehensive Verilog Testbenches
* Simulation using Icarus Verilog
* Waveform generation using VCD files

---

## Processor Architecture

The processor follows the standard five-stage RISC-V pipeline:

```
Instruction Fetch (IF)
        │
        ▼
Instruction Decode (ID)
        │
        ▼
Execute (EX)
        │
        ▼
Memory Access (MEM)
        │
        ▼
Write Back (WB)
```

---

## Project Structure

```
RISCV_Processor/
│
├── build/                 # Simulation outputs and generated files
│
├── docs/                  # Module documentation
│
├── rtl/
│   ├── datapath/
│   ├── control/
│   ├── memory/
│   ├── pipeline/
│   └── cpu_top.v
│
├── tb/                    # Testbenches
│
├── README.md
└── .gitignore
```

---

## Planned RTL Modules

### Datapath

* Program Counter
* PC Adder
* Instruction Memory
* Register File
* Immediate Generator
* Arithmetic Logic Unit (ALU)
* Branch Comparator
* Data Memory

### Control Path

* Main Control Unit
* ALU Control Unit

### Pipeline Registers

* IF/ID Register
* ID/EX Register
* EX/MEM Register
* MEM/WB Register

### Pipeline Support

* Hazard Detection Unit
* Forwarding Unit
* Branch Control Unit

### Top Level

* CPU Top Module

---

## Supported RV32I Instructions

The processor targets the base **RV32I** instruction set, including:

### Arithmetic

* ADD
* SUB
* ADDI

### Logical

* AND
* OR
* XOR
* ANDI
* ORI
* XORI

### Shift

* SLL
* SRL
* SRA
* SLLI
* SRLI
* SRAI

### Comparison

* SLT
* SLTU
* SLTI
* SLTIU

### Load

* LB
* LH
* LW
* LBU
* LHU

### Store

* SB
* SH
* SW

### Branch

* BEQ
* BNE
* BLT
* BGE
* BLTU
* BGEU

### Jump

* JAL
* JALR

### Upper Immediate

* LUI
* AUIPC

---

## Verification Strategy

Every module is verified independently before integration.

Verification includes:

* Dedicated Verilog Testbench
* Multiple functional test cases
* Edge case validation
* Simulation using Icarus Verilog
* VCD waveform generation
* Functional output verification using `$monitor` and `$display`

---

## Development Workflow

```
RTL Design
      │
      ▼
Compile (Icarus Verilog)
      │
      ▼
Run Simulation (vvp)
      │
      ▼
Generate Waveform (.vcd)
      │
      ▼
Debug & Verify
      │
      ▼
Integrate Module
```

---

## Tools Used

| Tool               | Purpose                      |
| ------------------ | ---------------------------- |
| Verilog HDL        | Hardware Design              |
| Visual Studio Code | Development Environment      |
| Icarus Verilog     | RTL Compilation & Simulation |
| VCD Waveforms      | Signal Verification          |
| Git                | Version Control              |
| GitHub             | Project Hosting              |

---

## Current Status

Project is under active development.

Completed progress includes:

* Project structure setup
* Documentation framework
* Program Counter implementation
* Program Counter testbench
* Simulation environment setup
* Waveform generation
* GitHub repository organization

Upcoming modules include:

* PC Adder
* Instruction Memory
* Register File
* Immediate Generator
* ALU
* Control Unit
* Pipeline Registers
* Hazard Detection
* Forwarding Unit
* CPU Integration

---

## Learning Outcomes

This project focuses on developing practical experience in:

* Computer Architecture
* RISC-V ISA
* Digital Logic Design
* RTL Design
* Verilog HDL
* Pipeline Architecture
* Processor Design
* Hardware Verification
* Testbench Development
* Simulation and Debugging

---

## Future Improvements

* Complete RV32I implementation
* Performance optimization
* CSR support
* Exception and interrupt handling
* Branch prediction
* Instruction cache
* Data cache
* FPGA implementation
* Timing analysis
* SystemVerilog migration

---

## Author

**Abhinav Kumar**

Electronics and Communication Engineering (ECE)

Interested in Digital Design, Computer Architecture, Embedded Systems, VLSI, and Semiconductor Design.

---

## License

This project is intended for educational, research, and learning purposes.
