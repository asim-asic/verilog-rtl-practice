# Full Adder – Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

## Description

This project implements a **negative edge triggered JK Flip-Flop** using Verilog.

A JK Flip-Flop is a sequential circuit that removes the invalid state of the SR flip-flop.  
It has two inputs **J** and **K** and one output **Q**.

The output changes according to the input combination at the **clock edge**.

It is one of the most fundamental sequential elements used in digital design.

---

## Truth Table

| CLK Edge | J | K | Q(next) |
|---------|---|---|---------|
| ↓ | 0 | 0 | Q(previous) |
| ↓ | 0 | 1 | 0 |
| ↓ | 1 | 0 | 1 |
| ↓ | 1 | 1 | Toggle |

---

## Files

- `JKFF.v` → Verilog RTL design
- `tb_JKFF.v` → Testbench
- `output.txt` → Simulation output
- `README.md` → Project documentation

---

## Simulation Result

The output **Q** changes according to the **J and K inputs at the negative edge of the clock**.

Observed behavior from simulation:

- J = 0 , K = 0 → No change (Hold)
- J = 0 , K = 1 → Reset (Q = 0)
- J = 1 , K = 0 → Set (Q = 1)
- J = 1 , K = 1 → Toggle

This confirms the correct behavior of a **JK Flip-Flop**.

---

## RTL Design Rule

Sequential logic such as flip-flops should use **non-blocking assignments (`<=`)** in Verilog.

This ensures correct hardware behavior and avoids race conditions in synchronous designs.

---

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)

