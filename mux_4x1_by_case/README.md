# 4x1 Multiplexer – Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description

This project implements a **4-to-1 Multiplexer (MUX)** using Verilog.

A multiplexer selects one of several input signals and forwards the selected input to the output based on the value of the **select lines**.

In this design:

- Four data inputs are available
- Two select lines choose which input is forwarded to the output

This example demonstrates two common RTL modeling styles:

- **Case statement**
- **If–else statement**

Both describe the same combinational hardware.

---

## Inputs and Outputs

Inputs

- `I0` → Input 0  
- `I1` → Input 1  
- `I2` → Input 2  
- `I3` → Input 3  
- `Sel[1:0]` → Select lines  

Output

- `F` → Output signal

---

## Truth Table

| Sel[1] | Sel[0] | Output F |
|------|------|---------|
| 0 | 0 | I0 |
| 0 | 1 | I1 |
| 1 | 0 | I2 |
| 1 | 1 | I3 |

---

## Boolean Expression

```
F = A'B'.I0 + A'B.I1 + AB'.I2 + AB.I3 
```

---

## Files

- `mux_4x1_by_case.v` → Verilog RTL design  
- `tb_mux_4x1_by_case.v` → Testbench  
- `output.txt` → Simulation output  
- `README.md` → Project documentation  

---

## RTL Design Note

Multiplexers are **combinational circuits**, therefore they can be implemented using:

- `assign` statements
- `case` statements
- `if–else` statements

All three approaches synthesize to the same hardware.

---

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
