# Wait Statement Example – Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

---

## Description

This project demonstrates the usage of the **`wait` statement in Verilog**.

The `wait` statement is a **level-sensitive event control** used inside procedural blocks.  
It pauses execution until the specified condition becomes **TRUE**.

Behavior:

- If the condition is **FALSE**, execution pauses.
- When the condition becomes **TRUE**, the next statement executes.

This example shows a simple **memory write and read behavior** controlled by a `WR` signal.

---

## Example Behavior

1. When **WR = 1**
   - Data from `DATA_IN` is written into memory.

2. When **WR = 0**
   - The stored memory value is transferred to `DATA_OUT`.

---

## Files

- `wait_example.v` → Design 
- `tb_wait_example.v` → Testbench
- `output.txt` → Output 
- `README.md` → Project documentation

---

## Note

The `wait` statement is commonly used in:

- Behavioral modeling
- Testbench development
- Process synchronization

It is **generally not used in synthesizable RTL designs**.

---

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
