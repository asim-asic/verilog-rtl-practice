# 4x1 Multiplexer – Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description

This project implements a **4-to-1 Multiplexer (MUX)** using Verilog.

A multiplexer selects **one of multiple input signals** and forwards it to a single output based on **select lines**.

In a **4x1 multiplexer**, four inputs are available and one is selected depending on the values of two select signals.

---

## Inputs and Outputs

Inputs:

- **I0, I1, I2, I3** → Data inputs  
- **S1, S0** → Select lines  

Output:

- **F** → Output  

---

## Truth Table

| S1 | S0 | Output F |
|----|----|-----------|
| 0 | 0 | I0 |
| 0 | 1 | I1 |
| 1 | 0 | I2 |
| 1 | 1 | I3 |

---

## Boolean Expression

```
F = A'B'.I0 + A'B.I1 + AB'I2 + ABI3 
```
---

## Files

- `mux_4x1.v` → Verilog RTL design  
- `tb_mux_4x1.v` → Testbench  
- `output.txt` → Simulation output  
- `README.md` → Project documentation  

---

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
