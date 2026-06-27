# Processor Datapath

The datapath represents the flow of instructions and data through the processor.

The processor follows a standard 5-stage RISC-V pipeline.

---

## Instruction Flow

Instruction Memory

↓

IF/ID Pipeline Register

↓

Instruction Decode

↓

Register File

↓

Immediate Generator

↓

ID/EX Pipeline Register

↓

ALU

↓

EX/MEM Pipeline Register

↓

Data Memory

↓

MEM/WB Pipeline Register

↓

Write Back Multiplexer

↓

Register File

---

## Main Datapath Components

* Program Counter
* Instruction Memory
* Register File
* Immediate Generator
* ALU
* Data Memory
* Pipeline Registers
* Multiplexers

---

## Pipeline Registers

* IF/ID
* ID/EX
* EX/MEM
* MEM/WB

---

## Additional Units

* Control Unit
* ALU Control
* Branch Unit
* Hazard Detection Unit
* Forwarding Unit

---

Every instruction passes through these components sequentially unless redirected by a branch or jump.
