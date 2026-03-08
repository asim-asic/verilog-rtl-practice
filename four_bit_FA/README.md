# 4-Bit Ripple Carry Adder – Verilog

![License](https://img.shields.io/badge/license-MIT-green)
![Language](https://img.shields.io/badge/language-Verilog-blue)
![Platform](https://img.shields.io/badge/platform-ASIC-orange)

## Description
This project implement a **4-bit Ripple Carry Adder** in Verilog.

The design in build by **instatiating four 1-bit Full Adder modules**.
Each stage propagates the carry to the next stage.

Inputs:
- A[3:0]
- B[3:0]
- Ci

Outputs:
- S[3:0]
- Co

The 4-bit adder is constructed by instantiating the `full_adder` module located in:
	`../full_adder/full_adder.v`

## Files

- `full_adder.v` → 1-bit fulll adder module(used for instatiation) 
- `four_bit_FA.v` → 4-bit ripple carry adder design
- `tb_four_bit_FA.v` → Testbench
- `output.txt` → Simulation output
- `README.md` → Project Documentation

## License

This project is licensed under the MIT License.

© 2026 Asim Khan (asim-asic)
