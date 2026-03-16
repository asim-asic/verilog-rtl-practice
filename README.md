# Verilog RTL Learning Repository

This repository contains Verilog RTL design examples created while learning digital design concepts used in ASIC and FPGA development.

The projects start from basic combinational logic and gradually move toward sequential circuits. Each project contains RTL code, testbench, and documentation.

---

## Project Roadmap

1. **conti_assign**  
   Basic continuous assignment example

2. **conti_assign_variant1**  
   Variation of combinational design

3. **conti_assign_variant2**  
   Another variation of combinational circuit

4. **full_adder**  
   1-bit Full Adder design and testbench

5. **four_bit_FA**  
   4-bit Ripple Carry Adder using `full_adder` instantiation

6. **BA_and_NBA**  
   Blocking vs Non-Blocking assignment example

7. **DFF**  
   Positive edge-triggered D Flip Flop

8. **JKFF**		
   Negative edge-triggered JK Flip Flop

9. **wait_memory**
   A example of wait statement

10. **behav/code_converter** 
   Behavioural modeling implementation of an Excess-3 code converter using mealy FSM
	 

---

## Purpose of this Repository

This repository is created to:

- Practice **RTL design using Verilog**
- Understand **combinational and sequential circuits**
- Learn **RTL coding practices used in ASIC/FPGA design**
- Maintain a structured **learning path for digital design**

New projects will be added as learning progresses.

---

## Repository Structure

Each project directory typically contains:

- `design_file.v` → RTL design
- `tb_design.v` → Testbench
- `output.txt` → Simulation output
- `README.md` → Documentation

---

## Simulation

The RTL designs in this repository can be simulated using **any standard Verilog simulator**, such as:

- ModelSim / QuestaSim
- Synopsys VCS
- Cadence Xcelium
- Icarus Verilog

Steps generally include:

1. Compile the RTL and testbench
2. Run the simulation
3. Observe waveform or console output

---

## Author

© 2026 **Asim Khan (asim-asic)**  
