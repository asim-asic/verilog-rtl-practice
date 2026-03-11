# Full Adder – Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

## Description
This project implement a **positive edge triggered D Flip Flop** using Verilog.

A D Flip Flop captures the input value **D** at the rising edge of the clock and holds the value at the output **Q** untill the next clock edge.

It is the one of the most fundamental sequential elements used in digital design.
## Truth Table

| CLK Edge | D | Q(next) |
|--------|----|--------|
| ↑ | 0 | 0 |
| ↑ | 1 | 1 |
| No edge | X | Q(previous) |

---

## Files

- `DFF.v` → Verilog RTL design
- `tb_DFF.v` → Testbench
- `output.txt` → Simulation output
- `README.md` → Project documentation

---

## Simulation Result

The output **Q updates only on the positive edge of the clock**, confirming correct D Flip-Flop behavior.

---

## RTL Design Rule

Sequential logic such as flip-flops must use **non-blocking assignments (`<=`)**.

This ensures correct hardware behavior and avoids race conditions.
## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
