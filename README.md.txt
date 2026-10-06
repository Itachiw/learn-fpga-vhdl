# VHDL Digital Design & FPGA Fundamentals

This repository documents my journey in mastering digital design and FPGA development using VHDL and AMD/Xilinx Vivado.

## Toolchain
- **Design & Simulation:** AMD Vivado Design Suite (XSim)
- **Language:** VHDL-93 / VHDL-2008 (IEEE standard `NUMERIC_STD`)
- **Methodology:** RTL design, hierarchical structural modeling, and self-checking testbenches.

---

## 01. Combinational Logic

### 1. 7-Segment Display Decoder (`01_7seg_decoder`)
- BCD-to-7-segment decoder using truth table mapping (`with-select`).
- Behavioral simulation verifying correct hex/decimal segment activation.

### 2. 4-bit 2-to-1 Multiplexer (`02_mux2to1`)
- Data routing using conditional concurrent assignment (`when-else`).
- Parametric bus switching with waveform verification.

### 3. Top-Level Integration: MUX + 7-Segment (`03_top_mux_7seg`)
- Structural hierarchy using component instantiation (`port map`).
- Internal bus routing connecting multiplexer output directly to decoder input.

### 4. 4-bit Arithmetic Logic Unit (`04_alu_4bit`)
- Operations: ADD, SUB, AND, OR, XOR, NOT controlled by a 3-bit opcode.
- Clean type-casting between `std_logic_vector` and `unsigned` via `IEEE.NUMERIC_STD`.
- **Self-checking testbench:** Automated functional verification using `assert` and `report` statements.