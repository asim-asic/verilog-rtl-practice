# Full Adder – Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

## Description
This project implement a 1-bit Full Adder in Verilog.

The design adds two input bits (A, B) and a carry input (Cin) to produce a sum bit (Sum) and a carry output (Cout).

## Files
- `full_adder.v` → Verilog design
- `tb_full_adder.v` → Testbench
- `output.txt` → Simulation output
- `README.md` → Project Documentation

## Simulation Result

| Time | A | B | Cin | Sum | Cout |
|-----|---|---|-----|-----|------|
| 0   | 0 | 0 | 0   | 0   | 0 |
| 10  | 0 | 0 | 1   | 1   | 0 |
| 20  | 0 | 1 | 0   | 1   | 0 |
| 30  | 0 | 1 | 1   | 0   | 1 |
| 40  | 1 | 0 | 0   | 1   | 0 |
| 50  | 1 | 0 | 1   | 0   | 1 |
| 60  | 1 | 1 | 0   | 0   | 1 |
| 70  | 1 | 1 | 1   | 1   | 1 |

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
