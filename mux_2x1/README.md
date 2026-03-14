# 2x1 Multiplexer – Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description

This project implements a **2-to-1 Multiplexer (MUX)** using Verilog.

A multiplexer selects one of multiple input signals and forwards the selected input to the output based on a **select line**.

In a **2x1 multiplexer**, two inputs are available and one is selected depending on the value of the select signal.

---

## Boolean Expression

The Boolean equation of a 2x1 MUX is:

```
F = A'.I0 + A.I1
```

Where:

- **A** → Select line  
- **I0, I1** → Input lines  
- **F** → Output  

If:

- `A = 0` → Output = `I0`  
- `A = 1` → Output = `I1`
---

## Files

- `mux_2x1.v` → Verilog RTL design  
- `tb_mux_2x1.v` → Testbench  
- `output.txt` → Simulation output  
- `README.md` → Project documentation  

---

## Truth Table

| A (Select) | Output F |
|-------------|-----------|
| 0 | I0 |
| 1 | I1 |

---
## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
