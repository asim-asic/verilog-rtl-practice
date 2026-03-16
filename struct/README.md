# Excess-3 Code Converter - Behavioral Modeling(FSM)

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description

This project implements an **Excess-3 Code Converter** using a **Structural Modeling** in Verilog.

The design reads a **serial binary input stream** and produces an output corresponding to the **Excess-3 coded representation**.  

This design is implemented as a **Mealy Finite State Machine Machine**, the **output depends on both the current state and the input**, and state transitions occur on the **rising edge of the clock**.

---
## Files

- `DFF.v` → Design  
- `Inverter.v` → Design  
- `NAND2.v` → Design  
- `NAND3.v` → Design  
- `code_converter.v` → Design  
- `tb_code_converter.v` → Testbench  
- `output.txt` → Simulation output  
- `README.md` → Project documentation
---

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
